inline.NumInlined: 342
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2026052624synchronization_internal11GraphCycles3RepD2Ev:bb.a
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #18
  unreachable

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8: ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit6, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not.i.i9 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i9, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.aa)
          to label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #18
  unreachable

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10: ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8, %bb.l
  %i.ae = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i11 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i11, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ae)
          to label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #18
  unreachable

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052624synchronization_internal11GraphCycles15CheckInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::synchronization_internal::(anonymous namespace)::NodeSet", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  store ptr %i.b, ptr %1, align 8, !tbaa !32
  store i32 8, ptr %i.d, align 4, !tbaa !36
  store i32 8, ptr %i.c, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.e, align 4, !tbaa !41
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.c, align 8, !tbaa !35
  %i.f = zext i32 %.val.i.i.i to i64
  %i.g = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.f
  br i1 %i.g, label %bb.b, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, !llvm.loop !42

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.h, align 8, !tbaa !43
  %i.i = getelementptr i8, ptr %i.a, i64 72       ; 2 uses
  %.val63 = load i32, ptr %i.i, align 8, !tbaa !13
  %.not65 = icmp eq i32 %.val63, 0
  br i1 %.not65, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, %i.b
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre)
          to label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit: ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i1 true

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next88, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit ] ; 6 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val34, i64 %indvars.iv87
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %i.r = xor i64 %i.q, -1136490970041655429       ; 2 uses
  %.not = icmp eq i64 %i.q, -1136490970041655429
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = urem i64 %i.r, 262139
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.s
  %.01219.i = load i32, ptr %i.t, align 4, !tbaa !41 ; 2 uses
  %.not20.i = icmp eq i32 %.01219.i, -1
  br i1 %.not20.i, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !37
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.012.i = load i32, ptr %i.v, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq i32 %.012.i, -1
  br i1 %.not.i, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.01221.i = phi i32 [ %.01219.i, %.lr.ph.i ], [ %.012.i, %bb.g ] ; 2 uses
  %i.w = zext i32 %.01221.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %.not16.i = icmp eq i64 %i.aa, %i.q
  br i1 %.not16.i, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit, label %bb.g

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit: ; preds = %bb.g, %bb.h
  %.012.lcssa.i.ph = phi i32 [ %.01221.i, %bb.h ], [ -1, %bb.g ]
  %i.ab = zext i32 %.012.lcssa.i.ph to i64
  br label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit: ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit, %bb.f
  %.012.lcssa.i = phi i64 [ 4294967295, %bb.f ], [ %i.ab, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit ]
  %.not30 = icmp eq i64 %.012.lcssa.i, %indvars.iv87
  br i1 %.not30, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit
  %i.ac = trunc nuw i64 %indvars.iv87 to i32
  %i.ad = inttoptr i64 %i.r to ptr
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 399, ptr noundef nonnull @.str.1, i32 noundef %i.ac, ptr noundef nonnull %i.ad)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !49, !range !50, !noundef !30
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aj = trunc nuw i64 %indvars.iv87 to i32
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 402, ptr noundef nonnull @.str.2, i32 noundef %i.aj)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %bb.m
  %i.al = load i32, ptr %i.o, align 8, !tbaa !51
  %i.am = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.al)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  br i1 %i.am, label %.preheader, label %bb.s

.preheader:                                       ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.val10.i = load ptr, ptr %i.an, align 8
  %.val.i35 = load i32, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !51
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 405, ptr noundef nonnull @.str.3, i32 noundef %i.ap)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %.preheader, %bb.y
  %.0 = phi i32 [ %3, %bb.y ], [ 0, %.preheader ] ; 3 uses
  %umax = call i32 @llvm.umax.i32(i32 %.0, i32 %.val.i35)
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.not134.not = icmp ult i32 %.0, %.val.i35
  br i1 %exitcond.not134.not, label %.lr.ph137, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit

.lr.ph137:                                        ; preds = %bb.v
  %2 = zext i32 %.0 to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph137, %bb.w
  %indvars.iv135 = phi i64 [ %2, %.lr.ph137 ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv135
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.y, label %bb.w

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit: ; preds = %bb.v, %bb.w
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %.val = load i32, ptr %i.i, align 8, !tbaa !13
  %i.au = zext i32 %.val to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next88, %i.au
  br i1 %i.av, label %bb.e, label %._crit_edge, !llvm.loop !52

bb.y:                                             ; preds = %bb.x
  %3 = trunc nuw i64 %indvars.iv.next to i32
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val33, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.az = load i32, ptr %i.o, align 8, !tbaa !51  ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %.not31 = icmp slt i32 %i.az, %i.ba
  br i1 %.not31, label %bb.v, label %bb.z, !llvm.loop !53

bb.z:                                             ; preds = %bb.y
  %i.bb = trunc nuw i64 %indvars.iv87 to i32
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 413, ptr noundef nonnull @.str.4, i32 noundef %i.bb, i32 noundef %i.as, i32 noundef %i.az, i32 noundef %i.ba)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.u, %bb.p, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ak, %bb.p ], [ %i.bc, %bb.ab ], [ %i.aq, %bb.u ], [ %i.ae, %bb.k ]
  call fastcc void @_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::synchronization_internal::(anonymous namespace)::Vec.0", align 8 ; 14 uses
  %.val9 = load ptr, ptr %0, align 8              ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %.val10 = load i32, ptr %i.a, align 8, !tbaa !35
  %i.b = add i32 %.val10, -1                      ; 2 uses
  %i.c = mul i32 %1, 41
  %.02210.i = and i32 %i.b, %i.c                  ; 2 uses
  %i.d = zext i32 %.02210.i to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41   ; 2 uses
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.o, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.02213.i = phi i32 [ %.022.i, %bb.b ], [ %.02210.i, %bb.a ] ; 3 uses
  %.01812.i = phi i8 [ %spec.select27.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.01911.i = phi i32 [ %spec.select.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = icmp ne i32 %i.h, -2
  %i.k = trunc nuw i8 %.01812.i to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i32 %.01911.i, i32 %.02213.i
  %spec.select27.i = select i1 %or.cond.i, i8 %.01812.i, i8 1
  %i.l = add i32 %.02213.i, 1
  %.022.i = and i32 %i.l, %i.b                    ; 2 uses
  %i.m = zext i32 %.022.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41   ; 2 uses
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %.lr.ph.i, !llvm.loop !54

_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit: ; preds = %.lr.ph.i
  %i.q = trunc nuw i8 %.01812.i to i1
  %i.r = select i1 %i.q, i32 %.01911.i, i32 %.02213.i
  %.pre = zext i32 %i.r to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.pre
  %.pre32 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !41 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.pre
  %.not60 = icmp eq i32 %.pre32, %1
  br i1 %.not60, label %_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit
  %i.t = icmp eq i32 %.pre32, -1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !43
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %1, ptr %i.s, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43
  %.val8 = load i32, ptr %i.a, align 8, !tbaa !35 ; 8 uses
  %i.z = lshr i32 %.val8, 2
  %i.aa = sub i32 %.val8, %i.z
  %.not = icmp ult i32 %i.y, %i.aa
  br i1 %.not, label %_ZNK4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  store i32 8, ptr %i.ad, align 4, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = icmp eq ptr %.val9, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ugt i32 %.val8, 8
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ah = phi i32 [ %i.ai, %.lr.ph.i.i.i ], [ 8, %bb.g ]
  %i.ai = shl i32 %i.ah, 1                        ; 4 uses
  %i.aj = icmp ult i32 %i.ai, %.val8
  br i1 %i.aj, label %.lr.ph.i.i.i, label %bb.h, !llvm.loop !55

bb.h:                                             ; preds = %.lr.ph.i.i.i
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !36
  %i.ak = zext i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = load ptr, ptr @_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !20
  %i.an = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.al, ptr noundef %i.am)
          to label %.noexc18 unwind label %bb.t   ; 4 uses

.noexc18:                                         ; preds = %bb.h
  %i.ao = load ptr, ptr %2, align 8, !tbaa !32    ; 4 uses
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  switch i32 %i.ap, label %bb.i [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
    i32 1, label %bb.j
  ], !prof !23

bb.i:                                             ; preds = %.noexc18
  %i.aq = zext i32 %i.ap to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aq, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.ao, i64 %.idx.i.i.i.i.i, i1 false)
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !32
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

bb.j:                                             ; preds = %.noexc18
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !41
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !41
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i:        ; preds = %bb.j, %bb.i, %.noexc18
  %i.as = phi ptr [ %i.ao, %.noexc18 ], [ %.pre.i.i.i, %bb.i ], [ %i.ao, %bb.j ] ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.as, %i.ab
  br i1 %.not.i4.i.i.i, label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.as)
          to label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i unwind label %bb.t

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i: ; preds = %bb.k, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  store ptr %i.an, ptr %2, align 8, !tbaa !32
  %.pre12.i = load ptr, ptr %0, align 8, !tbaa !32
  %.pre33 = load i32, ptr %i.a, align 8, !tbaa !35
  br label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i: ; preds = %bb.g, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i
  %i.at = phi i32 [ %.pre33, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ], [ %.val8, %bb.g ] ; 2 uses
  %i.au = phi ptr [ %i.an, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %.pre12.i, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ], [ %.val9, %bb.g ] ; 2 uses
  store i32 %.val8, ptr %i.ac, align 8, !tbaa !35
  switch i32 %i.at, label %bb.l [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i
    i32 1, label %bb.m
  ], !prof !23

bb.l:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %i.aw = zext i32 %i.at to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aw, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.av, i64 %.idx.i.i.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i

bb.m:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !41
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !41
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i:            ; preds = %bb.m, %bb.l, %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  store i32 0, ptr %i.a, align 8, !tbaa !35
  %.val.i.pre = load i32, ptr %i.ac, align 8, !tbaa !35
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pre36 = load i32, ptr %.phi.trans.insert35, align 4, !tbaa !36
  br label %_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE8MoveFromEPS4_.exit

_ZN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i: ; preds = %bb.f
  store ptr %.val9, ptr %2, align 8, !tbaa !32
  store i32 %.val8, ptr %i.ac, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !36
  store i32 %i.az, ptr %i.ad, align 4, !tbaa !36
  store ptr %i.ae, ptr %0, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_T0_T1_:bb.a

._crit_edge.i.i.i6.i:                             ; preds = %bb.k, %.lr.ph.i5.i
  %.0.lcssa.i.i.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dq = and i64 %i.cs, 4
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i6.i
  %i.ds = add nsw i64 %i.ct, -2
  %i.dt = ashr exact i64 %i.ds, 1
  %i.du = icmp eq i64 %.0.lcssa.i.i.i7.i, %i.dt
  br i1 %i.du, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.dv = shl nuw nsw i64 %.0.lcssa.i.i.i7.i, 1
  %i.dw = or disjoint i64 %i.dv, 1                ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !41
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i7.i
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !41
  br label %.lr.ph.i.i.i.i9.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i6.i
  %.not.i.i8.i = icmp eq i64 %.0.lcssa.i.i.i7.i, 0
  br i1 %.not.i.i8.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i9.i

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.m, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.dw, %.thread.i.i.i ], [ %.0.lcssa.i.i.i7.i, %bb.m ]
  %.val.val.i.i.i.i10.i = load ptr, ptr %3, align 8, !tbaa !22 ; 2 uses
  %i.ea = zext i32 %i.cp to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i9.i
  %.0134.i.i.i.i11.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i9.i ], [ %.059.i.i.i.i13.i, %bb.o ] ; 3 uses
  %.05.in.i.i.i.i12.i = add nsw i64 %.0134.i.i.i.i11.i, -1
  %.059.i.i.i.i13.i = lshr i64 %.05.in.i.i.i.i12.i, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i13.i
  %.val14.i.i.i.i14.i = load i32, ptr %i.ed, align 4, !tbaa !41 ; 2 uses
  %i.ee = zext i32 %.val14.i.i.i.i14.i to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !51
  %i.ei = load i32, ptr %i.ec, align 8, !tbaa !51
  %i.ej = icmp slt i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.o, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i11.i
  store i32 %.val14.i.i.i.i14.i, ptr %i.ek, align 4, !tbaa !41
  %.not3.i.i.i = icmp eq i64 %.059.i.i.i.i13.i, 0
  br i1 %.not3.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i, label %bb.n, !llvm.loop !82

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %.013.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.m ], [ %.0134.i.i.i.i11.i, %bb.n ], [ 0, %bb.o ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i15.i
  store i32 %i.cp, ptr %i.el, align 4, !tbaa !41
  %i.em = icmp sgt i64 %i.cs, 4
  br i1 %i.em, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_T0_.exit, !llvm.loop !84

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0152350 = phi i64 [ %i.eo, %bb.b ], [ %2, %.lr.ph ]
  %.02449 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.en = phi i64 [ %i.ge, %bb.b ], [ %i.c, %.lr.ph ]
  %i.eo = add nsw i64 %.0152350, -1               ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !22    ; 6 uses
  %i.ep = lshr i64 %i.en, 3
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ep ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %.02449, i64 -4 ; 3 uses
  %.val34.i.i = load i32, ptr %i.e, align 4, !tbaa !41 ; 3 uses
  %.val35.i.i = load i32, ptr %i.eq, align 4, !tbaa !41 ; 3 uses
  %i.es = zext i32 %.val34.i.i to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !51 ; 3 uses
  %i.ew = zext i32 %.val35.i.i to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !51 ; 3 uses
  %i.fa = icmp slt i32 %i.ev, %i.ez
  %.val32.i.i = load i32, ptr %i.er, align 4, !tbaa !41 ; 3 uses
  %i.fb = zext i32 %.val32.i.i to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !51 ; 4 uses
  br i1 %i.fa, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph51
  %i.ff = icmp slt i32 %i.ez, %i.fe
  br i1 %i.ff, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fg = load i32, ptr %0, align 4, !tbaa !41
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !41
  store i32 %i.fg, ptr %i.eq, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  %i.fh = icmp slt i32 %i.ev, %i.fe
  %i.fi = load i32, ptr %0, align 4, !tbaa !41    ; 2 uses
  br i1 %i.fh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !41
  store i32 %i.fi, ptr %i.er, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !41
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.u:                                             ; preds = %.lr.ph51
  %i.fj = icmp slt i32 %i.ev, %i.fe
  br i1 %i.fj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fk = load i32, ptr %0, align 4, !tbaa !41
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !41
  store i32 %i.fk, ptr %i.e, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.w:                                             ; preds = %bb.u
  %i.fl = icmp slt i32 %i.ez, %i.fe
  %i.fm = load i32, ptr %0, align 4, !tbaa !41    ; 2 uses
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !41
  store i32 %i.fm, ptr %i.er, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.y:                                             ; preds = %bb.w
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !41
  store i32 %i.fm, ptr %i.eq, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.ab
  %.013.i.i = phi ptr [ %.114.i.i, %bb.ab ], [ %.02449, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.fw, %bb.ab ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.val17.i.i = load i32, ptr %0, align 4, !tbaa !41
  %i.fn = zext i32 %.val17.i.i to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !51 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.fw, %bb.z ] ; 8 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 4, !tbaa !41 ; 2 uses
  %i.fr = zext i32 %.1.val.i.i to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !24
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !51
  %i.fv = icmp slt i32 %i.fu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.fv, label %bb.z, label %.preheader.i.i, !llvm.loop !85

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.z ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %.114.val.i.i = load i32, ptr %.114.i.i, align 4, !tbaa !41 ; 2 uses
  %i.fx = zext i32 %.114.val.i.i to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !24
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !51
  %i.gb = icmp slt i32 %i.fq, %i.ga
  br i1 %i.gb, label %.preheader.i.i, label %bb.aa, !llvm.loop !86

bb.aa:                                            ; preds = %.preheader.i.i
  %i.gc = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.gc, label %bb.ab, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEET_SI_SI_T0_.exit

bb.ab:                                            ; preds = %bb.aa
  store i32 %.114.val.i.i, ptr %.1.i.i, align 4, !tbaa !41
  store i32 %.1.val.i.i, ptr %.114.i.i, align 4, !tbaa !41
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !87

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEET_SI_SI_T0_.exit: ; preds = %bb.aa
  tail call fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02449, i64 noundef %i.eo, ptr nonnull %3)
  %i.gd = ptrtoint ptr %.1.i.i to i64
  %i.ge = sub i64 %i.gd, %i.a                     ; 3 uses
  %i.gf = icmp sgt i64 %i.ge, 64
  br i1 %i.gf, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_T0_.exit, !llvm.loop !80

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2026052624synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4absl12lts_2026052624synchronization_internal11GraphCyclesE", !11, i64 0}
!11 = !{!"p1 _ZTSN4absl12lts_2026052624synchronization_internal11GraphCycles3RepE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !6, i64 72}
!14 = !{!"_ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEEE", !15, i64 0, !7, i64 8, !6, i64 72, !6, i64 76}
!15 = !{!"p2 _ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_14NodeE", !16, i64 0}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!14, !6, i64 76}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN4absl12lts_2026052613base_internal13LowLevelAlloc5ArenaE", !12, i64 0}
!22 = !{!14, !15, i64 0}
!23 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_14NodeE", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSN4absl12lts_2026052613base_internal8SpinLockE", !12, i64 0}
!28 = !{!29, !27, i64 0}
!29 = !{!"_ZTSSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEE", !27, i64 0}
!30 = !{}
!31 = !{i64 4}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIiEE", !34, i64 0, !7, i64 8, !6, i64 40, !6, i64 44}
!34 = !{!"p1 int", !12, i64 0}
!35 = !{!33, !6, i64 40}
!36 = !{!33, !6, i64 44}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_110PointerMapE", !39, i64 0, !40, i64 8}
!39 = !{!"p1 _ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEEE", !12, i64 0}
!40 = !{!"_ZTSSt5arrayIiLm262139EE", !7, i64 0}
!41 = !{!6, !6, i64 0}
!42 = distinct !{!42, !19}
!43 = !{!44, !6, i64 48}
!44 = !{!"_ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_17NodeSetE", !33, i64 0, !6, i64 48}
!45 = !{!46, !48, i64 16}
!46 = !{!"_ZTSN4absl12lts_2026052624synchronization_internal12_GLOBAL__N_14NodeE", !6, i64 0, !6, i64 4, !6, i64 8, !47, i64 12, !48, i64 16, !44, i64 24, !44, i64 80, !6, i64 136, !6, i64 140, !7, i64 144}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"long", !7, i64 0}
!49 = !{!46, !47, i64 12}
!50 = !{i8 0, i8 2}
!51 = !{!46, !6, i64 0}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{null}
!57 = !{!46, !6, i64 4}
!58 = !{!46, !6, i64 140}
!59 = !{!46, !6, i64 136}
!60 = !{!46, !6, i64 8}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !19}
!74 = !{!48, !48, i64 0}
!75 = distinct !{!75, !19}
!76 = !{!16, !16, i64 0}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
end_hunk_1
