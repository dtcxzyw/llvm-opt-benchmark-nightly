inline.NumInlined: 383
inline.NumDeleted: 114
begin_hunk_0
; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV28btCompoundCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !19
  %i.e = zext i1 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.e, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  store ptr %i.i, ptr %i.g, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.j, align 8, !tbaa !29
  %i.k = select i1 %4, ptr %3, ptr %2
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.o, ptr %i.p, align 4, !tbaa !45
  invoke void @_ZN28btCompoundCollisionAlgorithm26preallocateChildAlgorithmsEP17btCollisionObjectS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2, ptr noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.r, null
  %i.s = load i8, ptr %i.a, align 8, !range !46
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.r)
          to label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit unwind label %bb.f

_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit: ; preds = %bb.c, %bb.d
  invoke void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.d, %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #13
  unreachable
}

declare void @_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithm26preallocateChildAlgorithmsEP17btCollisionObjectS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 2 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48   ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18   ; 3 uses
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE6resizeEiRKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp slt i32 %i.n, %i.i
  br i1 %i.o, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %i.i to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.q, i32 noundef 16)
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %.pre.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 9 uses
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE8allocateEi.exit.i.i
  %i.w = ptrtoaddr ptr %i.v to i64
  %.0.i.i.i28 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.s to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 6
  %i.x = sub i64 %.0.i.i.i28, %i.w
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !49
  %wide.load29 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !49
  store <2 x ptr> %wide.load29, ptr %i.ab, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.prol
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !49
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !54

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !49
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  store ptr %i.an, ptr %i.al, align 8, !tbaa !49
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !49
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.2
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !49
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !56

_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.i.i
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.old26.i = load i8, ptr %.old.i, align 8, !tbaa !10, !range !46, !noundef !47
  %.old27.i = trunc nuw i8 %.old26.i to i1
  br i1 %.old27.i, label %bb.e, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.v)
  br label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btCollisionAlgorithmE4copyEiiPS1_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.au, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.u, align 8, !tbaa !17
  store i32 %i.i, ptr %i.m, align 8, !tbaa !19
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE10deallocateEv.exit.i.i
  %i.av = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE10deallocateEv.exit.i.i ]
  %i.aw = sext i32 %i.k to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.i to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.ay = sub nsw i64 %wide.trip.count.i, %i.aw
  %i.az = shl nsw i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.az, i1 false), !tbaa !49
  br label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE6resizeEiRKS1_.exit

_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE6resizeEiRKS1_.exit: ; preds = %.lr.ph.i, %bb.a
  store i32 %i.i, ptr %i.j, align 4, !tbaa !18
  %i.ba = icmp sgt i32 %i.i, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE6resizeEiRKS1_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.bj = zext nneg i32 %i.i to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bk, i1 false), !tbaa !49
  br label %._crit_edge

.lr.ph.splitthread-pre-split:                     ; preds = %bb.h
  %.pr = load ptr, ptr %i.bb, align 8, !tbaa !57
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.bl = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ null, %.lr.ph.split.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  store ptr null, ptr %i.bn, align 8, !tbaa !49
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.bp = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw [88 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !30
  %i.bt = load ptr, ptr %i.be, align 8, !tbaa !62 ; 2 uses
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull %i.d, ptr noundef %i.e, ptr noundef %i.bu)
  %i.bz = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.h, %.lr.ph.split.us, %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmE6resizeEiRKS1_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

declare void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV28btCompoundCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc4 ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.noexc4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h)
          to label %.noexc unwind label %bb.e, !inline_history !65

.noexc:                                           ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.n)
          to label %.noexc4 unwind label %bb.e, !inline_history !65

.noexc4:                                          ; preds = %.noexc, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit, label %bb.b

_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit: ; preds = %.noexc4, %bb.a
end_hunk_0
