inline.NumInlined: 383
inline.NumDeleted: 114
begin_hunk_0_@_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE:bb.a
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i.i37.prol
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !120
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !120
  %indvars.iv.next.i.i.i38.prol = add nuw nsw i64 %indvars.iv.i.i.i37.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol, !llvm.loop !122

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv.i.i.i37.unr = phi i64 [ %indvars.iv.i.i.i37.ph, %scalar.ph128.preheader ], [ %indvars.iv.next.i.i.i38.prol, %scalar.ph128.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.i37.ph, %wide.trip.count.i.i.i36
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29, label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv.i.i.i37 = phi i64 [ %indvars.iv.next.i.i.i38.3, %scalar.ph128 ], [ %indvars.iv.i.i.i37.unr, %scalar.ph128.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i37
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i.i37
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120
  store ptr %i.av, ptr %i.at, align 8, !tbaa !120
  %indvars.iv.next.i.i.i38 = add nuw nsw i64 %indvars.iv.i.i.i37, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i38
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i38
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !120
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !120
  %indvars.iv.next.i.i.i38.1 = add nuw nsw i64 %indvars.iv.i.i.i37, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i38.1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i38.1
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !120
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !120
  %indvars.iv.next.i.i.i38.2 = add nuw nsw i64 %indvars.iv.i.i.i37, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i38.2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i38.2
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !120
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !120
  %indvars.iv.next.i.i.i38.3 = add nuw nsw i64 %indvars.iv.i.i.i37, 4 ; 2 uses
  %exitcond.not.i.i.i39.3 = icmp eq i64 %indvars.iv.next.i.i.i38.3, %wide.trip.count.i.i.i36
  br i1 %exitcond.not.i.i.i39.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29, label %scalar.ph128, !llvm.loop !123

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29: ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block138, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i27
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32 unwind label %bb.m

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32: ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29, %bb.i, %bb.h
  %i.bf = phi ptr [ %i.b, %bb.h ], [ %i.b, %bb.i ], [ %i.ag, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29 ] ; 12 uses
  %.sroa.23.6 = phi i32 [ %.sroa.23.0, %bb.h ], [ %.sroa.23.0, %bb.i ], [ %i.ad, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29 ] ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.e
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !120
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !120
  %i.bj = icmp eq i32 %.sroa.3.0, %.sroa.23.6
  br i1 %i.bj, label %bb.k, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32
  %.pre = zext nneg i32 %.sroa.3.0 to i64
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32
  %i.bk = shl nuw nsw i32 %.sroa.3.0, 1           ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bm, i32 noundef 16)
          to label %.lr.ph.i.i.i58 unwind label %bb.m ; 8 uses

.lr.ph.i.i.i58:                                   ; preds = %bb.k
  %wide.trip.count.i.i.i59 = zext nneg i32 %.sroa.3.0 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.sroa.3.0, 4
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bg
  %diff.check = icmp ult i64 %i.bp, 32
  %or.cond142 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond142, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i58
  %n.vec = and i64 %wide.trip.count.i.i.i59, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <2 x ptr>, ptr %i.br, align 8, !tbaa !120
  %wide.load125 = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !120
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x ptr> %wide.load, ptr %i.bq, align 8, !tbaa !120
  store <2 x ptr> %wide.load125, ptr %i.bt, align 8, !tbaa !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i59
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i58, %middle.block
  %indvars.iv.i.i.i60.ph = phi i64 [ 0, %.lr.ph.i.i.i58 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter143 = and i64 %wide.trip.count.i.i.i59, 3 ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i60.prol = phi i64 [ %indvars.iv.next.i.i.i61.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i60.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i60.prol
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i60.prol
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !120
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !120
  %indvars.iv.next.i.i.i61.prol = add nuw nsw i64 %indvars.iv.i.i.i60.prol, 1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !125

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i60.unr = phi i64 [ %indvars.iv.i.i.i60.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i61.prol, %scalar.ph.prol ]
  %i.by = sub nsw i64 %indvars.iv.i.i.i60.ph, %wide.trip.count.i.i.i59
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i60 = phi i64 [ %indvars.iv.next.i.i.i61.3, %scalar.ph ], [ %indvars.iv.i.i.i60.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i60
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i60
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !120
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !120
  %indvars.iv.next.i.i.i61 = add nuw nsw i64 %indvars.iv.i.i.i60, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i61
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i61
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !120
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !120
  %indvars.iv.next.i.i.i61.1 = add nuw nsw i64 %indvars.iv.i.i.i60, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i61.1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i61.1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !120
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !120
  %indvars.iv.next.i.i.i61.2 = add nuw nsw i64 %indvars.iv.i.i.i60, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i61.2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i61.2
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !120
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !120
  %indvars.iv.next.i.i.i61.3 = add nuw nsw i64 %indvars.iv.i.i.i60, 4 ; 2 uses
  %exitcond.not.i.i.i62.3 = icmp eq i64 %indvars.iv.next.i.i.i61.3, %wide.trip.count.i.i.i59
  br i1 %exitcond.not.i.i.i62.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63, label %scalar.ph, !llvm.loop !126

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 unwind label %bb.m

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63
  %.pre-phi = phi i64 [ %.pre, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge ], [ %wide.trip.count.i.i.i59, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ]
  %i.cm = phi ptr [ %i.bf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge ], [ %i.bn, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ] ; 2 uses
  %.sroa.23.7 = phi i32 [ %.sroa.23.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i32._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69_crit_edge ], [ %i.bk, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.pre-phi
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !120
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !120
  %i.cp = add nuw nsw i32 %.sroa.3.0, 1
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %3, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.g)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %bb.m

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69, %bb.l, %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ct = phi ptr [ %i.cm, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 ], [ %i.b, %bb.l ], [ %i.b, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.3.1 = phi i32 [ %i.cp, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 ], [ %i.d, %bb.l ], [ %i.d, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.23.1 = phi i32 [ %.sroa.23.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit69 ], [ %.sroa.23.0, %bb.l ], [ %.sroa.23.0, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %.sroa.23.0, %bb.f ], [ %.sroa.23.0, %bb.e ], [ %.sroa.23.0, %bb.d ], [ %.sroa.23.0, %bb.c ], [ %.sroa.23.0, %bb.b ]
  %i.cu = icmp sgt i32 %.sroa.3.1, 0
  br i1 %i.cu, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63, %bb.k, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29, %bb.j, %bb.l
  %i.cv = phi ptr [ %i.bf, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i63 ], [ %i.bf, %bb.k ], [ %i.b, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i29 ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cv)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit74 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit74: ; preds = %bb.m
  resume { ptr, i32 } %i.cw

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btCompoundLeafCallback17ProcessChildShapeEP16btCollisionShapei(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 7 uses
  %4 = alloca %class.btTransform, align 8         ; 16 uses
  %5 = alloca %class.btVector3, align 4           ; 7 uses
  %6 = alloca %class.btVector3, align 4           ; 7 uses
  %7 = alloca %class.btVector3, align 4           ; 7 uses
  %8 = alloca %class.btVector3, align 4           ; 7 uses
  %9 = alloca %class.btVector3, align 16          ; 4 uses
  %10 = alloca %class.btVector3, align 16         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load <4 x float>, ptr %i.e, align 8      ; 5 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.h = load <4 x float>, ptr %i.g, align 8      ; 5 uses
  %.sroa.10.16.copyload = load float, ptr %.sroa.10.16..sroa_idx, align 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.j = load <4 x float>, ptr %i.i, align 8      ; 5 uses
  %.sroa.15.32.copyload = load float, ptr %.sroa.15.32..sroa_idx, align 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.l = load <4 x float>, ptr %i.k, align 8      ; 3 uses
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !108
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !108
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.v = sext i32 %2 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [88 x i8], ptr %i.u, i64 %i.v ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = extractelement <4 x float> %i.f, i64 0   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = extractelement <4 x float> %i.f, i64 2  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !94, !noalias !130 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !94, !noalias !130 ; 3 uses
  %i.af = fmul float %.sroa.5.0.copyload, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.y, float %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !94, !noalias !130 ; 3 uses
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.aa, float %i.ag)
  %i.ak = extractelement <4 x float> %i.h, i64 0  ; 2 uses
  %i.al = extractelement <4 x float> %i.h, i64 2  ; 2 uses
  %i.am = fmul float %.sroa.10.16.copyload, %i.ae
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ak, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.al, float %i.an)
  %i.ap = extractelement <4 x float> %i.j, i64 0  ; 2 uses
  %i.aq = extractelement <4 x float> %i.j, i64 2  ; 2 uses
  %i.ar = fmul float %.sroa.15.32.copyload, %i.ae
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ap, float %i.ar)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.aq, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.av = load float, ptr %i.au, align 4, !tbaa !94, !noalias !127 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !94, !noalias !127 ; 3 uses
  %i.ay = fmul float %.sroa.5.0.copyload, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.y, float %i.av, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !94, !noalias !127 ; 3 uses
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bb, float %i.az)
  %i.bd = extractelement <4 x float> %i.l, i64 0
  %i.be = fadd float %i.bd, %i.bc
  %i.bf = fmul float %.sroa.10.16.copyload, %i.ax
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.av, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.bb, float %i.bg)
  %i.bi = fadd float %.sroa.20.48.copyload, %i.bh
  %i.bj = fmul float %.sroa.15.32.copyload, %i.ax
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.av, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.bb, float %i.bk)
  %i.bm = extractelement <4 x float> %i.l, i64 2
  %i.bn = fadd float %i.bm, %i.bl
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.be, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bi, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bn, i64 0
  %i.bo = load <2 x float>, ptr %i.w, align 4, !tbaa !94, !noalias !130 ; 3 uses
  %i.bp = load <2 x float>, ptr %i.x, align 4, !tbaa !94, !noalias !130 ; 3 uses
  %i.bq = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.br, %i.bp
  %i.bt = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bt, <2 x float> %i.bs)
  %i.bv = load <2 x float>, ptr %i.z, align 4, !tbaa !94, !noalias !130 ; 3 uses
  %i.bw = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bw, <2 x float> %i.bu)
  store <2 x float> %i.bx, ptr %4, align 8, !alias.scope !127
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !127
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !107, !alias.scope !127
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %.sroa.10.16.copyload, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.bp
  %i.cc = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.cc, <2 x float> %i.cb)
  %i.ce = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ce, <2 x float> %i.cd)
  store <2 x float> %i.cf, ptr %i.by, align 8, !alias.scope !127
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.ao, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !127
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx.i, align 4, !tbaa !107, !alias.scope !127
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ch = insertelement <2 x float> poison, float %.sroa.15.32.copyload, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.ci, %i.bp
  %i.ck = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ck, <2 x float> %i.cj)
  %i.cm = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cm, <2 x float> %i.cl)
  store <2 x float> %i.cn, ptr %i.cg, align 8, !alias.scope !127
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.at, ptr %.sroa.15.32..sroa_idx.i, align 8, !alias.scope !127
  %.sroa.16.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx.i, align 4, !tbaa !107, !alias.scope !127
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.co, align 8, !alias.scope !127
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !107, !alias.scope !127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.cp = load ptr, ptr %1, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 200
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 4 dereferenceable(64) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
  %i.da = load float, ptr %5, align 4, !tbaa !94
  %i.db = load float, ptr %8, align 4, !tbaa !94
  %i.dc = fcmp ogt float %i.da, %i.db
  br i1 %i.dc, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dd = load float, ptr %6, align 4, !tbaa !94
  %i.de = load float, ptr %7, align 4, !tbaa !94
  %i.df = fcmp olt float %i.dd, %i.de
  br i1 %i.df, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.dg = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.a ]
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !94
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !94
  %i.dl = fcmp ogt float %i.di, %i.dk
  br i1 %i.dl, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !94
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !94
  %i.dq = fcmp olt float %i.dn, %i.dp
  br i1 %i.dq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.not51 = phi i1 [ %i.dg, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !94
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !94
  %i.dv = fcmp ogt float %i.ds, %i.du
  br i1 %i.dv, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !94
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !94
  %i.ea = fcmp olt float %i.dx, %i.dz
  %brmerge = or i1 %.not51, %i.ea
  br i1 %brmerge, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !66  ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !108
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !108
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !108
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !108
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !66  ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eh, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !108
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !108
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !108
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !108
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 200 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !30
  store ptr %1, ptr %i.em, align 8, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.v
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !49
  %.not = icmp eq ptr %i.er, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !73 ; 2 uses
  %i.eu = load ptr, ptr %i.cs, align 8, !tbaa !72
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !77
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.el, ptr noundef %i.eu, ptr noundef %i.ew)
  %i.fb = load ptr, ptr %i.eo, align 8, !tbaa !76
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.v
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !49
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fd = phi ptr [ %.pre, %bb.j ], [ %i.el, %bb.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !75 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !93
  %i.fi = icmp eq ptr %i.fh, %i.fd
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !8
  %. = select i1 %i.fi, i64 16, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(176) %i.ff, i32 noundef -1, i32 noundef %2)
  %i.fm = load ptr, ptr %i.eo, align 8, !tbaa !76
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.v
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !49 ; 2 uses
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.fq = load ptr, ptr %i.cs, align 8, !tbaa !72
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !133, !nonnull !47, !align !134
  %i.ft = load ptr, ptr %i.fe, align 8, !tbaa !75
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef %i.fp, ptr noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(56) %i.fs, ptr noundef %i.ft)
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !133, !nonnull !47, !align !134
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !135 ; 3 uses
  %.not11 = icmp eq ptr %i.fz, null
  br i1 %.not11, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
  %i.ge = and i32 %i.gd, 2
  %.not12 = icmp eq i32 %i.ge, 0
  br i1 %.not12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gf = load ptr, ptr %i.fr, align 8, !tbaa !133, !nonnull !47, !align !134
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %9, align 16, !tbaa !94
  call void @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.gi = load ptr, ptr %i.fr, align 8, !tbaa !133, !nonnull !47, !align !134
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !94
  call void @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 200
  store ptr %i.en, ptr %i.gm, align 8, !tbaa !30
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store <4 x float> %i.f, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  store <4 x float> %i.h, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  store <4 x float> %i.j, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  store <4 x float> %i.l, ptr %i.gq, align 8
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !66  ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gs, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !108
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !108
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !108
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !108
  br label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread: ; preds = %bb.h, %bb.g, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollideD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN28btCompoundCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 17 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %.sroa.1045.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.1148.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.1251.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.1556.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %.sroa.1659.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.1762.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.21.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %i.h to i64
  %i.q = load <4 x float>, ptr %i.l, align 8      ; 5 uses
  %.sroa.534.0.copyload.pre = load float, ptr %.sroa.534.0..sroa_idx, align 4 ; 3 uses
  %i.r = load <4 x float>, ptr %i.m, align 8      ; 5 uses
  %.sroa.1045.16.copyload.pre = load float, ptr %.sroa.1045.16..sroa_idx, align 4 ; 3 uses
  %i.s = load <4 x float>, ptr %i.n, align 8      ; 5 uses
  %.sroa.1556.32.copyload.pre = load float, ptr %.sroa.1556.32..sroa_idx, align 4 ; 3 uses
  %i.t = load <4 x float>, ptr %i.o, align 8      ; 3 uses
  %.sroa.20.48.copyload.pre = load float, ptr %.sroa.20.48..sroa_idx, align 4
  %i.u = extractelement <4 x float> %i.q, i64 0   ; 2 uses
  %i.v = extractelement <4 x float> %i.q, i64 2   ; 2 uses
  %i.w = extractelement <4 x float> %i.r, i64 0   ; 2 uses
  %i.x = extractelement <4 x float> %i.r, i64 2   ; 2 uses
  %i.y = extractelement <4 x float> %i.s, i64 0   ; 2 uses
  %i.z = extractelement <4 x float> %i.s, i64 2   ; 2 uses
  %i.aa = extractelement <4 x float> %i.t, i64 0
  %i.ab = extractelement <4 x float> %i.t, i64 2
  %i.ac = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ad = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> poison, float %.sroa.534.0.copyload.pre, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ah = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> poison, float %.sroa.1045.16.copyload.pre, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.al = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %.sroa.1556.32.copyload.pre, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.074 = phi float [ 1.000000e+00, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw [88 x i8], ptr %i.ao, i64 %indvars.iv ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %i.ay = fmul float %.sroa.534.0.copyload.pre, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.av, float %i.u, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.v, float %i.az)
  %i.bd = fmul float %.sroa.1045.16.copyload.pre, %i.ax
  %i.be = tail call float @llvm.fmuladd.f32(float %i.av, float %i.w, float %i.bd)
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.x, float %i.be)
  %i.bg = fmul float %.sroa.1556.32.copyload.pre, %i.ax
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.av, float %i.y, float %i.bg)
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.z, float %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !94, !noalias !144 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !94, !noalias !144 ; 3 uses
  %i.bn = fmul float %.sroa.534.0.copyload.pre, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bk, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !94, !noalias !144 ; 3 uses
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.bq, float %i.bo)
  %i.bs = fadd float %i.aa, %i.br
  %i.bt = fmul float %.sroa.1045.16.copyload.pre, %i.bm
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.w, float %i.bk, float %i.bt)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.bq, float %i.bu)
  %i.bw = fadd float %.sroa.20.48.copyload.pre, %i.bv
  %i.bx = fmul float %.sroa.1556.32.copyload.pre, %i.bm
  %i.by = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bk, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.bq, float %i.by)
  %i.ca = fadd float %i.ab, %i.bz
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bs, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bw, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0
  %i.cb = load <2 x float>, ptr %i.ap, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %i.cc = load <2 x float>, ptr %i.as, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %i.cd = fmul <2 x float> %i.af, %i.cc
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ad, <2 x float> %i.cd)
  %i.cf = load <2 x float>, ptr %i.at, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ac, <2 x float> %i.ce)
  store <2 x float> %i.cg, ptr %i.l, align 8
  store float %i.bc, ptr %.sroa.637.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.740.0..sroa_idx, align 4, !tbaa !107
  %i.ch = fmul <2 x float> %i.aj, %i.cc
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ah, <2 x float> %i.ch)
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ag, <2 x float> %i.ci)
  store <2 x float> %i.cj, ptr %i.m, align 8
  store float %i.bf, ptr %.sroa.1148.16..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.1251.16..sroa_idx, align 4, !tbaa !107
  %i.ck = fmul <2 x float> %i.an, %i.cc
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.al, <2 x float> %i.ck)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ak, <2 x float> %i.cl)
  store <2 x float> %i.cm, ptr %i.n, align 8
  store float %i.bi, ptr %.sroa.1659.32..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.1762.32..sroa_idx, align 4, !tbaa !107
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.o, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.21.48..sroa_idx, align 8, !tbaa !107
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !30
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef float %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull %i.d, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) ; 2 uses
  %i.cu = fcmp olt float %i.ct, %.074
  %.1 = select i1 %i.cu, float %i.ct, float %.074 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !30
  store <4 x float> %i.q, ptr %i.l, align 8
  store <4 x float> %i.r, ptr %i.m, align 8
  store <4 x float> %i.s, ptr %i.n, align 8
  store <4 x float> %i.t, ptr %i.o, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 1.000000e+00, %bb.a ], [ %.1, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN28btCompoundCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge
end_hunk_0
