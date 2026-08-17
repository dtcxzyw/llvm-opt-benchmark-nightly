inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN15btSoftColliders12CollideCL_RS7ProcessEPK10btDbvtNode:bb.a
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !658 ; 3 uses
  store ptr null, ptr %7, align 8, !tbaa !293
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !291
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !156
  %i.af = icmp eq i32 %i.ae, 2
  %..i.i = select i1 %i.af, ptr %i.ab, ptr null
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %..i.i, ptr %i.ag, align 8, !tbaa !592
  %i.ah = invoke noundef zeroext i1 @_ZN15btSoftColliders11ClusterBase12SolveContactERKN15btGjkEpaSolver28sResultsEN10btSoftBody4BodyES6_RNS5_6CJointE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(56) %3, ptr noundef nonnull byval(%"struct.btSoftBody::Body") align 8 %6, ptr noundef nonnull byval(%"struct.btSoftBody::Body") align 8 %7, ptr noundef nonnull align 8 dereferenceable(244) %5)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.ai = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 248, i32 noundef 16)
          to label %bb.l unwind label %bb.s       ; 11 uses

bb.l:                                             ; preds = %bb.k
  %scevgep.i.i21 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ak, i8 0, i64 240, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10btSoftBody6CJointE, i64 16), ptr %i.ai, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %scevgep.i.i21, ptr noundef nonnull align 8 dereferenceable(124) %scevgep.i.i, i64 124, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 132
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.al, ptr noundef nonnull align 4 dereferenceable(48) %i.am, i64 16, i1 false), !tbaa.struct !198
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !198
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 164
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !198
  %i.ar = load i8, ptr %i.z, align 4, !tbaa !562, !range !179, !noundef !180
  store i8 %i.ar, ptr %i.aj, align 4, !tbaa !562
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.as, ptr noundef nonnull align 8 dereferenceable(60) %i.at, i64 60, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !656 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1044 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !138 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1048 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !139
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq i32 %i.ax, 0
  %i.bb = shl nsw i32 %i.ax, 1
  %i.bc = select i1 %.not.i.i, i32 1, i32 %i.bb   ; 4 uses
  %i.bd = icmp slt i32 %i.ax, %i.bc
  br i1 %i.bd, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = sext i32 %i.bc to i64
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bf, i32 noundef 16)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  %.pre.i = load i32, ptr %i.aw, align 4, !tbaa !138
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.n
  %i.bh = phi i32 [ %.pre.i, %.noexc ], [ %i.ax, %bb.n ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.bg, %.noexc ], [ null, %bb.n ] ; 8 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 1056 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !137 ; 9 uses
  br i1 %i.bi, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %.0.i.i.i32 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bh to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bh, 8
  %i.bm = sub i64 %i.bl, %.0.i.i.i32
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !249
  %wide.load33 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !249
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x ptr> %wide.load, ptr %i.bn, align 8, !tbaa !249
  store <2 x ptr> %wide.load33, ptr %i.bq, align 8, !tbaa !249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.prol
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !249
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !249
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !686

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bv = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !249
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !249
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !249
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !249
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.1
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !249
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !249
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.2
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !249
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !249
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !687

_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 1064
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !136, !range !179, !noundef !180
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.p, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

bb.p:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
          to label %.noexc22 unwind label %bb.t

.noexc22:                                         ; preds = %bb.p
  %.pre2.pre.pre.i = load i32, ptr %i.aw, align 4, !tbaa !138
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i: ; preds = %.noexc22, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.bh, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %.noexc22 ], [ %i.bh, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 1064
  store i8 1, ptr %i.cm, align 8, !tbaa !136
  store ptr %.0.i.i.i, ptr %i.bj, align 8, !tbaa !137
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !139
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i, %bb.m, %bb.l
  %i.cn = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i ], [ %i.ax, %bb.m ], [ %i.ax, %bb.l ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 1056
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !137
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  store ptr %i.ai, ptr %i.cr, align 8, !tbaa !249
  %i.cs = add nsw i32 %i.cn, 1
  store i32 %i.cs, ptr %i.aw, align 4, !tbaa !138
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !658
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 216
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !679
  %i.cw = and i32 %i.cv, 3
  %.not26 = icmp eq i32 %i.cw, 0                  ; 2 uses
  %i.cx = load ptr, ptr %i.au, align 8, !tbaa !656 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 92 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !616
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.cx, i64 364
  %9 = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %.sink35.in = select i1 %.not26, ptr %8, ptr %9
  %.sink = select i1 %.not26, i64 376, i64 380
  %.sink35 = load float, ptr %.sink35.in, align 4, !tbaa !159
  %i.db = fmul float %.sink35, %i.cz
  store float %i.db, ptr %i.cy, align 4, !tbaa !616
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sink
  %.sink30 = load float, ptr %i.dc, align 4, !tbaa !159
  %i.dd = load float, ptr %i.da, align 8, !tbaa !308
  %i.de = fmul float %.sink30, %i.dd
  store float %i.de, ptr %i.da, align 8, !tbaa !308
  br label %bb.u

bb.q:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.body

bb.r:                                             ; preds = %bb.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.sink.split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.t, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.s ], [ %i.dg, %bb.r ], [ %i.di, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.body

bb.w:                                             ; preds = %bb.u, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.w
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

.body:                                            ; preds = %bb.g, %bb.v, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.df, %bb.q ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.z:                                             ; preds = %.body
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #35
  unreachable
}

declare noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15btSoftColliders11ClusterBase12SolveContactERKN15btGjkEpaSolver28sResultsEN10btSoftBody4BodyES6_RNS5_6CJointE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(56) %1, ptr noundef byval(%"struct.btSoftBody::Body") align 8 %2, ptr noundef byval(%"struct.btSoftBody::Body") align 8 %3, ptr noundef nonnull align 8 dereferenceable(244) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !688
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !661
  %i.e = fcmp olt float %i.b, %i.d                ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0169.0.copyload = load float, ptr %i.f, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4 ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !185
  %i.g = fmul float %.sroa.9.0.copyload, %.sroa.9.0.copyload
  %i.h = tail call float @llvm.fmuladd.f32(float %.sroa.0169.0.copyload, float %.sroa.0169.0.copyload, float %i.g)
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %.sroa.14.0.copyload, float %i.h)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.i)
  %i.j = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.k = fmul float %.sroa.0169.0.copyload, %i.j  ; 4 uses
  %i.l = fmul float %.sroa.9.0.copyload, %i.j     ; 4 uses
  %i.m = fmul float %.sroa.14.0.copyload, %i.j    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZNK10btSoftBody4Body5xformEv.exit, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZNK10btSoftBody4Body5xformEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.e unwind label %bb.f       ; 4 uses

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.r, i64 16, i1 false), !tbaa.struct !198
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !198
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !198
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !198
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.e, %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !291  ; 2 uses
  %.not5.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %.not6.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.aa
  %.0.i = select i1 %.not5.i, ptr %spec.select.i, ptr %i.y ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ac = load float, ptr %i.n, align 4, !tbaa !159
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !159
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 52
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !159 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ac, i64 1
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.ad, i64 1
  %i.am = fsub <2 x float> %i.aj, %i.al           ; 10 uses
  %i.an = fsub <2 x float> %i.ag, %i.ah           ; 6 uses
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ap = insertelement <2 x float> %i.am, float 0.000000e+00, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.g, label %_ZNK10btSoftBody4Body5xformEv.exit34, !prof !196

common.resume:                                    ; preds = %bb.x, %bb.t, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.f ], [ %i.bw, %bb.j ], [ %i.gp, %bb.t ], [ %i.iv, %bb.x ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.g:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i33 = icmp eq i32 %i.au, 0
  br i1 %.not.i33, label %_ZNK10btSoftBody4Body5xformEv.exit34, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.i unwind label %bb.j       ; 4 uses

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.av, i64 16, i1 false), !tbaa.struct !198
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !198
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !198
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !198
  %i.az = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %_ZNK10btSoftBody4Body5xformEv.exit34

_ZNK10btSoftBody4Body5xformEv.exit34:             ; preds = %bb.i, %bb.g, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !291 ; 2 uses
  %.not5.i29 = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %3, align 8               ; 6 uses
  %.not6.i31 = icmp eq ptr %i.bd, null            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %spec.select.i32 = select i1 %.not6.i31, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.be
  %.0.i30 = select i1 %.not5.i29, ptr %spec.select.i32, ptr %i.bc ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i30, i64 48
  %i.bg = load float, ptr %i.aq, align 4, !tbaa !159
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !159
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i30, i64 52
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !159 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.bj, align 4, !tbaa !159 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x float> %i.bm, float %i.bg, i64 1
  %i.bo = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_0
