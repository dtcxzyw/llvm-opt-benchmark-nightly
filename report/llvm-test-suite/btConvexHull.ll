inline.NumInlined: 627
inline.NumDeleted: 141
begin_hunk_0_@_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii:bb.a
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1568.0.lcssa, i64 %indvars.iv110
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv110
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1568.0.lcssa, i64 %indvars.iv.next111
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next111
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !4
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1568.0.lcssa, i64 %indvars.iv.next111.1
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next111.1
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !4
  %indvars.iv.next111.2 = add nuw nsw i64 %indvars.iv110, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1568.0.lcssa, i64 %indvars.iv.next111.2
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next111.2
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !4
  %indvars.iv.next111.3 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next111.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge102, label %scalar.ph189, !llvm.loop !108

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

._crit_edge102:                                   ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189, %middle.block199, %.loopexit75
  %i.hh = load i32, ptr %i.b, align 4, !tbaa !63  ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %._crit_edge102
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !64
  %i.hl = icmp slt i32 %i.hk, 0
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !48 ; 3 uses
  br i1 %i.hl, label %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i, label %.lr.ph.i40

_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i: ; preds = %bb.s
  %.not.i5.i.i46 = icmp ne ptr %i.hn, null
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 8, !range !39
  %i.hq = trunc nuw i8 %i.hp to i1
  %or.cond28.i47 = select i1 %.not.i5.i.i46, i1 %i.hq, i1 false
  br i1 %or.cond28.i47, label %bb.t, label %_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hn)
          to label %_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i unwind label %bb.v

_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i: ; preds = %bb.t, %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.ho, align 8, !tbaa !68
  store ptr null, ptr %i.hm, align 8, !tbaa !48
  store i32 0, ptr %i.hj, align 8, !tbaa !64
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.s, %_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i
  %i.hr = phi ptr [ null, %_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i ], [ %i.hn, %bb.s ]
  %i.hs = sext i32 %i.hh to i64                   ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 3
  %scevgep113 = getelementptr i8, ptr %i.hr, i64 %i.ht
  %i.hu = mul nsw i64 %i.hs, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep113, i8 0, i64 %i.hu, i1 false), !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i40, %._crit_edge102
  store i32 0, ptr %i.b, align 4, !tbaa !63
  %.not.i.i.i57.not = icmp eq ptr %.sroa.1568.0.lcssa, null
  br i1 %.not.i.i.i57.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1568.0.lcssa)
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r, %bb.m
  %.sroa.1568.3 = phi ptr [ %.sroa.1568.192.lcssa, %bb.m ], [ %.sroa.1568.0.lcssa, %bb.r ], [ %.sroa.1568.0.lcssa, %bb.v ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.m ], [ %i.hg, %bb.r ], [ %i.hv, %bb.v ] ; 2 uses
  %.not.i.i.i58.not = icmp eq ptr %.sroa.1568.3, null
  br i1 %.not.i.i.i58.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit61, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.pn131 = phi { ptr, i32 } [ %i.l, %.thread ], [ %.pn, %bb.w ]
  %.sroa.1568.3130 = phi ptr [ %.sroa.1568.4.2, %.thread ], [ %.sroa.1568.3, %bb.w ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1568.3130)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit61 unwind label %bb.y

_ZN20btAlignedObjectArrayIiED2Ev.exit61:          ; preds = %bb.w, %bb.x
  %.pn132 = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn131, %bb.x ]
  resume { ptr, i32 } %.pn132

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.u, %.loopexit, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ 1, %.loopexit ], [ 1, %bb.u ]
  ret i32 %.025

bb.y:                                             ; preds = %bb.x
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  tail call void @__clang_call_terminate(ptr %i.hx) #20
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(56) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = call noundef i32 @_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %4)
  %.not = icmp ne i32 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.e = mul nsw i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.d, ptr %i.g, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !112
  store i32 %1, ptr %3, align 8, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.not
}

; Function Attrs: uwtable
define dso_local void @_Z11ReleaseHullR11PHullResult(ptr noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 8), (16, 24)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !97
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp ne ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !39
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.d)
  br label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

_ZN20btAlignedObjectArrayIjE5clearEv.exit:        ; preds = %bb.b, %bb.c
  store i8 1, ptr %i.e, align 8, !tbaa !105
  store ptr null, ptr %i.c, align 8, !tbaa !101
  store i32 0, ptr %i.a, align 4, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIjE5clearEv.exit, %bb.a
  store i32 0, ptr %0, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !112
  ret void
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %class.PHullResult, align 8         ; 13 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i8 1, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !100
  store i32 0, ptr %3, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !114
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.k, i32 8) ; 2 uses
  %i.l = icmp sgt i32 %spec.store.select, 0
  tail call void @llvm.assume(i1 %i.l)
  %5 = zext nneg i32 %spec.store.select to i64
  %6 = shl nuw nsw i64 %5, 4
  %7 = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %6, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit unwind label %.thread264 ; 9 uses

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %8 = load i32, ptr %i.j, align 4, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !118
  %i.s = invoke noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %8, ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %7, float noundef %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  br i1 %i.s, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %bb.b
  %i.t = load i32, ptr %i.b, align 4, !tbaa !4    ; 10 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = load <2 x float>, ptr %4, align 8, !tbaa !8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !8  ; 3 uses
  %xtraiter = and i32 %i.t, 1
  %i.x = icmp eq i32 %i.t, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.t, -2
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.073279.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod340 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod340)
  %i.y = sext i32 %.073279.epil.init to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %7, i64 %i.y ; 3 uses
  %i.aa = load <2 x float>, ptr %i.z, align 4, !tbaa !8
  %i.ab = fmul <2 x float> %i.u, %i.aa
  store <2 x float> %i.ab, ptr %i.z, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !8
  %i.ae = fmul float %i.w, %i.ad
  store float %i.ae, ptr %i.ac, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = invoke noundef i32 @_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %7, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(25) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ag)
          to label %.noexc89 unwind label %bb.d

.noexc89:                                         ; preds = %._crit_edge
  %.not.i.not = icmp eq i32 %i.ai, 0
  br i1 %.not.i.not, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.aq
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit213

.thread264:                                       ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit213

bb.d:                                             ; preds = %._crit_edge, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread270

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %.073279 = phi i32 [ 0, %.lr.ph.new ], [ %i.bb, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.am = sext i32 %.073279 to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %7, i64 %i.am ; 3 uses
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !8
  %i.ap = fmul <2 x float> %i.u, %i.ao
  store <2 x float> %i.ap, ptr %i.an, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !8
  %i.as = fmul float %i.w, %i.ar
  store float %i.as, ptr %i.aq, align 4, !tbaa !8
  %i.at = sext i32 %.073279 to i64
  %i.au = getelementptr [16 x i8], ptr %7, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16     ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !8
  %i.ax = fmul <2 x float> %i.u, %i.aw
  store <2 x float> %i.ax, ptr %i.av, align 4, !tbaa !8
  %i.ay = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !8
  %i.ba = fmul float %i.w, %i.az
  store float %i.ba, ptr %i.ay, align 4, !tbaa !8
  %i.bb = add nuw i32 %.073279, 2                 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e

bb.f:                                             ; preds = %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.aq

bb.g:                                             ; preds = %.noexc89
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !4   ; 13 uses
  %i.bd = mul nsw i32 %i.bc, 3                    ; 10 uses
  store i32 %i.bd, ptr %i.g, align 4, !tbaa !109
  store i32 %i.bc, ptr %i.h, align 8, !tbaa !111
  store ptr %7, ptr %i.i, align 8, !tbaa !112
  store i32 %i.t, ptr %3, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.be = icmp sgt i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.be)
  %9 = zext nneg i32 %i.t to i64
  %10 = shl nuw nsw i64 %9, 4
  %11 = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %10, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit107 unwind label %.thread258 ; 5 uses

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit107: ; preds = %bb.g
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !101 ; 6 uses
  invoke void @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %7, i32 noundef %i.t, ptr noundef nonnull %11, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.bf, i32 noundef %i.bd)
          to label %bb.h unwind label %.thread262

.thread262:                                       ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit107
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit107
  %i.bh = load i32, ptr %1, align 8, !tbaa !120
  %i.bi = and i32 %i.bh, 1
  %.not.i108.not = icmp eq i32 %i.bi, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  br i1 %.not.i108.not, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 8, !tbaa !121
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !4   ; 8 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !123
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !22 ; 2 uses
  %i.bn = icmp sgt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %.loopexit278

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !23
  %i.bq = icmp slt i32 %i.bp, %i.bl
  br i1 %i.bq, label %bb.k, label %.loopexit278

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i114 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i114, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i116, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = sext i32 %i.bl to i64
  %i.bs = shl nsw i64 %i.br, 4
  %i.bt = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bs, i32 noundef 16)
          to label %.noexc127 unwind label %bb.u

.noexc127:                                        ; preds = %bb.l
  %.pre.i115 = load i32, ptr %i.bk, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i116

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i116: ; preds = %.noexc127, %bb.k
  %i.bu = phi i32 [ %.pre.i115, %.noexc127 ], [ %i.bm, %bb.k ] ; 4 uses
  %.0.i.i.i117 = phi ptr [ %i.bt, %.noexc127 ], [ null, %bb.k ] ; 4 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i122, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118

.lr.ph.i.i.i122:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i116
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %wide.trip.count.i.i.i123 = zext nneg i32 %i.bu to i64 ; 2 uses
  %xtraiter342 = and i64 %wide.trip.count.i.i.i123, 1
  %i.bx = icmp eq i32 %i.bu, 1
  br i1 %i.bx, label %.epil.preheader341, label %.lr.ph.i.i.i122.new

.lr.ph.i.i.i122.new:                              ; preds = %.lr.ph.i.i.i122
  %unroll_iter345 = and i64 %wide.trip.count.i.i.i123, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i122.new
  %indvars.iv.i.i.i124 = phi i64 [ 0, %.lr.ph.i.i.i122.new ], [ %indvars.iv.next.i.i.i125.1, %bb.m ] ; 4 uses
  %niter346 = phi i64 [ 0, %.lr.ph.i.i.i122.new ], [ %niter346.next.1, %bb.m ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i117, i64 %indvars.iv.i.i.i124
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i125 = or disjoint i64 %indvars.iv.i.i.i124, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i117, i64 %indvars.iv.next.i.i.i125
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i125.1 = add nuw nsw i64 %indvars.iv.i.i.i124, 2 ; 2 uses
  %niter346.next.1 = add i64 %niter346, 2         ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118.loopexit.unr-lcssa, label %bb.m

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118, label %.epil.preheader341

.epil.preheader341:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118.loopexit.unr-lcssa, %.lr.ph.i.i.i122
  %indvars.iv.i.i.i124.epil.init = phi i64 [ 0, %.lr.ph.i.i.i122 ], [ %indvars.iv.next.i.i.i125.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod344 = trunc i32 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod344)
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i117, i64 %indvars.iv.i.i.i124.epil.init
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i124.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !38
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118: ; preds = %.epil.preheader341, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i116
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !21 ; 2 uses
  %.not.i5.i.i119 = icmp ne ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !range !39
  %i.cl = trunc nuw i8 %i.ck to i1
  %or.cond.i.i120 = select i1 %.not.i5.i.i119, i1 %i.cl, i1 false
  br i1 %or.cond.i.i120, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i121

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ci)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i121 unwind label %bb.u

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i121: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i118
  store i8 1, ptr %i.cj, align 8, !tbaa !15
  store ptr %.0.i.i.i117, ptr %i.ch, align 8, !tbaa !21
  store i32 %i.bl, ptr %i.bo, align 8, !tbaa !23
  br label %.loopexit278

.loopexit278:                                     ; preds = %bb.j, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i121, %bb.i
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bc, ptr %i.cm, align 8, !tbaa !124
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.bd, ptr %i.cn, align 4, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !97 ; 3 uses
  %i.cq = icmp sgt i32 %i.bd, %i.cp
  br i1 %i.cq, label %bb.o, label %.loopexit277

bb.o:                                             ; preds = %.loopexit278
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !100
  %i.ct = icmp slt i32 %i.cs, %i.bd
  br i1 %i.ct, label %bb.p, label %..lr.ph.i130_crit_edge

..lr.ph.i130_crit_edge:                           ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre296 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %.lr.ph.i130

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i135 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i135, label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = sext i32 %i.bd to i64
  %i.cv = shl nsw i64 %i.cu, 2
  %i.cw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
          to label %.noexc144 unwind label %bb.v

.noexc144:                                        ; preds = %bb.q
  %.pre.i136 = load i32, ptr %i.co, align 4, !tbaa !97
  br label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i: ; preds = %.noexc144, %bb.p
  %i.cx = phi i32 [ %.pre.i136, %.noexc144 ], [ %i.cp, %bb.p ] ; 3 uses
  %.0.i.i.i137 = phi ptr [ %i.cw, %.noexc144 ], [ null, %bb.p ] ; 9 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !101 ; 9 uses
  br i1 %i.cy, label %.lr.ph.i.i.i139, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i

.lr.ph.i.i.i139:                                  ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.db = ptrtoaddr ptr %i.da to i64
  %.0.i.i.i137320 = ptrtoaddr ptr %.0.i.i.i137 to i64
  %wide.trip.count.i.i.i140 = zext nneg i32 %i.cx to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.cx, 8
  %i.dc = sub i64 %.0.i.i.i137320, %i.db
  %diff.check = icmp ult i64 %i.dc, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i139
  %n.vec = and i64 %wide.trip.count.i.i.i140, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i137, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <4 x i32>, ptr %i.de, align 4, !tbaa !4
  %wide.load321 = load <4 x i32>, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x i32> %wide.load, ptr %i.dd, align 4, !tbaa !4
  store <4 x i32> %wide.load321, ptr %i.dg, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i140
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i139, %middle.block
  %indvars.iv.i.i.i141.ph = phi i64 [ 0, %.lr.ph.i.i.i139 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter347.a = and i64 %wide.trip.count.i.i.i140, 3 ; 2 uses
  %lcmp.mod348.not.a = icmp eq i64 %xtraiter347.a, 0
  br i1 %lcmp.mod348.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i141.prol = phi i64 [ %indvars.iv.next.i.i.i142.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i141.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i137, i64 %indvars.iv.i.i.i141.prol
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i.i.i141.prol
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !4
  %indvars.iv.next.i.i.i142.prol = add nuw nsw i64 %indvars.iv.i.i.i141.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter347.a
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !127

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i141.unr = phi i64 [ %indvars.iv.i.i.i141.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i142.prol, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %indvars.iv.i.i.i141.ph, %wide.trip.count.i.i.i140
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i141 = phi i64 [ %indvars.iv.next.i.i.i142.3, %scalar.ph ], [ %indvars.iv.i.i.i141.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i137, i64 %indvars.iv.i.i.i141
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i.i.i141
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next.i.i.i142 = add nuw nsw i64 %indvars.iv.i.i.i141, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i137, i64 %indvars.iv.next.i.i.i142
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i.i.i142
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !4
  %indvars.iv.next.i.i.i142.1 = add nuw nsw i64 %indvars.iv.i.i.i141, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i137, i64 %indvars.iv.next.i.i.i142.1
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i.i.i142.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !4
  %indvars.iv.next.i.i.i142.2 = add nuw nsw i64 %indvars.iv.i.i.i141, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i137, i64 %indvars.iv.next.i.i.i142.2
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i.i.i142.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !4
  %indvars.iv.next.i.i.i142.3 = add nuw nsw i64 %indvars.iv.i.i.i141, 4 ; 2 uses
  %exitcond.not.i.i.i143.3 = icmp eq i64 %indvars.iv.next.i.i.i142.3, %wide.trip.count.i.i.i140
  br i1 %exitcond.not.i.i.i143.3, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, label %scalar.ph, !llvm.loop !128

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i
  %.not.i5.i.i138 = icmp ne ptr %i.da, null
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ea = load i8, ptr %i.dz, align 8, !range !39
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond28.i = select i1 %.not.i5.i.i138, i1 %i.eb, i1 false
  br i1 %or.cond28.i, label %bb.r, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.old26.i = load i8, ptr %.old.i, align 8, !tbaa !105, !range !39, !noundef !69
  %.old27.i = trunc nuw i8 %.old26.i to i1
  br i1 %.old27.i, label %bb.r, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i

bb.r:                                             ; preds = %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.da)
          to label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i unwind label %bb.v

_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i: ; preds = %bb.r, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 1, ptr %i.ec, align 8, !tbaa !105
  store ptr %.0.i.i.i137, ptr %i.cz, align 8, !tbaa !101
  store i32 %i.bd, ptr %i.cr, align 8, !tbaa !100
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %..lr.ph.i130_crit_edge, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i
  %i.ed = phi ptr [ %.pre296, %..lr.ph.i130_crit_edge ], [ %.0.i.i.i137, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i ]
  %i.ee = sext i32 %i.cp to i64                   ; 2 uses
  %wide.trip.count.i131 = sext i32 %i.bd to i64
  %i.ef = shl nsw i64 %i.ee, 2
  %scevgep = getelementptr i8, ptr %i.ed, i64 %i.ef
  %i.eg = sub nsw i64 %wide.trip.count.i131, %i.ee
  %i.eh = shl nsw i64 %i.eg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.eh, i1 false), !tbaa !4
  br label %.loopexit277

.loopexit277:                                     ; preds = %.lr.ph.i130, %.loopexit278
  store i32 %i.bd, ptr %i.co, align 4, !tbaa !97
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = zext i32 %i.bl to i64
  %i.el = shl nuw nsw i64 %i.ek, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr nonnull align 4 %11, i64 %i.el, i1 false)
  %i.em = load i32, ptr %1, align 8, !tbaa !120
  %i.en = and i32 %i.em, 2
  %.not.i146.not = icmp eq i32 %i.en, 0
  br i1 %.not.i146.not, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.loopexit277
  %.not290 = icmp eq i32 %i.bc, 0
  br i1 %.not290, label %.loopexit, label %.lr.ph284.preheader

.lr.ph284.preheader:                              ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !101 ; 2 uses
  %xtraiter349 = and i32 %i.bc, 1
  %i.eq = icmp eq i32 %i.bc, 1
  br i1 %i.eq, label %.lr.ph284.epil.preheader, label %.lr.ph284.preheader.new

.lr.ph284.preheader.new:                          ; preds = %.lr.ph284.preheader
  %unroll_iter352 = and i32 %i.bc, -2
  br label %.lr.ph284

bb.t:                                             ; preds = %bb.ao
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.thread270

.thread258:                                       ; preds = %bb.g
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.thread270

bb.u:                                             ; preds = %bb.n, %bb.l
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

.lr.ph284:                                        ; preds = %.lr.ph284, %.lr.ph284.preheader.new
  %.070281 = phi ptr [ %i.ep, %.lr.ph284.preheader.new ], [ %i.fl, %.lr.ph284 ] ; 7 uses
  %.071280 = phi ptr [ %i.bf, %.lr.ph284.preheader.new ], [ %i.fm, %.lr.ph284 ] ; 7 uses
  %niter353 = phi i32 [ 0, %.lr.ph284.preheader.new ], [ %niter353.next.1, %.lr.ph284 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.071280, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  store i32 %i.ew, ptr %.070281, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %.071280, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = getelementptr inbounds nuw i8, ptr %.070281, i64 4
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !4
  %i.fa = load i32, ptr %.071280, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.070281, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw i8, ptr %.070281, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.071280, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %.071280, i64 20
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.071280, i64 16
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4
  %i.fi = getelementptr inbounds nuw i8, ptr %.070281, i64 16
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !4
  %i.fj = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.fk = getelementptr inbounds nuw i8, ptr %.070281, i64 20
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %.070281, i64 24 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.071280, i64 24 ; 2 uses
  %niter353.next.1 = add i32 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i32 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %.loopexit.loopexit339.unr-lcssa, label %.lr.ph284

bb.w:                                             ; preds = %.loopexit277
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !101
  %i.fp = zext i32 %i.bd to i64
  %i.fq = shl nuw nsw i64 %i.fp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr nonnull align 4 %i.bf, i64 %i.fq, i1 false)
  br label %.loopexit

bb.x:                                             ; preds = %bb.h
  store i8 1, ptr %2, align 8, !tbaa !121
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !4   ; 8 uses
  store i32 %i.fr, ptr %i.bj, align 4, !tbaa !123
  %i.fs = load i32, ptr %i.bk, align 4, !tbaa !22 ; 2 uses
  %i.ft = icmp sgt i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.y, label %.loopexit275

bb.y:                                             ; preds = %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !23
  %i.fw = icmp slt i32 %i.fv, %i.fr
  br i1 %i.fw, label %bb.z, label %.loopexit275

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i152 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i152, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i154, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = sext i32 %i.fr to i64
  %i.fy = shl nsw i64 %i.fx, 4
  %i.fz = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fy, i32 noundef 16)
          to label %.noexc165 unwind label %bb.ah

.noexc165:                                        ; preds = %bb.aa
  %.pre.i153 = load i32, ptr %i.bk, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i154

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i154: ; preds = %.noexc165, %bb.z
  %i.ga = phi i32 [ %.pre.i153, %.noexc165 ], [ %i.fs, %bb.z ] ; 4 uses
  %.0.i.i.i155 = phi ptr [ %i.fz, %.noexc165 ], [ null, %bb.z ] ; 4 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i.i160, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156

.lr.ph.i.i.i160:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i154
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %wide.trip.count.i.i.i161 = zext nneg i32 %i.ga to i64 ; 2 uses
  %xtraiter355 = and i64 %wide.trip.count.i.i.i161, 1
  %i.gd = icmp eq i32 %i.ga, 1
  br i1 %i.gd, label %.epil.preheader354, label %.lr.ph.i.i.i160.new

.lr.ph.i.i.i160.new:                              ; preds = %.lr.ph.i.i.i160
  %unroll_iter358 = and i64 %wide.trip.count.i.i.i161, 2147483646
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i.i160.new
  %indvars.iv.i.i.i162 = phi i64 [ 0, %.lr.ph.i.i.i160.new ], [ %indvars.iv.next.i.i.i163.1, %bb.ab ] ; 4 uses
  %niter359 = phi i64 [ 0, %.lr.ph.i.i.i160.new ], [ %niter359.next.1, %bb.ab ]
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i155, i64 %indvars.iv.i.i.i162
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i162
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ge, ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i163 = or disjoint i64 %indvars.iv.i.i.i162, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i155, i64 %indvars.iv.next.i.i.i163
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %indvars.iv.next.i.i.i163
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %i.gj, i64 16, i1 false), !tbaa.struct !38
  %indvars.iv.next.i.i.i163.1 = add nuw nsw i64 %indvars.iv.i.i.i162, 2 ; 2 uses
  %niter359.next.1 = add i64 %niter359, 2         ; 2 uses
  %niter359.ncmp.1 = icmp eq i64 %niter359.next.1, %unroll_iter358
  br i1 %niter359.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156.loopexit.unr-lcssa, label %bb.ab

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156.loopexit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156, label %.epil.preheader354

.epil.preheader354:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156.loopexit.unr-lcssa, %.lr.ph.i.i.i160
  %indvars.iv.i.i.i162.epil.init = phi i64 [ 0, %.lr.ph.i.i.i160 ], [ %indvars.iv.next.i.i.i163.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod357 = trunc i32 %i.ga to i1
  tail call void @llvm.assume(i1 %lcmp.mod357)
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i155, i64 %indvars.iv.i.i.i162.epil.init
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i162.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gk, ptr noundef nonnull align 4 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !38
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156: ; preds = %.epil.preheader354, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i154
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !21 ; 2 uses
  %.not.i5.i.i157 = icmp ne ptr %i.go, null
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 8, !range !39
  %i.gr = trunc nuw i8 %i.gq to i1
  %or.cond.i.i158 = select i1 %.not.i5.i.i157, i1 %i.gr, i1 false
  br i1 %or.cond.i.i158, label %bb.ac, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i159

bb.ac:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.go)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i159 unwind label %bb.ah

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i159: ; preds = %bb.ac, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i156
  store i8 1, ptr %i.gp, align 8, !tbaa !15
  store ptr %.0.i.i.i155, ptr %i.gn, align 8, !tbaa !21
  store i32 %i.fr, ptr %i.fu, align 8, !tbaa !23
  br label %.loopexit275

.loopexit275:                                     ; preds = %bb.y, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i159, %bb.x
  store i32 %i.fr, ptr %i.bk, align 4, !tbaa !22
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bc, ptr %i.gs, align 8, !tbaa !124
  %i.gt = shl i32 %i.bc, 2                        ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !125
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !97 ; 3 uses
  %i.gx = icmp sgt i32 %i.gt, %i.gw
  br i1 %i.gx, label %bb.ad, label %.loopexit274

bb.ad:                                            ; preds = %.loopexit275
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !100
  %i.ha = icmp slt i32 %i.gz, %i.gt
  br i1 %i.ha, label %bb.ae, label %..lr.ph.i168_crit_edge

..lr.ph.i168_crit_edge:                           ; preds = %bb.ad
  %.phi.trans.insert297 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre298 = load ptr, ptr %.phi.trans.insert297, align 8, !tbaa !101
  br label %.lr.ph.i168

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i174 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i174, label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i176, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hb = sext i32 %i.gt to i64
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hc, i32 noundef 16)
          to label %.noexc191 unwind label %bb.ai

.noexc191:                                        ; preds = %bb.af
  %.pre.i175 = load i32, ptr %i.gv, align 4, !tbaa !97
  br label %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i176

_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i176: ; preds = %.noexc191, %bb.ae
  %i.he = phi i32 [ %.pre.i175, %.noexc191 ], [ %i.gw, %bb.ae ] ; 3 uses
  %.0.i.i.i177 = phi ptr [ %i.hd, %.noexc191 ], [ null, %bb.ae ] ; 9 uses
  %i.hf = icmp sgt i32 %i.he, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !101 ; 9 uses
  br i1 %i.hf, label %.lr.ph.i.i.i182, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i178

.lr.ph.i.i.i182:                                  ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i176
  %i.hi = ptrtoaddr ptr %i.hh to i64
  %.0.i.i.i177323 = ptrtoaddr ptr %.0.i.i.i177 to i64
  %wide.trip.count.i.i.i183 = zext nneg i32 %i.he to i64 ; 5 uses
  %min.iters.check326 = icmp ult i32 %i.he, 8
  %i.hj = sub i64 %.0.i.i.i177323, %i.hi
  %diff.check324 = icmp ult i64 %i.hj, 32
  %or.cond338 = select i1 %min.iters.check326, i1 true, i1 %diff.check324
  br i1 %or.cond338, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.i.i.i182
  %n.vec329 = and i64 %wide.trip.count.i.i.i183, 2147483640 ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph327
  %index331 = phi i64 [ 0, %vector.ph327 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %index331 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index331 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load332 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !4
  %wide.load333 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store <4 x i32> %wide.load332, ptr %i.hk, align 4, !tbaa !4
  store <4 x i32> %wide.load333, ptr %i.hn, align 4, !tbaa !4
  %index.next334 = add nuw i64 %index331, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.ho, label %middle.block335, label %vector.body330, !llvm.loop !129

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %n.vec329, %wide.trip.count.i.i.i183
  br i1 %cmp.n336, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i187, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.lr.ph.i.i.i182, %middle.block335
  %indvars.iv.i.i.i184.ph = phi i64 [ 0, %.lr.ph.i.i.i182 ], [ %n.vec329, %middle.block335 ] ; 3 uses
  %xtraiter360 = and i64 %wide.trip.count.i.i.i183, 3 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %scalar.ph325.prol.loopexit, label %scalar.ph325.prol

scalar.ph325.prol:                                ; preds = %scalar.ph325.preheader, %scalar.ph325.prol
  %indvars.iv.i.i.i184.prol = phi i64 [ %indvars.iv.next.i.i.i185.prol, %scalar.ph325.prol ], [ %indvars.iv.i.i.i184.ph, %scalar.ph325.preheader ] ; 3 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %scalar.ph325.prol ], [ 0, %scalar.ph325.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.i.i.i184.prol
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i184.prol
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !4
  %indvars.iv.next.i.i.i185.prol = add nuw nsw i64 %indvars.iv.i.i.i184.prol, 1 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %scalar.ph325.prol.loopexit, label %scalar.ph325.prol, !llvm.loop !130

scalar.ph325.prol.loopexit:                       ; preds = %scalar.ph325.prol, %scalar.ph325.preheader
  %indvars.iv.i.i.i184.unr = phi i64 [ %indvars.iv.i.i.i184.ph, %scalar.ph325.preheader ], [ %indvars.iv.next.i.i.i185.prol, %scalar.ph325.prol ]
  %i.hs = sub nsw i64 %indvars.iv.i.i.i184.ph, %wide.trip.count.i.i.i183
  %i.ht = icmp ugt i64 %i.hs, -4
  br i1 %i.ht, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i187, label %scalar.ph325

scalar.ph325:                                     ; preds = %scalar.ph325.prol.loopexit, %scalar.ph325
  %indvars.iv.i.i.i184 = phi i64 [ %indvars.iv.next.i.i.i185.3, %scalar.ph325 ], [ %indvars.iv.i.i.i184.unr, %scalar.ph325.prol.loopexit ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.i.i.i184
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i184
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !4
  %indvars.iv.next.i.i.i185 = add nuw nsw i64 %indvars.iv.i.i.i184, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.next.i.i.i185
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i185
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !4
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !4
  %indvars.iv.next.i.i.i185.1 = add nuw nsw i64 %indvars.iv.i.i.i184, 2 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.next.i.i.i185.1
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i185.1
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  %indvars.iv.next.i.i.i185.2 = add nuw nsw i64 %indvars.iv.i.i.i184, 3 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.next.i.i.i185.2
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i185.2
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4
  store i32 %i.if, ptr %i.id, align 4, !tbaa !4
  %indvars.iv.next.i.i.i185.3 = add nuw nsw i64 %indvars.iv.i.i.i184, 4 ; 2 uses
  %exitcond.not.i.i.i186.3 = icmp eq i64 %indvars.iv.next.i.i.i185.3, %wide.trip.count.i.i.i183
  br i1 %exitcond.not.i.i.i186.3, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i187, label %scalar.ph325, !llvm.loop !131

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i178: ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i176
  %.not.i5.i.i179 = icmp ne ptr %i.hh, null
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ih = load i8, ptr %i.ig, align 8, !range !39
  %i.ii = trunc nuw i8 %i.ih to i1
  %or.cond28.i180 = select i1 %.not.i5.i.i179, i1 %i.ii, i1 false
  br i1 %or.cond28.i180, label %bb.ag, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i181

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i187: ; preds = %scalar.ph325.prol.loopexit, %scalar.ph325, %middle.block335
  %.old.i188 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.old26.i189 = load i8, ptr %.old.i188, align 8, !tbaa !105, !range !39, !noundef !69
  %.old27.i190 = trunc nuw i8 %.old26.i189 to i1
  br i1 %.old27.i190, label %bb.ag, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i181

bb.ag:                                            ; preds = %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i187, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i178
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hh)
          to label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i181 unwind label %bb.ai

_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i181: ; preds = %bb.ag, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i187, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i178
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 1, ptr %i.ij, align 8, !tbaa !105
  store ptr %.0.i.i.i177, ptr %i.hg, align 8, !tbaa !101
  store i32 %i.gt, ptr %i.gy, align 8, !tbaa !100
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %..lr.ph.i168_crit_edge, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i181
  %i.ik = phi ptr [ %.pre298, %..lr.ph.i168_crit_edge ], [ %.0.i.i.i177, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i181 ]
  %i.il = sext i32 %i.gw to i64                   ; 2 uses
  %wide.trip.count.i169 = sext i32 %i.gt to i64
  %i.im = shl nsw i64 %i.il, 2
  %scevgep294 = getelementptr i8, ptr %i.ik, i64 %i.im
  %i.in = sub nsw i64 %wide.trip.count.i169, %i.il
  %i.io = shl nsw i64 %i.in, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep294, i8 0, i64 %i.io, i1 false), !tbaa !4
  br label %.loopexit274

.loopexit274:                                     ; preds = %.lr.ph.i168, %.loopexit275
  store i32 %i.gt, ptr %i.gv, align 4, !tbaa !97
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !21
  %i.ir = zext i32 %i.fr to i64
  %i.is = shl nuw nsw i64 %i.ir, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iq, ptr nonnull align 4 %11, i64 %i.is, i1 false)
  %.not291 = icmp eq i32 %i.bc, 0
  br i1 %.not291, label %.loopexit, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %.loopexit274
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !101
  br label %.lr.ph289

bb.ah:                                            ; preds = %bb.ac, %bb.aa
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.al
  %.0287 = phi i32 [ %i.jo, %bb.al ], [ 0, %.lr.ph289.preheader ]
  %.067286 = phi ptr [ %i.jm, %bb.al ], [ %i.iu, %.lr.ph289.preheader ] ; 7 uses
  %.068285 = phi ptr [ %i.jn, %bb.al ], [ %i.bf, %.lr.ph289.preheader ] ; 7 uses
  store i32 3, ptr %.067286, align 4, !tbaa !4
  %i.ix = load i32, ptr %1, align 8, !tbaa !120
  %i.iy = and i32 %i.ix, 2
  %.not.i194.not = icmp eq i32 %i.iy, 0
  br i1 %.not.i194.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph289
  %i.iz = getelementptr inbounds nuw i8, ptr %.068285, i64 8
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  %i.jb = getelementptr inbounds nuw i8, ptr %.067286, i64 4
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !4
  %i.jc = getelementptr inbounds nuw i8, ptr %.068285, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4
  %i.je = getelementptr inbounds nuw i8, ptr %.067286, i64 8
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !4
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph289
  %i.jf = load i32, ptr %.068285, align 4, !tbaa !4
  %i.jg = getelementptr inbounds nuw i8, ptr %.067286, i64 4
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !4
  %i.jh = getelementptr inbounds nuw i8, ptr %.068285, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = getelementptr inbounds nuw i8, ptr %.067286, i64 8
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !4
  %i.jk = getelementptr inbounds nuw i8, ptr %.068285, i64 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink.in = phi ptr [ %i.jk, %bb.ak ], [ %.068285, %bb.aj ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw i8, ptr %.067286, i64 12
  store i32 %.sink, ptr %i.jl, align 4, !tbaa !4
  %i.jm = getelementptr inbounds nuw i8, ptr %.067286, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %.068285, i64 12
  %i.jo = add nuw i32 %.0287, 1                   ; 2 uses
  %exitcond295.not = icmp eq i32 %i.jo, %i.bc
  br i1 %exitcond295.not, label %.loopexit, label %.lr.ph289

.loopexit.loopexit339.unr-lcssa:                  ; preds = %.lr.ph284
  %lcmp.mod350.not = icmp eq i32 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.loopexit, label %.lr.ph284.epil.preheader

.lr.ph284.epil.preheader:                         ; preds = %.loopexit.loopexit339.unr-lcssa, %.lr.ph284.preheader
  %.070281.epil.init = phi ptr [ %i.ep, %.lr.ph284.preheader ], [ %i.fl, %.loopexit.loopexit339.unr-lcssa ] ; 3 uses
  %.071280.epil.init = phi ptr [ %i.bf, %.lr.ph284.preheader ], [ %i.fm, %.loopexit.loopexit339.unr-lcssa ] ; 3 uses
  %lcmp.mod351 = trunc i32 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.jp = getelementptr inbounds nuw i8, ptr %.071280.epil.init, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !4
  store i32 %i.jq, ptr %.070281.epil.init, align 4, !tbaa !4
  %i.jr = getelementptr inbounds nuw i8, ptr %.071280.epil.init, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = getelementptr inbounds nuw i8, ptr %.070281.epil.init, i64 4
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !4
  %i.ju = load i32, ptr %.071280.epil.init, align 4, !tbaa !4
  %i.jv = getelementptr inbounds nuw i8, ptr %.070281.epil.init, i64 8
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph284.epil.preheader, %.loopexit.loopexit339.unr-lcssa, %bb.al, %bb.s, %.loopexit274, %bb.w
  %i.jw = load i32, ptr %i.e, align 4, !tbaa !97
  %.not.i195 = icmp eq i32 %i.jw, 0
  br i1 %.not.i195, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.jx = load i8, ptr %i.c, align 8, !range !39
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.an, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i unwind label %bb.ap

_ZN20btAlignedObjectArrayIjE5clearEv.exit.i:      ; preds = %bb.an, %bb.am
  store i8 1, ptr %i.c, align 8, !tbaa !105
  store ptr null, ptr %i.d, align 8, !tbaa !101
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %11)
          to label %bb.aq unwind label %bb.t

bb.ap:                                            ; preds = %bb.an
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

.thread251:                                       ; preds = %bb.ap, %bb.ah, %bb.ai, %bb.u, %bb.v, %.thread262
  %.pn257 = phi { ptr, i32 } [ %i.bg, %.thread262 ], [ %i.jz, %bb.ap ], [ %i.iv, %bb.ah ], [ %i.iw, %bb.ai ], [ %i.et, %bb.u ], [ %i.eu, %bb.v ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %11)
          to label %.thread270 unwind label %bb.at

bb.aq:                                            ; preds = %bb.b, %bb.f, %bb.ao
  %.072 = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %7)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit209 unwind label %bb.c

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit209: ; preds = %bb.aq
  %i.ka = load ptr, ptr %i.d, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ka, null
  %i.kb = load i8, ptr %i.c, align 8, !range !39
  %i.kc = trunc nuw i8 %i.kb to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.kc, i1 false
  br i1 %or.cond.i.i.i, label %bb.ar, label %_ZN11PHullResultD2Ev.exit

bb.ar:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit209
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ka)
  br label %_ZN11PHullResultD2Ev.exit

_ZN11PHullResultD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit209, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.072

.thread270:                                       ; preds = %bb.t, %.thread251, %.thread258, %bb.d
  %.pn82.pn273 = phi { ptr, i32 } [ %i.al, %bb.d ], [ %i.es, %.thread258 ], [ %.pn257, %.thread251 ], [ %i.er, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %7)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit213 unwind label %bb.at

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit213: ; preds = %.thread264, %.thread270, %bb.c
  %.pn86 = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %i.ak, %.thread264 ], [ %.pn82.pn273, %.thread270 ]
  %i.kd = load ptr, ptr %i.d, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i.i214 = icmp ne ptr %i.kd, null
  %i.ke = load i8, ptr %i.c, align 8, !range !39
  %i.kf = trunc nuw i8 %i.ke to i1
  %or.cond.i.i.i215 = select i1 %.not.i.i.i.i214, i1 %i.kf, i1 false
  br i1 %or.cond.i.i.i215, label %bb.as, label %_ZN11PHullResultD2Ev.exit217

bb.as:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit213
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.kd)
          to label %_ZN11PHullResultD2Ev.exit217 unwind label %bb.at

_ZN11PHullResultD2Ev.exit217:                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit213, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn86

bb.at:                                            ; preds = %bb.as, %.thread270, %.thread251
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  tail call void @__clang_call_terminate(ptr %i.kh) #20
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr noundef captures(none) %5, float noundef %6, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit365

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !39
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond28.i = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond28.i, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !76
  store ptr null, ptr %i.h, align 8, !tbaa !70
  store i32 0, ptr %i.e, align 8, !tbaa !78
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !4
  br label %.loopexit365

.loopexit365:                                     ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !77
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !8
  %i.s = zext i32 %3 to i64                       ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.t = fsub float %.sroa.0419.1, %.sroa.0423.1  ; 8 uses
  %i.u = fsub <2 x float> %i.an, %i.am            ; 5 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float %.sroa.0423.1) ; 3 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> splat (float 5.000000e-01), <2 x float> %i.am) ; 5 uses
  %i.x = extractelement <2 x float> %i.u, i64 0   ; 5 uses
  %i.y = fcmp olt float %i.x, f0x358637BD         ; 2 uses
  %i.z = fcmp olt float %i.t, f0x358637BD         ; 2 uses
  %or.cond = select i1 %i.z, i1 true, i1 %i.y
  %i.aa = extractelement <2 x float> %i.u, i64 1  ; 6 uses
  %i.ab = fcmp olt float %i.aa, f0x358637BD       ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ab
  %i.ac = icmp ult i32 %1, 3
  %or.cond5 = or i1 %i.ac, %or.cond3
  br i1 %or.cond5, label %bb.g, label %bb.k

bb.f:                                             ; preds = %.loopexit365, %bb.f
  %.sroa.0423.0 = phi float [ f0x7F7FFFFF, %.loopexit365 ], [ %.sroa.0423.1, %bb.f ] ; 2 uses
  %.sroa.0419.0 = phi float [ f0xFF7FFFFF, %.loopexit365 ], [ %.sroa.0419.1, %bb.f ] ; 2 uses
  %.0282378 = phi ptr [ %2, %.loopexit365 ], [ %i.ao, %bb.f ] ; 3 uses
  %.0284377 = phi i32 [ 0, %.loopexit365 ], [ %i.ap, %bb.f ]
  %i.ad = phi <2 x float> [ splat (float f0xFF7FFFFF), %.loopexit365 ], [ %i.an, %bb.f ] ; 2 uses
  %i.ae = phi <2 x float> [ splat (float f0x7F7FFFFF), %.loopexit365 ], [ %i.am, %bb.f ] ; 2 uses
  %i.af = load float, ptr %.0282378, align 4, !tbaa !8 ; 4 uses
  %i.ag = fcmp olt float %i.af, %.sroa.0423.0
  %.sroa.0423.1 = select i1 %i.ag, float %i.af, float %.sroa.0423.0 ; 3 uses
  %i.ah = fcmp ogt float %i.af, %.sroa.0419.0
  %.sroa.0419.1 = select i1 %i.ah, float %i.af, float %.sroa.0419.0 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0282378, i64 4
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !8 ; 4 uses
  %i.ak = fcmp olt <2 x float> %i.aj, %i.ae
  %i.al = fcmp ogt <2 x float> %i.aj, %i.ad
  %i.am = select <2 x i1> %i.ak, <2 x float> %i.aj, <2 x float> %i.ae ; 3 uses
  %i.an = select <2 x i1> %i.al, <2 x float> %i.aj, <2 x float> %i.ad ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0282378, i64 %i.s
  %i.ap = add nuw i32 %.0284377, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %1
  br i1 %exitcond.not, label %bb.e, label %bb.f

bb.g:                                             ; preds = %bb.e
  %i.aq = fcmp ogt float %i.t, f0x358637BD
  %i.ar = fcmp olt float %i.t, f0x7F7FFFFF
  %or.cond332 = and i1 %i.aq, %i.ar
  %.0303 = select i1 %or.cond332, float %i.t, float f0x7F7FFFFF ; 2 uses
  %i.as = fcmp ogt float %i.x, f0x358637BD
  %i.at = fcmp olt float %i.x, %.0303
  %or.cond333 = and i1 %i.as, %i.at
  %.1304 = select i1 %or.cond333, float %i.x, float %.0303 ; 2 uses
  %i.au = fcmp ogt float %i.aa, f0x358637BD
  %i.av = fcmp olt float %i.aa, %.1304
  %or.cond334 = select i1 %i.au, i1 %i.av, i1 false
  %.2305 = select i1 %or.cond334, float %i.aa, float %.1304 ; 2 uses
  %i.aw = fcmp oeq float %.2305, f0x7F7FFFFF
  br i1 %i.aw, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = fmul float %.2305, 5.000000e-02         ; 3 uses
  %.0291 = select i1 %i.z, float %i.ax, float %i.t ; 2 uses
  %.0299 = select i1 %i.y, float %i.ax, float %i.x ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0302 = phi float [ %i.aa, %bb.h ], [ %i.ax, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %.1300 = phi float [ %.0299, %bb.h ], [ %.0299, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %.1292 = phi float [ %.0291, %bb.h ], [ %.0291, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %i.ay = fsub float %i.v, %.1292
  %i.az = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x float> %i.az, float %i.v, i64 0
  %i.bb = insertelement <2 x float> poison, float %.1292, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %.1300, i64 1
  %i.bd = fadd <2 x float> %i.ba, %i.bc
  %i.be = insertelement <2 x float> poison, float %.1300, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %.0302, i64 1
  %i.bg = fsub <2 x float> %i.w, %i.bf
  %i.bh = extractelement <2 x float> %i.w, i64 1
  %i.bi = fadd float %i.bh, %.0302
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  store float %i.t, ptr %7, align 4, !tbaa !8
  store <2 x float> %i.u, ptr %i.q, align 4, !tbaa !8
  %i.bj = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.t, i64 0
  %i.bl = fdiv <2 x float> splat (float 1.000000e+00), %i.bk ; 3 uses
  %i.bm = fdiv float 1.000000e+00, %i.aa          ; 2 uses
  %i.bn = extractelement <2 x float> %i.bl, i64 0
  %i.bo = fmul float %i.v, %i.bn                  ; 2 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.w, %shift
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bq = extractelement <2 x float> %i.w, i64 1
  %i.br = fmul float %i.bq, %i.bm                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.bv = load i32, ptr %4, align 4, !tbaa !4     ; 3 uses
  %.not389 = icmp eq i32 %i.bv, 0
  br i1 %.not389, label %._crit_edge, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %bb.l
  %wide.trip.count408 = zext i32 %i.bv to i64
  br label %.lr.ph387

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283384 = phi ptr [ %2, %bb.k ], [ %i.bw, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0306383 = phi i32 [ 0, %bb.k ], [ %i.fg, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.1283384, i64 %i.s
  %i.bx = load <2 x float>, ptr %.1283384, align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.1283384, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !8
end_hunk_0
