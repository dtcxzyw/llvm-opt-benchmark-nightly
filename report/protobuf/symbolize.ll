inline.NumInlined: 131
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer11FindObjFileEPKvm:bb.a
  store i64 0, ptr %0, align 16, !tbaa !94
  store i8 0, ptr %i.b, align 1, !tbaa !48
  %i.ae = load i8, ptr %i.a, align 8, !tbaa !43, !range !97, !noundef !98
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %.thread43

bb.m:                                             ; preds = %.loopexit
  store i8 1, ptr %i.b, align 1, !tbaa !48
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL11ReadAddrMapEPFbPKcPKvS5_mPvES6_S6_m(ptr noundef %0, ptr noundef %i.c)
  br i1 %i.ag, label %bb.n, label %bb.d

bb.n:                                             ; preds = %bb.m
  %.val37.1.pre = load i64, ptr %0, align 16, !tbaa !94 ; 3 uses
  %.not50.1 = icmp eq i64 %.val37.1.pre, 0        ; 2 uses
  br i1 %.not50.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.n
  %.val39.1 = load ptr, ptr %i.d, align 16, !tbaa !95
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.1
  %.02648.1 = phi i64 [ %.val37.1.pre, %.lr.ph.1 ], [ %.127.1, %bb.o ] ; 2 uses
  %.02847.1 = phi i64 [ 0, %.lr.ph.1 ], [ %.129.1, %bb.o ] ; 2 uses
  %i.ah = add i64 %.02648.1, %.02847.1
  %i.ai = lshr i64 %i.ah, 1                       ; 3 uses
  %i.aj = getelementptr inbounds nuw [328 x i8], ptr %.val39.1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.am = icmp ult ptr %1, %i.al                  ; 2 uses
  %i.an = add nuw i64 %i.ai, 1
  %.129.1 = select i1 %i.am, i64 %.02847.1, i64 %i.an ; 3 uses
  %.127.1 = select i1 %i.am, i64 %i.ai, i64 %.02648.1 ; 2 uses
  %i.ao = icmp ult i64 %.129.1, %.127.1
  br i1 %i.ao, label %bb.o, label %._crit_edge.1, !llvm.loop !100

._crit_edge.1:                                    ; preds = %bb.o, %bb.n
  %.028.lcssa.1 = phi i64 [ 0, %bb.n ], [ %.129.1, %bb.o ] ; 2 uses
  %.not.1 = icmp eq i64 %.028.lcssa.1, %.val37.1.pre
  br i1 %.not.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge.1
  %.val38.1 = load ptr, ptr %i.d, align 16, !tbaa !95
  %i.ap = getelementptr inbounds nuw [328 x i8], ptr %.val38.1, i64 %.028.lcssa.1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.as = icmp ugt ptr %i.ar, %1
  br i1 %i.as, label %bb.q, label %bb.h

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %.not35.1 = icmp ult ptr %1, %i.au
  br i1 %.not35.1, label %bb.r, label %.thread43

bb.r:                                             ; preds = %bb.q, %._crit_edge.1
  br i1 %.not50.1, label %.loopexit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.r, %bb.t
  %.010.i.1 = phi i64 [ %i.bb, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %.val7.i.1 = load ptr, ptr %i.d, align 16, !tbaa !95
  %i.av = getelementptr inbounds nuw [328 x i8], ptr %.val7.i.1, i64 %.010.i.1 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.1
  %i.ba = tail call i32 @close(i32 noundef %i.ay) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.1
  %i.bb = add i64 %.010.i.1, 1                    ; 2 uses
  %.val.i.1 = load i64, ptr %0, align 16, !tbaa !94
  %.not.i.1 = icmp eq i64 %i.bb, %.val.i.1
  br i1 %.not.i.1, label %.loopexit.1, label %.lr.ph.i.1, !llvm.loop !96

.loopexit.1:                                      ; preds = %bb.t, %bb.r
  store i64 0, ptr %0, align 16, !tbaa !94
  store i8 0, ptr %i.b, align 1, !tbaa !48
  br label %.thread43

.thread43:                                        ; preds = %bb.i, %bb.a, %.loopexit, %bb.q, %.loopexit.1, %bb.d
  %i.bc = phi ptr [ null, %bb.d ], [ null, %.loopexit.1 ], [ %i.r, %bb.i ], [ null, %bb.a ], [ null, %.loopexit ], [ %i.ap, %bb.q ]
  ret ptr %i.bc
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051218debugging_internalL15DemangleInplaceEPcmS2_m(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #14 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal8DemangleEPKcPcm(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 1024)
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = icmp ult i64 %i.c, 3073
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, 1024
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  ret void
}

declare void @_ZN4absl12lts_2025051218debugging_internal11VDSOSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4absl12lts_2025051218debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL11ReadAddrMapEPFbPKcPKvS5_mPvES6_S6_m(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i32 @getpid() #23
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.13, i32 noundef %i.b) #23 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull %i.a) ; 5 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.d, !llvm.loop !101

bb.d:                                             ; preds = %bb.c
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1119, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, i32 noundef %i.g)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.critedge:                                        ; preds = %bb.b, %.critedge.backedge
  %.sroa.19.0 = phi ptr [ %i.aa, %.critedge.backedge ], [ %1, %bb.b ]
  %.sroa.23.0 = phi ptr [ %.sroa.23.1, %.critedge.backedge ], [ %1, %bb.b ] ; 4 uses
  %i.j = icmp eq ptr %1, %.sroa.23.0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.k = invoke fastcc noundef i64 @_ZN4absl12lts_2025051218debugging_internalL14ReadPersistentEiPvm(i32 noundef %i.d, ptr noundef nonnull %1, i64 noundef 1024)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  br label %bb.j

bb.g:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.19.0, i64 1 ; 5 uses
  %.not.i = icmp ugt ptr %i.n, %.sroa.23.0
  br i1 %.not.i, label %bb.h, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #28
  unreachable

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i: ; preds = %bb.g
  %i.o = ptrtoint ptr %.sroa.23.0 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = tail call noundef ptr @memchr(ptr noundef nonnull %i.n, i32 noundef 10, i64 noundef %i.q) #25
  %.not24.i = icmp eq ptr %i.r, null
  br i1 %.not24.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.t = sub i64 1024, %i.q
  %i.u = invoke fastcc noundef i64 @_ZN4absl12lts_2025051218debugging_internalL14ReadPersistentEiPvm(i32 noundef %i.d, ptr noundef nonnull %i.s, i64 noundef %i.t)
          to label %.noexc57 unwind label %bb.k   ; 2 uses

.noexc57:                                         ; preds = %bb.i
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread, label %.thread23.i

.thread23.i:                                      ; preds = %.noexc57
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  br label %bb.j

bb.j:                                             ; preds = %.thread23.i, %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i, %.thread.i
  %.sroa.14.0 = phi ptr [ %1, %.thread.i ], [ %1, %.thread23.i ], [ %i.n, %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ] ; 10 uses
  %.sroa.23.1 = phi ptr [ %i.m, %.thread.i ], [ %i.w, %.thread23.i ], [ %.sroa.23.0, %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ] ; 2 uses
  %i.x = ptrtoint ptr %.sroa.23.1 to i64
  %i.y = ptrtoint ptr %.sroa.14.0 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = tail call noundef ptr @memchr(ptr noundef nonnull %.sroa.14.0, i32 noundef 10, i64 noundef %i.z) #25 ; 20 uses
  %2 = ptrtoaddr ptr %i.aa to i64                 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.aa, align 1, !tbaa !10
  %i.ad = icmp ult ptr %.sroa.14.0, %i.aa
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %switch.early.test._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %3 = ptrtoaddr ptr %.sroa.14.0 to i64
  %i.ae = sub i64 %2, %3
  %scevgep.i.i = getelementptr i8, ptr %.sroa.14.0, i64 %i.ae
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.02536.i.i = phi i64 [ %i.ao, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02635.i.i = phi ptr [ %i.ap, %bb.m ], [ %.sroa.14.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = load i8, ptr %.02635.i.i, align 1, !tbaa !10
  %.fr34.i.i = freeze i8 %i.af                    ; 4 uses
  %i.ag = sext i8 %.fr34.i.i to i64               ; 2 uses
  %i.ah = add i8 %.fr34.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.ah, 10
  br i1 %or.cond.i.i, label %bb.m, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %.lr.ph.i.i
  switch i8 %.fr34.i.i, label %switch.early.test._crit_edge.i.loopexit.i [
    i8 102, label %bb.m
    i8 101, label %bb.m
    i8 100, label %bb.m
    i8 99, label %bb.m
    i8 98, label %bb.m
    i8 97, label %bb.m
    i8 70, label %bb.m
    i8 69, label %bb.m
    i8 68, label %bb.m
    i8 67, label %bb.m
    i8 66, label %bb.m
    i8 65, label %bb.m
  ]

bb.m:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %.lr.ph.i.i
  %i.ai = shl i64 %.02536.i.i, 4
  %i.aj = icmp samesign ult i8 %.fr34.i.i, 65
  %i.ak = add nsw i64 %i.ag, -48
  %i.al = and i64 %i.ag, 15
  %i.am = add nuw nsw i64 %i.al, 9
  %i.an = select i1 %i.aj, i64 %i.ak, i64 %i.am
  %i.ao = or i64 %i.an, %i.ai                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02635.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %exitcond.not.i.i, label %switch.early.test._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !102

switch.early.test._crit_edge.i.loopexit.i:        ; preds = %bb.m, %switch.early.test.i.i
  %.026.lcssa.i.ph.i = phi ptr [ %.02635.i.i, %switch.early.test.i.i ], [ %scevgep.i.i, %bb.m ]
  %.025.lcssa.i.ph.i = phi i64 [ %.02536.i.i, %switch.early.test.i.i ], [ %i.ao, %bb.m ]
  %i.aq = inttoptr i64 %.025.lcssa.i.ph.i to ptr
  br label %switch.early.test._crit_edge.i.i

switch.early.test._crit_edge.i.i:                 ; preds = %switch.early.test._crit_edge.i.loopexit.i, %bb.l
  %.026.lcssa.i.i = phi ptr [ %.sroa.14.0, %bb.l ], [ %.026.lcssa.i.ph.i, %switch.early.test._crit_edge.i.loopexit.i ] ; 4 uses
  %.025.lcssa.i.i = phi ptr [ null, %bb.l ], [ %i.aq, %switch.early.test._crit_edge.i.loopexit.i ] ; 5 uses
  %.not.i.i = icmp ugt ptr %.026.lcssa.i.i, %i.aa
  br i1 %.not.i.i, label %bb.n, label %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit

bb.n:                                             ; preds = %switch.early.test._crit_edge.i.i
  tail call void @abort() #28
  unreachable

_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit: ; preds = %switch.early.test._crit_edge.i.i
  %i.ar = icmp eq ptr %.026.lcssa.i.i, %i.aa
  br i1 %i.ar, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit
  %i.as = load i8, ptr %.026.lcssa.i.i, align 1, !tbaa !10
  %.not = icmp eq i8 %i.as, 45
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit, %bb.o
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1146, ptr noundef nonnull @.str.15, ptr noundef nonnull %.sroa.14.0)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.r:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i, i64 1 ; 5 uses
  %i.av = icmp ult ptr %i.au, %i.aa
  br i1 %i.av, label %.lr.ph.preheader.i.i62, label %switch.early.test._crit_edge.i.i58

.lr.ph.preheader.i.i62:                           ; preds = %bb.r
  %4 = ptrtoaddr ptr %i.au to i64
  %i.aw = sub i64 %2, %4
  %scevgep.i.i63 = getelementptr i8, ptr %i.au, i64 %i.aw
  br label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %bb.s, %.lr.ph.preheader.i.i62
  %.02536.i.i65 = phi i64 [ %i.bg, %bb.s ], [ 0, %.lr.ph.preheader.i.i62 ] ; 2 uses
  %.02635.i.i66 = phi ptr [ %i.bh, %bb.s ], [ %i.au, %.lr.ph.preheader.i.i62 ] ; 3 uses
  %i.ax = load i8, ptr %.02635.i.i66, align 1, !tbaa !10
  %.fr34.i.i67 = freeze i8 %i.ax                  ; 4 uses
  %i.ay = sext i8 %.fr34.i.i67 to i64             ; 2 uses
  %i.az = add i8 %.fr34.i.i67, -48
  %or.cond.i.i68 = icmp ult i8 %i.az, 10
  br i1 %or.cond.i.i68, label %bb.s, label %switch.early.test.i.i69

switch.early.test.i.i69:                          ; preds = %.lr.ph.i.i64
  switch i8 %.fr34.i.i67, label %switch.early.test._crit_edge.i.loopexit.i71 [
    i8 102, label %bb.s
    i8 101, label %bb.s
    i8 100, label %bb.s
    i8 99, label %bb.s
    i8 98, label %bb.s
    i8 97, label %bb.s
    i8 70, label %bb.s
    i8 69, label %bb.s
    i8 68, label %bb.s
    i8 67, label %bb.s
    i8 66, label %bb.s
    i8 65, label %bb.s
  ]

bb.s:                                             ; preds = %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %switch.early.test.i.i69, %.lr.ph.i.i64
  %i.ba = shl i64 %.02536.i.i65, 4
  %i.bb = icmp samesign ult i8 %.fr34.i.i67, 65
  %i.bc = add nsw i64 %i.ay, -48
  %i.bd = and i64 %i.ay, 15
  %i.be = add nuw nsw i64 %i.bd, 9
  %i.bf = select i1 %i.bb, i64 %i.bc, i64 %i.be
  %i.bg = or i64 %i.bf, %i.ba                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02635.i.i66, i64 1 ; 2 uses
  %exitcond.not.i.i70 = icmp eq ptr %i.bh, %i.aa
  br i1 %exitcond.not.i.i70, label %switch.early.test._crit_edge.i.loopexit.i71, label %.lr.ph.i.i64, !llvm.loop !102

switch.early.test._crit_edge.i.loopexit.i71:      ; preds = %bb.s, %switch.early.test.i.i69
  %.026.lcssa.i.ph.i72 = phi ptr [ %.02635.i.i66, %switch.early.test.i.i69 ], [ %scevgep.i.i63, %bb.s ]
  %.025.lcssa.i.ph.i73 = phi i64 [ %.02536.i.i65, %switch.early.test.i.i69 ], [ %i.bg, %bb.s ]
  %i.bi = inttoptr i64 %.025.lcssa.i.ph.i73 to ptr
  br label %switch.early.test._crit_edge.i.i58

switch.early.test._crit_edge.i.i58:               ; preds = %switch.early.test._crit_edge.i.loopexit.i71, %bb.r
  %.026.lcssa.i.i59 = phi ptr [ %i.au, %bb.r ], [ %.026.lcssa.i.ph.i72, %switch.early.test._crit_edge.i.loopexit.i71 ] ; 8 uses
  %.025.lcssa.i.i60 = phi ptr [ null, %bb.r ], [ %i.bi, %switch.early.test._crit_edge.i.loopexit.i71 ] ; 5 uses
  %.026.lcssa.i.i59114 = ptrtoaddr ptr %.026.lcssa.i.i59 to i64
  %.not.i.i61 = icmp ugt ptr %.026.lcssa.i.i59, %i.aa
  br i1 %.not.i.i61, label %bb.t, label %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit74

bb.t:                                             ; preds = %switch.early.test._crit_edge.i.i58
  tail call void @abort() #28
  unreachable

_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit74: ; preds = %switch.early.test._crit_edge.i.i58
  %i.bj = icmp eq ptr %.026.lcssa.i.i59, %i.aa
  br i1 %i.bj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit74
  %i.bk = load i8, ptr %.026.lcssa.i.i59, align 1, !tbaa !10
  %.not41 = icmp eq i8 %i.bk, 32
  br i1 %.not41, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_PPKv.exit74, %bb.u
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1155, ptr noundef nonnull @.str.15, ptr noundef nonnull %.sroa.14.0)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.u
  %.ptr76 = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i59, i64 1 ; 3 uses
  %i.bm = icmp ult ptr %.ptr76, %i.aa
  br i1 %i.bm, label %.lr.ph.preheader, label %.critedge2.thread

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.bn = sub i64 %2, %.026.lcssa.i.i59114        ; 3 uses
  %scevgep = getelementptr i8, ptr %.026.lcssa.i.i59, i64 %i.bn
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %storemerge.ptr91 = phi ptr [ %storemerge.ptr, %bb.y ], [ %.ptr76, %.lr.ph.preheader ] ; 2 uses
  %storemerge.idx90 = phi i64 [ %storemerge.add, %bb.y ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.bo = load i8, ptr %storemerge.ptr91, align 1, !tbaa !10
  %.not42 = icmp eq i8 %i.bo, 32
  br i1 %.not42, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %storemerge.add = add nuw i64 %storemerge.idx90, 1 ; 3 uses
  %storemerge.ptr = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i59, i64 %storemerge.add
  %exitcond.not = icmp eq i64 %storemerge.add, %i.bn
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !103

.critedge2:                                       ; preds = %.lr.ph, %bb.y
  %storemerge.idx.lcssa.ph = phi i64 [ %storemerge.idx90, %.lr.ph ], [ %i.bn, %bb.y ]
  %storemerge.ptr.lcssa.ph = phi ptr [ %storemerge.ptr91, %.lr.ph ], [ %scevgep, %bb.y ] ; 2 uses
  %i.bp = icmp samesign ult i64 %storemerge.idx.lcssa.ph, 5
  %i.bq = icmp eq ptr %storemerge.ptr.lcssa.ph, %i.aa
  %or.cond = select i1 %i.bq, i1 true, i1 %i.bp
  br i1 %or.cond, label %.critedge2.thread, label %bb.aa

.critedge2.thread:                                ; preds = %bb.x, %.critedge2
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1167, ptr noundef nonnull @.str.16, ptr noundef nonnull %.sroa.14.0)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread unwind label %bb.z

bb.z:                                             ; preds = %.critedge2.thread
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aa:                                            ; preds = %.critedge2
  %i.bs = load i8, ptr %.ptr76, align 1, !tbaa !10
  %i.bt = icmp eq i8 %i.bs, 114
  br i1 %i.bt, label %_ZN4absl12lts_2025051218debugging_internalL16ShouldUseMappingEPKc.exit, label %.critedge.backedge

_ZN4absl12lts_2025051218debugging_internalL16ShouldUseMappingEPKc.exit: ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i59, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bw = icmp eq i8 %i.bv, 120
  br i1 %i.bw, label %bb.ab, label %.critedge.backedge

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internalL16ShouldUseMappingEPKc.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge.ptr.lcssa.ph, i64 1 ; 5 uses
  %i.by = icmp ult ptr %i.bx, %i.aa
  br i1 %i.by, label %.lr.ph.preheader.i, label %switch.early.test._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %5 = ptrtoaddr ptr %i.bx to i64
  %i.bz = sub i64 %2, %5
  %scevgep.i = getelementptr i8, ptr %i.bx, i64 %i.bz
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.preheader.i
  %.02536.i = phi i64 [ %i.cj, %bb.ac ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.02635.i = phi ptr [ %i.ck, %bb.ac ], [ %i.bx, %.lr.ph.preheader.i ] ; 3 uses
  %i.ca = load i8, ptr %.02635.i, align 1, !tbaa !10
  %.fr34.i = freeze i8 %i.ca                      ; 4 uses
  %i.cb = sext i8 %.fr34.i to i64                 ; 2 uses
  %i.cc = add i8 %.fr34.i, -48
  %or.cond.i = icmp ult i8 %i.cc, 10
  br i1 %or.cond.i, label %bb.ac, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr34.i, label %switch.early.test._crit_edge.i [
    i8 102, label %bb.ac
    i8 101, label %bb.ac
    i8 100, label %bb.ac
    i8 99, label %bb.ac
    i8 98, label %bb.ac
    i8 97, label %bb.ac
    i8 70, label %bb.ac
    i8 69, label %bb.ac
    i8 68, label %bb.ac
    i8 67, label %bb.ac
    i8 66, label %bb.ac
    i8 65, label %bb.ac
  ]

bb.ac:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %i.cd = shl i64 %.02536.i, 4
  %i.ce = icmp samesign ult i8 %.fr34.i, 65
  %i.cf = add nsw i64 %i.cb, -48
  %i.cg = and i64 %i.cb, 15
  %i.ch = add nuw nsw i64 %i.cg, 9
  %i.ci = select i1 %i.ce, i64 %i.cf, i64 %i.ch
  %i.cj = or i64 %i.ci, %i.cd                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02635.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ck, %i.aa
  br i1 %exitcond.not.i, label %switch.early.test._crit_edge.i, label %.lr.ph.i, !llvm.loop !102

switch.early.test._crit_edge.i:                   ; preds = %bb.ac, %switch.early.test.i, %bb.ab
  %.026.lcssa.i = phi ptr [ %i.bx, %bb.ab ], [ %scevgep.i, %bb.ac ], [ %.02635.i, %switch.early.test.i ] ; 4 uses
  %.025.lcssa.i = phi i64 [ 0, %bb.ab ], [ %i.cj, %bb.ac ], [ %.02536.i, %switch.early.test.i ] ; 4 uses
  %.026.lcssa.i115 = ptrtoaddr ptr %.026.lcssa.i to i64
  %.not.i75 = icmp ugt ptr %.026.lcssa.i, %i.aa
  br i1 %.not.i75, label %bb.ad, label %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit.preheader

_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit.preheader: ; preds = %switch.early.test._crit_edge.i
  %storemerge4396 = getelementptr inbounds nuw i8, ptr %.026.lcssa.i, i64 1 ; 3 uses
  %i.cl = icmp ult ptr %storemerge4396, %i.aa
  br i1 %i.cl, label %.lr.ph99.preheader, label %._crit_edge

.lr.ph99.preheader:                               ; preds = %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit.preheader
  %i.cm = sub i64 %2, %.026.lcssa.i115
  %scevgep116 = getelementptr i8, ptr %.026.lcssa.i, i64 %i.cm
  br label %.lr.ph99

bb.ad:                                            ; preds = %switch.early.test._crit_edge.i
  tail call void @abort() #28
  unreachable

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit
  %storemerge4398 = phi ptr [ %storemerge43, %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit ], [ %storemerge4396, %.lr.ph99.preheader ] ; 3 uses
  %.01897 = phi i32 [ %.119, %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit ], [ 0, %.lr.ph99.preheader ] ; 3 uses
  %i.cn = load i8, ptr %storemerge4398, align 1, !tbaa !10
  %i.co = icmp eq i8 %i.cn, 32
  br i1 %i.co, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph99
  %i.cp = add nsw i32 %.01897, 1
  br label %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit

bb.af:                                            ; preds = %.lr.ph99
  %i.cq = icmp sgt i32 %.01897, 1
  br i1 %i.cq, label %._crit_edge, label %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit

_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit: ; preds = %bb.af, %bb.ae
  %.119 = phi i32 [ %i.cp, %bb.ae ], [ %.01897, %bb.af ]
  %storemerge43 = getelementptr inbounds nuw i8, ptr %storemerge4398, i64 1 ; 2 uses
  %exitcond117.not = icmp eq ptr %storemerge43, %i.aa
  br i1 %exitcond117.not, label %._crit_edge, label %.lr.ph99, !llvm.loop !104

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit, %bb.af, %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit.preheader
  %storemerge43.lcssa = phi ptr [ %storemerge4396, %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit.preheader ], [ %storemerge4398, %bb.af ], [ %scevgep116, %_ZN4absl12lts_2025051218debugging_internalL6GetHexEPKcS3_Pm.exit ] ; 4 uses
  %i.cr = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.cs = and i32 %i.cr, 1
  %.not.i.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit.thread

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i: ; preds = %._crit_edge
  %i.ct = or disjoint i32 %i.cr, 1
  %i.cu = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.cr, i32 %i.ct acquire monotonic, align 4
  %i.cv = extractvalue { i32, i1 } %i.cu, 0
  %.pre.i.i.i = and i32 %i.cv, 1
  %i.cw = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.cw, label %.preheader.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit.thread

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i
  %i.cx = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !3 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i76, label %.loopexit.i

.lr.ph.i76:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.cx to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.lr.ph.i76
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i76 ], [ %indvars.iv.next.i, %bb.aj ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv.i ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !36 ; 2 uses
  %.not.i77 = icmp ugt ptr %i.da, %.025.lcssa.i.i
  br i1 %.not.i77, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !38 ; 2 uses
  %.not18.i = icmp ugt ptr %.025.lcssa.i.i60, %i.dc
  br i1 %.not18.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = load i64, ptr %i.dd, align 16, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40
  br label %.loopexit.i

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i78, label %.loopexit.i, label %bb.ag, !llvm.loop !42

.loopexit.i:                                      ; preds = %bb.aj, %bb.ai, %.preheader.i
  %.2 = phi ptr [ %storemerge43.lcssa, %.preheader.i ], [ %i.dg, %bb.ai ], [ %storemerge43.lcssa, %bb.aj ] ; 2 uses
  %.031 = phi ptr [ %.025.lcssa.i.i, %.preheader.i ], [ %i.da, %bb.ai ], [ %.025.lcssa.i.i, %bb.aj ] ; 2 uses
  %.029 = phi ptr [ %.025.lcssa.i.i60, %.preheader.i ], [ %i.dc, %bb.ai ], [ %.025.lcssa.i.i60, %bb.aj ] ; 2 uses
  %.0 = phi i64 [ %.025.lcssa.i, %.preheader.i ], [ %i.de, %bb.ai ], [ %.025.lcssa.i, %bb.aj ] ; 2 uses
  %i.dh = phi i1 [ false, %.preheader.i ], [ true, %bb.ai ], [ false, %bb.aj ]
  %i.di = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.dj = and i32 %i.di, 2
  %i.dk = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.dj release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.dk, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit, label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.dk) #27
          to label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit unwind label %bb.am

_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit: ; preds = %.loopexit.i, %bb.ak
  br i1 %i.dh, label %bb.an, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit.thread

_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit.thread: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i, %._crit_edge, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit
  %.159 = phi i64 [ %.0, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ], [ %.025.lcssa.i, %._crit_edge ], [ %.025.lcssa.i, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i ]
  %.13057 = phi ptr [ %.029, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ], [ %.025.lcssa.i.i60, %._crit_edge ], [ %.025.lcssa.i.i60, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i ]
  %.13255 = phi ptr [ %.031, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ], [ %.025.lcssa.i.i, %._crit_edge ], [ %.025.lcssa.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i ]
  %.352 = phi ptr [ %.2, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ], [ %storemerge43.lcssa, %._crit_edge ], [ %storemerge43.lcssa, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i ] ; 3 uses
  %i.dl = icmp eq ptr %.352, %i.aa
  br i1 %i.dl, label %.critedge.backedge, label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit.thread
  %i.dm = load i8, ptr %.352, align 1, !tbaa !10
  %i.dn = icmp eq i8 %i.dm, 91
  br i1 %i.dn, label %.critedge.backedge, label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.an
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.al, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit
  %.160 = phi i64 [ %.159, %bb.al ], [ %.0, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ]
  %.13058 = phi ptr [ %.13057, %bb.al ], [ %.029, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ]
  %.13256 = phi ptr [ %.13255, %bb.al ], [ %.031, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ]
  %.353 = phi ptr [ %.352, %bb.al ], [ %.2, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit ]
  %i.dp = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer15RegisterObjFileEPKcPKvS7_mPv(ptr noundef %.353, ptr noundef %.13256, ptr noundef %.13058, i64 noundef %.160, ptr noundef nonnull %0)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  br i1 %i.dp, label %.critedge.backedge, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread

.critedge.backedge:                               ; preds = %bb.ao, %bb.aa, %bb.al, %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit.thread, %_ZN4absl12lts_2025051218debugging_internalL16ShouldUseMappingEPKc.exit
  br label %.critedge, !llvm.loop !105

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread: ; preds = %bb.ao, %.noexc, %bb.j, %.noexc57, %bb.p, %bb.v, %.critedge2.thread
  %.6 = phi i1 [ false, %.critedge2.thread ], [ false, %bb.p ], [ false, %bb.v ], [ true, %.noexc57 ], [ true, %bb.j ], [ true, %.noexc ], [ true, %bb.ao ]
  %i.dq = invoke i32 @close(i32 noundef %i.d)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  tail call void @__clang_call_terminate(ptr %i.ds) #28
  unreachable

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread
  %.675 = phi i1 [ %.6, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS6_.exit.thread ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.675

bb.aq:                                            ; preds = %bb.k, %bb.w, %bb.am, %bb.z, %bb.q, %bb.e
  %.pn51 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.ac, %bb.k ], [ %i.at, %bb.q ], [ %i.do, %bb.am ], [ %i.bl, %bb.w ], [ %i.br, %bb.z ]
  call fastcc void @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev(i32 %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn51
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer15RegisterObjFileEPKcPKvS7_mPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %.val = load i64, ptr %4, align 8, !tbaa !94    ; 5 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val51 = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr [328 x i8], ptr %.val51, i64 %.val ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -328     ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 -312     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 4 uses
  %i.f = icmp ugt ptr %i.e, %2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !52
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1276, ptr noundef nonnull @.str.19, i64 noundef %i.g, ptr noundef %0, i64 noundef %i.h, ptr noundef %i.i)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.e, %2
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.b, i64 -320
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %.not49 = icmp eq ptr %i.l, %1
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  br i1 %.not49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre, ptr noundef nonnull dereferenceable(1) %0) #25
  %.not50 = icmp eq i32 %i.m, 0
end_hunk_0
