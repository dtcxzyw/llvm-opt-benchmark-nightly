inline.NumInlined: 10829
inline.NumDeleted: 3307
begin_hunk_0_@_ZN2v88internal17ConcurrentMarking8RunMinorEPNS_11JobDelegateE:bb.a
  %i.oyr = getelementptr inbounds nuw i8, ptr %70, i64 %.pn.add13.i3308 ; 2 uses
  %.0.ptr.i3311 = getelementptr inbounds nuw i8, ptr %i.oyr, i64 16
  %i.oys = load ptr, ptr %.0.ptr.i3311, align 8   ; 2 uses
  %.not11.i3309.1 = icmp eq ptr %i.oys, null
  br i1 %.not11.i3309.1, label %bb.brr, label %bb.brq

bb.brq:                                           ; preds = %bb.brp
  %i.oyt = getelementptr inbounds nuw i8, ptr %i.oyr, i64 24
  %i.oyu = load i64, ptr %i.oyt, align 8
  %i.oyv = getelementptr inbounds nuw i8, ptr %i.oys, i64 240
  %i.oyw = atomicrmw add ptr %i.oyv, i64 %i.oyu monotonic, align 8 ; 0 uses
  br label %bb.brr

bb.brr:                                           ; preds = %bb.brq, %bb.brp
  %.pn.add.i3310.1 = add nuw nsw i64 %.pn.add13.i3308, 32 ; 3 uses
  %.0.ptr.i3311.1 = getelementptr inbounds nuw i8, ptr %70, i64 %.pn.add.i3310.1
  %.not.i3312.1 = icmp eq i64 %.pn.add.i3310.1, 2064
  br i1 %.not.i3312.1, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev.exit, label %bb.brn

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev.exit: ; preds = %bb.brr
  %i.oyx = load ptr, ptr %i.goj, align 8          ; 4 uses
  %.not.i3341 = icmp eq ptr %i.oyx, null
  br i1 %.not.i3341, label %.critedge.i3343, label %bb.brs

bb.brs:                                           ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev.exit
  %i.oyy = getelementptr inbounds nuw i8, ptr %i.oyx, i64 2
  %i.oyz = load i16, ptr %i.oyy, align 2
  %.not6.i3342 = icmp eq i16 %i.oyz, 0
  br i1 %.not6.i3342, label %.critedge.i3343, label %bb.brt, !prof !47

bb.brt:                                           ; preds = %bb.brs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37) #27
  unreachable

.critedge.i3343:                                  ; preds = %bb.brs, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev.exit
  %i.oza = getelementptr inbounds nuw i8, ptr %70, i64 2224 ; 2 uses
  %i.ozb = load ptr, ptr %i.oza, align 8          ; 2 uses
  %.not2.i3344 = icmp eq ptr %i.ozb, null
  br i1 %.not2.i3344, label %.critedge4.i3346, label %bb.bru

bb.bru:                                           ; preds = %.critedge.i3343
  %i.ozc = getelementptr inbounds nuw i8, ptr %i.ozb, i64 2
  %i.ozd = load i16, ptr %i.ozc, align 2
  %.not7.i3345 = icmp eq i16 %i.ozd, 0
  br i1 %.not7.i3345, label %.critedge4.i3346, label %bb.brv, !prof !47

bb.brv:                                           ; preds = %bb.bru
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38) #27
  unreachable

.critedge4.i3346:                                 ; preds = %bb.bru, %.critedge.i3343
  %i.oze = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %i.ozf = icmp eq ptr %i.oyx, %i.oze
  br i1 %i.ozf, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit.i3347, label %bb.brw

bb.brw:                                           ; preds = %.critedge4.i3346
  call void @free(ptr noundef %i.oyx) #26
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit.i3347

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit.i3347: ; preds = %bb.brw, %.critedge4.i3346
  %i.ozg = load ptr, ptr %i.oza, align 8          ; 2 uses
  %i.ozh = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %i.ozi = icmp eq ptr %i.ozg, %i.ozh
  br i1 %i.ozi, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit3348, label %bb.brx

bb.brx:                                           ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit.i3347
  call void @free(ptr noundef %i.ozg) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit3348

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit3348: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit.i3347, %bb.brx
  call void @_ZN2v88internal16MarkingWorklists5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.gnn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  br label %bb.bry

bb.bry:                                           ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit3348, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit
  %.0 = phi i64 [ %.2.i, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit ], [ %.2.i24, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev.exit3348 ]
  %i.ozj = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #26 ; 2 uses
  %i.ozk = load ptr, ptr %i.ozj, align 8
  %i.ozl = getelementptr inbounds nuw i8, ptr %i.ozk, i64 72
  %i.ozm = load ptr, ptr %i.ozl, align 8
  %i.ozn = call noundef double %i.ozm(ptr noundef nonnull align 8 dereferenceable(8) %i.ozj) #26, !inline_history !98
  %i.ozo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1128), align 8, !range !40, !noundef !41
  %i.ozp = trunc nuw i8 %i.ozo to i1
  br i1 %i.ozp, label %bb.brz, label %bb.bsa

bb.brz:                                           ; preds = %bb.bry
  %i.ozq = fmul double %i.ozn, 1.000000e+03
  %i.ozr = fsub double %i.ozq, %i.ad
  %i.ozs = load ptr, ptr %i.q, align 8
  %i.ozt = ptrtoint ptr %i.ozs to i64
  %i.ozu = add i64 %i.ozt, -55464
  %i.ozv = inttoptr i64 %i.ozu to ptr
  %i.ozw = zext i8 %i.k to i32
  %i.ozx = lshr i64 %.0, 10
  %i.ozy = trunc i64 %i.ozx to i32
  call void (ptr, ptr, ...) @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320) %i.ozv, ptr noundef nonnull @.str.8, i32 noundef %i.ozw, i32 noundef %i.ozy, double noundef %i.ozr) #26
  br label %bb.bsa

bb.bsa:                                           ; preds = %bb.brz, %bb.bry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal17ConcurrentMarking22GetMajorMaxConcurrencyEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.08.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.ag, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %i.n = tail call i64 @llvm.umax.i64(i64 %.08.lcssa, i64 %i.m)
  %i.o = add i64 %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = add nsw i64 %i.w, -1
  %.sroa.speculated12 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.x) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 @_ZNK2v88internal4Heap24ShouldOptimizeForBatteryEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.z) #26
  %i.ab = icmp ne i64 %.sroa.speculated12, 0
  %.sroa.speculated = zext i1 %i.ab to i64
  %.0 = select i1 %i.aa, i64 %.sroa.speculated, i64 %.sroa.speculated12
  ret i64 %.0

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0826 = phi i64 [ %i.ag, %.lr.ph ], [ %i.d, %bb.a ]
  %.sroa.020.025 = phi ptr [ %i.ah, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.025, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, %.0826                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.020.025, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %._crit_edge, label %.lr.ph
}

declare noundef zeroext i1 @_ZNK2v88internal4Heap24ShouldOptimizeForBatteryEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal17ConcurrentMarking22GetMinorMaxConcurrencyEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1888
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.d, %1
  %i.n = add i64 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = add nsw i64 %i.v, -1
  %.sroa.speculated6 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.w) ; 2 uses
  %i.x = tail call noundef zeroext i1 @_ZNK2v88internal4Heap24ShouldOptimizeForBatteryEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.f) #26
  %i.y = icmp ne i64 %.sroa.speculated6, 0
  %.sroa.speculated = zext i1 %i.y to i64
  %.0 = select i1 %i.x, i64 %.sroa.speculated, i64 %.sroa.speculated6
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking14TryScheduleJobENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.954", align 8 ; 5 uses
  %5 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %6 = alloca %"class.std::unique_ptr.954", align 8 ; 5 uses
  %7 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %8 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %9 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %10 = alloca %"class.std::unique_ptr.7", align 8 ; 7 uses
  %11 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %12 = alloca %"class.std::unique_ptr.7", align 8 ; 7 uses
  switch i32 %1, label %bb.k [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1880 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  %i.f = load i8, ptr %i.e, align 8, !range !40, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1888
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 73
  %i.m = load i8, ptr %i.l, align 1, !range !40, !noundef !41
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load i8, ptr %i.o, align 1, !range !40, !noundef !41
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.k, label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1264), align 16, !range !40, !noundef !41
  %i.s = trunc nuw i8 %i.r to i1
  %spec.select = select i1 %i.s, i8 2, i8 %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4294967297, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %i.w) #26
  %i.x = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1880 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 872
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2688
  %i.af = load i8, ptr %i.ae, align 8, !range !40, !noundef !41
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 2689
  %i.ai = load i8, ptr %i.ah, align 1, !range !40
  %i.aj = select i1 %i.ag, i8 1, i8 %i.ai
  %i.ak = load <2 x i32>, ptr %i.ad, align 8
  %i.al = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28, !noalias !179 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal17ConcurrentMarking12JobTaskMajorE, i64 16), ptr %i.al, align 8, !noalias !179
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %0, ptr %i.am, align 8, !noalias !179
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i32> %i.ak, ptr %i.an, align 8, !noalias !179
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 %i.aj, ptr %i.ao, align 8, !noalias !179
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 1864
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !179
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3452
  %i.au = load i32, ptr %i.at, align 4, !noalias !179
  %i.av = zext i32 %i.au to i64
  %i.aw = xor i64 %i.av, %i.aq                    ; 2 uses
  store i64 %i.aw, ptr %i.ap, align 8, !noalias !179
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.aw, ptr %i.ax, align 8
  store i8 1, ptr %i.ay, align 8
  %i.az = load atomic volatile i64, ptr @_ZZN2v88internal17ConcurrentMarking14TryScheduleJobENS0_16GarbageCollectorENS_12TaskPriorityEE28trace_event_unique_atomic711 acquire, align 8 ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %.not20 = icmp eq i64 %i.az, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.3) #26 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  store atomic volatile i64 %i.bg, ptr @_ZZN2v88internal17ConcurrentMarking14TryScheduleJobENS0_16GarbageCollectorENS_12TaskPriorityEE28trace_event_unique_atomic711 release, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.015 = phi ptr [ %i.ba, %bb.e ], [ %i.bf, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr null, ptr %9, align 8
  %i.bh = load atomic volatile i8, ptr %.015 monotonic, align 1
  %i.bi = and i8 %i.bh, 5
  %.not21 = icmp eq i8 %i.bi, 0
  br i1 %.not21, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load i64, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.bk = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i8 noundef signext 88, ptr noundef nonnull %.015, ptr noundef nonnull @.str.9, ptr noundef null, i64 noundef 0, i64 noundef %i.bj, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, i32 noundef 256) #26, !inline_history !93
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.h
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #26, !inline_history !94
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.bu = load ptr, ptr %8, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.bu, null
  br i1 %.not.i.1, label %bb.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #26, !inline_history !94
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.015, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.9, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.bo, ptr %i.ca, align 8
  store ptr %i.by, ptr %9, align 8
  %i.cb = load atomic volatile i8, ptr %.015 monotonic, align 1
  %.not1.i = icmp eq i8 %i.cb, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.ce = load ptr, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cd, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce, ptr noundef %i.cg, i64 noundef %i.ci) #26, !inline_history !95
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.g, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cm = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #26 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.cn = ptrtoint ptr %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !182
  store ptr @.constant, ptr %5, align 8, !noalias !185
  store i64 %i.cn, ptr %6, align 8, !noalias !185
  %i.co = load ptr, ptr %i.cm, align 8, !noalias !185
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !185
  call void %i.cq(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.7") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i8 noundef zeroext %spec.select, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #26, !inline_history !188
  %i.cr = load ptr, ptr %6, align 8, !noalias !185 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i, label %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit, label %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cr) #26, !inline_history !189
  br label %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit

_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !182
  %i.cv = load ptr, ptr %10, align 8, !alias.scope !182 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #26, !inline_history !190
  %i.cz = load ptr, ptr %10, align 8
  store ptr null, ptr %10, align 8
  %i.da = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %i.cz, ptr %0, align 8
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMajorESt14default_deleteIS3_EED2Ev.exit, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.da) #26, !inline_history !191
  %.pr86 = load ptr, ptr %10, align 8             ; 3 uses
  %.not.i28 = icmp eq ptr %.pr86, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMajorESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit
  %i.de = load ptr, ptr %.pr86, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr86) #26, !inline_history !38
  br label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMajorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMajorESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit, %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1264), align 16, !range !40, !noundef !41
  %i.di = trunc nuw i8 %i.dh to i1
  %spec.select80 = select i1 %i.di, i8 2, i8 %2
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.075.0.insert.ext81 = zext i32 %1 to i64
  %.sroa.075.0.insert.insert82 = or disjoint i64 %.sroa.075.0.insert.ext81, 4294967296
  store i64 %.sroa.075.0.insert.insert82, ptr %i.dj, align 8
  %i.dk = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #28, !noalias !192 ; 2 uses
  store i32 0, ptr %i.dk, align 4, !noalias !192
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8
  %.not.i.i.i.i31 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i31, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal17ConcurrentMarking17MinorMarkingStateEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal17ConcurrentMarking17MinorMarkingStateEEclEPS3_.exit.i.i.i.i: ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 4) #29
  br label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal17ConcurrentMarking17MinorMarkingStateEEclEPS3_.exit.i.i.i.i, %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1888
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2072
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %i.dt) #26
  %i.du = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1888
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !195 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal17ConcurrentMarking12JobTaskMinorE, i64 16), ptr %i.ea, align 8, !noalias !195
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %0, ptr %i.eb, align 8, !noalias !195
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ed = ptrtoint ptr %0 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 1864
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !195
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3448
  %i.eh = load i32, ptr %i.eg, align 4, !noalias !195
  %i.ei = zext i32 %i.eh to i64
  %i.ej = xor i64 %i.ei, %i.ed                    ; 2 uses
  store i64 %i.ej, ptr %i.ec, align 8, !noalias !195
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ej, ptr %i.ek, align 8
  store i8 1, ptr %i.el, align 8
  %i.em = load atomic volatile i64, ptr @_ZZN2v88internal17ConcurrentMarking14TryScheduleJobENS0_16GarbageCollectorENS_12TaskPriorityEE28trace_event_unique_atomic722 acquire, align 8 ; 2 uses
  %i.en = inttoptr i64 %i.em to ptr
  %.not = icmp eq i64 %i.em, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EED2Ev.exit
  %i.eo = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef ptr %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.3) #26 ; 2 uses
  %i.et = ptrtoint ptr %i.es to i64
  store atomic volatile i64 %i.et, ptr @_ZZN2v88internal17ConcurrentMarking14TryScheduleJobENS0_16GarbageCollectorENS_12TaskPriorityEE28trace_event_unique_atomic722 release, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EED2Ev.exit
  %.016 = phi ptr [ %i.en, %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EED2Ev.exit ], [ %i.es, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %11, align 8
  %i.eu = load atomic volatile i8, ptr %.016 monotonic, align 1
  %i.ev = and i8 %i.eu, 5
  %.not19 = icmp eq i8 %i.ev, 0
  br i1 %.not19, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ew = load i64, ptr %i.ec, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ex = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef i64 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i8 noundef signext 88, ptr noundef nonnull %.016, ptr noundef nonnull @.str.12, ptr noundef null, i64 noundef 0, i64 noundef %i.ew, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, i32 noundef 256) #26, !inline_history !93
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8            ; 3 uses
  %.not.i33 = icmp eq ptr %i.fd, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit35, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i34: ; preds = %bb.n
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fd) #26, !inline_history !94
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit35: ; preds = %bb.n, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i34
  %i.fh = load ptr, ptr %7, align 16              ; 3 uses
  %.not.i33.1 = icmp eq ptr %i.fh, null
  br i1 %.not.i33.1, label %bb.o, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i34.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i34.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit35
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fh) #26, !inline_history !94
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit35, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i34.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %.016, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.12, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.fb, ptr %i.fn, align 8
  store ptr %i.fl, ptr %11, align 8
  %i.fo = load atomic volatile i8, ptr %.016 monotonic, align 1
  %.not1.i37 = icmp eq i8 %i.fo, 0
  br i1 %.not1.i37, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit38, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.fr = load ptr, ptr %i.fp, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = load ptr, ptr %i.fq, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef %i.fr, ptr noundef %i.ft, i64 noundef %i.fv) #26, !inline_history !95
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit38

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit38: ; preds = %bb.m, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.fz = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #26 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.ga = ptrtoint ptr %i.ea to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !198
  store ptr @.constant.13, ptr %3, align 8, !noalias !201
  store i64 %i.ga, ptr %4, align 8, !noalias !201
  %i.gb = load ptr, ptr %i.fz, align 8, !noalias !201
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !201
  call void %i.gd(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.7") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.fz, i8 noundef zeroext %spec.select80, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #26, !inline_history !188
  %i.ge = load ptr, ptr %4, align 8, !noalias !201 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i39, label %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit41, label %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i40

_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i40: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit38
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ge) #26, !inline_history !189
  br label %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit41

_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit41: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit38, %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !198
  %i.gi = load ptr, ptr %12, align 8, !alias.scope !198 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi) #26, !inline_history !190
  %i.gm = load ptr, ptr %12, align 8
  store ptr null, ptr %12, align 8
  %i.gn = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %i.gm, ptr %0, align 8
  %.not.i.i.i.i42 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i42, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMinorESt14default_deleteIS3_EED2Ev.exit, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit44

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit44: ; preds = %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit41
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gn) #26, !inline_history !191
  %.pr92 = load ptr, ptr %12, align 8             ; 3 uses
  %.not.i45 = icmp eq ptr %.pr92, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMinorESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i46: ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit44
  %i.gr = load ptr, ptr %.pr92, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr92) #26, !inline_history !38
  br label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMinorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMinorESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit41, %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit44, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit, %bb.b, %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMinorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking12JobTaskMajorESt14default_deleteIS3_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i8, ptr %i.b, align 4, !range !40, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i32, ptr %i.a, align 8
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK2v88internal16MarkingWorklists7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(152) %i.i) #26
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = icmp ne i64 %i.n, 0
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1888
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %i.aa = icmp ne i64 %i.z, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi i1 [ %i.o, %bb.c ], [ true, %bb.b ], [ true, %bb.d ], [ %i.aa, %bb.e ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK2v88internal16MarkingWorklists7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %i.a = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1880
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 904
  %i.g = load i8, ptr %i.f, align 8, !range !40, !noundef !41
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread, label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1888
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 73
  %i.o = load i8, ptr %i.n, align 1, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.r = load i8, ptr %i.q, align 1, !range !40, !noundef !41
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.c, %bb.b, %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit
  %i.t = phi ptr [ %i.k, %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit ], [ %i.c, %bb.b ], [ %i.k, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %bb.w, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1112), align 8, !range !40, !noundef !41
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1122), align 2, !range !40
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %bb.g, label %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit.thread, label %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit

_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #26, !inline_history !204
  br i1 %i.ag, label %bb.h, label %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit.thread

_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit.thread: ; preds = %bb.g, %bb.f, %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit
  tail call void @_ZN2v88internal17ConcurrentMarking14TryScheduleJobENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i8 noundef zeroext %2)
  br label %bb.w

bb.h:                                             ; preds = %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit
  %i.ah = load ptr, ptr %i.u, align 8             ; 2 uses
  br i1 %i.a, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1880
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %i.al = load ptr, ptr %i.ak, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 1888
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2072
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi ptr [ %i.aq, %bb.j ], [ %i.al, %bb.i ]
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %.sink) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.at = load i8, ptr %i.as, align 4, !range !40, !noundef !41
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.ar, align 8
  %i.aw = icmp eq i32 %i.av, 1
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call noundef zeroext i1 @_ZNK2v88internal16MarkingWorklists7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(152) %i.az) #26
  br i1 %i.ba, label %bb.m, label %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load atomic i64, ptr %i.bd monotonic, align 8
  %.not27 = icmp eq i64 %i.be, 0
  br i1 %.not27, label %bb.w, label %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread

bb.n:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load atomic i64, ptr %i.bf monotonic, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit, label %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread

_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit: ; preds = %bb.n
  %i.bi = load ptr, ptr %i.u, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1888
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load atomic i64, ptr %i.bn monotonic, align 8
  %.not26 = icmp eq i64 %i.bo, 0
  br i1 %.not26, label %bb.w, label %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread

_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread: ; preds = %bb.n, %bb.l, %bb.m, %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit
  %.not = icmp eq i8 %2, 1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread
  %i.bp = load ptr, ptr %0, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i8 noundef zeroext %2) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit.thread, %bb.o
  %i.bt = load atomic volatile i64, ptr @_ZZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityEE28trace_event_unique_atomic780 acquire, align 8 ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr
  %.not15 = icmp eq i64 %i.bt, 0
  br i1 %.not15, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.3) #26 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  store atomic volatile i64 %i.ca, ptr @_ZZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityEE28trace_event_unique_atomic780 release, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.bu, %bb.p ], [ %i.bz, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8
  %i.cb = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.cc = and i8 %i.cb, 5
  %.not16 = icmp eq i8 %i.cc, 0
  br i1 %.not16, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load i8, ptr %i.cd, align 8, !range !40, !noundef !41
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i8, ptr %i.as, align 4, !range !40, !noundef !41
  %i.cj = load i32, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ck = trunc nuw i8 %i.ci to i1
  %i.cl = icmp eq i32 %i.cj, 1
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  %.str.14..str.15 = select i1 %i.cm, ptr @.str.14, ptr @.str.15
  %i.cn = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i64 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull %.str.14..str.15, ptr noundef null, i64 noundef 0, i64 noundef %i.ch, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 384) #26, !inline_history !93
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 3 uses
  %.not.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNRSt8optionalImE5valueEv.exit
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ct) #26, !inline_history !94
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNRSt8optionalImE5valueEv.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.cx = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i18.1 = icmp eq ptr %i.cx, null
  br i1 %.not.i18.1, label %bb.u, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cx) #26, !inline_history !94
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.db = load i8, ptr %i.as, align 4, !range !40, !noundef !41
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load i32, ptr %i.ar, align 8
  %i.de = icmp eq i32 %i.dd, 1
  %i.df = select i1 %i.dc, i1 %i.de, i1 false
  %i.dg = select i1 %i.df, ptr @.str.14, ptr @.str.15
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.cr, ptr %i.dj, align 8
  store ptr %i.dh, ptr %4, align 8
  %i.dk = load atomic volatile i8, ptr %.0 monotonic, align 1
  %.not1.i = icmp eq i8 %i.dk, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dm = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.dn = load ptr, ptr %i.dl, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = load ptr, ptr %i.dm, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn, ptr noundef %i.dp, i64 noundef %i.dr) #26, !inline_history !95
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.r, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.dv = load ptr, ptr %0, align 8               ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %_ZNK2v88internal17ConcurrentMarking10IsWorkLeftEv.exit, %.thread, %_ZNK2v88internal23MinorMarkSweepCollector27UseBackgroundThreadsInCycleEv.exit, %bb.b, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, %_ZN2v88internal17ConcurrentMarking9IsStoppedEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17ConcurrentMarking9IsStoppedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1112), align 8, !range !40, !noundef !41
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1122), align 2, !range !40
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #26
  %i.j = xor i1 %i.i, true
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking24FlushPretenuringFeedbackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2856
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit
  %.sroa.06.09 = phi ptr [ %i.t, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit ], [ %i.e, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.06.09, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  tail call void @_ZN2v88internal18PretenuringHandler38MergeAllocationSitePretenuringFeedbackERKSt13unordered_mapINS0_6TaggedINS0_14AllocationSiteEEEmNS0_6Object6HasherESt8equal_toIS5_ESaISt4pairIKS5_mEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #26
  %i.k = load ptr, ptr %.sroa.06.09, align 8      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 640 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.o = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #29
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !205

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 632
  %i.r = load i64, ptr %i.q, align 8
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %._crit_edge, label %.lr.ph
}

declare void @_ZN2v88internal18PretenuringHandler38MergeAllocationSitePretenuringFeedbackERKSt13unordered_mapINS0_6TaggedINS0_14AllocationSiteEEEmNS0_6Object6HasherESt8equal_toIS5_ESaISt4pairIKS5_mEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking4JoinEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EE5resetEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br i1 %i.e, label %bb.c, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EE5resetEPS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  store ptr null, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN2v88internal17ConcurrentMarking17MinorMarkingStateEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal17ConcurrentMarking17MinorMarkingStateEEclEPS3_.exit.i.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 4) #29
  br label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking17MinorMarkingStateESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal17ConcurrentMarking17MinorMarkingStateEEclEPS3_.exit.i.i, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking17JoinJobForTestingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17ConcurrentMarking5PauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %2 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not14 = icmp eq ptr %i.a, null
  br i1 %.not14, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #26
  %i.j = load atomic volatile i64, ptr @_ZZN2v88internal17ConcurrentMarking5PauseEvE28trace_event_unique_atomic822 acquire, align 8 ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3) #26 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  store atomic volatile i64 %i.q, ptr @_ZZN2v88internal17ConcurrentMarking5PauseEvE28trace_event_unique_atomic822 release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07 = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr null, ptr %2, align 8
  %i.r = load atomic volatile i8, ptr %.07 monotonic, align 1
  %i.s = and i8 %i.r, 5
  %.not9 = icmp eq i8 %i.s, 0
  br i1 %.not9, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i8, ptr %i.t, align 8, !range !40, !noundef !41
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !40, !noundef !41
  %i.ab = load i32, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ac = trunc nuw i8 %i.aa to i1
  %i.ad = icmp eq i32 %i.ab, 1
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %.str.16..str.17 = select i1 %i.ae, ptr @.str.16, ptr @.str.17
  %i.af = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 88, ptr noundef nonnull %.07, ptr noundef nonnull %.str.16..str.17, ptr noundef null, i64 noundef 0, i64 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 384) #26, !inline_history !93
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNRSt8optionalImE5valueEv.exit
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #26, !inline_history !94
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNRSt8optionalImE5valueEv.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.ap = load ptr, ptr %1, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ap, null
  br i1 %.not.i.1, label %bb.h, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #26, !inline_history !94
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.at = load i8, ptr %i.z, align 4, !range !40, !noundef !41
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.y, align 8
  %i.aw = icmp eq i32 %i.av, 1
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  %i.ay = select i1 %i.ax, ptr @.str.16, ptr @.str.17
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.07, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.aj, ptr %i.bb, align 8
  store ptr %i.az, ptr %2, align 8
  %i.bc = load atomic volatile i8, ptr %.07 monotonic, align 1
  %.not1.i = icmp eq i8 %i.bc, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf, ptr noundef %i.bh, i64 noundef %i.bj) #26, !inline_history !95
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.e, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %.0 = phi i1 [ true, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking6ResumeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %2 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal17ConcurrentMarking6ResumeEvE28trace_event_unique_atomic839 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.3) #26 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal17ConcurrentMarking6ResumeEvE28trace_event_unique_atomic839 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr null, ptr %2, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not7 = icmp eq i8 %i.j, 0
  br i1 %.not7, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noundef !41
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !40, !noundef !41
  %i.s = load i32, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.t = trunc nuw i8 %i.r to i1
  %i.u = icmp eq i32 %i.s, 1
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  %.str.18..str.19 = select i1 %i.v, ptr @.str.18, ptr @.str.19
  %i.w = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull %.str.18..str.19, ptr noundef null, i64 noundef 0, i64 noundef %i.o, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 384) #26, !inline_history !93
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNRSt8optionalImE5valueEv.exit
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #26, !inline_history !94
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNRSt8optionalImE5valueEv.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.ag = load ptr, ptr %1, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.1, label %bb.f, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #26, !inline_history !94
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ak = load i8, ptr %i.q, align 4, !range !40, !noundef !41
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i32, ptr %i.p, align 8
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  %i.ap = select i1 %i.ao, ptr @.str.18, ptr @.str.19
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.aa, ptr %i.as, align 8
  store ptr %i.aq, ptr %2, align 8
  %i.at = load atomic volatile i8, ptr %.0 monotonic, align 1
  %.not1.i = icmp eq i8 %i.at, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.av, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.aw, ptr noundef %i.ay, i64 noundef %i.ba) #26, !inline_history !95
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bf = load i8, ptr %i.be, align 4, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNRSt8optionalIN2v88internal16GarbageCollectorEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNRSt8optionalIN2v88internal16GarbageCollectorEE5valueEv.exit: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  call void @_ZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.bi, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking19FlushNativeContextsEPNS0_18NativeContextStatsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.s, %.lr.ph ], [ %i.d, %bb.a ]
  %.05 = phi i64 [ %i.q, %.lr.ph ], [ 1, %bb.a ]  ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.05
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  tail call void @_ZN2v88internal18NativeContextStats5MergeERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.l) #26
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 568
  tail call void @_ZN2v88internal18NativeContextStats5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #26
  %i.q = add nuw i64 %.05, 1                      ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.q, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !206
}

declare void @_ZN2v88internal18NativeContextStats5MergeERKS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare void @_ZN2v88internal18NativeContextStats5ClearEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarking20FlushMemoryChunkDataEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.anon.1171, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEE5clearEv.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 0, ptr %i.f seq_cst, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEE5clearEv.exit
  %.sroa.023.030 = phi ptr [ %i.gv, %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEE5clearEv.exit ], [ %i.b, %bb.a ] ; 5 uses
  %i.g = load ptr, ptr %.sroa.023.030, align 8    ; 64 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.i, null
  br i1 %.not13.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.m = atomicrmw add ptr %i.l, i64 %i.k monotonic, align 8 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0.ptr15.i.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.n = load ptr, ptr %.0.ptr15.i.1, align 8     ; 2 uses
  %.not13.i.1 = icmp eq ptr %i.n, null
  br i1 %.not13.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.r = atomicrmw add ptr %i.q, i64 %i.p monotonic, align 8 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.i.1, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.ptr15.i.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.s = load ptr, ptr %.0.ptr15.i.2, align 8     ; 2 uses
end_hunk_0
