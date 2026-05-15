inline.NumInlined: 1209
inline.NumDeleted: 276
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo:bb.a
  store i32 %i.f, ptr %i.d, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !241
  br label %.loopexit28

.loopexit28:                                      ; preds = %.lr.ph.i, %bb.a
  %i.k = phi ptr [ %i.j, %.lr.ph.i ], [ null, %bb.a ]
  store i32 %i.f, ptr %i.c, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.loopexit28
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.loopexit28 ] ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(372) %0)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !241
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.u, ptr %i.v, align 8, !tbaa !241
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.y = icmp sgt i32 %i.f, 1
  br i1 %i.y, label %bb.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.f, -1
  invoke void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef 0, i32 noundef %i.z)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit unwind label %.loopexit.split-lp

_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit: ; preds = %bb.h, %bb.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(372) %0)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = load ptr, ptr %i.b, align 8
  %spec.select = select i1 %.not, ptr null, ptr %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 3 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !249
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback, i64 16), ptr %3, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.ao, align 8, !tbaa !250
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !252
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %spec.select, ptr %i.aq, align 8, !tbaa !255
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.ah, ptr %i.ar, align 8, !tbaa !256
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !257
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.al, ptr %i.at, align 8, !tbaa !258
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.an, ptr %i.au, align 8, !tbaa !259
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !69
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %i.aw, i32 noundef %i.ba)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !81
  invoke void @_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE(ptr noundef nonnull align 8 dereferenceable(105) %i.bf, ptr noundef %i.bg, ptr noundef nonnull %0, ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !249
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 4 dereferenceable(68) %1, ptr noundef %i.bi, ptr noundef %i.bj)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %.not.i.i.i21 = icmp ne ptr %i.bn, null
  %i.bo = load i8, ptr %i.a, align 8, !range !67
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond.i.i = select i1 %.not.i.i.i21, i1 %i.bp, i1 false
  br i1 %or.cond.i.i, label %bb.o, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit unwind label %bb.f

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.p:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.p, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.bq, %bb.p ], [ %i.br, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %.not.i.i.i23 = icmp ne ptr %i.bs, null
  %i.bt = load i8, ptr %i.a, align 8, !range !67
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i.i24 = select i1 %.not.i.i.i23, i1 %i.bu, i1 false
  br i1 %or.cond.i.i24, label %bb.s, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26

bb.s:                                             ; preds = %bb.r
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bs)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26 unwind label %bb.t

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26: ; preds = %bb.r, %bb.s, %bb.f
  %.pn17 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %.pn.pn.pn, %bb.s ], [ %.pn.pn.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.t

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26
  resume { ptr, i32 } %.pn17

bb.t:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26, %bb.s
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #19
  unreachable
}

declare void @_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN25btSimulationIslandManager14IslandCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.7)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(105) %i.b, ptr noundef nonnull %0, ptr noundef %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %.pre27 = load ptr, ptr %i.a, align 8           ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %.pre27, i64 24
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN11btUnionFind5uniteEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11btUnionFind5uniteEii.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97, !nonnull !68, !align !98 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99, !nonnull !68, !align !98 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %i.u = load i32, ptr %i.t, align 8, !tbaa !80
  %i.v = and i32 %i.u, 3
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.d, label %_ZN11btUnionFind5uniteEii.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.x = load i32, ptr %i.w, align 8, !tbaa !80
  %i.y = and i32 %i.x, 3
  %.not22 = icmp eq i32 %i.y, 0
  br i1 %.not22, label %bb.e, label %_ZN11btUnionFind5uniteEii.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 228
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  switch i32 %i.aa, label %bb.g [
    i32 5, label %bb.f
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 228
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !79
  switch i32 %i.ac, label %bb.g [
    i32 5, label %_ZN11btUnionFind5uniteEii.exit
    i32 2, label %_ZN11btUnionFind5uniteEii.exit
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 220
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !260 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 220
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !260 ; 3 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !261 ; 8 uses
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !265 ; 2 uses
  %.not6.i.i = icmp eq i32 %i.ae, %i.ak
  br i1 %.not6.i.i, label %_ZN11btUnionFind4findEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.al = phi i32 [ %i.as, %.lr.ph.i.i ], [ %i.ak, %bb.g ]
  %i.am = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.aj, %bb.g ]
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !265 ; 4 uses
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !265
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !265 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ap, %i.as
  br i1 %.not.i.i, label %_ZN11btUnionFind4findEi.exit.i, label %.lr.ph.i.i

_ZN11btUnionFind4findEi.exit.i:                   ; preds = %.lr.ph.i.i, %bb.g
  %.0.lcssa.i.i = phi i32 [ %i.ae, %bb.g ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %i.at = sext i32 %i.ag to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !265 ; 2 uses
  %.not6.i9.i = icmp eq i32 %i.ag, %i.av
  br i1 %.not6.i9.i, label %_ZN11btUnionFind4findEi.exit13.i, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZN11btUnionFind4findEi.exit.i, %.lr.ph.i10.i
  %i.aw = phi i32 [ %i.bd, %.lr.ph.i10.i ], [ %i.av, %_ZN11btUnionFind4findEi.exit.i ]
  %i.ax = phi ptr [ %i.bc, %.lr.ph.i10.i ], [ %i.au, %_ZN11btUnionFind4findEi.exit.i ]
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !265 ; 4 uses
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !265
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !265 ; 2 uses
  %.not.i11.i = icmp eq i32 %i.ba, %i.bd
  br i1 %.not.i11.i, label %_ZN11btUnionFind4findEi.exit13.i, label %.lr.ph.i10.i

_ZN11btUnionFind4findEi.exit13.i:                 ; preds = %.lr.ph.i10.i, %_ZN11btUnionFind4findEi.exit.i
  %.0.lcssa.i12.i = phi i32 [ %i.ag, %_ZN11btUnionFind4findEi.exit.i ], [ %i.ba, %.lr.ph.i10.i ] ; 3 uses
  %i.be = icmp eq i32 %.0.lcssa.i.i, %.0.lcssa.i12.i
  br i1 %i.be, label %_ZN11btUnionFind5uniteEii.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11btUnionFind4findEi.exit13.i
  %i.bf = sext i32 %.0.lcssa.i.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bf ; 2 uses
  store i32 %.0.lcssa.i12.i, ptr %i.bg, align 4, !tbaa !265
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !267
  %i.bj = sext i32 %.0.lcssa.i12.i to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !267
  %i.bn = add nsw i32 %i.bm, %i.bi
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !267
  br label %_ZN11btUnionFind5uniteEii.exit

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.k

_ZN11btUnionFind5uniteEii.exit:                   ; preds = %bb.f, %bb.f, %bb.h, %_ZN11btUnionFind4findEi.exit13.i, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN11btUnionFind5uniteEii.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %1 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.pre27, %bb.b ] ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %0)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.i
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 10 uses
  %3 = alloca %class.btClosestNotMeConvexResultCallback, align 8 ; 15 uses
  %4 = alloca %class.btSphereShape, align 8       ; 11 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.w = phi i32 [ %i.b, %.lr.ph ], [ %i.cd, %bb.y ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !218  ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 260 ; 3 uses
  store float 1.000000e+00, ptr %i.aa, align 4, !tbaa !220
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 228
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !79
  switch i32 %i.ac, label %bb.c [
    i32 5, label %bb.y
    i32 2, label %bb.y
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !80
  %i.af = and i32 %i.ae, 3
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform(ptr noundef nonnull align 8 dereferenceable(564) %i.z, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %i.ai = load float, ptr %i.e, align 4, !tbaa !8
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !8
  %i.ak = fsub float %i.ai, %i.aj                 ; 2 uses
  %i.al = load float, ptr %i.f, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !8
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = load float, ptr %i.g, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !8
  %i.as = fsub float %i.ap, %i.ar                 ; 2 uses
  %i.at = fmul float %i.ao, %i.ao
  %i.au = call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.at)
  %i.av = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 268
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !268 ; 2 uses
  %i.ay = fmul float %i.ax, %i.ax                 ; 2 uses
  %i.az = fcmp une float %i.ay, 0.000000e+00
  %i.ba = fcmp olt float %i.ay, %i.av
  %or.cond = and i1 %i.az, %i.ba
  br i1 %or.cond, label %bb.f, label %_ZN14CProfileSampleD2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.9)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !168
  %i.bf = icmp slt i32 %i.be, 20
  br i1 %i.bf, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr @gNumClampedCcdMotions, align 4, !tbaa !4
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr @gNumClampedCcdMotions, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !269 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !81
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !270
  store i16 1, ptr %i.k, align 4, !tbaa !273
  store i16 -1, ptr %i.l, align 2, !tbaa !274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !147
  store ptr null, ptr %i.o, align 8, !tbaa !275
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV34btClosestNotMeConvexResultCallback, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.z, ptr %i.p, align 8, !tbaa !277
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !280
  store ptr %i.bm, ptr %i.r, align 8, !tbaa !281
  store ptr %i.bn, ptr %i.s, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 264
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !283 ; 2 uses
  invoke void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %4, align 8, !tbaa !19
  store i32 8, ptr %i.t, align 8, !tbaa !168
  store float %i.bp, ptr %i.u, align 8, !tbaa !8
  store float %i.bp, ptr %i.v, align 8, !tbaa !284
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !285
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load <2 x i16>, ptr %i.bs, align 8, !tbaa !286
  store <2 x i16> %i.bt, ptr %i.k, align 4, !tbaa !286
  invoke void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, float noundef 0.000000e+00)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bu = load float, ptr %i.j, align 8, !tbaa !270 ; 3 uses
  %i.bv = fcmp olt float %i.bu, 1.000000e+00
  br i1 %i.bv, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  store float %i.bu, ptr %i.aa, align 4, !tbaa !220
  %i.bw = fmul float %1, %i.bu
  invoke void @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform(ptr noundef nonnull align 8 dereferenceable(564) %i.z, float noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !220
  br label %bb.t

bb.n:                                             ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14CProfileSampleD2Ev.exit47

bb.o:                                             ; preds = %_ZN14CProfileSampleD2Ev.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14CProfileSampleD2Ev.exit47

bb.p:                                             ; preds = %bb.x, %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14CProfileSampleD2Ev.exit47

bb.q:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.i, %bb.t
end_hunk_0
