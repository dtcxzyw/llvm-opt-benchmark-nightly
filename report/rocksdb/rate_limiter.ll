Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/rate_limiter?download=true
inline.NumInlined: 420
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb18GenericRateLimiterC2ElliNS_11RateLimiter4ModeERKSt10shared_ptrINS_11SystemClockEEbl:bb.a
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.f unwind label %bb.i, !inline_history !0

bb.f:                                             ; preds = %bb.e
  %i.aj = udiv i64 %i.ai, 1000
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = tail call i32 @llvm.smin.i32(i32 %3, i32 100)
  store i32 %i.am, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ao = tail call i64 @time(ptr noundef null) #17
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 2147483647
  %i.ar = tail call noundef i32 @llvm.umax.i32(i32 %i.aq, i32 1)
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !45
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr, i64 noundef 0)
          to label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit unwind label %bb.j

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit: ; preds = %bb.f
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr.1, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr.1, i64 noundef 0)
          to label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.1 unwind label %.preheader.preheader

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.1: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr.2, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr.2, i64 noundef 0)
          to label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.2 unwind label %.preheader.preheader

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.2: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.1
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr.3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %.ptr.ptr.3, i64 noundef 0)
          to label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.3 unwind label %.preheader.preheader

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.3: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 0, ptr %i.as, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 585
  store i8 %i.a, ptr %i.at, align 1, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i64 0, ptr %i.au, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %1, ptr %i.av, align 8, !tbaa !49
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !42  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i64 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %bb.g unwind label %.loopexit.loopexit, !inline_history !0

bb.g:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.3
  %i.bb = udiv i64 %i.ba, 1000
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false)
  ret void

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEC2ERKS2_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader.preheader:                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.1, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.2
  %.idx.lcssa.ph = phi i64 [ 504, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.2 ], [ 424, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.1 ], [ 344, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.idx26 = phi i64 [ %.add27, %.preheader ], [ %.idx.lcssa.ph, %.preheader.preheader ]
  %.add27 = add nsw i64 %.idx26, -80              ; 3 uses
  %.ptr29 = getelementptr inbounds i8, ptr %0, i64 %.add27
  tail call void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.ptr29) #17
  %i.bg = icmp eq i64 %.add27, 264
  br i1 %i.bg, label %.loopexit, label %.preheader

.loopexit.loopexit:                               ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2Ev.exit.3
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.ptr.ptr.3) #17
  tail call void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.ptr.ptr.2) #17
  tail call void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.ptr.ptr.1) #17
  tail call void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.ptr.ptr) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.j, %.loopexit.loopexit, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.bh, %.loopexit.loopexit ], [ %lpad.thr_comm, %.preheader ]
  tail call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ab) #17
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit ], [ %i.be, %bb.h ]
  tail call void @_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #17
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.c) #17
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN7rocksdb4port5MutexC1Eb(ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -9223372036854, 9223372036855) i64 @_ZN7rocksdb18GenericRateLimiter35CalculateRefillBytesPerPeriodLockedEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = sdiv i64 9223372036854775807, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = icmp slt i64 %i.a, %i.c
  %i.e = mul nsw i64 %i.c, %1
  %i.f = sdiv i64 %i.e, 1000000
  %.0 = select i1 %i.d, i64 9223372036854, i64 %i.f
  ret i64 %.0
}

declare void @_ZN7rocksdb4port7CondVarC1EPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !59
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #18
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !61
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #18
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb18GenericRateLimiterD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::deque", align 8        ; 26 uses
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7rocksdb18GenericRateLimiterE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit:    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %2 = load ptr, ptr %i.f, align 8, !tbaa !62     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %3 = load ptr, ptr %i.g, align 8, !tbaa !62
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp ne ptr %2, null
  %.neg.i.i = sext i1 %8 to i64
  %9 = add nsw i64 %7, %.neg.i.i
  %10 = shl nsw i64 %9, 6
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %11 = load ptr, ptr %i.i, align 8, !tbaa !64
  %12 = ptrtoint ptr %i.h to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.k = ptrtoint ptr %17 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %18 = ashr exact i64 %i.m, 3
  %19 = add i64 %15, %10
  %20 = add i64 %19, %18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %23 = load ptr, ptr %i.q, align 8, !tbaa !62
  %24 = ptrtoint ptr %i.p to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = ashr exact i64 %26, 3
  %28 = icmp ne ptr %i.p, null
  %.neg.i.i.1 = sext i1 %28 to i64
  %29 = add nsw i64 %27, %.neg.i.i.1
  %30 = shl nsw i64 %29, 6
  %31 = load ptr, ptr %21, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %i.s to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = load ptr, ptr %22, align 8, !tbaa !63
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %36 = ashr exact i64 %i.y, 3
  %37 = add i64 %35, %20
  %38 = add i64 %37, %30
  %39 = add i64 %38, %36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %40 = ptrtoint ptr %i.ad to i64
  %41 = ptrtoint ptr %i.af to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 3
  %44 = icmp ne ptr %i.ad, null
  %.neg.i.i.2 = sext i1 %44 to i64
  %45 = add nsw i64 %43, %.neg.i.i.2
  %46 = shl nsw i64 %45, 6
  %47 = load ptr, ptr %i.aa, align 8, !tbaa !63
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = ptrtoint ptr %47 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 3
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = load ptr, ptr %i.ab, align 8, !tbaa !63
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = lshr exact i64 %59, 3
  %61 = add i64 %53, %39
  %62 = add i64 %61, %46
  %63 = add i64 %62, %60
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 504
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %68 = load ptr, ptr %67, align 8, !tbaa !62     ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = ptrtoint ptr %68 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 3
  %75 = icmp ne ptr %68, null
  %.neg.i.i.3 = sext i1 %75 to i64
  %76 = add nsw i64 %74, %.neg.i.i.3
  %77 = shl nsw i64 %76, 6
  %i.ag = load ptr, ptr %65, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.ap = load ptr, ptr %66, align 8, !tbaa !63
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 3
  %i.au = add i64 %i.am, %63
  %i.av = add i64 %i.au, %77
  %i.aw = add i64 %i.av, %i.at
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  invoke void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %64)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.b:                                             ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !63, !noalias !105 ; 2 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !63, !noalias !106 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !62, !noalias !105
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !65, !noalias !105
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit, %bb.b
  %i.bk = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !58 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %i.bl, %bb.c ] ; 3 uses
  %i.bp = load ptr, ptr %.06.i.i.i, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef 512) #18
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.br = icmp ult ptr %.06.i.i.i, %i.bm
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.c
  %i.bs = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.bk, %bb.c ]
  %i.bt = load i64, ptr %i.be, align 8, !tbaa !61
  %i.bu = shl i64 %i.bt, 3
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  invoke void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.z)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !63, !noalias !105 ; 2 uses
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !63, !noalias !106 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.d
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !62, !noalias !105
  %i.bz = load ptr, ptr %i.ba, align 8, !tbaa !65, !noalias !105
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1, %.lr.ph.preheader.1
  %.sroa.023.036.1 = phi ptr [ %.sroa.023.1.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1 ], [ %i.bv, %.lr.ph.preheader.1 ] ; 2 uses
  %.sroa.10.035.1 = phi ptr [ %.sroa.10.1.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1 ], [ %i.bz, %.lr.ph.preheader.1 ] ; 2 uses
  %.sroa.13.034.1 = phi ptr [ %.sroa.13.1.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1 ], [ %i.by, %.lr.ph.preheader.1 ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.023.036.1, align 8, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cb)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit

bb.e:                                             ; preds = %.lr.ph.1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.023.036.1, i64 8 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %.sroa.10.035.1
  br i1 %i.cd, label %bb.f, label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.13.034.1, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1: ; preds = %bb.f, %bb.e
  %.sroa.13.1.1 = phi ptr [ %i.ce, %bb.f ], [ %.sroa.13.034.1, %bb.e ]
  %.sroa.10.1.1 = phi ptr [ %i.cg, %bb.f ], [ %.sroa.10.035.1, %bb.e ]
  %.sroa.023.1.1 = phi ptr [ %i.cf, %bb.f ], [ %i.cc, %bb.e ] ; 2 uses
  %i.ch = icmp eq ptr %.sroa.023.1.1, %i.bw
  br i1 %i.ch, label %._crit_edge.1, label %.lr.ph.1

._crit_edge.1:                                    ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.1, %bb.d
  %i.ci = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.1, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.1, label %bb.g

bb.g:                                             ; preds = %._crit_edge.1
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.ck = load ptr, ptr %i.bd, align 8, !tbaa !58 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = icmp ult ptr %i.cj, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i.i.1, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.g, %.lr.ph.i.i.i.1
  %.06.i.i.i.1 = phi ptr [ %i.co, %.lr.ph.i.i.i.1 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.cn = load ptr, ptr %.06.i.i.i.1, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef 512) #18
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.1, i64 8
  %i.cp = icmp ult ptr %.06.i.i.i.1, %i.ck
  br i1 %i.cp, label %.lr.ph.i.i.i.1, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.1, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.1: ; preds = %.lr.ph.i.i.i.1
  %.pre.i.i.1 = load ptr, ptr %1, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.1: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.1, %bb.g
  %i.cq = phi ptr [ %.pre.i.i.1, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.1 ], [ %i.ci, %bb.g ]
  %i.cr = load i64, ptr %i.be, align 8, !tbaa !61
  %i.cs = shl i64 %i.cr, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cs) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.1

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.1: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.1, %._crit_edge.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  invoke void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.n)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.1
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !63, !noalias !105 ; 2 uses
  %i.cu = load ptr, ptr %i.bc, align 8, !tbaa !63, !noalias !106 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %._crit_edge.2, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %bb.h
  %i.cw = load ptr, ptr %i.bb, align 8, !tbaa !62, !noalias !105
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !65, !noalias !105
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2, %.lr.ph.preheader.2
  %.sroa.023.036.2 = phi ptr [ %.sroa.023.1.2, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2 ], [ %i.ct, %.lr.ph.preheader.2 ] ; 2 uses
  %.sroa.10.035.2 = phi ptr [ %.sroa.10.1.2, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2 ], [ %i.cx, %.lr.ph.preheader.2 ] ; 2 uses
  %.sroa.13.034.2 = phi ptr [ %.sroa.13.1.2, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2 ], [ %i.cw, %.lr.ph.preheader.2 ] ; 2 uses
  %i.cy = load ptr, ptr %.sroa.023.036.2, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cz)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit

bb.i:                                             ; preds = %.lr.ph.2
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.023.036.2, i64 8 ; 2 uses
  %i.db = icmp eq ptr %i.da, %.sroa.10.035.2
  br i1 %i.db, label %bb.j, label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.13.034.2, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2: ; preds = %bb.j, %bb.i
  %.sroa.13.1.2 = phi ptr [ %i.dc, %bb.j ], [ %.sroa.13.034.2, %bb.i ]
  %.sroa.10.1.2 = phi ptr [ %i.de, %bb.j ], [ %.sroa.10.035.2, %bb.i ]
  %.sroa.023.1.2 = phi ptr [ %i.dd, %bb.j ], [ %i.da, %bb.i ] ; 2 uses
  %i.df = icmp eq ptr %.sroa.023.1.2, %i.cu
  br i1 %i.df, label %._crit_edge.2, label %.lr.ph.2

._crit_edge.2:                                    ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.2, %bb.h
  %i.dg = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.2, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.2, label %bb.k

bb.k:                                             ; preds = %._crit_edge.2
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.di = load ptr, ptr %i.bd, align 8, !tbaa !58 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %.lr.ph.i.i.i.2, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.k, %.lr.ph.i.i.i.2
  %.06.i.i.i.2 = phi ptr [ %i.dm, %.lr.ph.i.i.i.2 ], [ %i.dh, %bb.k ] ; 3 uses
  %i.dl = load ptr, ptr %.06.i.i.i.2, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef 512) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.2, i64 8
  %i.dn = icmp ult ptr %.06.i.i.i.2, %i.di
  br i1 %i.dn, label %.lr.ph.i.i.i.2, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.2, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.2: ; preds = %.lr.ph.i.i.i.2
  %.pre.i.i.2 = load ptr, ptr %1, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.2

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.2: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.2, %bb.k
  %i.do = phi ptr [ %.pre.i.i.2, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.2 ], [ %i.dg, %bb.k ]
  %i.dp = load i64, ptr %i.be, align 8, !tbaa !61
  %i.dq = shl i64 %i.dp, 3
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dq) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.2

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.2: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.2, %._crit_edge.2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  invoke void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.2
  %i.dr = load ptr, ptr %i.az, align 8, !tbaa !63, !noalias !105 ; 2 uses
  %i.ds = load ptr, ptr %i.bc, align 8, !tbaa !63, !noalias !106 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %._crit_edge.3, label %.lr.ph.preheader.3

.lr.ph.preheader.3:                               ; preds = %bb.l
  %i.du = load ptr, ptr %i.bb, align 8, !tbaa !62, !noalias !105
  %i.dv = load ptr, ptr %i.ba, align 8, !tbaa !65, !noalias !105
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3, %.lr.ph.preheader.3
  %.sroa.023.036.3 = phi ptr [ %.sroa.023.1.3, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3 ], [ %i.dr, %.lr.ph.preheader.3 ] ; 2 uses
  %.sroa.10.035.3 = phi ptr [ %.sroa.10.1.3, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3 ], [ %i.dv, %.lr.ph.preheader.3 ] ; 2 uses
  %.sroa.13.034.3 = phi ptr [ %.sroa.13.1.3, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3 ], [ %i.du, %.lr.ph.preheader.3 ] ; 2 uses
  %i.dw = load ptr, ptr %.sroa.023.036.3, align 8, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph.3
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.023.036.3, i64 8 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %.sroa.10.035.3
  br i1 %i.dz, label %bb.n, label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.13.034.3, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3: ; preds = %bb.n, %bb.m
  %.sroa.13.1.3 = phi ptr [ %i.ea, %bb.n ], [ %.sroa.13.034.3, %bb.m ]
  %.sroa.10.1.3 = phi ptr [ %i.ec, %bb.n ], [ %.sroa.10.035.3, %bb.m ]
  %.sroa.023.1.3 = phi ptr [ %i.eb, %bb.n ], [ %i.dy, %bb.m ] ; 2 uses
  %i.ed = icmp eq ptr %.sroa.023.1.3, %i.ds
  br i1 %i.ed, label %._crit_edge.3, label %.lr.ph.3

._crit_edge.3:                                    ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit.3, %bb.l
  %i.ee = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.3, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.3, label %bb.o

bb.o:                                             ; preds = %._crit_edge.3
  %i.ef = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.eg = load ptr, ptr %i.bd, align 8, !tbaa !58 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = icmp ult ptr %i.ef, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i.i.3, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.o, %.lr.ph.i.i.i.3
  %.06.i.i.i.3 = phi ptr [ %i.ek, %.lr.ph.i.i.i.3 ], [ %i.ef, %bb.o ] ; 3 uses
  %i.ej = load ptr, ptr %.06.i.i.i.3, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef 512) #18
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.3, i64 8
  %i.el = icmp ult ptr %.06.i.i.i.3, %i.eg
  br i1 %i.el, label %.lr.ph.i.i.i.3, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.3, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.3: ; preds = %.lr.ph.i.i.i.3
  %.pre.i.i.3 = load ptr, ptr %1, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.3

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.3: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.3, %bb.o
  %i.em = phi ptr [ %.pre.i.i.3, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.3 ], [ %i.ee, %bb.o ]
  %i.en = load i64, ptr %i.be, align 8, !tbaa !61
  %i.eo = shl i64 %i.en, 3
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eo) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.3

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.3: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.3, %._crit_edge.3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit
  %.sroa.023.036 = phi ptr [ %.sroa.023.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit ], [ %i.bf, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.035 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %.sroa.13.034 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %i.eq = load ptr, ptr %.sroa.023.036, align 8, !tbaa !67
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.er)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.loopexit

bb.p:                                             ; preds = %.lr.ph
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.023.036, i64 8 ; 2 uses
  %i.et = icmp eq ptr %i.es, %.sroa.10.035
  br i1 %i.et, label %bb.q, label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.13.034, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !59 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EppEv.exit: ; preds = %bb.p, %bb.q
  %.sroa.13.1 = phi ptr [ %i.eu, %bb.q ], [ %.sroa.13.034, %bb.p ]
  %.sroa.10.1 = phi ptr [ %i.ew, %bb.q ], [ %.sroa.10.035, %bb.p ]
  %.sroa.023.1 = phi ptr [ %i.ev, %bb.q ], [ %i.es, %bb.p ] ; 2 uses
  %i.ex = icmp eq ptr %.sroa.023.1, %i.bg
  br i1 %i.ex, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.3, %bb.s
  %i.ey = load i32, ptr %i.ay, align 8, !tbaa !40
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ep)
          to label %bb.r unwind label %.loopexit, !llvm.loop !103

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit.preheader unwind label %bb.u

_ZN7rocksdb9MutexLockD2Ev.exit.preheader:         ; preds = %bb.t
  %.ptr13 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.fa = load ptr, ptr %.ptr13, align 8, !tbaa !56 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i15, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #19
  unreachable

bb.v:                                             ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !57 ; 2 uses
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !58 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = icmp ult ptr %i.ff, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i.i17, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16

.lr.ph.i.i.i17:                                   ; preds = %bb.v, %.lr.ph.i.i.i17
  %.06.i.i.i18 = phi ptr [ %i.fk, %.lr.ph.i.i.i17 ], [ %i.ff, %bb.v ] ; 3 uses
  %i.fj = load ptr, ptr %.06.i.i.i18, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef 512) #18
  %i.fk = getelementptr inbounds nuw i8, ptr %.06.i.i.i18, i64 8
  %i.fl = icmp ult ptr %.06.i.i.i18, %i.fg
  br i1 %i.fl, label %.lr.ph.i.i.i17, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19: ; preds = %.lr.ph.i.i.i17
  %.pre.i.i20 = load ptr, ptr %.ptr13, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19, %bb.v
  %i.fm = phi ptr [ %.pre.i.i20, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19 ], [ %i.fa, %bb.v ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !61
  %i.fp = shl i64 %i.fo, 3
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit.preheader, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16
  %.ptr13.1 = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.fq = load ptr, ptr %.ptr13.1, align 8, !tbaa !56 ; 2 uses
  %.not.i.i15.1 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i15.1, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.1, label %bb.w

bb.w:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !57 ; 2 uses
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !58 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %.lr.ph.i.i.i17.1, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.1

.lr.ph.i.i.i17.1:                                 ; preds = %bb.w, %.lr.ph.i.i.i17.1
  %.06.i.i.i18.1 = phi ptr [ %i.fy, %.lr.ph.i.i.i17.1 ], [ %i.ft, %bb.w ] ; 3 uses
  %i.fx = load ptr, ptr %.06.i.i.i18.1, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef 512) #18
  %i.fy = getelementptr inbounds nuw i8, ptr %.06.i.i.i18.1, i64 8
  %i.fz = icmp ult ptr %.06.i.i.i18.1, %i.fu
  br i1 %i.fz, label %.lr.ph.i.i.i17.1, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.1, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.1: ; preds = %.lr.ph.i.i.i17.1
  %.pre.i.i20.1 = load ptr, ptr %.ptr13.1, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.1: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.1, %bb.w
  %i.ga = phi ptr [ %.pre.i.i20.1, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.1 ], [ %i.fq, %bb.w ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !61
  %i.gd = shl i64 %i.gc, 3
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.1

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.1: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.1, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21
  %.ptr13.2 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ge = load ptr, ptr %.ptr13.2, align 8, !tbaa !56 ; 2 uses
  %.not.i.i15.2 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i15.2, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.2, label %bb.x

bb.x:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !57 ; 2 uses
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !58 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = icmp ult ptr %i.gh, %i.gj
  br i1 %i.gk, label %.lr.ph.i.i.i17.2, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.2

.lr.ph.i.i.i17.2:                                 ; preds = %bb.x, %.lr.ph.i.i.i17.2
  %.06.i.i.i18.2 = phi ptr [ %i.gm, %.lr.ph.i.i.i17.2 ], [ %i.gh, %bb.x ] ; 3 uses
  %i.gl = load ptr, ptr %.06.i.i.i18.2, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef 512) #18
  %i.gm = getelementptr inbounds nuw i8, ptr %.06.i.i.i18.2, i64 8
  %i.gn = icmp ult ptr %.06.i.i.i18.2, %i.gi
  br i1 %i.gn, label %.lr.ph.i.i.i17.2, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.2, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.2: ; preds = %.lr.ph.i.i.i17.2
  %.pre.i.i20.2 = load ptr, ptr %.ptr13.2, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.2

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.2: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.2, %bb.x
  %i.go = phi ptr [ %.pre.i.i20.2, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.2 ], [ %i.ge, %bb.x ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !61
  %i.gr = shl i64 %i.gq, 3
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.2

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.2: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.2, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.1
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !56  ; 2 uses
  %.not.i.i15.3 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i15.3, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.3, label %bb.y

bb.y:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.2
  %i.gt = load ptr, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %i.gu = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %.lr.ph.i.i.i17.3, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.3

.lr.ph.i.i.i17.3:                                 ; preds = %bb.y, %.lr.ph.i.i.i17.3
  %.06.i.i.i18.3 = phi ptr [ %i.gy, %.lr.ph.i.i.i17.3 ], [ %i.gt, %bb.y ] ; 3 uses
  %i.gx = load ptr, ptr %.06.i.i.i18.3, align 8, !tbaa !59
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef 512) #18
  %i.gy = getelementptr inbounds nuw i8, ptr %.06.i.i.i18.3, i64 8
  %i.gz = icmp ult ptr %.06.i.i.i18.3, %i.gu
  br i1 %i.gz, label %.lr.ph.i.i.i17.3, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.3, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.3: ; preds = %.lr.ph.i.i.i17.3
  %.pre.i.i20.3 = load ptr, ptr %i.c, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.3

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.3: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.3, %bb.y
  %i.ha = phi ptr [ %.pre.i.i20.3, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i19.3 ], [ %i.gs, %bb.y ]
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !61
  %i.hd = shl i64 %i.hc, 3
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #18
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.3

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.3: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i16.3, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.2
  call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ep) #17
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.hg, align 8, !tbaa !69
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !70
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #17, !inline_history !104
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #17, !inline_history !104
  br label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hs = add nsw i32 %i.hj, -1
  store i32 %i.hs, ptr %i.hg, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ht = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.hj, %bb.ac ], [ %i.ht, %bb.ad ]
  %i.hu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hu, label %bb.ae, label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #17
  br label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit21.3, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #17
  ret void

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit:             ; preds = %.lr.ph
  %lpad.loopexit40 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit: ; preds = %.lr.ph.1
  %lpad.loopexit43 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.2
  %lpad.loopexit46 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.3
  %lpad.loopexit.split-lp47 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.2, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit.1, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev.exit, %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit
  %lpad.loopexit30 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit40, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit43, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit ], [ %lpad.loopexit46, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp47, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hv = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.hv) #19
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS4_m.exit:
  %2 = alloca %"struct.std::_Deque_iterator.22", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Deque_iterator.22", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !124
  %i.ae = load <4 x ptr>, ptr %i.b, align 8, !tbaa !72, !noalias !125
  store <4 x ptr> %i.ae, ptr %2, align 8, !tbaa !72, !noalias !126
  %i.af = load <4 x ptr>, ptr %i.a, align 8, !tbaa !72, !noalias !127
  store <4 x ptr> %i.af, ptr %3, align 8, !tbaa !72, !noalias !126
  %i.ag = load <4 x ptr>, ptr %i.ad, align 8, !tbaa !72
  store <4 x ptr> %i.ag, ptr %4, align 8, !tbaa !72, !noalias !126
  invoke void @_ZSt15__copy_move_ditILb0EPN7rocksdb18GenericRateLimiter3ReqERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS4_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !123
  ret void

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EEC2ERKS4_m.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #17
  resume { ptr, i32 } %i.ah
}

declare void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb18GenericRateLimiterD0Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7rocksdb18GenericRateLimiterD1Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 616) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter17SetBytesPerSecondEl(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 %1, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = sdiv i64 9223372036854775807, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = icmp slt i64 %i.d, %i.f
  %i.h = mul nsw i64 %i.f, %1
  %i.i = sdiv i64 %i.h, 1000000
  %.0.i.i = select i1 %i.g, i64 9223372036854, i64 %i.i
  store atomic i64 %.0.i.i, ptr %i.c monotonic, align 8
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb18GenericRateLimiter23SetBytesPerSecondLockedEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 %1, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = sdiv i64 9223372036854775807, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = icmp slt i64 %i.c, %i.e
  %i.g = mul nsw i64 %i.e, %1
  %i.h = sdiv i64 %i.g, 1000000
  %.0.i = select i1 %i.f, i64 9223372036854, i64 %i.h
  store atomic i64 %.0.i, ptr %i.b monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter19SetSingleBurstBytesEl(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(616) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr @.str, ptr %3, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 55, ptr %i.b, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str.1, ptr %4, align 8, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !132
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN7rocksdb9MutexLockD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  store atomic i64 %2, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !75, !alias.scope !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !133
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter7RequestElNS_3Env10IOPriorityEPNS_10StatisticsE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.rocksdb::GenericRateLimiter::Req", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 585
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47, !range !17, !noundef !18
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.c unwind label %bb.l, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.l = udiv i64 %i.k, 1000
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = sub nsw i64 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = mul nsw i64 %i.q, 100
  %.not = icmp slt i64 %i.o, %i.r
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !42, !noalias !139 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12, !noalias !139
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !noalias !139
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.noexc unwind label %bb.m, !inline_history !140

.noexc:                                           ; preds = %bb.d
  %i.x = udiv i64 %i.w, 1000                      ; 2 uses
  store i64 %i.x, ptr %i.m, align 8, !tbaa !76, !noalias !139
  %i.y = load i64, ptr %i.p, align 8, !tbaa !76, !noalias !139 ; 2 uses
  %i.z = xor i64 %i.n, -1
  %i.aa = add i64 %i.x, %i.z
  %i.ab = add i64 %i.aa, %i.y
  %i.ac = sdiv i64 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !48, !noalias !139
  %i.af = mul nsw i64 %i.ae, 100
  %i.ag = sdiv i64 %i.af, %i.ac                   ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !12, !noalias !139
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !139
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(616) %0)
          to label %.noexc81 unwind label %bb.m, !inline_history !140 ; 3 uses

.noexc81:                                         ; preds = %.noexc
  %i.al = icmp eq i64 %i.ag, 0
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc81
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.an = load i64, ptr %i.am, align 8, !tbaa !49, !noalias !139
  %i.ao = sdiv i64 %i.an, 20
  br label %bb.j

bb.f:                                             ; preds = %.noexc81
  %i.ap = icmp slt i64 %i.ag, 50
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated24.i = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 92233720368547758)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49, !noalias !139
  %i.as = sdiv i64 %i.ar, 20
  %i.at = mul nsw i64 %.sroa.speculated24.i, 20
  %i.au = sdiv i64 %i.at, 21
  %.sroa.speculated18.i = tail call i64 @llvm.smax.i64(i64 %i.as, i64 %i.au)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.av = icmp samesign ugt i64 %i.ag, 90
  br i1 %i.av, label %bb.i, label %_ZN7rocksdb6StatusD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated14.i = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 87841638446235960)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ax = mul nsw i64 %.sroa.speculated14.i, 21
  %i.ay = sdiv i64 %i.ax, 20
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !76, !noalias !139
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.az)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  %.0.i = phi i64 [ %i.ao, %bb.e ], [ %.sroa.speculated18.i, %bb.g ], [ %.sroa.speculated.i, %bb.i ] ; 4 uses
  %.not.i = icmp eq i64 %.0.i, %i.ak
  br i1 %.not.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i64 %.0.i, ptr %i.ba monotonic, align 8, !noalias !139
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = sdiv i64 9223372036854775807, %.0.i
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !139 ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  %i.bf = mul nsw i64 %i.bd, %.0.i
  %i.bg = sdiv i64 %i.bf, 1000000
  %.0.i.i.i = select i1 %i.be, i64 9223372036854, i64 %i.bg
  store atomic i64 %.0.i.i.i, ptr %i.bb monotonic, align 8, !noalias !139
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.k, %bb.j, %bb.h
  store i64 0, ptr %i.ad, align 8, !tbaa !48, !noalias !139
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.m:                                             ; preds = %.noexc, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %bb.c, %_ZN7rocksdb6StatusD2Ev.exit, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !39, !range !17, !noundef !18
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge80, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = zext i32 %2 to i64                      ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !76
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !41 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.speculated131 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.bs) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bn ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !76
  %i.bx = add nsw i64 %i.bw, %.sroa.speculated131
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !76
  %i.by = load i64, ptr %i.br, align 8, !tbaa !41
  %i.bz = sub nsw i64 %i.by, %.sroa.speculated131
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !41
  %i.ca = sub nuw nsw i64 %.sroa.speculated, %.sroa.speculated131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0139 = phi i64 [ %i.ca, %bb.p ], [ %.sroa.speculated, %bb.o ] ; 3 uses
  %i.cb = icmp eq i64 %.0139, 0
  br i1 %i.cb, label %bb.au, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %.0139, ptr %5, align 8, !tbaa !78
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0139, ptr %i.cc, align 8, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  invoke void @_ZN7rocksdb4port7CondVarC1EPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull %i.b)
          to label %_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit unwind label %bb.x

_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit: ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cf = getelementptr inbounds nuw [80 x i8], ptr %i.ce, i64 %i.bn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %5, ptr %i.a, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !80 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !141
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %.not.i.i87 = icmp eq ptr %i.ch, %i.ck
  br i1 %.not.i.i87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit
  store ptr %5, ptr %i.ch, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !80
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %_ZN7rocksdb18GenericRateLimiter3ReqC2ElPNS_4port5MutexE.exit
  invoke void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit unwind label %bb.y

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %.not.i91 = icmp eq ptr %3, null
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit
  %.062 = phi i64 [ 0, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit ], [ %.264, %.loopexit ] ; 2 uses
  %.043 = phi i8 [ 0, %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9push_backEOS3_.exit ], [ %.245, %.loopexit ] ; 2 uses
  %i.cy = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 160
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %bb.v unwind label %bb.z, !inline_history !0

bb.v:                                             ; preds = %bb.u
  %i.dd = udiv i64 %i.dc, 1000                    ; 2 uses
  %i.de = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.dh = trunc nuw i8 %.043 to i1
  %spec.select = select i1 %i.dh, i64 %.062, i64 %i.dd ; 2 uses
  %i.di = load i8, ptr %i.co, align 8, !tbaa !46, !range !17, !noundef !18
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.aa, label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.y:                                             ; preds = %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.as

bb.z:                                             ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aa:                                            ; preds = %bb.w
  invoke void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %bb.ai unwind label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ac:                                            ; preds = %bb.w
  %i.do = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dt = add i64 %i.ds, %i.df
  br i1 %.not.i91, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = load ptr, ptr %3, align 8, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 176
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef 124, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.ag, !inline_history !136

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.ad, %bb.ae
  %i.dx = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.dy = add nsw i64 %i.dx, 1
  store i64 %i.dy, ptr %i.cp, align 8, !tbaa !48
  store i8 1, ptr %i.co, align 8, !tbaa !46
  %i.dz = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull %i.cd, i64 %i.dt)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  store i8 0, ptr %i.co, align 8, !tbaa !46
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %bb.ac
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ah:                                            ; preds = %bb.v
  invoke void @_ZN7rocksdb18GenericRateLimiter33RefillBytesAndGrantRequestsLockedEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
          to label %bb.ai unwind label %bb.ab

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.aa
  %.264 = phi i64 [ %spec.select, %bb.aa ], [ %spec.select, %bb.af ], [ %.062, %bb.ah ] ; 2 uses
  %.245 = phi i8 [ 1, %bb.aa ], [ 1, %bb.af ], [ %.043, %bb.ah ] ; 3 uses
  %i.ef = load i64, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.cq, align 8, !tbaa !63
  %i.ei = load ptr, ptr %i.cr, align 8, !tbaa !63 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %.critedge.1, label %bb.aj

.critedge.1:                                      ; preds = %.critedge.preheader
  %i.ek = load ptr, ptr %i.cs, align 8, !tbaa !63
  %i.el = load ptr, ptr %i.ct, align 8, !tbaa !63 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %.critedge.2, label %bb.aj

.critedge.2:                                      ; preds = %.critedge.1
  %i.en = load ptr, ptr %i.cu, align 8, !tbaa !63
  %i.eo = load ptr, ptr %i.cv, align 8, !tbaa !63 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %.critedge.3, label %bb.aj

.critedge.3:                                      ; preds = %.critedge.2
  %i.eq = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.er = load ptr, ptr %i.cx, align 8, !tbaa !63 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %.loopexit.thread, label %bb.aj

.loopexit.thread:                                 ; preds = %.critedge.3
  %i.et = load i8, ptr %i.bj, align 8, !tbaa !39, !range !17, !noundef !18
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.am, label %bb.ao

bb.aj:                                            ; preds = %.critedge.3, %.critedge.2, %.critedge.1, %.critedge.preheader
  %.lcssa = phi ptr [ %i.ei, %.critedge.preheader ], [ %i.el, %.critedge.1 ], [ %i.eo, %.critedge.2 ], [ %i.er, %.critedge.3 ]
  %i.ev = load ptr, ptr %.lcssa, align 8, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ew)
          to label %..loopexit_crit_edge unwind label %bb.ak

..loopexit_crit_edge:                             ; preds = %bb.aj
  %.pre = load i64, ptr %5, align 8
  br label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.ai
  %i.ey = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.ef, %bb.ai ]
  %i.ez = load i8, ptr %i.bj, align 8, !tbaa !39, !range !17, !noundef !18
  %i.fa = trunc nuw i8 %i.ez to i1                ; 2 uses
  %i.fb = icmp slt i64 %i.ey, 1
  %.not73 = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %.not73, label %bb.al, label %bb.u, !llvm.loop !137

bb.al:                                            ; preds = %.loopexit
  br i1 %i.fa, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.loopexit.thread, %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !40
  %i.fe = add nsw i32 %i.fd, -1
  store i32 %i.fe, ptr %i.fc, align 8, !tbaa !40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ff)
          to label %._crit_edge unwind label %bb.an

._crit_edge:                                      ; preds = %bb.am
  %.pre158 = trunc nuw i8 %.245 to i1
  br label %bb.ar

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.loopexit.thread, %bb.al
  %i.fh = trunc nuw i8 %.245 to i1
  br i1 %i.fh, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fi = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 160
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i64 %i.fl(ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %bb.aq unwind label %bb.an, !inline_history !0

bb.aq:                                            ; preds = %bb.ap
  %i.fn = udiv i64 %i.fm, 1000
  %i.fo = sub nsw i64 %i.fn, %.264
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %bb.ao, %bb.aq
  %i.fp = phi i1 [ true, %._crit_edge ], [ false, %bb.ao ], [ false, %bb.aq ]
  %.pre-phi = phi i1 [ %.pre158, %._crit_edge ], [ false, %bb.ao ], [ true, %bb.aq ]
  %.059 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.ao ], [ %i.fo, %bb.aq ]
  call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cd) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.au

bb.as:                                            ; preds = %bb.z, %bb.ak, %bb.ag, %bb.ab, %bb.an, %bb.y
  %.pn74 = phi { ptr, i32 } [ %i.fg, %bb.an ], [ %i.dl, %bb.y ], [ %i.dm, %bb.z ], [ %i.ex, %bb.ak ], [ %i.dn, %bb.ab ], [ %i.ee, %bb.ag ]
  call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cd) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.x
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %bb.as ], [ %i.dk, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ay

bb.au:                                            ; preds = %bb.ar, %bb.q
  %.261 = phi i64 [ 0, %bb.q ], [ %.059, %bb.ar ] ; 2 uses
  %.4 = phi i1 [ false, %bb.q ], [ %.pre-phi, %bb.ar ]
  %.2.not = phi i1 [ false, %bb.q ], [ %i.fp, %bb.ar ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.au
  br i1 %.2.not, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit
  %switch.selectcmp2.i = icmp eq i32 %4, 0        ; 5 uses
  %.not.i95 = icmp eq ptr %3, null
  br i1 %.not.i95, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread: ; preds = %bb.aw
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 127, i32 128
  %i.fs = load ptr, ptr %3, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 176
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i, i64 noundef 1), !inline_history !136
  %switch.select3.i98 = select i1 %switch.selectcmp2.i, i32 125, i32 126
  %i.fv = load ptr, ptr %3, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 176
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i98, i64 noundef %.sroa.speculated), !inline_history !136
  br i1 %.4, label %bb.ax, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit

bb.ax:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread
  %switch.select3.i102141 = select i1 %switch.selectcmp2.i, i32 129, i32 130
  %i.fy = load ptr, ptr %3, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 176
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i102141, i64 noundef 1), !inline_history !136
  %switch.select3.i106 = select i1 %switch.selectcmp2.i, i32 131, i32 132
  %i.gb = load ptr, ptr %3, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 176
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i106, i64 noundef %.261), !inline_history !136
  %switch.select3.i110 = select i1 %switch.selectcmp2.i, i32 73, i32 74
  %i.ge = load ptr, ptr %3, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 216
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(33) %3, i32 noundef %switch.select3.i110, i64 noundef %.261), !inline_history !138
  br label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit

bb.ay:                                            ; preds = %bb.l, %bb.m, %bb.at
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %bb.at ], [ %i.bi, %bb.m ], [ %i.bh, %bb.l ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit112 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit112:                ; preds = %bb.ay
  resume { ptr, i32 } %.pn74.pn.pn

.critedge80:                                      ; preds = %bb.n
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit unwind label %bb.ba

bb.ba:                                            ; preds = %.critedge80
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  tail call void @__clang_call_terminate(ptr %i.gk) #19
  unreachable

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit: ; preds = %bb.aw, %.critedge80, %bb.ax, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit100.thread, %_ZN7rocksdb9MutexLockD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter7RequestElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %4)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7rocksdb18GenericRateLimiter11RequestImplElNS_3Env10IOPriorityEPNS_10StatisticsENS_11RateLimiter6OpTypeE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter10TuneLockedEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(616) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d), !inline_history !0
  %i.i = udiv i64 %i.h, 1000                      ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %i.l = xor i64 %i.b, -1
  %i.m = add i64 %i.i, %i.l
  %i.n = add i64 %i.m, %i.k
  %i.o = sdiv i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = mul nsw i64 %i.q, 100
  %i.s = sdiv i64 %i.r, %i.o                      ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(616) %1) ; 3 uses
  %i.x = icmp eq i64 %i.s, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  %i.aa = sdiv i64 %i.z, 20
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp slt i64 %i.s, 50
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated24 = tail call i64 @llvm.smin.i64(i64 %i.w, i64 92233720368547758)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = sdiv i64 %i.ad, 20
  %i.af = mul nsw i64 %.sroa.speculated24, 20
  %i.ag = sdiv i64 %i.af, 21
  %.sroa.speculated18 = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 %i.ag)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp samesign ugt i64 %i.s, 90
  br i1 %i.ah, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated14 = tail call i64 @llvm.smin.i64(i64 %i.w, i64 87841638446235960)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.aj = mul nsw i64 %.sroa.speculated14, 21
  %i.ak = sdiv i64 %i.aj, 20
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !76
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.al)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.b ], [ %.sroa.speculated18, %bb.d ], [ %.sroa.speculated, %bb.f ] ; 4 uses
  %.not = icmp eq i64 %.0, %i.w
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  store atomic i64 %.0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = sdiv i64 9223372036854775807, %.0
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.aq = icmp slt i64 %i.ao, %i.ap
  %i.ar = mul nsw i64 %i.ap, %.0
  %i.as = sdiv i64 %i.ar, 1000000
  %.0.i.i = select i1 %i.aq, i64 9223372036854, i64 %i.as
  store atomic i64 %.0.i.i, ptr %i.an monotonic, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.h, %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !75, !alias.scope !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !144
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter33RefillBytesAndGrantRequestsLockedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((248, 256)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b), !inline_history !0
  %i.g = udiv i64 %i.f, 1000
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = add i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.j, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 13 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20, !noalias !147 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store i32 3, ptr %i.o, align 4, !tbaa !82, !noalias !147
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44, !noalias !147 ; 2 uses
  %i.t = load i32, ptr %i.q, align 4, !tbaa !45, !noalias !147
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 16807              ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = and i64 %i.v, 2147483647
  %i.y = add nuw nsw i64 %i.w, %i.x
  %i.z = trunc nuw i64 %i.y to i32                ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = add i32 %i.z, -2147483647
  %spec.select.i.i.i.i = select i1 %i.aa, i32 %i.ab, i32 %i.z ; 2 uses
  %i.ac = urem i32 %spec.select.i.i.i.i, %i.s
  %i.ad = icmp ne i32 %i.ac, 0                    ; 3 uses
  %i.ae = zext i32 %spec.select.i.i.i.i to i64
  %i.af = mul nuw nsw i64 %i.ae, 16807            ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = and i64 %i.af, 2147483647
  %i.ai = add nuw nsw i64 %i.ag, %i.ah
  %i.aj = trunc nuw i64 %i.ai to i32              ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = add i32 %i.aj, -2147483647
  %spec.select.i.i.i10.i = select i1 %i.ak, i32 %i.al, i32 %i.aj ; 2 uses
  store i32 %spec.select.i.i.i10.i, ptr %i.q, align 4, !tbaa !45, !noalias !147
  %i.am = urem i32 %spec.select.i.i.i10.i, %i.s
  %i.an = icmp eq i32 %i.am, 0                    ; 3 uses
  %i.ao = xor i1 %i.an, true
  %i.ap = zext i1 %i.ao to i32
  %i.aq = zext i1 %i.an to i32
  %.sink12.i = select i1 %i.ad, i32 %i.aq, i32 2
  %.sink11.in.i = xor i1 %i.ad, %i.an
  %.sink.i = select i1 %i.ad, i32 2, i32 %i.ap
  %.sink11.i = zext i1 %.sink11.in.i to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  store i32 %.sink12.i, ptr %i.ar, align 4, !tbaa !82, !noalias !147
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i32 %.sink11.i, ptr %i.as, align 4, !tbaa !82, !noalias !147
  store i32 %.sink.i, ptr %i.p, align 4, !tbaa !82, !noalias !147
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit, %bb.a
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 4 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !67 ; 5 uses
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !78 ; 3 uses
  %i.bh = icmp slt i64 %i.bf, %i.bg
  br i1 %i.bh, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.bi = sub nsw i64 %i.bg, %i.bf
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !78
  store i64 0, ptr %i.n, align 8, !tbaa !41
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bj = sub nsw i64 %i.bf, %i.bg
  store i64 %i.bj, ptr %i.n, align 8, !tbaa !41
  store i64 0, ptr %i.be, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !79
  %i.bm = load i64, ptr %i.ax, align 8, !tbaa !76
  %i.bn = add nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.ax, align 8, !tbaa !76
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !148
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %.not.i = icmp eq ptr %i.bc, %i.bp
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit

bb.f:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !149
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef 512) #18
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !62
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 3 uses
  store ptr %i.bu, ptr %i.az, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 512
  store ptr %i.bv, ptr %i.ay, align 8, !tbaa !65
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit: ; preds = %bb.e, %bb.f
  %storemerge.i = phi ptr [ %i.bq, %bb.e ], [ %i.bu, %bb.f ]
  store ptr %storemerge.i, ptr %i.aw, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bw)
          to label %bb.b unwind label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.2
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.3
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23

_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23: ; preds = %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit ], [ %lpad.loopexit40, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit ], [ %lpad.loopexit43, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 16) #18
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %bb.b, %.thread
  %i.bx = load i32, ptr %i.p, align 4, !tbaa !82
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [80 x i8], ptr %i.at, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.by ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1, %.loopexit
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !63 ; 4 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.loopexit.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !67 ; 5 uses
  %i.ck = load i64, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !78 ; 3 uses
  %i.cm = icmp slt i64 %i.ck, %i.cl
  br i1 %i.cm, label %.thread.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = sub nsw i64 %i.ck, %i.cl
  store i64 %i.cn, ptr %i.n, align 8, !tbaa !41
  store i64 0, ptr %i.cj, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !79
  %i.cq = load i64, ptr %i.cc, align 8, !tbaa !76
  %i.cr = add nsw i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %i.cc, align 8, !tbaa !76
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !148
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %.not.i.1 = icmp eq ptr %i.ch, %i.ct
  br i1 %.not.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1

bb.k:                                             ; preds = %bb.i
  %i.cv = load ptr, ptr %i.ce, align 8, !tbaa !149
  tail call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef 512) #18
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.cf, align 8, !tbaa !62
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !59 ; 3 uses
  store ptr %i.cy, ptr %i.ce, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 512
  store ptr %i.cz, ptr %i.cd, align 8, !tbaa !65
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.1: ; preds = %bb.k, %bb.j
  %storemerge.i.1 = phi ptr [ %i.cu, %bb.j ], [ %i.cy, %bb.k ]
  store ptr %storemerge.i.1, ptr %i.cb, align 8, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da)
          to label %bb.g unwind label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit

.thread.1:                                        ; preds = %bb.h
  %i.db = sub nsw i64 %i.cl, %i.ck
  store i64 %i.db, ptr %i.cj, align 8, !tbaa !78
  store i64 0, ptr %i.n, align 8, !tbaa !41
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %bb.g, %.thread.1
  %i.dc = load i32, ptr %i.as, align 4, !tbaa !82
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.at, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dd ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.2, %.loopexit.1
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !63 ; 4 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %.loopexit.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !67 ; 5 uses
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !78 ; 3 uses
  %i.dr = icmp slt i64 %i.dp, %i.dq
  br i1 %i.dr, label %.thread.2, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = sub nsw i64 %i.dp, %i.dq
  store i64 %i.ds, ptr %i.n, align 8, !tbaa !41
  store i64 0, ptr %i.do, align 8, !tbaa !78
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79
  %i.dv = load i64, ptr %i.dh, align 8, !tbaa !76
  %i.dw = add nsw i64 %i.dv, %i.du
  store i64 %i.dw, ptr %i.dh, align 8, !tbaa !76
  %i.dx = load ptr, ptr %i.di, align 8, !tbaa !148
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %.not.i.2 = icmp eq ptr %i.dm, %i.dy
  br i1 %.not.i.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.2

bb.p:                                             ; preds = %bb.n
  %i.ea = load ptr, ptr %i.dj, align 8, !tbaa !149
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef 512) #18
  %i.eb = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.dk, align 8, !tbaa !62
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !59 ; 3 uses
  store ptr %i.ed, ptr %i.dj, align 8, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 512
  store ptr %i.ee, ptr %i.di, align 8, !tbaa !65
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.2

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.2: ; preds = %bb.p, %bb.o
  %storemerge.i.2 = phi ptr [ %i.dz, %bb.o ], [ %i.ed, %bb.p ]
  store ptr %storemerge.i.2, ptr %i.dg, align 8, !tbaa !83
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ef)
          to label %bb.l unwind label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit

.thread.2:                                        ; preds = %bb.m
  %i.eg = sub nsw i64 %i.dq, %i.dp
  store i64 %i.eg, ptr %i.do, align 8, !tbaa !78
  store i64 0, ptr %i.n, align 8, !tbaa !41
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %bb.l, %.thread.2
  %i.eh = load i32, ptr %i.ar, align 4, !tbaa !82
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [80 x i8], ptr %i.at, i64 %i.ei ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ei ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 40 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.3, %.loopexit.2
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !63
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !63 ; 4 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %.loopexit.3, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !67 ; 5 uses
  %i.eu = load i64, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !78 ; 3 uses
  %i.ew = icmp slt i64 %i.eu, %i.ev
  br i1 %i.ew, label %.thread.3, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = sub nsw i64 %i.eu, %i.ev
  store i64 %i.ex, ptr %i.n, align 8, !tbaa !41
  store i64 0, ptr %i.et, align 8, !tbaa !78
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !79
  %i.fa = load i64, ptr %i.em, align 8, !tbaa !76
  %i.fb = add nsw i64 %i.fa, %i.ez
  store i64 %i.fb, ptr %i.em, align 8, !tbaa !76
  %i.fc = load ptr, ptr %i.en, align 8, !tbaa !148
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8
  %.not.i.3 = icmp eq ptr %i.er, %i.fd
  br i1 %.not.i.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.3

bb.u:                                             ; preds = %bb.s
  %i.ff = load ptr, ptr %i.eo, align 8, !tbaa !149
  tail call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef 512) #18
  %i.fg = load ptr, ptr %i.ep, align 8, !tbaa !57
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  store ptr %i.fh, ptr %i.ep, align 8, !tbaa !62
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !59 ; 3 uses
  store ptr %i.fi, ptr %i.eo, align 8, !tbaa !64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 512
  store ptr %i.fj, ptr %i.en, align 8, !tbaa !65
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.3

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE9pop_frontEv.exit.3: ; preds = %bb.u, %bb.t
  %storemerge.i.3 = phi ptr [ %i.fe, %bb.t ], [ %i.fi, %bb.u ]
  store ptr %storemerge.i.3, ptr %i.el, align 8, !tbaa !83
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  invoke void @_ZN7rocksdb4port7CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(56) %i.fk)
          to label %bb.q unwind label %_ZNSt6vectorIN7rocksdb3Env10IOPriorityESaIS2_EED2Ev.exit23.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.3:                                        ; preds = %bb.r
  %i.fl = sub nsw i64 %i.ev, %i.eu
  store i64 %i.fl, ptr %i.et, align 8, !tbaa !78
  store i64 0, ptr %i.n, align 8, !tbaa !41
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %bb.q, %.thread.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18GenericRateLimiter36GeneratePriorityIterationOrderLockedEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.5") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !153
  store i32 3, ptr %i.a, align 4, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !45
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 16807              ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = and i64 %i.k, 2147483647
  %i.n = add nuw nsw i64 %i.l, %i.m
  %i.o = trunc nuw i64 %i.n to i32                ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = add i32 %i.o, -2147483647
  %spec.select.i.i.i = select i1 %i.p, i32 %i.q, i32 %i.o ; 2 uses
  %i.r = urem i32 %spec.select.i.i.i, %i.h
  %i.s = icmp ne i32 %i.r, 0                      ; 3 uses
  %i.t = zext i32 %spec.select.i.i.i to i64
  %i.u = mul nuw nsw i64 %i.t, 16807              ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = and i64 %i.u, 2147483647
  %i.x = add nuw nsw i64 %i.v, %i.w
  %i.y = trunc nuw i64 %i.x to i32                ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = add i32 %i.y, -2147483647
  %spec.select.i.i.i10 = select i1 %i.z, i32 %i.aa, i32 %i.y ; 2 uses
  store i32 %spec.select.i.i.i10, ptr %i.f, align 4, !tbaa !45
  %i.ab = urem i32 %spec.select.i.i.i10, %i.h
  %i.ac = icmp eq i32 %i.ab, 0                    ; 3 uses
  %i.ad = xor i1 %i.ac, true
  %i.ae = zext i1 %i.ad to i32
  %i.af = zext i1 %i.ac to i32
  %.sink12 = select i1 %i.s, i32 %i.af, i32 2
  %.sink11.in = xor i1 %i.ac, %i.s
  %.sink = select i1 %i.s, i32 2, i32 %i.ae
  %.sink11 = zext i1 %.sink11.in to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sink12, ptr %i.ag, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink11, ptr %i.ah, align 4, !tbaa !82
  store i32 %.sink, ptr %i.d, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7rocksdb21NewGenericRateLimiterElliNS_11RateLimiter4ModeEbl(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #20 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb18GenericRateLimiterC1ElliNS_11RateLimiter4ModeERKSt10shared_ptrINS_11SystemClockEEbl(ptr noundef nonnull align 8 dereferenceable(616) %i.a, i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i1 noundef zeroext %4, i64 noundef %5)
          to label %_ZNSt10unique_ptrIN7rocksdb11RateLimiterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.c

_ZNSt10unique_ptrIN7rocksdb11RateLimiterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b
  ret ptr %i.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 616) #18
  resume { ptr, i32 } %i.c
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11RateLimiterD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11RateLimiterD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11RateLimiter19SetSingleBurstBytesEl(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 3, ptr %0, align 8, !tbaa !93, !alias.scope !156
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !94, !alias.scope !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !75, !alias.scope !156
  store i32 0, ptr %i.b, align 2, !alias.scope !156
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11RateLimiter7RequestElNS_3Env10IOPriorityE(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11RateLimiter7RequestElNS_3Env10IOPriorityEPNS_10StatisticsE(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11RateLimiter7RequestElNS_3Env10IOPriorityEPNS_10StatisticsENS0_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %4)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb11RateLimiter23GetTotalPendingRequestsEPlNS_3Env10IOPriorityE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 3, ptr %0, align 8, !tbaa !93, !alias.scope !159
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !94, !alias.scope !159
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !75, !alias.scope !159
  store i32 0, ptr %i.b, align 2, !alias.scope !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb11RateLimiter13IsRateLimitedENS0_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = icmp eq i32 %1, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i32 %i.b, 0
  %i.f = icmp ne i32 %1, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %or.cond3.not, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb18GenericRateLimiter19GetSingleBurstBytesEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb18GenericRateLimiter20GetTotalBytesThroughENS_3Env10IOPriorityE(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = icmp eq i32 %1, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = load <4 x i64>, ptr %i.c, align 8, !tbaa !76
  %i.e = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.d)
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.09 = phi i64 [ %i.h, %bb.b ], [ %i.e, %.preheader ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %.loopexit
  ret i64 %.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb18GenericRateLimiter16GetTotalRequestsENS_3Env10IOPriorityE(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = icmp eq i32 %1, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = load <4 x i64>, ptr %i.c, align 8, !tbaa !76
  %i.e = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.d)
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.09 = phi i64 [ %i.h, %bb.b ], [ %i.e, %.preheader ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %.loopexit
  ret i64 %.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb18GenericRateLimiter23GetTotalPendingRequestsEPlNS_3Env10IOPriorityE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(616) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = icmp eq i32 %3, 4
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.o = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.d, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !72 ; 2 uses
  %i.p = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.e, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !59
  %i.q = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !72 ; 2 uses
  %i.r = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.g, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !72 ; 2 uses
  %i.s = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.h, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !59
  %i.t = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.f, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !72 ; 2 uses
  %i.u = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.j, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !72 ; 2 uses
  %i.v = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.k, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !59
  %i.w = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !72 ; 2 uses
  %i.x = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.m, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !72 ; 2 uses
  %i.y = shufflevector <3 x ptr> %i.r, <3 x ptr> poison, <3 x i32> <i32 poison, i32 2, i32 poison>
  %i.z = shufflevector <3 x ptr> %i.o, <3 x ptr> %i.y, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.aa = shufflevector <3 x ptr> %i.u, <3 x ptr> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ab = shufflevector <4 x ptr> %i.z, <4 x ptr> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ac = shufflevector <3 x ptr> %i.x, <3 x ptr> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %i.ad = shufflevector <4 x ptr> %i.ab, <4 x ptr> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.ae = ptrtoint <4 x ptr> %i.ad to <4 x i64>
  %i.af = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.l, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !72 ; 2 uses
  %i.ag = shufflevector <4 x ptr> %i.t, <4 x ptr> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x ptr> %i.q, <4 x ptr> %i.ag, <4 x i32> <i32 3, i32 5, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x ptr> %i.ah, <4 x ptr> %i.w, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.aj = shufflevector <4 x ptr> %i.ai, <4 x ptr> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ak = ptrtoint <4 x ptr> %i.aj to <4 x i64>
  %i.al = sub <4 x i64> %i.ae, %i.ak
  %i.am = ashr exact <4 x i64> %i.al, splat (i64 3)
  %i.an = icmp ne <4 x ptr> %i.ad, splat (ptr null)
  %i.ao = sext <4 x i1> %i.an to <4 x i64>
  %i.ap = add nsw <4 x i64> %i.am, %i.ao
  %i.aq = shl nsw <4 x i64> %i.ap, splat (i64 6)
  %i.ar = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.n, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !59
  %i.as = shufflevector <3 x ptr> %i.p, <3 x ptr> %i.s, <8 x i32> <i32 2, i32 0, i32 5, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <3 x ptr> %i.v, <3 x ptr> poison, <8 x i32> <i32 2, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x ptr> %i.as, <8 x ptr> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.av = shufflevector <3 x ptr> %i.ar, <3 x ptr> poison, <8 x i32> <i32 2, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <8 x ptr> %i.au, <8 x ptr> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ax = ptrtoint <8 x ptr> %i.aw to <8 x i64>
  %i.ay = shufflevector <3 x ptr> %i.o, <3 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x ptr> %i.ay, <4 x ptr> %i.q, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <3 x ptr> %i.r, <3 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <8 x ptr> %i.az, <8 x ptr> %i.ba, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x ptr> %i.t, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bd = shufflevector <8 x ptr> %i.bb, <8 x ptr> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <3 x ptr> %i.u, <3 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <8 x ptr> %i.bd, <8 x ptr> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x ptr> %i.w, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bh = shufflevector <8 x ptr> %i.bf, <8 x ptr> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.bi = shufflevector <3 x ptr> %i.x, <3 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bj = shufflevector <8 x ptr> %i.bh, <8 x ptr> %i.bi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.bk = shufflevector <4 x ptr> %i.af, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = shufflevector <8 x ptr> %i.bj, <8 x ptr> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.bm = ptrtoint <8 x ptr> %i.bl to <8 x i64>
  %i.bn = sub <8 x i64> %i.ax, %i.bm
  %i.bo = shufflevector <8 x i64> %i.bn, <8 x i64> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x i64> %i.aq, <4 x i64> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <12 x i64> %i.bo, <12 x i64> %i.bp, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.br = ashr exact <12 x i64> %i.bq, <i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 0, i64 0, i64 0, i64 0>
  %i.bs = tail call i64 @llvm.vector.reduce.add.v12i64(<12 x i64> %i.br)
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bu = zext i32 %3 to i64
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bt, i64 %i.bu ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = icmp ne ptr %i.bz, null
  %.neg.i.i13 = sext i1 %i.cg to i64
  %i.ch = add nsw i64 %i.cf, %.neg.i.i13
  %i.ci = shl nsw i64 %i.ch, 6
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = add nsw i64 %i.ci, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !65
  %i.ct = load ptr, ptr %i.bx, align 8, !tbaa !63
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3
  %i.cy = add nsw i64 %i.cq, %i.cx
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %storemerge = phi i64 [ %i.cy, %bb.b ], [ %i.bs, %.preheader ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !76
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.cz, align 8, !tbaa !75, !alias.scope !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !162
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  tail call void @__clang_call_terminate(ptr %i.db) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb18GenericRateLimiter17GetBytesPerSecondEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb18GenericRateLimiter13TEST_SetClockESt10shared_ptrINS_11SystemClockEE(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef align 8 %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !35   ; 8 uses
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !36
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !70
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !163
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !163
  br label %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17
  br label %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit

_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.h unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit
  %i.z = udiv i64 %i.y, 1000
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !43
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.h
  ret void

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEaSEOS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit2 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #19
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit2:                  ; preds = %bb.j
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !61
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !56
  %i.g = load i64, ptr %i.d, align 8, !tbaa !61
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20
          to label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !164

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #17 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !59
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #18
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #21
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #19
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #17 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !56
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !61
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #21
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !62
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !59  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !62
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !59 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !65
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.ar = and i64 %1, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !80
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #19
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !165
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !38   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !165
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !166
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !166
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.c, %i.f
  br i1 %i.g, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i, align 8, !tbaa !59
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #18
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.j = icmp ult ptr %.06.i, %i.e
  br i1 %i.j, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit, !llvm.loop !1

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit, %bb.b
  %i.k = phi ptr [ %.pre, %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !61
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__copy_move_ditILb0EPN7rocksdb18GenericRateLimiter3ReqERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = load ptr, ptr %1, align 8, !tbaa !179    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180
  %i.i = load ptr, ptr %3, align 8, !tbaa !63     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.p, %i.f
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i
  %.sroa.1379.0 = phi ptr [ %.sroa.1379.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.o, %bb.b ] ; 2 uses
  %.sroa.878.0 = phi ptr [ %.sroa.878.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.477.0 = phi ptr [ %.sroa.477.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.076.0 = phi ptr [ %storemerge.i.i, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.i, %bb.b ] ; 4 uses
  %i.t = phi ptr [ %i.at, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.m, %bb.b ] ; 3 uses
  %.013.i = phi ptr [ %i.y, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %storemerge12.i = phi i64 [ %i.au, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %.sroa.076.0 to i64         ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.x, i64 %storemerge12.i) ; 7 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.013.i, i64 %.sroa.speculated.i
  %i.z = icmp sgt i64 %.sroa.speculated.i, 1
  br i1 %i.z, label %bb.c, label %bb.d, !prof !95

bb.c:                                             ; preds = %.lr.ph.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.076.0, ptr align 8 %.013.i, i64 %.idx.i, i1 false), !noalias !181
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.aa, label %bb.e, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %.013.i, align 8, !tbaa !67, !noalias !181
  store ptr %i.ab, ptr %.sroa.076.0, align 8, !tbaa !67, !noalias !181
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = phi ptr [ %.sroa.878.0, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %bb.e ]
  %i.ad = ptrtoint ptr %.sroa.477.0 to i64
  %i.ae = sub i64 %i.v, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, %.sroa.speculated.i  ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i
  %i.ai = icmp samesign ult i64 %i.ag, 64
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds [8 x i8], ptr %.sroa.076.0, i64 %.sroa.speculated.i
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = lshr i64 %i.ag, 6
  br label %bb.j

bb.i:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i
  %i.al = ashr i64 %i.ag, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = phi i64 [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.sroa.1379.0, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59, !noalias !181 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512 ; 2 uses
  %i.aq = shl nsw i64 %i.am, 6
  %i.ar = sub nsw i64 %i.ag, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ar
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i: ; preds = %bb.j, %bb.g
  %.sroa.1379.1 = phi ptr [ %.sroa.1379.0, %bb.g ], [ %i.an, %bb.j ] ; 2 uses
  %.sroa.878.1 = phi ptr [ %.sroa.878.0, %bb.g ], [ %i.ap, %bb.j ]
  %.sroa.477.1 = phi ptr [ %.sroa.477.0, %bb.g ], [ %i.ao, %bb.j ] ; 2 uses
  %i.at = phi ptr [ %i.ac, %bb.g ], [ %i.ap, %bb.j ] ; 2 uses
  %storemerge.i.i = phi ptr [ %i.aj, %bb.g ], [ %i.as, %bb.j ] ; 2 uses
  %i.au = sub nsw i64 %storemerge12.i, %.sroa.speculated.i ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit, !llvm.loop !169

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit: ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i, %bb.b
  %.sroa.1379.2 = phi ptr [ %i.o, %bb.b ], [ %.sroa.1379.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ] ; 3 uses
  %i.aw = phi ptr [ %i.m, %bb.b ], [ %i.at, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ] ; 3 uses
  %i.ax = phi ptr [ %i.k, %bb.b ], [ %.sroa.477.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ] ; 3 uses
  %i.ay = phi ptr [ %i.i, %bb.b ], [ %storemerge.i.i, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i ] ; 3 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !59
  store ptr %i.ax, ptr %i.j, align 8, !tbaa !59
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !59
  store ptr %.sroa.1379.2, ptr %i.n, align 8, !tbaa !182
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !178
  %.088 = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !178
  %.not489 = icmp eq ptr %.088, %i.ba
  br i1 %.not489, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit
  %i.bb = phi ptr [ %.sroa.1379.2, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ], [ %.sroa.11.1, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ] ; 2 uses
  %i.bc = phi ptr [ %i.aw, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ], [ %i.dv, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ] ; 3 uses
  %i.bd = phi ptr [ %i.ax, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ], [ %.sroa.472.1, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ] ; 2 uses
  %i.be = phi ptr [ %i.ay, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ], [ %storemerge.i.i39, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183 ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !179
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i11, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit24

.lr.ph.i11:                                       ; preds = %._crit_edge, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18
  %.sroa.1369.0 = phi ptr [ %.sroa.1369.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.sroa.868.0 = phi ptr [ %.sroa.868.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.bc, %._crit_edge ] ; 2 uses
  %.sroa.467.0 = phi ptr [ %.sroa.467.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.bd, %._crit_edge ] ; 2 uses
  %.sroa.066.0 = phi ptr [ %storemerge.i.i19, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.bn = phi ptr [ %i.cn, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.bc, %._crit_edge ] ; 3 uses
  %.013.i13 = phi ptr [ %i.bs, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.bg, %._crit_edge ] ; 3 uses
  %storemerge12.i14 = phi i64 [ %i.co, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %.sroa.066.0 to i64        ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %.sroa.speculated.i15 = tail call i64 @llvm.smin.i64(i64 %i.br, i64 %storemerge12.i14) ; 7 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %.013.i13, i64 %.sroa.speculated.i15
  %i.bt = icmp sgt i64 %.sroa.speculated.i15, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !95

bb.k:                                             ; preds = %.lr.ph.i11
  %.idx.i20 = shl nuw nsw i64 %.sroa.speculated.i15, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.066.0, ptr align 8 %.013.i13, i64 %.idx.i20, i1 false), !noalias !184
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i16

bb.l:                                             ; preds = %.lr.ph.i11
  %i.bu = icmp eq i64 %.sroa.speculated.i15, 1
  br i1 %i.bu, label %bb.m, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i16

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %.013.i13, align 8, !tbaa !67, !noalias !184
  store ptr %i.bv, ptr %.sroa.066.0, align 8, !tbaa !67, !noalias !184
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i16

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i16: ; preds = %bb.m, %bb.l, %bb.k
  %i.bw = phi ptr [ %.sroa.868.0, %bb.k ], [ %i.bn, %bb.l ], [ %i.bn, %bb.m ]
  %i.bx = ptrtoint ptr %.sroa.467.0 to i64
  %i.by = sub i64 %i.bp, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = add nsw i64 %i.bz, %.sroa.speculated.i15 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i16
  %i.cc = icmp samesign ult i64 %i.ca, 64
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sroa.066.0, i64 %.sroa.speculated.i15
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18

bb.p:                                             ; preds = %bb.n
  %i.ce = lshr i64 %i.ca, 6
  br label %bb.r

bb.q:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i16
  %i.cf = ashr i64 %i.ca, 6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = phi i64 [ %i.ce, %bb.p ], [ %i.cf, %bb.q ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.sroa.1369.0, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !59, !noalias !184 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 512 ; 2 uses
  %i.ck = shl nsw i64 %i.cg, 6
  %i.cl = sub nsw i64 %i.ca, %i.ck
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18: ; preds = %bb.r, %bb.o
  %.sroa.1369.1 = phi ptr [ %.sroa.1369.0, %bb.o ], [ %i.ch, %bb.r ] ; 2 uses
  %.sroa.868.1 = phi ptr [ %.sroa.868.0, %bb.o ], [ %i.cj, %bb.r ]
  %.sroa.467.1 = phi ptr [ %.sroa.467.0, %bb.o ], [ %i.ci, %bb.r ] ; 2 uses
  %i.cn = phi ptr [ %i.bw, %bb.o ], [ %i.cj, %bb.r ] ; 2 uses
  %storemerge.i.i19 = phi ptr [ %i.cd, %bb.o ], [ %i.cm, %bb.r ] ; 2 uses
  %i.co = sub nsw i64 %storemerge12.i14, %.sroa.speculated.i15 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i11, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit24, !llvm.loop !169

.lr.ph:                                           ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44
  %i.cq = phi ptr [ %.sroa.11.1, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ], [ %.sroa.1379.2, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ]
  %i.cr = phi ptr [ %i.dv, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ], [ %i.aw, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ] ; 2 uses
  %i.cs = phi ptr [ %.sroa.472.1, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ], [ %i.ax, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ]
  %i.ct = phi ptr [ %storemerge.i.i39, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ], [ %i.ay, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ]
  %.090 = phi ptr [ %.0, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44 ], [ %.088, %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit ] ; 2 uses
  %i.cu = load ptr, ptr %.090, align 8, !tbaa !59
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38, %.lr.ph
  %.sroa.11.0 = phi ptr [ %i.cq, %.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %i.cr, %.lr.ph ], [ %.sroa.7.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 2 uses
  %.sroa.472.0 = phi ptr [ %i.cs, %.lr.ph ], [ %.sroa.472.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 2 uses
  %.sroa.071.0 = phi ptr [ %i.ct, %.lr.ph ], [ %storemerge.i.i39, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 4 uses
  %i.cv = phi ptr [ %i.cr, %.lr.ph ], [ %i.dv, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 3 uses
  %.013.i33 = phi ptr [ %i.cu, %.lr.ph ], [ %i.da, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 3 uses
  %storemerge12.i34 = phi i64 [ 64, %.lr.ph ], [ %i.dw, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38 ] ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.sroa.071.0 to i64        ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3
  %.sroa.speculated.i35 = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 %storemerge12.i34) ; 7 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.013.i33, i64 %.sroa.speculated.i35
  %i.db = icmp sgt i64 %.sroa.speculated.i35, 1
  br i1 %i.db, label %bb.t, label %bb.u, !prof !95

bb.t:                                             ; preds = %bb.s
  %.idx.i40 = shl nuw nsw i64 %.sroa.speculated.i35, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.071.0, ptr align 8 %.013.i33, i64 %.idx.i40, i1 false), !noalias !185
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i36

bb.u:                                             ; preds = %bb.s
  %i.dc = icmp eq i64 %.sroa.speculated.i35, 1
  br i1 %i.dc, label %bb.v, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i36

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %.013.i33, align 8, !tbaa !67, !noalias !185
  store ptr %i.dd, ptr %.sroa.071.0, align 8, !tbaa !67, !noalias !185
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i36

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i36: ; preds = %bb.v, %bb.u, %bb.t
  %i.de = phi ptr [ %.sroa.7.0, %bb.t ], [ %i.cv, %bb.u ], [ %i.cv, %bb.v ]
  %i.df = ptrtoint ptr %.sroa.472.0 to i64
  %i.dg = sub i64 %i.cx, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = add nsw i64 %i.dh, %.sroa.speculated.i35 ; 5 uses
  %i.dj = icmp sgt i64 %i.di, -1
  br i1 %i.dj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i36
  %i.dk = icmp samesign ult i64 %i.di, 64
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds [8 x i8], ptr %.sroa.071.0, i64 %.sroa.speculated.i35
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38

bb.y:                                             ; preds = %bb.w
  %i.dm = lshr i64 %i.di, 6
  br label %bb.aa

bb.z:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i36
  %i.dn = ashr i64 %i.di, 6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.do = phi i64 [ %i.dm, %bb.y ], [ %i.dn, %bb.z ] ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.sroa.11.0, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59, !noalias !185 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 512 ; 2 uses
  %i.ds = shl nsw i64 %i.do, 6
  %i.dt = sub nsw i64 %i.di, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dt
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38: ; preds = %bb.aa, %bb.x
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %bb.x ], [ %i.dp, %bb.aa ] ; 4 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %bb.x ], [ %i.dr, %bb.aa ]
  %.sroa.472.1 = phi ptr [ %.sroa.472.0, %bb.x ], [ %i.dq, %bb.aa ] ; 4 uses
  %i.dv = phi ptr [ %i.de, %bb.x ], [ %i.dr, %bb.aa ] ; 4 uses
  %storemerge.i.i39 = phi ptr [ %i.dl, %bb.x ], [ %i.du, %bb.aa ] ; 4 uses
  %i.dw = sub nsw i64 %storemerge12.i34, %.sroa.speculated.i35 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  br i1 %i.dx, label %bb.s, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44, !llvm.loop !169

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit44: ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i38
  store ptr %storemerge.i.i39, ptr %3, align 8, !tbaa !59
  store ptr %.sroa.472.1, ptr %i.j, align 8, !tbaa !59
  store ptr %i.dv, ptr %i.l, align 8, !tbaa !59
  store ptr %.sroa.11.1, ptr %i.n, align 8, !tbaa !182
  %.0 = getelementptr inbounds nuw i8, ptr %.090, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !178
  %.not4 = icmp eq ptr %.0, %i.dy
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !174

bb.ab:                                            ; preds = %bb.a
  %i.dz = load ptr, ptr %2, align 8, !tbaa !179
  %i.ea = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !64 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !65 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !62 ; 2 uses
  %i.eh = ptrtoint ptr %i.dz to i64
  %i.ei = sub i64 %i.eh, %i.f
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i51, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit24

.lr.ph.i51:                                       ; preds = %bb.ab, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.eg, %bb.ab ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.ee, %bb.ab ] ; 2 uses
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.ec, %bb.ab ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %storemerge.i.i59, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.ea, %bb.ab ] ; 4 uses
  %i.el = phi ptr [ %i.fl, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.ee, %bb.ab ] ; 3 uses
  %.013.i53 = phi ptr [ %i.eq, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.e, %bb.ab ] ; 3 uses
  %storemerge12.i54 = phi i64 [ %i.fm, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.ej, %bb.ab ] ; 2 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 3
  %.sroa.speculated.i55 = tail call i64 @llvm.smin.i64(i64 %i.ep, i64 %storemerge12.i54) ; 7 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %.013.i53, i64 %.sroa.speculated.i55
  %i.er = icmp sgt i64 %.sroa.speculated.i55, 1
  br i1 %i.er, label %bb.ac, label %bb.ad, !prof !95

bb.ac:                                            ; preds = %.lr.ph.i51
  %.idx.i60 = shl nuw nsw i64 %.sroa.speculated.i55, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0, ptr align 8 %.013.i53, i64 %.idx.i60, i1 false), !noalias !186
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i56

bb.ad:                                            ; preds = %.lr.ph.i51
  %i.es = icmp eq i64 %.sroa.speculated.i55, 1
  br i1 %i.es, label %bb.ae, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i56

bb.ae:                                            ; preds = %bb.ad
  %i.et = load ptr, ptr %.013.i53, align 8, !tbaa !67, !noalias !186
  store ptr %i.et, ptr %.sroa.0.0, align 8, !tbaa !67, !noalias !186
  br label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i56

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i56: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.eu = phi ptr [ %.sroa.8.0, %bb.ac ], [ %i.el, %bb.ad ], [ %i.el, %bb.ae ]
  %i.ev = ptrtoint ptr %.sroa.4.0 to i64
  %i.ew = sub i64 %i.en, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = add nsw i64 %i.ex, %.sroa.speculated.i55 ; 5 uses
  %i.ez = icmp sgt i64 %i.ey, -1
  br i1 %i.ez, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i56
  %i.fa = icmp samesign ult i64 %i.ey, 64
  br i1 %i.fa, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %.sroa.speculated.i55
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58

bb.ah:                                            ; preds = %bb.af
  %i.fc = lshr i64 %i.ey, 6
  br label %bb.aj

bb.ai:                                            ; preds = %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES4_ET1_T0_S6_S5_.exit.i56
  %i.fd = ashr i64 %i.ey, 6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fe = phi i64 [ %i.fc, %bb.ah ], [ %i.fd, %bb.ai ] ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %.sroa.13.0, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !59, !noalias !186 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 512 ; 2 uses
  %i.fi = shl nsw i64 %i.fe, 6
  %i.fj = sub nsw i64 %i.ey, %i.fi
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fj
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58

_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58: ; preds = %bb.aj, %bb.ag
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.ag ], [ %i.ff, %bb.aj ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.ag ], [ %i.fh, %bb.aj ]
  %.sroa.4.1 = phi ptr [ %.sroa.4.0, %bb.ag ], [ %i.fg, %bb.aj ] ; 2 uses
  %i.fl = phi ptr [ %i.eu, %bb.ag ], [ %i.fh, %bb.aj ] ; 2 uses
  %storemerge.i.i59 = phi ptr [ %i.fb, %bb.ag ], [ %i.fk, %bb.aj ] ; 2 uses
  %i.fm = sub nsw i64 %storemerge12.i54, %.sroa.speculated.i55 ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i51, label %_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit24, !llvm.loop !169

_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_.exit24: ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58, %bb.ab, %._crit_edge
  %.sink114 = phi ptr [ %storemerge.i.i59, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.be, %._crit_edge ], [ %i.ea, %bb.ab ], [ %storemerge.i.i19, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ]
  %.sink112 = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.bd, %._crit_edge ], [ %i.ec, %bb.ab ], [ %.sroa.467.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ]
  %.sink = phi ptr [ %i.fl, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.bc, %._crit_edge ], [ %i.ee, %bb.ab ], [ %i.cn, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ]
  %.sroa.13.2.sink = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i58 ], [ %i.bb, %._crit_edge ], [ %i.eg, %bb.ab ], [ %.sroa.1369.1, %_ZNSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_EpLEl.exit.i18 ]
  store ptr %.sink114, ptr %0, align 8, !tbaa !63
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink112, ptr %i.fo, align 8, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.fp, align 8, !tbaa !65
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.13.2.sink, ptr %i.fq, align 8, !tbaa !62
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !61
  %i.ag = load ptr, ptr %0, align 8, !tbaa !56
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.aq = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !67
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !62
  store ptr %i.am, ptr %i.o, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !65
  store ptr %i.am, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !56
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !95

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !59
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !59
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !95

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !59
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !59
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit, !prof !71

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !57  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !95

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !59
  store ptr %i.be, ptr %i.av, align 8, !tbaa !59
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !56
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !61
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #18
  store ptr %i.aq, ptr %0, align 8, !tbaa !56
  store i64 %i.am, ptr %i.k, align 8, !tbaa !61
  br label %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPN7rocksdb18GenericRateLimiter3ReqES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !62
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !59   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !65
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !62
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !59 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x ptr> @llvm.masked.load.v3p0.p0(ptr captures(none), <3 x i1>, <3 x ptr>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v12i64(<12 x i64>) #15

attributes #0 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !60}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 4}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN7rocksdb11RateLimiter4ModeE", !7, i64 0}
!14 = !{!"_ZTSN7rocksdb11RateLimiterE", !13, i64 8}
!15 = !{!14, !13, i64 8}
!16 = !{!"bool", !7, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"_ZTSN7rocksdb4port5MutexE", !7, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13__atomic_baseIlE", !20, i64 0}
!22 = !{!"_ZTSSt6atomicIlE", !21, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"p1 _ZTSN7rocksdb11SystemClockE", !23, i64 0}
!25 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!26 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!27 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0, !26, i64 8}
!28 = !{!"_ZTSSt10shared_ptrIN7rocksdb11SystemClockEE", !27, i64 0}
!29 = !{!"p1 _ZTSN7rocksdb4port5MutexE", !23, i64 0}
!30 = !{!"_ZTSN7rocksdb4port7CondVarE", !7, i64 0, !29, i64 48}
!31 = !{!"_ZTSN7rocksdb6RandomE", !8, i64 0}
!32 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !20, i64 0}
!33 = !{!"_ZTSN7rocksdb18GenericRateLimiterE", !14, i64 0, !19, i64 16, !20, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !28, i64 88, !16, i64 104, !30, i64 112, !8, i64 168, !7, i64 176, !7, i64 208, !20, i64 240, !20, i64 248, !8, i64 256, !31, i64 260, !7, i64 264, !16, i64 584, !16, i64 585, !20, i64 592, !20, i64 600, !32, i64 608}
!34 = !{!33, !20, i64 56}
!35 = !{!26, !25, i64 0}
!36 = !{!23, !23, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!33, !16, i64 104}
!40 = !{!33, !8, i64 168}
!41 = !{!33, !20, i64 240}
!42 = !{!27, !24, i64 0}
!43 = !{!33, !20, i64 248}
!44 = !{!33, !8, i64 256}
!45 = !{!31, !8, i64 0}
!46 = !{!33, !16, i64 584}
!47 = !{!33, !16, i64 585}
!48 = !{!33, !20, i64 592}
!49 = !{!33, !20, i64 600}
!50 = !{!"any p2 pointer", !23, i64 0}
!51 = !{!"any p3 pointer", !50, i64 0}
!52 = !{!"p3 _ZTSN7rocksdb18GenericRateLimiter3ReqE", !51, i64 0}
!53 = !{!"p2 _ZTSN7rocksdb18GenericRateLimiter3ReqE", !50, i64 0}
!54 = !{!"_ZTSSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERS3_PS3_E", !53, i64 0, !53, i64 8, !53, i64 16, !52, i64 24}
!55 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE16_Deque_impl_dataE", !52, i64 0, !20, i64 8, !54, i64 16, !54, i64 48}
!56 = !{!55, !52, i64 0}
!57 = !{!55, !52, i64 40}
!58 = !{!55, !52, i64 72}
!59 = !{!53, !53, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!55, !20, i64 8}
!62 = !{!54, !52, i64 24}
!63 = !{!54, !53, i64 0}
!64 = !{!54, !53, i64 8}
!65 = !{!54, !53, i64 16}
!66 = !{!"p1 _ZTSN7rocksdb18GenericRateLimiter3ReqE", !23, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!69 = !{!68, !8, i64 8}
!70 = !{!68, !8, i64 12}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!50, !50, i64 0}
!73 = !{!"p1 omnipotent char", !23, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !73, i64 0}
!75 = !{!74, !73, i64 0}
!76 = !{!20, !20, i64 0}
!77 = !{!"_ZTSN7rocksdb18GenericRateLimiter3ReqE", !20, i64 0, !20, i64 8, !30, i64 16}
!78 = !{!77, !20, i64 0}
!79 = !{!77, !20, i64 8}
!80 = !{!55, !53, i64 48}
!81 = !{!"_ZTSN7rocksdb3Env10IOPriorityE", !7, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!55, !53, i64 16}
!84 = !{!"_ZTSN7rocksdb6Status4CodeE", !7, i64 0}
!85 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !7, i64 0}
!86 = !{!"_ZTSN7rocksdb6Status8SeverityE", !7, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !74, i64 0}
!88 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !90, i64 0}
!92 = !{!"_ZTSN7rocksdb6StatusE", !84, i64 0, !85, i64 1, !86, i64 2, !16, i64 3, !16, i64 4, !7, i64 5, !91, i64 8}
!93 = !{!92, !84, i64 0}
!94 = !{!92, !85, i64 1}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{!16, !16, i64 0}
!97 = !{!21, !20, i64 0}
!98 = !{!32, !20, i64 0}
!99 = distinct !{!99, i1 true, !"_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE5beginEv"}
!100 = distinct !{!100, !99, !"_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE5beginEv: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE3endEv"}
!102 = distinct !{!102, !101, !"_ZNSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE3endEv: argument 0"}
!103 = distinct !{!103, !60}
!104 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!105 = !{!100}
!106 = !{!102}
!107 = distinct !{!107, i1 true, !"_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_ES4_ET0_T_SD_SC_RSaIT1_E"}
!108 = distinct !{!108, !107, !"_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_ES4_ET0_T_SD_SC_RSaIT1_E: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZSt18uninitialized_copyISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_EET0_T_SD_SC_"}
!110 = distinct !{!110, !109, !"_ZSt18uninitialized_copyISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_EET0_T_SD_SC_: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS6_PS7_ES2_IS6_RS6_PS6_EEET0_T_SF_SE_"}
!112 = distinct !{!112, !111, !"_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS6_PS7_ES2_IS6_RS6_PS6_EEET0_T_SF_SE_: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZSt4copyISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_EET0_T_SD_SC_"}
!114 = distinct !{!114, !113, !"_ZSt4copyISt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_EET0_T_SD_SC_: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_EET1_T0_SD_SC_"}
!116 = distinct !{!116, !115, !"_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS4_PS5_ES0_IS4_RS4_PS4_EET1_T0_SD_SC_: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNKSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE5beginEv"}
!118 = distinct !{!118, !117, !"_ZNKSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE5beginEv: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZSt14__copy_move_a1ILb0EPN7rocksdb18GenericRateLimiter3ReqERKS3_PS4_S3_ESt15_Deque_iteratorIT3_RS8_PS8_ES7_IT0_T1_T2_ESF_SB_"}
!120 = distinct !{!120, !119, !"_ZSt14__copy_move_a1ILb0EPN7rocksdb18GenericRateLimiter3ReqERKS3_PS4_S3_ESt15_Deque_iteratorIT3_RS8_PS8_ES7_IT0_T1_T2_ESF_SB_: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZNKSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE3endEv"}
!122 = distinct !{!122, !121, !"_ZNKSt5dequeIPN7rocksdb18GenericRateLimiter3ReqESaIS3_EE3endEv: argument 0"}
!123 = !{!114, !112, !110, !108}
!124 = !{!116, !114, !112, !110, !108}
!125 = !{!118}
!126 = !{!120, !116, !114, !112, !110, !108}
!127 = !{!122}
!128 = distinct !{!128, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!129 = distinct !{!129, !128, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!130 = !{!"_ZTSN7rocksdb5SliceE", !73, i64 0, !20, i64 8}
!131 = !{!130, !73, i64 0}
!132 = !{!130, !20, i64 8}
!133 = !{!129}
!134 = distinct !{!134, i1 true, !"_ZN7rocksdb18GenericRateLimiter10TuneLockedEv"}
!135 = distinct !{!135, !134, !"_ZN7rocksdb18GenericRateLimiter10TuneLockedEv: argument 0"}
!136 = distinct !{null}
!137 = distinct !{!137, !60}
!138 = distinct !{null}
!139 = !{!135}
!140 = !{ptr @_ZN7rocksdb18GenericRateLimiter10TuneLockedEv}
!141 = !{!55, !53, i64 64}
!142 = distinct !{!142, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!143 = distinct !{!143, !142, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!144 = !{!143}
!145 = distinct !{!145, i1 true, !"_ZN7rocksdb18GenericRateLimiter36GeneratePriorityIterationOrderLockedEv"}
!146 = distinct !{!146, !145, !"_ZN7rocksdb18GenericRateLimiter36GeneratePriorityIterationOrderLockedEv: argument 0"}
!147 = !{!146}
!148 = !{!55, !53, i64 32}
!149 = !{!55, !53, i64 24}
!150 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb3Env10IOPriorityESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!151 = !{!150, !23, i64 0}
!152 = !{!150, !23, i64 16}
!153 = !{!150, !23, i64 8}
!154 = distinct !{!154, i1 true, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!155 = distinct !{!155, !154, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!156 = !{!155}
!157 = distinct !{!157, i1 true, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!158 = distinct !{!158, !157, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!159 = !{!158}
!160 = distinct !{!160, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!161 = distinct !{!161, !160, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!162 = !{!161}
!163 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!164 = distinct !{!164, !60}
!165 = distinct !{null}
!166 = distinct !{null, null}
!167 = distinct !{!167, i1 true, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!168 = distinct !{!168, !167, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!169 = distinct !{!169, !60}
!170 = distinct !{!170, i1 true, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!171 = distinct !{!171, !170, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!172 = distinct !{!172, i1 true, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!173 = distinct !{!173, !172, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!174 = distinct !{!174, !60}
!175 = distinct !{!175, i1 true, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!176 = distinct !{!176, !175, !"_ZSt14__copy_move_a1ILb0EPPN7rocksdb18GenericRateLimiter3ReqES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!177 = !{!"_ZTSSt15_Deque_iteratorIPN7rocksdb18GenericRateLimiter3ReqERKS3_PS4_E", !53, i64 0, !53, i64 8, !53, i64 16, !52, i64 24}
!178 = !{!177, !52, i64 24}
!179 = !{!177, !53, i64 0}
!180 = !{!177, !53, i64 16}
!181 = !{!168}
!182 = !{!52, !52, i64 0}
!183 = !{!177, !53, i64 8}
!184 = !{!171}
!185 = !{!173}
!186 = !{!176}
end_hunk_0
