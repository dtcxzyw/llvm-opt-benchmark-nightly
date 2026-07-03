inline.NumInlined: 505
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16btCollisionWorldD2Ev:bb.a
  %.pre = load i32, ptr %i.a, align 4, !tbaa !18
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !range !46
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
          to label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.f, %bb.b
  %i.af = phi i32 [ %.pre, %bb.f ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i11 = icmp ne ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !46
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i12 = select i1 %.not.i.i.i11, i1 %i.am, i1 false
  br i1 %or.cond.i.i12, label %bb.j, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit13

bb.j:                                             ; preds = %._crit_edge
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aj)
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit13

_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit13: ; preds = %._crit_edge, %bb.j
  ret void

_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorldD0Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN16btCollisionWorldD2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 7 uses
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i11 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 6
  %i.q = sub i64 %.0.i.i.i11, %i.p
  %diff.check = icmp ult i64 %i.q, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !47
  %wide.load12 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !47
  store <2 x ptr> %wide.load12, ptr %i.u, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  store ptr %i.y, ptr %i.w, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !59

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !47
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !61

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !10, !range !46, !noundef !62
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.l, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.l, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.an, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !17
  store i32 %i.g, ptr %i.c, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
  %i.ao = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr %1, ptr %i.as, align 8, !tbaa !47
  %i.at = add nsw i32 %i.ao, 1
  store i32 %i.at, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.au, i64 16, i1 false), !tbaa.struct !63
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !63
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !63
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.bi, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %i.bm, ptr noundef null)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 8 uses
  %3 = alloca %class.btVector3, align 4           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.g = load float, ptr @gContactBreakingThreshold, align 4, !tbaa !68 ; 6 uses
  %i.h = load float, ptr %2, align 4, !tbaa !68
  %i.i = fsub float %i.h, %i.g                    ; 2 uses
  store float %i.i, ptr %2, align 4, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !68
  %i.l = fsub float %i.k, %i.g                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !68
  %i.o = fsub float %i.n, %i.g                    ; 2 uses
  store float %i.o, ptr %i.m, align 4, !tbaa !68
  %i.p = load float, ptr %3, align 4, !tbaa !68
  %i.q = fadd float %i.g, %i.p                    ; 2 uses
  store float %i.q, ptr %3, align 4, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !68
  %i.t = fadd float %i.g, %i.s                    ; 2 uses
  store float %i.t, ptr %i.r, align 4, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !68
  %i.w = fadd float %i.g, %i.v                    ; 2 uses
  store float %i.w, ptr %i.u, align 4, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = fsub float %i.q, %i.i                   ; 2 uses
  %i.ad = fsub float %i.t, %i.l                   ; 2 uses
  %i.ae = fsub float %i.w, %i.o                   ; 2 uses
  %i.af = fmul float %i.ad, %i.ad
  %i.ag = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af)
  %i.ah = call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ag)
  %i.ai = fcmp olt float %i.ah, f0x5368D4A5
  br i1 %i.ai, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.am)
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef 5)
  %.b = load i1, ptr @_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe, align 1
  br i1 %.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 3 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr @_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe, align 1
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str)
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.1)
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.2)
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.3)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280), i32 noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld11updateAabbsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = load i8, ptr %i.e, align 8, !tbaa !43, !range !46, !noundef !62
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 228
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70
  switch i32 %i.m, label %bb.d [
    i32 5, label %bb.f
end_hunk_0
