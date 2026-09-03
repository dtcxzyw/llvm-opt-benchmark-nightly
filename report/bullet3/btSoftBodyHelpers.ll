Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN17btSoftBodyHelpers20CreateFromConvexHullER19btSoftBodyWorldInfoPK9btVector3ib:bb.a

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.o, align 8, !tbaa !359
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !346

bb.o:                                             ; preds = %._crit_edge
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.z)
          to label %bb.q unwind label %bb.d

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ay, null
  %i.az = load i8, ptr %i.u, align 8, !range !37
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ba, i1 false
  br i1 %or.cond.i.i.i, label %bb.r, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ay)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #26
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i:          ; preds = %bb.r, %bb.q
  %i.bd = load ptr, ptr %i.r, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.bd, null
  %i.be = load i8, ptr %i.q, align 8, !range !37
  %i.bf = trunc nuw i8 %i.be to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.bf, i1 false
  br i1 %or.cond.i.i2.i, label %bb.t, label %_ZN11HullLibraryD2Ev.exit

bb.t:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bd)
          to label %_ZN11HullLibraryD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #26
  unreachable

_ZN11HullLibraryD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i.i42 = icmp ne ptr %i.bi, null
  %i.bj = load i8, ptr %i.j, align 8, !range !37
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond.i.i.i43 = select i1 %.not.i.i.i.i42, i1 %i.bk, i1 false
  br i1 %or.cond.i.i.i43, label %bb.v, label %_ZN20btAlignedObjectArrayIjED2Ev.exit.i

bb.v:                                             ; preds = %_ZN11HullLibraryD2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bi)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #26
  unreachable

_ZN20btAlignedObjectArrayIjED2Ev.exit.i:          ; preds = %bb.v, %_ZN11HullLibraryD2Ev.exit
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %.not.i.i.i1.i44 = icmp ne ptr %i.bn, null
  %i.bo = load i8, ptr %i.f, align 8, !range !37
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond.i.i2.i45 = select i1 %.not.i.i.i1.i44, i1 %i.bp, i1 false
  br i1 %or.cond.i.i2.i45, label %bb.x, label %_ZN10HullResultD2Ev.exit

bb.x:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
          to label %_ZN10HullResultD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZN10HullResultD2Ev.exit:                         ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.z

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e, %bb.d, %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.c ], [ %i.as, %bb.h ], [ %i.ag, %bb.d ], [ %i.ah, %bb.e ]
  call void @_ZN11HullLibraryD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN10HullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN17btSoftBodyHelpers17CreateFromTriMeshER19btSoftBodyWorldInfoPKfPKiib(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btAlignedObjectArray.50, align 8 ; 8 uses
  %6 = alloca %class.btAlignedObjectArray.4, align 8 ; 8 uses
  %i.a = mul i32 %3, 3                            ; 3 uses
  %i.b = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader142, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !59
  %wide.load141 = load <4 x i32>, ptr %i.d, align 4, !tbaa !59
  %i.e = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.f = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load141, <4 x i32> %vec.phi140) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.e, <4 x i32> %i.f)
  %i.h = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader142

.lr.ph.preheader142:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.097105.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader142, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader142 ] ; 2 uses
  %.097105 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ %.097105.ph, %.lr.ph.preheader142 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %.097105) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !366

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.sroa.speculated.lcssa = phi i32 [ %i.h, %middle.block ], [ %.sroa.speculated, %.lr.ph ]
  %i.k = add nuw nsw i32 %.sroa.speculated.lcssa, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge.loopexit
  %.097.lcssa = phi i32 [ 1, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i8 1, ptr %i.l, align 8, !tbaa !369
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !169
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !370
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i8 1, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !43
  %i.t = mul nsw i32 %.097.lcssa, %.097.lcssa     ; 3 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.u, i32 noundef 16)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.l, align 8, !tbaa !369
  store ptr %i.v, ptr %i.m, align 8, !tbaa !169
  store i32 %i.t, ptr %i.o, align 8, !tbaa !371
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, i8 0, i64 %i.u, i1 false), !tbaa !372
  store i32 %i.t, ptr %i.n, align 4, !tbaa !370
  %i.w = zext nneg i32 %.097.lcssa to i64
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.x, i32 noundef 16)
          to label %.lr.ph110.preheader unwind label %bb.e ; 3 uses

.lr.ph110.preheader:                              ; preds = %bb.c
  store i8 1, ptr %i.p, align 8, !tbaa !40
  store ptr %i.y, ptr %i.q, align 8, !tbaa !41
  store i32 %.097.lcssa, ptr %i.s, align 8, !tbaa !43
  store i32 %.097.lcssa, ptr %i.r, align 4, !tbaa !42
  %i.z = mul nsw i32 %.097.lcssa, 3
  %wide.trip.count126 = zext nneg i32 %i.z to i64
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  %indvars.iv118.a = phi i64 [ 0, %.lr.ph110.preheader ], [ %niter.next.1, %.lr.ph110 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph110.preheader ], [ %indvars.iv.next121.1, %.lr.ph110 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv118.a ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !19
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %niter ; 3 uses
  %i.ae = load <2 x float>, ptr %i.aa, align 4, !tbaa !19
  store <2 x float> %i.ae, ptr %i.ad, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store float %i.ac, ptr %.sroa.5.0..sroa_idx.1, align 4
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !39
  %indvars.iv.next121.1 = add nuw nsw i64 %niter, 1
  %niter.next.1 = add nuw nsw i64 %indvars.iv118.a, 3 ; 2 uses
  %7 = icmp samesign ult i64 %niter.next.1, %wide.trip.count126
  br i1 %7, label %.lr.ph110, label %._crit_edge111, !llvm.loop !367

bb.d:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

._crit_edge111:                                   ; preds = %.lr.ph110
  %i.ah = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16)
          to label %_ZN17btCollisionObjectnwEm.exit unwind label %bb.g ; 8 uses

_ZN17btCollisionObjectnwEm.exit:                  ; preds = %._crit_edge111
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !42
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.ah, ptr noundef nonnull %0, i32 noundef %i.ai, ptr noundef nonnull %i.y, ptr noundef null)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %_ZN17btCollisionObjectnwEm.exit
  br i1 %i.b, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %.preheader
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !169 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph115, %bb.q
  %indvars.iv132 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next133, %bb.q ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv132 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !59 ; 7 uses
  %i.ap = mul nsw i32 %i.ak, %.097.lcssa          ; 2 uses
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.pre, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !372, !range !37, !noundef !38
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %bb.j

bb.g:                                             ; preds = %._crit_edge111, %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.h:                                             ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ah)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

bb.j:                                             ; preds = %bb.f
  store i8 1, ptr %i.as, align 1, !tbaa !372
  %i.az = mul nsw i32 %i.ao, %.097.lcssa
  %i.ba = add nsw i32 %i.az, %i.ak
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %.pre, i64 %i.bb
  store i8 1, ptr %i.bc, align 1, !tbaa !372
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.ah, i32 noundef %i.ao, i32 noundef %i.ak, ptr noundef null, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.m, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.l:                                             ; preds = %bb.f, %bb.j
  %i.be = mul nsw i32 %i.am, %.097.lcssa          ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.ak
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %.pre, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !372, !range !37, !noundef !38
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.bh, align 1, !tbaa !372
  %i.bk = add nsw i32 %i.ap, %i.am
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.pre, i64 %i.bl
  store i8 1, ptr %i.bm, align 1, !tbaa !372
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.ah, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef null, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = mul nsw i32 %i.ao, %.097.lcssa
  %i.bo = add nsw i32 %i.bn, %i.am
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %.pre, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !372, !range !37, !noundef !38
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.bq, align 1, !tbaa !372
  %i.bt = add nsw i32 %i.be, %i.ao
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %.pre, i64 %i.bu
  store i8 1, ptr %i.bv, align 1, !tbaa !372
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.ah, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef null, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o, %bb.n
  invoke void @_ZN10btSoftBody10appendFaceEiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.ah, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef null)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 3 ; 2 uses
  %i.bw = trunc nuw i64 %indvars.iv.next133 to i32
  %i.bx = icmp sgt i32 %i.a, %i.bw
  br i1 %i.bx, label %bb.f, label %._crit_edge116, !llvm.loop !368

bb.r:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

._crit_edge116:                                   ; preds = %bb.q, %.preheader
  br i1 %4, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge116
  invoke void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.ah)
          to label %bb.t unwind label %bb.g

bb.t:                                             ; preds = %bb.s, %._crit_edge116
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !41  ; 2 uses
  %.not.i.i.i77 = icmp ne ptr %i.bz, null
  %i.ca = load i8, ptr %i.p, align 8, !range !37
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i.i = select i1 %.not.i.i.i77, i1 %i.cb, i1 false
  br i1 %or.cond.i.i, label %bb.u, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bz)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i78 = icmp ne ptr %i.ce, null
  %i.cf = load i8, ptr %i.l, align 8, !range !37
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond.i.i79 = select i1 %.not.i.i.i78, i1 %i.cg, i1 false
  br i1 %or.cond.i.i79, label %bb.w, label %_ZN20btAlignedObjectArrayIbED2Ev.exit

bb.w:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ce)
          to label %_ZN20btAlignedObjectArrayIbED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #26
  unreachable

_ZN20btAlignedObjectArrayIbED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %i.ah

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.k, %bb.r, %bb.h, %bb.g, %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.aw, %bb.h ], [ %i.av, %bb.g ], [ %i.bd, %bb.k ], [ %i.by, %bb.r ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN20btAlignedObjectArrayIbED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN10btSoftBody20randomizeConstraintsEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIbED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !37
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
end_hunk_0
