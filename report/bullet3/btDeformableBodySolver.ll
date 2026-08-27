Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN21btModifiedGramSchmidtI15btReducedVectorE5solveEv:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.n

._crit_edge55:                                    ; preds = %_ZN15btReducedVectorD2Ev.exit43, %_ZN15btReducedVectorD2Ev.exit
  ret void

.loopexit50:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit50
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit50 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN15btReducedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.au

bb.n:                                             ; preds = %.lr.ph54, %_ZN15btReducedVectorD2Ev.exit43
  %indvars.iv61 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next62, %_ZN15btReducedVectorD2Ev.exit43 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bt = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.bt, i64 %indvars.iv61
  call void @_ZN15btReducedVectorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(68) %i.bu)
  %.not = icmp eq i64 %indvars.iv61, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN15btReducedVectorD2Ev.exit37, %bb.n
  invoke void @_ZN15btReducedVector9normalizeEv(ptr noundef nonnull align 8 dereferenceable(68) %2)
          to label %bb.am unwind label %bb.as

.lr.ph:                                           ; preds = %bb.n, %_ZN15btReducedVectorD2Ev.exit37
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN15btReducedVectorD2Ev.exit37 ], [ 0, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %i.bv, i64 %indvars.iv
  invoke void @_ZNK15btReducedVector4projERKS_(ptr dead_on_unwind nonnull writable sret(%class.btReducedVector) align 8 %4, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(68) %i.bw)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %.lr.ph
  invoke void @_ZN15btReducedVectormiERKS_(ptr dead_on_unwind nonnull writable sret(%class.btReducedVector) align 8 %3, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(68) %4)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.ba, align 8, !tbaa !18
  store i32 %i.bx, ptr %i.bb, align 8, !tbaa !18
  %i.by = load i32, ptr %i.bc, align 4, !tbaa !28 ; 10 uses
  %i.bz = load i32, ptr %i.bd, align 4, !tbaa !28 ; 3 uses
  %i.ca = icmp sgt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.q, label %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i

._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i: ; preds = %bb.p
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !27
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.cb = load i32, ptr %i.be, align 8, !tbaa !29
  %i.cc = icmp slt i32 %i.cb, %i.by
  br i1 %i.cc, label %bb.r, label %..lr.ph.i_crit_edge.i.i

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !27
  br label %.lr.ph.i.i.i

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i21 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i21, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = sext i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cd, 2
  %i.cf = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ce, i32 noundef 16)
          to label %.noexc22 unwind label %bb.aj

.noexc22:                                         ; preds = %bb.s
  %.pre.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !28
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i: ; preds = %.noexc22, %bb.r
  %i.cg = phi i32 [ %.pre.i.i.i, %.noexc22 ], [ %i.bz, %bb.r ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cf, %.noexc22 ], [ null, %bb.r ] ; 9 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !27 ; 9 uses
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %.0.i.i.i.i.i88 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.cg to i64 ; 5 uses
  %min.iters.check91 = icmp ult i32 %i.cg, 8
  %i.ck = sub i64 %i.cj, %.0.i.i.i.i.i88
  %diff.check89 = icmp ugt i64 %i.ck, -32
  %or.cond102 = select i1 %min.iters.check91, i1 true, i1 %diff.check89
  br i1 %or.cond102, label %scalar.ph90.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.i.i.i.i.i
  %n.vec93 = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next98, %vector.body94 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index95 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index95 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load96 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !39
  %wide.load97 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load96, ptr %i.cl, align 4, !tbaa !39
  store <4 x i32> %wide.load97, ptr %i.co, align 4, !tbaa !39
  %index.next98 = add nuw i64 %index95, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.cp, label %middle.block99, label %vector.body94, !llvm.loop !40

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %n.vec93, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n100, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph90.preheader

scalar.ph90.preheader:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block99
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec93, %middle.block99 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph90.prol.loopexit, label %scalar.ph90.prol

scalar.ph90.prol:                                 ; preds = %scalar.ph90.preheader, %scalar.ph90.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph90.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph90.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph90.prol ], [ 0, %scalar.ph90.preheader ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i.i.i.prol
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !39
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph90.prol.loopexit, label %scalar.ph90.prol, !llvm.loop !43

scalar.ph90.prol.loopexit:                        ; preds = %scalar.ph90.prol, %scalar.ph90.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph90.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph90.prol ]
  %i.ct = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph90

scalar.ph90:                                      ; preds = %scalar.ph90.prol.loopexit, %scalar.ph90
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph90 ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph90.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !39
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !39
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !39
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !39
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph90, !llvm.loop !45

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp ne ptr %i.ci, null
  %i.dh = load i8, ptr %i.bf, align 8, !range !34
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond = select i1 %.not.i5.i.i.i.i, i1 %i.di, i1 false
  br i1 %or.cond, label %bb.t, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i: ; preds = %scalar.ph90.prol.loopexit, %scalar.ph90, %middle.block99
  %.old44 = load i8, ptr %i.bf, align 8, !tbaa !26, !range !34, !noundef !46
  %.old45 = trunc nuw i8 %.old44 to i1
  br i1 %.old45, label %bb.t, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ci)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i unwind label %bb.aj

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i: ; preds = %bb.t, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  store i8 1, ptr %i.bf, align 8, !tbaa !26
  store ptr %.0.i.i.i.i.i, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !27
  store i32 %i.by, ptr %i.be, align 8, !tbaa !29
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.dj = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.dk = sext i32 %i.bz to i64                   ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.by to i64
  %i.dl = shl nsw i64 %i.dk, 2
  %scevgep.i.i = getelementptr i8, ptr %i.dj, i64 %i.dl
  %i.dm = sub nsw i64 %wide.trip.count.i.i.i, %i.dk
  %i.dn = shl nsw i64 %i.dm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !39
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i: ; preds = %.lr.ph.i.i.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i
  %i.do = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i ], [ %i.dj, %.lr.ph.i.i.i ] ; 7 uses
  store i32 %i.by, ptr %i.bd, align 4, !tbaa !28
  %i.dp = icmp sgt i32 %i.by, 0
  br i1 %i.dp, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i
  %i.dq = ptrtoaddr ptr %i.do to i64
  %i.dr = load ptr, ptr %i.bg, align 8, !tbaa !27 ; 7 uses
  %wide.trip.count.i5.i.i = zext nneg i32 %i.by to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.by, 8
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.dq
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond104 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond104, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i4.i.i
  %n.vec = and i64 %wide.trip.count.i5.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %wide.load86 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <4 x i32> %wide.load, ptr %i.du, align 4, !tbaa !39
  store <4 x i32> %wide.load86, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i5.i.i
  br i1 %cmp.n, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i4.i.i, %middle.block
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter106 = and i64 %wide.trip.count.i5.i.i, 3 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i6.i.i.prol
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i6.i.i.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !39
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !39
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !48

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph.prol ]
  %i.ec = sub nsw i64 %indvars.iv.i6.i.i.ph, %wide.trip.count.i5.i.i
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i6.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i6.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !39
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !39
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i7.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i7.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !39
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !39
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i7.i.i.1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i7.i.i.1
  %i.em = load i32, ptr %i.el, align 4, !tbaa !39
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !39
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i7.i.i.2
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i7.i.i.2
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !39
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !39
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %wide.trip.count.i5.i.i
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i, label %scalar.ph, !llvm.loop !49

_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i
  %i.eq = load i32, ptr %i.bh, align 4, !tbaa !32 ; 10 uses
  %i.er = load i32, ptr %i.bi, align 4, !tbaa !32 ; 2 uses
  %i.es = icmp sgt i32 %i.eq, %i.er
  %i.et = load i32, ptr %i.bj, align 8
  %i.eu = icmp slt i32 %i.et, %i.eq
  %or.cond58 = select i1 %i.es, i1 %i.eu, i1 false
  br i1 %or.cond58, label %bb.u, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i._ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i_crit_edge

_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i._ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i_crit_edge: ; preds = %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !31
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i

bb.u:                                             ; preds = %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i
  %.not.i.i.i.i12.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i.i12.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = sext i32 %i.eq to i64
  %i.ew = shl nsw i64 %i.ev, 4
  %i.ex = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ew, i32 noundef 16)
          to label %.noexc24 unwind label %bb.aj

.noexc24:                                         ; preds = %bb.v
  %.pre.i.i13.i = load i32, ptr %i.bi, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i: ; preds = %.noexc24, %bb.u
  %i.ey = phi i32 [ %.pre.i.i13.i, %.noexc24 ], [ %i.er, %bb.u ] ; 4 uses
  %.0.i.i.i.i14.i = phi ptr [ %i.ex, %.noexc24 ], [ null, %bb.u ] ; 5 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph.i.i.i.i16.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i

.lr.ph.i.i.i.i16.i:                               ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i
  %wide.trip.count.i.i.i.i17.i = zext nneg i32 %i.ey to i64 ; 2 uses
  %xtraiter109 = and i64 %wide.trip.count.i.i.i.i17.i, 1
  %i.fa = icmp eq i32 %i.ey, 1
  br i1 %i.fa, label %.epil.preheader, label %.lr.ph.i.i.i.i16.i.new

.lr.ph.i.i.i.i16.i.new:                           ; preds = %.lr.ph.i.i.i.i16.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i17.i, 2147483646
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i16.i.new
  %indvars.iv.i.i.i.i18.i = phi i64 [ 0, %.lr.ph.i.i.i.i16.i.new ], [ %indvars.iv.next.i.i.i.i19.i.1, %bb.w ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i16.i.new ], [ %niter.next.1, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i.i.i18.i
  %i.fc = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i.i.i.i18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fb, ptr noundef nonnull align 4 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i19.i = or disjoint i64 %indvars.iv.i.i.i.i18.i, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.i.i19.i
  %i.ff = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.next.i.i.i.i19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fe, ptr noundef nonnull align 4 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i19.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i18.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa, label %bb.w, !llvm.loop !52

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16.i
  %indvars.iv.i.i.i.i18.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i16.i ], [ %indvars.iv.next.i.i.i.i19.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i32 %i.ey to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i.i.i18.i.epil.init
  %i.fi = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %indvars.iv.i.i.i.i18.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i
  %i.fk = load ptr, ptr %i.bk, align 8, !tbaa !31 ; 2 uses
  %.not.i5.i.i.i15.i = icmp ne ptr %i.fk, null
  %i.fl = load i8, ptr %i.bl, align 8, !range !34
  %i.fm = trunc nuw i8 %i.fl to i1
  %or.cond49 = select i1 %.not.i5.i.i.i15.i, i1 %i.fm, i1 false
  br i1 %or.cond49, label %bb.x, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i

bb.x:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fk)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i unwind label %bb.aj

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i: ; preds = %bb.x, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i
  store i8 1, ptr %i.bl, align 8, !tbaa !30
  store ptr %.0.i.i.i.i14.i, ptr %i.bk, align 8, !tbaa !31
  store i32 %i.eq, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i._ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i_crit_edge, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i
  %i.fn = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit.i._ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i_crit_edge ], [ %.0.i.i.i.i14.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i ] ; 3 uses
  store i32 %i.eq, ptr %i.bi, align 4, !tbaa !32
  %i.fo = icmp sgt i32 %i.eq, 0
  br i1 %i.fo, label %.lr.ph.i4.i7.i, label %_ZN15btReducedVectoraSERKS_.exit

.lr.ph.i4.i7.i:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i
  %wide.trip.count.i5.i8.i = zext nneg i32 %i.eq to i64 ; 2 uses
  %xtraiter113 = and i64 %wide.trip.count.i5.i8.i, 1
  %i.fp = icmp eq i32 %i.eq, 1
  br i1 %i.fp, label %.epil.preheader112, label %.lr.ph.i4.i7.i.new

.lr.ph.i4.i7.i.new:                               ; preds = %.lr.ph.i4.i7.i
  %unroll_iter116 = and i64 %wide.trip.count.i5.i8.i, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i4.i7.i.new
end_hunk_0
begin_hunk_1_@_ZN15btReducedVectormiERKS_:bb.a

bb.bn:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202, %bb.bi, %bb.bh
  %i.qn = phi i32 [ %.pre2.i203, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202 ], [ %i.pp, %bb.bi ], [ %i.pp, %bb.bh ]
  %i.qo = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.qp = sext i32 %i.qn to i64
  %i.qq = getelementptr inbounds [16 x i8], ptr %i.qo, i64 %i.qp ; 2 uses
  store <2 x float> %i.pl, ptr %i.qq, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i192, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !51
  %i.qr = load i32, ptr %i.i, align 4, !tbaa !32
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.i, align 4, !tbaa !32
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.qt = load i32, ptr %i.kd, align 4, !tbaa !28
  %i.qu = sext i32 %i.qt to i64
  %i.qv = icmp slt i64 %indvars.iv.next256, %i.qu
  br i1 %i.qv, label %bb.bc, label %._crit_edge, !llvm.loop !80

bb.bo:                                            ; preds = %bb.bm, %bb.bk
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.bn, %.preheader
  invoke void @_ZN15btReducedVector8simplifyEv(ptr noundef nonnull align 8 dereferenceable(68) %0)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bo, %bb.ao, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.qw, %bb.bo ], [ %i.gm, %bb.ab ], [ %i.jv, %bb.ao ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit230, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit233, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZN15btReducedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) #25
  resume { ptr, i32 } %.pn

bb.bp:                                            ; preds = %._crit_edge
  ret void
}

declare void @_ZNK15btReducedVector4projERKS_(ptr dead_on_unwind writable sret(%class.btReducedVector) align 8, ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZN15btReducedVectoraSERKS_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.c, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 3 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i

._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre10.i = load ptr, ptr %.phi.trans.insert9.i, align 8, !tbaa !27
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29
  %i.l = icmp slt i32 %i.k, %i.f
  br i1 %i.l, label %bb.d, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.f to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.n, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.g, align 4, !tbaa !28
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %.pre.i.i, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ] ; 9 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 9 uses
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %i.t = ptrtoaddr ptr %i.s to i64
  %.0.i.i.i.i30 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.p to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %i.u = sub i64 %i.t, %.0.i.i.i.i30
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !39
  %wide.load31 = load <4 x i32>, ptr %i.x, align 4, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !39
  store <4 x i32> %wide.load31, ptr %i.y, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.prol
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !82

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !39
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.1
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %i.al, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !39
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !39
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !83

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !26, !range !34, !noundef !46
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !26
  store ptr %.0.i.i.i.i, ptr %i.r, align 8, !tbaa !27
  store i32 %i.f, ptr %i.j, align 8, !tbaa !29
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %i.av = phi ptr [ %.pre.i, %..lr.ph.i_crit_edge.i ], [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i ] ; 2 uses
  %i.aw = sext i32 %i.h to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.f to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep.i = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.ay = sub nsw i64 %wide.trip.count.i.i, %i.aw
  %i.az = shl nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.az, i1 false), !tbaa !39
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i:  ; preds = %.lr.ph.i.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i
  %i.ba = phi ptr [ %.pre10.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i ], [ %i.av, %.lr.ph.i.i ] ; 7 uses
  store i32 %i.f, ptr %i.g, align 4, !tbaa !28
  %i.bb = icmp sgt i32 %i.f, 0
  br i1 %i.bb, label %.lr.ph.i4.i, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit

.lr.ph.i4.i:                                      ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %i.bc = ptrtoaddr ptr %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27 ; 7 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.f to i64 ; 5 uses
  %min.iters.check35 = icmp ult i32 %i.f, 8
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.bc
  %diff.check33 = icmp ugt i64 %i.bg, -32
  %or.cond47 = select i1 %min.iters.check35, i1 true, i1 %diff.check33
  br i1 %or.cond47, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph.i4.i
  %n.vec37 = and i64 %wide.trip.count.i5.i, 2147483640 ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index39 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index39 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load40 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !39
  %wide.load41 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <4 x i32> %wide.load40, ptr %i.bh, align 4, !tbaa !39
  store <4 x i32> %wide.load41, ptr %i.bk, align 4, !tbaa !39
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.bl, label %middle.block43, label %vector.body38, !llvm.loop !84

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %n.vec37, %wide.trip.count.i5.i
  br i1 %cmp.n44, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph.i4.i, %middle.block43
  %indvars.iv.i6.i.ph = phi i64 [ 0, %.lr.ph.i4.i ], [ %n.vec37, %middle.block43 ] ; 3 uses
  %xtraiter48 = and i64 %wide.trip.count.i5.i, 3  ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol

scalar.ph34.prol:                                 ; preds = %scalar.ph34.preheader, %scalar.ph34.prol
  %indvars.iv.i6.i.prol = phi i64 [ %indvars.iv.next.i7.i.prol, %scalar.ph34.prol ], [ %indvars.iv.i6.i.ph, %scalar.ph34.preheader ] ; 3 uses
  %prol.iter50 = phi i64 [ %prol.iter50.next, %scalar.ph34.prol ], [ 0, %scalar.ph34.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i6.i.prol
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i6.i.prol
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !39
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !39
  %indvars.iv.next.i7.i.prol = add nuw nsw i64 %indvars.iv.i6.i.prol, 1 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol, !llvm.loop !85

scalar.ph34.prol.loopexit:                        ; preds = %scalar.ph34.prol, %scalar.ph34.preheader
  %indvars.iv.i6.i.unr = phi i64 [ %indvars.iv.i6.i.ph, %scalar.ph34.preheader ], [ %indvars.iv.next.i7.i.prol, %scalar.ph34.prol ]
  %i.bp = sub nsw i64 %indvars.iv.i6.i.ph, %wide.trip.count.i5.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit, label %scalar.ph34

scalar.ph34:                                      ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34
  %indvars.iv.i6.i = phi i64 [ %indvars.iv.next.i7.i.3, %scalar.ph34 ], [ %indvars.iv.i6.i.unr, %scalar.ph34.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i6.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i6.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !39
  %indvars.iv.next.i7.i = add nuw nsw i64 %indvars.iv.i6.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i7.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !39
  %indvars.iv.next.i7.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i7.i.1
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !39
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !39
  %indvars.iv.next.i7.i.2 = add nuw nsw i64 %indvars.iv.i6.i, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.2
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i7.i.2
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !39
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !39
  %indvars.iv.next.i7.i.3 = add nuw nsw i64 %indvars.iv.i6.i, 4 ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %indvars.iv.next.i7.i.3, %wide.trip.count.i5.i
  br i1 %exitcond.not.i8.i.3, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit, label %scalar.ph34, !llvm.loop !86

_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit: ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34, %middle.block43, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32 ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32 ; 2 uses
  %i.ch = icmp sgt i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !33
  %i.ck = icmp slt i32 %i.cj, %i.ce
  br i1 %i.ck, label %bb.h, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i12 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i12, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = sext i32 %i.ce to i64
  %i.cm = shl nsw i64 %i.cl, 4
  %i.cn = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cm, i32 noundef 16)
  %.pre.i.i13 = load i32, ptr %i.cf, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.co = phi i32 [ %.pre.i.i13, %bb.i ], [ %i.cg, %bb.h ] ; 4 uses
  %.0.i.i.i.i14 = phi ptr [ %i.cn, %bb.i ], [ null, %bb.h ] ; 4 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i.i16, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i16:                                 ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count.i.i.i.i17 = zext nneg i32 %i.co to i64 ; 2 uses
  %xtraiter51 = and i64 %wide.trip.count.i.i.i.i17, 1
  %i.cr = icmp eq i32 %i.co, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.i.i.i16.new

.lr.ph.i.i.i.i16.new:                             ; preds = %.lr.ph.i.i.i.i16
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i17, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i16.new
  %indvars.iv.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i16.new ], [ %indvars.iv.next.i.i.i.i19.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i16.new ], [ %niter.next.1, %bb.j ]
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.i.i.i.i18
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i19 = or disjoint i64 %indvars.iv.i.i.i.i18, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.next.i.i.i.i19
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i19.1 = add nuw nsw i64 %indvars.iv.i.i.i.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !52

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16
  %indvars.iv.i.i.i.i18.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i16 ], [ %indvars.iv.next.i.i.i.i19.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod53 = trunc i32 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.i.i.i.i18.epil.init
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv.i.i.i.i18.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31 ; 2 uses
  %.not.i5.i.i.i15 = icmp eq ptr %i.dc, null
  br i1 %.not.i5.i.i.i15, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !30, !range !34, !noundef !46
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dc)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dg, align 8, !tbaa !30
  store ptr %.0.i.i.i.i14, ptr %i.db, align 8, !tbaa !31
  store i32 %i.ce, ptr %i.ci, align 8, !tbaa !33
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, %bb.g, %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dj = icmp sgt i32 %i.ce, 0
  br i1 %i.dj, label %.lr.ph.i4.i7, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit

.lr.ph.i4.i7:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %wide.trip.count.i5.i8 = zext nneg i32 %i.ce to i64 ; 2 uses
  %xtraiter55 = and i64 %wide.trip.count.i5.i8, 1
  %i.dl = icmp eq i32 %i.ce, 1
end_hunk_1
begin_hunk_2_@_ZN19btConjugateResidualI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b:bb.a
  %niter436 = phi i64 [ 0, %.lr.ph.i4.i.i207.new ], [ %niter436.next.1, %bb.cv ]
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %indvars.iv.i6.i.i209
  %i.qb = load ptr, ptr %i.py, align 8, !tbaa !31
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %indvars.iv.i6.i.i209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qa, ptr noundef nonnull align 4 dereferenceable(16) %i.qc, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i7.i.i210 = or disjoint i64 %indvars.iv.i6.i.i209, 1 ; 2 uses
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %indvars.iv.next.i7.i.i210
  %i.qe = load ptr, ptr %i.py, align 8, !tbaa !31
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %indvars.iv.next.i7.i.i210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qd, ptr noundef nonnull align 4 dereferenceable(16) %i.qf, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i7.i.i210.1 = add nuw nsw i64 %indvars.iv.i6.i.i209, 2 ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226.loopexit.unr-lcssa, label %bb.cv, !llvm.loop !52

_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226.loopexit.unr-lcssa: ; preds = %bb.cv
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226, label %.epil.preheader431

.epil.preheader431:                               ; preds = %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226.loopexit.unr-lcssa, %.lr.ph.i4.i.i207
  %indvars.iv.i6.i.i209.epil.init = phi i64 [ 0, %.lr.ph.i4.i.i207 ], [ %indvars.iv.next.i7.i.i210.1, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i32 %i.os to i1
  call void @llvm.assume(i1 %lcmp.mod434)
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %indvars.iv.i6.i.i209.epil.init
  %i.qh = load ptr, ptr %i.py, align 8, !tbaa !31
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.qh, i64 %indvars.iv.i6.i.i209.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qg, ptr noundef nonnull align 4 dereferenceable(16) %i.qi, i64 16, i1 false), !tbaa.struct !50
  br label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226

_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226: ; preds = %.epil.preheader431, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i206
  %i.qj = load i32, ptr %i.gz, align 8, !tbaa !137
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit154, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226, %bb.u
  %.452 = phi i32 [ 0, %bb.u ], [ %i.qj, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit226 ], [ %.0262, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit154 ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.452

bb.cw:                                            ; preds = %bb.z, %bb.be, %bb.bg, %bb.ck, %bb.ch, %bb.bf, %bb.aq, %bb.y, %bb.v
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.dh, %bb.v ], [ %i.dk, %bb.z ], [ %i.ht, %bb.aq ], [ %i.ka, %bb.be ], [ %i.kb, %bb.bf ], [ %i.kc, %bb.bg ], [ %.pn57, %bb.ck ], [ %.pn55, %bb.ch ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22btDeformableBodySolver12reinitializeERK20btAlignedObjectArrayIP10btSoftBodyEf(ptr noundef nonnull align 8 dereferenceable(609) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, float noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !135  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !135  ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit_crit_edge.i

._ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre10.i = load ptr, ptr %.phi.trans.insert9.i, align 8, !tbaa !134
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !136
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !134
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !135
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i.i, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134  ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i.i120 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i.i120
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !188
  %wide.load121 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !188
  store <2 x ptr> %wide.load121, ptr %i.u, align 8, !tbaa !188
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !188
  store ptr %i.y, ptr %i.w, align 8, !tbaa !188
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !327

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !188
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !188
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !188
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !188
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !188
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !188
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !188
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !188
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !328

_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !133, !range !34, !noundef !46
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.aq, align 8, !tbaa !133
  store ptr %.0.i.i.i.i, ptr %i.n, align 8, !tbaa !134
  store i32 %i.b, ptr %i.f, align 8, !tbaa !136
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %i.ar = phi ptr [ %.pre.i, %..lr.ph.i_crit_edge.i ], [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i.i ] ; 2 uses
  %i.as = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.b to i64
  %i.at = shl nsw i64 %i.as, 3
  %scevgep.i = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.au = sub nsw i64 %wide.trip.count.i.i, %i.as
  %i.av = shl nsw i64 %i.au, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false), !tbaa !188
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit.i

_ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit.i: ; preds = %.lr.ph.i.i, %._ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit_crit_edge.i
  %i.aw = phi ptr [ %.pre10.i, %._ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit_crit_edge.i ], [ %i.ar, %.lr.ph.i.i ] ; 12 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !135
  %i.ax = icmp sgt i32 %i.b, 0
  br i1 %i.ax, label %.lr.ph.i4.i, label %._crit_edge.i

.lr.ph.i4.i:                                      ; preds = %_ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit.i
  %i.ay = ptrtoaddr ptr %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !134 ; 7 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.b to i64 ; 7 uses
  %min.iters.check125 = icmp ult i32 %i.b, 8
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ay
  %diff.check123 = icmp ugt i64 %i.bc, -32
  %or.cond137 = select i1 %min.iters.check125, i1 true, i1 %diff.check123
  br i1 %or.cond137, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph.i4.i
  %n.vec127 = and i64 %wide.trip.count.i5.i, 2147483644 ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index129 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index129 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load130 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !188
  %wide.load131 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !188
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x ptr> %wide.load130, ptr %i.bd, align 8, !tbaa !188
  store <2 x ptr> %wide.load131, ptr %i.bg, align 8, !tbaa !188
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.bh, label %middle.block133, label %vector.body128, !llvm.loop !329

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %n.vec127, %wide.trip.count.i5.i
  br i1 %cmp.n134, label %.lr.ph.i, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.lr.ph.i4.i, %middle.block133
  %indvars.iv.i6.i.ph = phi i64 [ 0, %.lr.ph.i4.i ], [ %n.vec127, %middle.block133 ] ; 3 uses
  %xtraiter138 = and i64 %wide.trip.count.i5.i, 3 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol

scalar.ph124.prol:                                ; preds = %scalar.ph124.preheader, %scalar.ph124.prol
  %indvars.iv.i6.i.prol = phi i64 [ %indvars.iv.next.i7.i.prol, %scalar.ph124.prol ], [ %indvars.iv.i6.i.ph, %scalar.ph124.preheader ] ; 3 uses
  %prol.iter140 = phi i64 [ %prol.iter140.next, %scalar.ph124.prol ], [ 0, %scalar.ph124.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i6.i.prol
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i6.i.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !188
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !188
  %indvars.iv.next.i7.i.prol = add nuw nsw i64 %indvars.iv.i6.i.prol, 1 ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol, !llvm.loop !330

scalar.ph124.prol.loopexit:                       ; preds = %scalar.ph124.prol, %scalar.ph124.preheader
  %indvars.iv.i6.i.unr = phi i64 [ %indvars.iv.i6.i.ph, %scalar.ph124.preheader ], [ %indvars.iv.next.i7.i.prol, %scalar.ph124.prol ]
  %i.bl = sub nsw i64 %indvars.iv.i6.i.ph, %wide.trip.count.i5.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %.lr.ph.i, label %scalar.ph124

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %indvars.iv.i6.i = phi i64 [ %indvars.iv.next.i7.i.3, %scalar.ph124 ], [ %indvars.iv.i6.i.unr, %scalar.ph124.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i6.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i6.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !188
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !188
  %indvars.iv.next.i7.i = add nuw nsw i64 %indvars.iv.i6.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i7.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !188
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !188
  %indvars.iv.next.i7.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i7.i.1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.1
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !188
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !188
  %indvars.iv.next.i7.i.2 = add nuw nsw i64 %indvars.iv.i6.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i7.i.2
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.2
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !188
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !188
  %indvars.iv.next.i7.i.3 = add nuw nsw i64 %indvars.iv.i6.i, 4 ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %indvars.iv.next.i7.i.3, %wide.trip.count.i5.i
  br i1 %exitcond.not.i8.i.3, label %.lr.ph.i, label %scalar.ph124, !llvm.loop !331

.lr.ph.i:                                         ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124, %middle.block133
  %xtraiter141 = and i64 %wide.trip.count.i5.i, 3 ; 3 uses
  %i.bz = icmp ult i32 %i.b, 4
  br i1 %i.bz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i5.i, 2147483644
  br label %bb.g

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.dd, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.079.i.epil = phi i32 [ %.079.i.epil.init, %.epil.preheader ], [ %i.ce, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.epil
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !188
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 932
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !190
  %i.ce = add nsw i32 %i.cd, %.079.i.epil         ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter141
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !332

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.f, %_ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit.i
  %.07.lcssa.i = phi i32 [ 0, %_ZN20btAlignedObjectArrayIP10btSoftBodyE6resizeEiRKS1_.exit.i ], [ %i.dd, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ce, %bb.f ] ; 11 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !123
  %.not.i = icmp ne i32 %.07.lcssa.i, %i.cg       ; 2 uses
  br i1 %.not.i, label %bb.h, label %_ZN22btDeformableBodySolver11updateNodesEv.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %.079.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.dd, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !188
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 932
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !190
  %i.cl = add nsw i32 %i.ck, %.079.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !188
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 932
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !190
  %i.cr = add nsw i32 %i.cq, %i.cl
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !188
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 932
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !190
  %i.cx = add nsw i32 %i.cw, %i.cr
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !188
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 932
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !190
  %i.dd = add nsw i32 %i.dc, %i.cx                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !333

bb.h:                                             ; preds = %._crit_edge.i
  store i32 %.07.lcssa.i, ptr %i.cf, align 4, !tbaa !123
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !32 ; 3 uses
  %i.dg = icmp sgt i32 %.07.lcssa.i, %i.df
  br i1 %i.dg, label %bb.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !33
  %i.dj = icmp slt i32 %i.di, %.07.lcssa.i
  br i1 %i.dj, label %bb.j, label %.lr.ph.i12

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %.07.lcssa.i, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = sext i32 %.07.lcssa.i to i64
  %i.dl = shl nsw i64 %i.dk, 4
  %i.dm = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dl, i32 noundef 16)
  %.pre.i17 = load i32, ptr %i.de, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.dn = phi i32 [ %.pre.i17, %bb.k ], [ %i.df, %bb.j ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.dm, %bb.k ], [ null, %bb.j ] ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.dn to i64 ; 2 uses
  %xtraiter146 = and i64 %wide.trip.count.i.i.i, 1
  %i.dq = icmp eq i32 %i.dn, 1
end_hunk_2
begin_hunk_3_@_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_:bb.a

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i30, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i28
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.cp, align 8, !tbaa !350
  store ptr %.0.i.i.i27, ptr %i.bm, align 8, !tbaa !417
  store i32 %i.e, ptr %i.be, align 8, !tbaa !418
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %..lr.ph.i18_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31
  %i.cq = phi ptr [ %.pre40, %..lr.ph.i18_crit_edge ], [ %.0.i.i.i27, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i31 ]
  %i.cr = sext i32 %i.bc to i64                   ; 2 uses
  %i.cs = shl nsw i64 %i.cr, 2
  %scevgep38 = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.ct = sext i32 %i.d to i64
  %i.cu = add nsw i64 %i.ct, 6
  %i.cv = sub nsw i64 %i.cu, %i.cr
  %i.cw = shl nuw nsw i64 %i.cv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep38, i8 0, i64 %i.cw, i1 false), !tbaa !68
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit37

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit37:  ; preds = %.lr.ph.i18, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.e, ptr %i.bb, align 4, !tbaa !351
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !417
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !421
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.db = load i32, ptr %i.da, align 8, !tbaa !472
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E(ptr noundef nonnull align 8 dereferenceable(640) %i.cz, i32 noundef %i.db, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.cy, ptr noundef nonnull align 8 dereferenceable(25) %i.dc, ptr noundef nonnull align 8 dereferenceable(25) %i.dd, ptr noundef nonnull align 8 dereferenceable(25) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !421
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !417
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !417
  call void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr noundef nonnull align 8 dereferenceable(640) %i.df, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.di, ptr noundef nonnull align 8 dereferenceable(25) %i.dc, ptr noundef nonnull align 8 dereferenceable(25) %i.dd)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(204) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !351  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !351  ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i: ; preds = %bb.a
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !417
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !418
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge.i.i

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !417
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i.i.i = load i32, ptr %i.c, align 4, !tbaa !351
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i.i.i, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !417  ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i.i.i128 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i.i.i128
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x float>, ptr %i.s, align 4, !tbaa !68
  %wide.load129 = load <4 x float>, ptr %i.t, align 4, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %wide.load, ptr %i.r, align 4, !tbaa !68
  store <4 x float> %wide.load129, ptr %i.u, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i.prol
  %i.y = load float, ptr %i.x, align 4, !tbaa !68
  store float %i.y, ptr %i.w, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !474

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !68
  store float %i.ad, ptr %i.ab, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !68
  store float %i.ag, ptr %i.ae, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !68
  store float %i.aj, ptr %i.ah, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.am = load float, ptr %i.al, align 4, !tbaa !68
  store float %i.am, ptr %i.ak, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, label %scalar.ph, !llvm.loop !475

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !350, !range !34, !noundef !46
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aq, align 8, !tbaa !350
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8, !tbaa !417
  store i32 %i.b, ptr %i.f, align 8, !tbaa !418
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.ar = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.as = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.b to i64
  %i.at = shl nsw i64 %i.as, 2
  %scevgep.i.i = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.au = sub nsw i64 %wide.trip.count.i.i.i, %i.as
  %i.av = shl nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.av, i1 false), !tbaa !68
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i: ; preds = %.lr.ph.i.i.i, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i
  %i.aw = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i ], [ %i.ar, %.lr.ph.i.i.i ] ; 7 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !351
  %i.ax = icmp sgt i32 %i.b, 0
  br i1 %i.ax, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i
  %i.ay = ptrtoaddr ptr %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !417 ; 7 uses
  %wide.trip.count.i5.i.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check133 = icmp ult i32 %i.b, 8
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ay
  %diff.check131 = icmp ugt i64 %i.bc, -32
  %or.cond232 = select i1 %min.iters.check133, i1 true, i1 %diff.check131
  br i1 %or.cond232, label %scalar.ph132.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph.i4.i.i
  %n.vec135 = and i64 %wide.trip.count.i5.i.i, 2147483640 ; 3 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next140, %vector.body136 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index137 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index137 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load138 = load <4 x float>, ptr %i.be, align 4, !tbaa !68
  %wide.load139 = load <4 x float>, ptr %i.bf, align 4, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x float> %wide.load138, ptr %i.bd, align 4, !tbaa !68
  store <4 x float> %wide.load139, ptr %i.bg, align 4, !tbaa !68
  %index.next140 = add nuw i64 %index137, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bh, label %middle.block141, label %vector.body136, !llvm.loop !476

middle.block141:                                  ; preds = %vector.body136
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count.i5.i.i
  br i1 %cmp.n142, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit, label %scalar.ph132.preheader

scalar.ph132.preheader:                           ; preds = %.lr.ph.i4.i.i, %middle.block141
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i ], [ %n.vec135, %middle.block141 ] ; 3 uses
  %xtraiter242 = and i64 %wide.trip.count.i5.i.i, 3 ; 2 uses
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol

scalar.ph132.prol:                                ; preds = %scalar.ph132.preheader, %scalar.ph132.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph132.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph132.preheader ] ; 3 uses
  %prol.iter244 = phi i64 [ %prol.iter244.next, %scalar.ph132.prol ], [ 0, %scalar.ph132.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i6.i.i.prol
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i6.i.i.prol
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !68
  store float %i.bk, ptr %i.bi, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter244.next = add i64 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i64 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol, !llvm.loop !477

scalar.ph132.prol.loopexit:                       ; preds = %scalar.ph132.prol, %scalar.ph132.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph132.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph132.prol ]
  %i.bl = sub nsw i64 %indvars.iv.i6.i.i.ph, %wide.trip.count.i5.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit, label %scalar.ph132

scalar.ph132:                                     ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph132 ], [ %indvars.iv.i6.i.i.unr, %scalar.ph132.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i6.i.i
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i6.i.i
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !68
  store float %i.bp, ptr %i.bn, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i7.i.i
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.i
  %i.bs = load float, ptr %i.br, align 4, !tbaa !68
  store float %i.bs, ptr %i.bq, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i7.i.i.1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.i.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !68
  store float %i.bv, ptr %i.bt, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i7.i.i.2
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i7.i.i.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !68
  store float %i.by, ptr %i.bw, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %wide.trip.count.i5.i.i
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit, label %scalar.ph132, !llvm.loop !478

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit:        ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132, %middle.block141, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !351 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !351 ; 3 uses
  %i.cd = icmp sgt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.f, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i8

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i8: ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit
  %.phi.trans.insert9.i.i9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre10.i.i10 = load ptr, ptr %.phi.trans.insert9.i.i9, align 8, !tbaa !417
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i11

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !418
  %i.cg = icmp slt i32 %i.cf, %i.ca
  br i1 %i.cg, label %bb.g, label %..lr.ph.i_crit_edge.i.i17

..lr.ph.i_crit_edge.i.i17:                        ; preds = %bb.f
  %.phi.trans.insert.i.i18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i.i19 = load ptr, ptr %.phi.trans.insert.i.i18, align 8, !tbaa !417
  br label %.lr.ph.i.i.i20

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i23 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = sext i32 %i.ca to i64
  %i.ci = shl nsw i64 %i.ch, 2
  %i.cj = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ci, i32 noundef 16)
  %.pre.i.i.i24 = load i32, ptr %i.cb, align 4, !tbaa !351
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i25

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i25: ; preds = %bb.h, %bb.g
  %i.ck = phi i32 [ %.pre.i.i.i24, %bb.h ], [ %i.cc, %bb.g ] ; 3 uses
  %.0.i.i.i.i.i26 = phi ptr [ %i.cj, %bb.h ], [ null, %bb.g ] ; 9 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !417 ; 9 uses
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i31, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i27

.lr.ph.i.i.i.i.i31:                               ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i25
  %i.co = ptrtoaddr ptr %i.cn to i64
  %.0.i.i.i.i.i26145 = ptrtoaddr ptr %.0.i.i.i.i.i26 to i64
  %wide.trip.count.i.i.i.i.i32 = zext nneg i32 %i.ck to i64 ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.ck, 8
  %i.cp = sub i64 %i.co, %.0.i.i.i.i.i26145
  %diff.check146 = icmp ugt i64 %i.cp, -32
  %or.cond233 = select i1 %min.iters.check148, i1 true, i1 %diff.check146
  br i1 %or.cond233, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.i.i.i.i.i31
  %n.vec150 = and i64 %wide.trip.count.i.i.i.i.i32, 2147483640 ; 3 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next155, %vector.body151 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i26, i64 %index152 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index152 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load153 = load <4 x float>, ptr %i.cr, align 4, !tbaa !68
  %wide.load154 = load <4 x float>, ptr %i.cs, align 4, !tbaa !68
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x float> %wide.load153, ptr %i.cq, align 4, !tbaa !68
  store <4 x float> %wide.load154, ptr %i.ct, align 4, !tbaa !68
  %index.next155 = add nuw i64 %index152, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.cu, label %middle.block156, label %vector.body151, !llvm.loop !479

middle.block156:                                  ; preds = %vector.body151
  %cmp.n157 = icmp eq i64 %n.vec150, %wide.trip.count.i.i.i.i.i32
  br i1 %cmp.n157, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %.lr.ph.i.i.i.i.i31, %middle.block156
  %indvars.iv.i.i.i.i.i33.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i31 ], [ %n.vec150, %middle.block156 ] ; 3 uses
  %xtraiter245 = and i64 %wide.trip.count.i.i.i.i.i32, 3 ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader, %scalar.ph147.prol
  %indvars.iv.i.i.i.i.i33.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i34.prol, %scalar.ph147.prol ], [ %indvars.iv.i.i.i.i.i33.ph, %scalar.ph147.preheader ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %scalar.ph147.prol ], [ 0, %scalar.ph147.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i26, i64 %indvars.iv.i.i.i.i.i33.prol
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i.i.i.i33.prol
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !68
  store float %i.cx, ptr %i.cv, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i34.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i33.prol, 1 ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol, !llvm.loop !480

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %indvars.iv.i.i.i.i.i33.unr = phi i64 [ %indvars.iv.i.i.i.i.i33.ph, %scalar.ph147.preheader ], [ %indvars.iv.next.i.i.i.i.i34.prol, %scalar.ph147.prol ]
  %i.cy = sub nsw i64 %indvars.iv.i.i.i.i.i33.ph, %wide.trip.count.i.i.i.i.i32
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29, label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %indvars.iv.i.i.i.i.i33 = phi i64 [ %indvars.iv.next.i.i.i.i.i34.3, %scalar.ph147 ], [ %indvars.iv.i.i.i.i.i33.unr, %scalar.ph147.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i26, i64 %indvars.iv.i.i.i.i.i33
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i.i.i.i33
  %i.dc = load float, ptr %i.db, align 4, !tbaa !68
  store float %i.dc, ptr %i.da, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i34 = add nuw nsw i64 %indvars.iv.i.i.i.i.i33, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i26, i64 %indvars.iv.next.i.i.i.i.i34
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i34
  %i.df = load float, ptr %i.de, align 4, !tbaa !68
  store float %i.df, ptr %i.dd, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i34.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i33, 2 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i26, i64 %indvars.iv.next.i.i.i.i.i34.1
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i34.1
  %i.di = load float, ptr %i.dh, align 4, !tbaa !68
  store float %i.di, ptr %i.dg, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i34.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i33, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i26, i64 %indvars.iv.next.i.i.i.i.i34.2
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i34.2
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !68
  store float %i.dl, ptr %i.dj, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i34.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i33, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i35.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i34.3, %wide.trip.count.i.i.i.i.i32
  br i1 %exitcond.not.i.i.i.i.i35.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29, label %scalar.ph147, !llvm.loop !481

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i27: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i25
  %.not.i5.i.i.i.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i5.i.i.i.i28, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i30, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29: ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147, %middle.block156, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i27
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !350, !range !34, !noundef !46
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i30

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cn)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i30

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i30: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i29, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i27
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dp, align 8, !tbaa !350
  store ptr %.0.i.i.i.i.i26, ptr %i.cm, align 8, !tbaa !417
  store i32 %i.ca, ptr %i.ce, align 8, !tbaa !418
  br label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i30, %..lr.ph.i_crit_edge.i.i17
  %i.dq = phi ptr [ %.pre.i.i19, %..lr.ph.i_crit_edge.i.i17 ], [ %.0.i.i.i.i.i26, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i30 ] ; 2 uses
  %i.dr = sext i32 %i.cc to i64                   ; 2 uses
  %wide.trip.count.i.i.i21 = sext i32 %i.ca to i64
  %i.ds = shl nsw i64 %i.dr, 2
  %scevgep.i.i22 = getelementptr i8, ptr %i.dq, i64 %i.ds
  %i.dt = sub nsw i64 %wide.trip.count.i.i.i21, %i.dr
  %i.du = shl nsw i64 %i.dt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i22, i8 0, i64 %i.du, i1 false), !tbaa !68
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i11

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i11: ; preds = %.lr.ph.i.i.i20, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i8
  %i.dv = phi ptr [ %.pre10.i.i10, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i8 ], [ %i.dq, %.lr.ph.i.i.i20 ] ; 7 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !351
  %i.dw = icmp sgt i32 %i.ca, 0
  br i1 %i.dw, label %.lr.ph.i4.i.i12, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36

.lr.ph.i4.i.i12:                                  ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i11
  %i.dx = ptrtoaddr ptr %i.dv to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !417 ; 7 uses
  %wide.trip.count.i5.i.i13 = zext nneg i32 %i.ca to i64 ; 5 uses
  %min.iters.check162 = icmp ult i32 %i.ca, 8
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dx
  %diff.check160 = icmp ugt i64 %i.eb, -32
  %or.cond235 = select i1 %min.iters.check162, i1 true, i1 %diff.check160
  br i1 %or.cond235, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i4.i.i12
  %n.vec164 = and i64 %wide.trip.count.i5.i.i13, 2147483640 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body165 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index166 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index166 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load167 = load <4 x float>, ptr %i.ed, align 4, !tbaa !68
  %wide.load168 = load <4 x float>, ptr %i.ee, align 4, !tbaa !68
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %wide.load167, ptr %i.ec, align 4, !tbaa !68
  store <4 x float> %wide.load168, ptr %i.ef, align 4, !tbaa !68
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.eg, label %middle.block170, label %vector.body165, !llvm.loop !482

middle.block170:                                  ; preds = %vector.body165
  %cmp.n171 = icmp eq i64 %n.vec164, %wide.trip.count.i5.i.i13
  br i1 %cmp.n171, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %.lr.ph.i4.i.i12, %middle.block170
  %indvars.iv.i6.i.i14.ph = phi i64 [ 0, %.lr.ph.i4.i.i12 ], [ %n.vec164, %middle.block170 ] ; 3 uses
  %xtraiter248 = and i64 %wide.trip.count.i5.i.i13, 3 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %scalar.ph161.prol.loopexit, label %scalar.ph161.prol

scalar.ph161.prol:                                ; preds = %scalar.ph161.preheader, %scalar.ph161.prol
  %indvars.iv.i6.i.i14.prol = phi i64 [ %indvars.iv.next.i7.i.i15.prol, %scalar.ph161.prol ], [ %indvars.iv.i6.i.i14.ph, %scalar.ph161.preheader ] ; 3 uses
  %prol.iter250 = phi i64 [ %prol.iter250.next, %scalar.ph161.prol ], [ 0, %scalar.ph161.preheader ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i6.i.i14.prol
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i6.i.i14.prol
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !68
  store float %i.ej, ptr %i.eh, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i15.prol = add nuw nsw i64 %indvars.iv.i6.i.i14.prol, 1 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %scalar.ph161.prol.loopexit, label %scalar.ph161.prol, !llvm.loop !483

scalar.ph161.prol.loopexit:                       ; preds = %scalar.ph161.prol, %scalar.ph161.preheader
  %indvars.iv.i6.i.i14.unr = phi i64 [ %indvars.iv.i6.i.i14.ph, %scalar.ph161.preheader ], [ %indvars.iv.next.i7.i.i15.prol, %scalar.ph161.prol ]
  %i.ek = sub nsw i64 %indvars.iv.i6.i.i14.ph, %wide.trip.count.i5.i.i13
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36, label %scalar.ph161

scalar.ph161:                                     ; preds = %scalar.ph161.prol.loopexit, %scalar.ph161
  %indvars.iv.i6.i.i14 = phi i64 [ %indvars.iv.next.i7.i.i15.3, %scalar.ph161 ], [ %indvars.iv.i6.i.i14.unr, %scalar.ph161.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i6.i.i14
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i6.i.i14
  %i.eo = load float, ptr %i.en, align 4, !tbaa !68
  store float %i.eo, ptr %i.em, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i15 = add nuw nsw i64 %indvars.iv.i6.i.i14, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i7.i.i15
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i7.i.i15
  %i.er = load float, ptr %i.eq, align 4, !tbaa !68
  store float %i.er, ptr %i.ep, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i15.1 = add nuw nsw i64 %indvars.iv.i6.i.i14, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i7.i.i15.1
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i7.i.i15.1
  %i.eu = load float, ptr %i.et, align 4, !tbaa !68
  store float %i.eu, ptr %i.es, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i15.2 = add nuw nsw i64 %indvars.iv.i6.i.i14, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i7.i.i15.2
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i7.i.i15.2
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !68
  store float %i.ex, ptr %i.ev, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i15.3 = add nuw nsw i64 %indvars.iv.i6.i.i14, 4 ; 2 uses
  %exitcond.not.i8.i.i16.3 = icmp eq i64 %indvars.iv.next.i7.i.i15.3, %wide.trip.count.i5.i.i13
  br i1 %exitcond.not.i8.i.i16.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36, label %scalar.ph161, !llvm.loop !484

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36:      ; preds = %scalar.ph161.prol.loopexit, %scalar.ph161, %middle.block170, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i11
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !351 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !351 ; 3 uses
  %i.fc = icmp sgt i32 %i.ez, %i.fb
  br i1 %i.fc, label %bb.j, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i37

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i37: ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36
  %.phi.trans.insert9.i.i38 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre10.i.i39 = load ptr, ptr %.phi.trans.insert9.i.i38, align 8, !tbaa !417
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i40

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit36
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !418
  %i.ff = icmp slt i32 %i.fe, %i.ez
  br i1 %i.ff, label %bb.k, label %..lr.ph.i_crit_edge.i.i46

..lr.ph.i_crit_edge.i.i46:                        ; preds = %bb.j
  %.phi.trans.insert.i.i47 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre.i.i48 = load ptr, ptr %.phi.trans.insert.i.i47, align 8, !tbaa !417
  br label %.lr.ph.i.i.i49

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i52 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i.i52, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i54, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fg = sext i32 %i.ez to i64
  %i.fh = shl nsw i64 %i.fg, 2
  %i.fi = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fh, i32 noundef 16)
  %.pre.i.i.i53 = load i32, ptr %i.fa, align 4, !tbaa !351
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i54

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i54: ; preds = %bb.l, %bb.k
  %i.fj = phi i32 [ %.pre.i.i.i53, %bb.l ], [ %i.fb, %bb.k ] ; 3 uses
  %.0.i.i.i.i.i55 = phi ptr [ %i.fi, %bb.l ], [ null, %bb.k ] ; 9 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !417 ; 9 uses
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i60, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i56

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i54
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %.0.i.i.i.i.i55174 = ptrtoaddr ptr %.0.i.i.i.i.i55 to i64
  %wide.trip.count.i.i.i.i.i61 = zext nneg i32 %i.fj to i64 ; 5 uses
  %min.iters.check177 = icmp ult i32 %i.fj, 8
  %i.fo = sub i64 %i.fn, %.0.i.i.i.i.i55174
  %diff.check175 = icmp ugt i64 %i.fo, -32
  %or.cond236 = select i1 %min.iters.check177, i1 true, i1 %diff.check175
  br i1 %or.cond236, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %.lr.ph.i.i.i.i.i60
  %n.vec179 = and i64 %wide.trip.count.i.i.i.i.i61, 2147483640 ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next184, %vector.body180 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i55, i64 %index181 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index181 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load182 = load <4 x float>, ptr %i.fq, align 4, !tbaa !68
  %wide.load183 = load <4 x float>, ptr %i.fr, align 4, !tbaa !68
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x float> %wide.load182, ptr %i.fp, align 4, !tbaa !68
  store <4 x float> %wide.load183, ptr %i.fs, align 4, !tbaa !68
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.ft, label %middle.block185, label %vector.body180, !llvm.loop !485

middle.block185:                                  ; preds = %vector.body180
  %cmp.n186 = icmp eq i64 %n.vec179, %wide.trip.count.i.i.i.i.i61
  br i1 %cmp.n186, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %.lr.ph.i.i.i.i.i60, %middle.block185
  %indvars.iv.i.i.i.i.i62.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i60 ], [ %n.vec179, %middle.block185 ] ; 3 uses
  %xtraiter251 = and i64 %wide.trip.count.i.i.i.i.i61, 3 ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol

scalar.ph176.prol:                                ; preds = %scalar.ph176.preheader, %scalar.ph176.prol
  %indvars.iv.i.i.i.i.i62.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i63.prol, %scalar.ph176.prol ], [ %indvars.iv.i.i.i.i.i62.ph, %scalar.ph176.preheader ] ; 3 uses
  %prol.iter253 = phi i64 [ %prol.iter253.next, %scalar.ph176.prol ], [ 0, %scalar.ph176.preheader ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i55, i64 %indvars.iv.i.i.i.i.i62.prol
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.i.i.i.i62.prol
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !68
  store float %i.fw, ptr %i.fu, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i63.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i62.prol, 1 ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol, !llvm.loop !486

scalar.ph176.prol.loopexit:                       ; preds = %scalar.ph176.prol, %scalar.ph176.preheader
  %indvars.iv.i.i.i.i.i62.unr = phi i64 [ %indvars.iv.i.i.i.i.i62.ph, %scalar.ph176.preheader ], [ %indvars.iv.next.i.i.i.i.i63.prol, %scalar.ph176.prol ]
  %i.fx = sub nsw i64 %indvars.iv.i.i.i.i.i62.ph, %wide.trip.count.i.i.i.i.i61
  %i.fy = icmp ugt i64 %i.fx, -4
  br i1 %i.fy, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58, label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176
  %indvars.iv.i.i.i.i.i62 = phi i64 [ %indvars.iv.next.i.i.i.i.i63.3, %scalar.ph176 ], [ %indvars.iv.i.i.i.i.i62.unr, %scalar.ph176.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i55, i64 %indvars.iv.i.i.i.i.i62
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.i.i.i.i62
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !68
  store float %i.gb, ptr %i.fz, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i63 = add nuw nsw i64 %indvars.iv.i.i.i.i.i62, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i55, i64 %indvars.iv.next.i.i.i.i.i63
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i.i63
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !68
  store float %i.ge, ptr %i.gc, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i63.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i62, 2 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i55, i64 %indvars.iv.next.i.i.i.i.i63.1
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i.i63.1
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !68
  store float %i.gh, ptr %i.gf, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i63.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i62, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i55, i64 %indvars.iv.next.i.i.i.i.i63.2
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i.i63.2
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !68
  store float %i.gk, ptr %i.gi, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i63.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i62, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i64.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i63.3, %wide.trip.count.i.i.i.i.i61
  br i1 %exitcond.not.i.i.i.i.i64.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58, label %scalar.ph176, !llvm.loop !487

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i56: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i54
  %.not.i5.i.i.i.i57 = icmp eq ptr %i.fm, null
  br i1 %.not.i5.i.i.i.i57, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i59, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58: ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176, %middle.block185, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i56
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !350, !range !34, !noundef !46
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.m, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i59

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fm)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i59

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i59: ; preds = %bb.m, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i58, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i56
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.go, align 8, !tbaa !350
  store ptr %.0.i.i.i.i.i55, ptr %i.fl, align 8, !tbaa !417
  store i32 %i.ez, ptr %i.fd, align 8, !tbaa !418
  br label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i59, %..lr.ph.i_crit_edge.i.i46
  %i.gp = phi ptr [ %.pre.i.i48, %..lr.ph.i_crit_edge.i.i46 ], [ %.0.i.i.i.i.i55, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i59 ] ; 2 uses
  %i.gq = sext i32 %i.fb to i64                   ; 2 uses
  %wide.trip.count.i.i.i50 = sext i32 %i.ez to i64
  %i.gr = shl nsw i64 %i.gq, 2
  %scevgep.i.i51 = getelementptr i8, ptr %i.gp, i64 %i.gr
  %i.gs = sub nsw i64 %wide.trip.count.i.i.i50, %i.gq
  %i.gt = shl nsw i64 %i.gs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i51, i8 0, i64 %i.gt, i1 false), !tbaa !68
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i40

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i40: ; preds = %.lr.ph.i.i.i49, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i37
  %i.gu = phi ptr [ %.pre10.i.i39, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i37 ], [ %i.gp, %.lr.ph.i.i.i49 ] ; 7 uses
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !351
  %i.gv = icmp sgt i32 %i.ez, 0
  br i1 %i.gv, label %.lr.ph.i4.i.i41, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65

.lr.ph.i4.i.i41:                                  ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i40
  %i.gw = ptrtoaddr ptr %i.gu to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !417 ; 7 uses
  %wide.trip.count.i5.i.i42 = zext nneg i32 %i.ez to i64 ; 5 uses
  %min.iters.check191 = icmp ult i32 %i.ez, 8
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.gw
  %diff.check189 = icmp ugt i64 %i.ha, -32
  %or.cond238 = select i1 %min.iters.check191, i1 true, i1 %diff.check189
  br i1 %or.cond238, label %scalar.ph190.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i4.i.i41
  %n.vec193 = and i64 %wide.trip.count.i5.i.i42, 2147483640 ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index195 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index195 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load196 = load <4 x float>, ptr %i.hc, align 4, !tbaa !68
  %wide.load197 = load <4 x float>, ptr %i.hd, align 4, !tbaa !68
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <4 x float> %wide.load196, ptr %i.hb, align 4, !tbaa !68
  store <4 x float> %wide.load197, ptr %i.he, align 4, !tbaa !68
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.hf, label %middle.block199, label %vector.body194, !llvm.loop !488

middle.block199:                                  ; preds = %vector.body194
  %cmp.n200 = icmp eq i64 %n.vec193, %wide.trip.count.i5.i.i42
  br i1 %cmp.n200, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.lr.ph.i4.i.i41, %middle.block199
  %indvars.iv.i6.i.i43.ph = phi i64 [ 0, %.lr.ph.i4.i.i41 ], [ %n.vec193, %middle.block199 ] ; 3 uses
  %xtraiter254 = and i64 %wide.trip.count.i5.i.i42, 3 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %scalar.ph190.prol.loopexit, label %scalar.ph190.prol

scalar.ph190.prol:                                ; preds = %scalar.ph190.preheader, %scalar.ph190.prol
  %indvars.iv.i6.i.i43.prol = phi i64 [ %indvars.iv.next.i7.i.i44.prol, %scalar.ph190.prol ], [ %indvars.iv.i6.i.i43.ph, %scalar.ph190.preheader ] ; 3 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %scalar.ph190.prol ], [ 0, %scalar.ph190.preheader ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i6.i.i43.prol
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i6.i.i43.prol
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !68
  store float %i.hi, ptr %i.hg, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i44.prol = add nuw nsw i64 %indvars.iv.i6.i.i43.prol, 1 ; 2 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %scalar.ph190.prol.loopexit, label %scalar.ph190.prol, !llvm.loop !489

scalar.ph190.prol.loopexit:                       ; preds = %scalar.ph190.prol, %scalar.ph190.preheader
  %indvars.iv.i6.i.i43.unr = phi i64 [ %indvars.iv.i6.i.i43.ph, %scalar.ph190.preheader ], [ %indvars.iv.next.i7.i.i44.prol, %scalar.ph190.prol ]
  %i.hj = sub nsw i64 %indvars.iv.i6.i.i43.ph, %wide.trip.count.i5.i.i42
  %i.hk = icmp ugt i64 %i.hj, -4
  br i1 %i.hk, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65, label %scalar.ph190

scalar.ph190:                                     ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190
  %indvars.iv.i6.i.i43 = phi i64 [ %indvars.iv.next.i7.i.i44.3, %scalar.ph190 ], [ %indvars.iv.i6.i.i43.unr, %scalar.ph190.prol.loopexit ] ; 6 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i6.i.i43
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i6.i.i43
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !68
  store float %i.hn, ptr %i.hl, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i44 = add nuw nsw i64 %indvars.iv.i6.i.i43, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i7.i.i44
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i7.i.i44
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !68
  store float %i.hq, ptr %i.ho, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i44.1 = add nuw nsw i64 %indvars.iv.i6.i.i43, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i7.i.i44.1
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i7.i.i44.1
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !68
  store float %i.ht, ptr %i.hr, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i44.2 = add nuw nsw i64 %indvars.iv.i6.i.i43, 3 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i7.i.i44.2
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i7.i.i44.2
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !68
  store float %i.hw, ptr %i.hu, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i44.3 = add nuw nsw i64 %indvars.iv.i6.i.i43, 4 ; 2 uses
  %exitcond.not.i8.i.i45.3 = icmp eq i64 %indvars.iv.next.i7.i.i44.3, %wide.trip.count.i5.i.i42
  br i1 %exitcond.not.i8.i.i45.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65, label %scalar.ph190, !llvm.loop !490

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65:      ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190, %middle.block199, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i40
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !351 ; 10 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !351 ; 3 uses
  %i.ib = icmp sgt i32 %i.hy, %i.ia
  br i1 %i.ib, label %bb.n, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i66

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i66: ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65
  %.phi.trans.insert9.i.i67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre10.i.i68 = load ptr, ptr %.phi.trans.insert9.i.i67, align 8, !tbaa !417
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i69

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit65
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !418
  %i.ie = icmp slt i32 %i.id, %i.hy
  br i1 %i.ie, label %bb.o, label %..lr.ph.i_crit_edge.i.i75

..lr.ph.i_crit_edge.i.i75:                        ; preds = %bb.n
  %.phi.trans.insert.i.i76 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i.i77 = load ptr, ptr %.phi.trans.insert.i.i76, align 8, !tbaa !417
  br label %.lr.ph.i.i.i78

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i81 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i.i.i81, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i83, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.if = sext i32 %i.hy to i64
  %i.ig = shl nsw i64 %i.if, 2
  %i.ih = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ig, i32 noundef 16)
  %.pre.i.i.i82 = load i32, ptr %i.hz, align 4, !tbaa !351
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i83

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i83: ; preds = %bb.p, %bb.o
  %i.ii = phi i32 [ %.pre.i.i.i82, %bb.p ], [ %i.ia, %bb.o ] ; 3 uses
  %.0.i.i.i.i.i84 = phi ptr [ %i.ih, %bb.p ], [ null, %bb.o ] ; 9 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !417 ; 9 uses
  br i1 %i.ij, label %.lr.ph.i.i.i.i.i89, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i85

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i83
  %i.im = ptrtoaddr ptr %i.il to i64
  %.0.i.i.i.i.i84203 = ptrtoaddr ptr %.0.i.i.i.i.i84 to i64
  %wide.trip.count.i.i.i.i.i90 = zext nneg i32 %i.ii to i64 ; 5 uses
  %min.iters.check206 = icmp ult i32 %i.ii, 8
  %i.in = sub i64 %i.im, %.0.i.i.i.i.i84203
  %diff.check204 = icmp ugt i64 %i.in, -32
  %or.cond239 = select i1 %min.iters.check206, i1 true, i1 %diff.check204
  br i1 %or.cond239, label %scalar.ph205.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph.i.i.i.i.i89
  %n.vec208 = and i64 %wide.trip.count.i.i.i.i.i90, 2147483640 ; 3 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i84, i64 %index210 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %index210 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load211 = load <4 x float>, ptr %i.ip, align 4, !tbaa !68
  %wide.load212 = load <4 x float>, ptr %i.iq, align 4, !tbaa !68
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <4 x float> %wide.load211, ptr %i.io, align 4, !tbaa !68
  store <4 x float> %wide.load212, ptr %i.ir, align 4, !tbaa !68
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.is, label %middle.block214, label %vector.body209, !llvm.loop !491

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count.i.i.i.i.i90
  br i1 %cmp.n215, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %.lr.ph.i.i.i.i.i89, %middle.block214
  %indvars.iv.i.i.i.i.i91.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i89 ], [ %n.vec208, %middle.block214 ] ; 3 uses
  %xtraiter257 = and i64 %wide.trip.count.i.i.i.i.i90, 3 ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %scalar.ph205.prol.loopexit, label %scalar.ph205.prol

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader, %scalar.ph205.prol
  %indvars.iv.i.i.i.i.i91.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i92.prol, %scalar.ph205.prol ], [ %indvars.iv.i.i.i.i.i91.ph, %scalar.ph205.preheader ] ; 3 uses
  %prol.iter259 = phi i64 [ %prol.iter259.next, %scalar.ph205.prol ], [ 0, %scalar.ph205.preheader ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i84, i64 %indvars.iv.i.i.i.i.i91.prol
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i.i.i.i.i91.prol
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !68
  store float %i.iv, ptr %i.it, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i92.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i91.prol, 1 ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %scalar.ph205.prol.loopexit, label %scalar.ph205.prol, !llvm.loop !492

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.i.i.i.i.i91.unr = phi i64 [ %indvars.iv.i.i.i.i.i91.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.i.i.i.i.i92.prol, %scalar.ph205.prol ]
  %i.iw = sub nsw i64 %indvars.iv.i.i.i.i.i91.ph, %wide.trip.count.i.i.i.i.i90
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.i.i.i.i.i91 = phi i64 [ %indvars.iv.next.i.i.i.i.i92.3, %scalar.ph205 ], [ %indvars.iv.i.i.i.i.i91.unr, %scalar.ph205.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i84, i64 %indvars.iv.i.i.i.i.i91
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i.i.i.i.i91
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !68
  store float %i.ja, ptr %i.iy, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i92 = add nuw nsw i64 %indvars.iv.i.i.i.i.i91, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i84, i64 %indvars.iv.next.i.i.i.i.i92
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.next.i.i.i.i.i92
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !68
  store float %i.jd, ptr %i.jb, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i92.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i91, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i84, i64 %indvars.iv.next.i.i.i.i.i92.1
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.next.i.i.i.i.i92.1
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !68
  store float %i.jg, ptr %i.je, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i92.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i91, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i84, i64 %indvars.iv.next.i.i.i.i.i92.2
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.next.i.i.i.i.i92.2
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !68
  store float %i.jj, ptr %i.jh, align 4, !tbaa !68
  %indvars.iv.next.i.i.i.i.i92.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i91, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i93.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i92.3, %wide.trip.count.i.i.i.i.i90
  br i1 %exitcond.not.i.i.i.i.i93.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87, label %scalar.ph205, !llvm.loop !493

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i85: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i83
  %.not.i5.i.i.i.i86 = icmp eq ptr %i.il, null
  br i1 %.not.i5.i.i.i.i86, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i88, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87: ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block214, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i85
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jl = load i8, ptr %i.jk, align 8, !tbaa !350, !range !34, !noundef !46
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.q, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i88

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.il)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i88

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i88: ; preds = %bb.q, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i87, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i85
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.jn, align 8, !tbaa !350
  store ptr %.0.i.i.i.i.i84, ptr %i.ik, align 8, !tbaa !417
  store i32 %i.hy, ptr %i.ic, align 8, !tbaa !418
  br label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i88, %..lr.ph.i_crit_edge.i.i75
  %i.jo = phi ptr [ %.pre.i.i77, %..lr.ph.i_crit_edge.i.i75 ], [ %.0.i.i.i.i.i84, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i88 ] ; 2 uses
  %i.jp = sext i32 %i.ia to i64                   ; 2 uses
  %wide.trip.count.i.i.i79 = sext i32 %i.hy to i64
  %i.jq = shl nsw i64 %i.jp, 2
  %scevgep.i.i80 = getelementptr i8, ptr %i.jo, i64 %i.jq
  %i.jr = sub nsw i64 %wide.trip.count.i.i.i79, %i.jp
  %i.js = shl nsw i64 %i.jr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i80, i8 0, i64 %i.js, i1 false), !tbaa !68
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i69

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i69: ; preds = %.lr.ph.i.i.i78, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i66
  %i.jt = phi ptr [ %.pre10.i.i68, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i66 ], [ %i.jo, %.lr.ph.i.i.i78 ] ; 7 uses
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !351
  %i.ju = icmp sgt i32 %i.hy, 0
  br i1 %i.ju, label %.lr.ph.i4.i.i70, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94

.lr.ph.i4.i.i70:                                  ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i69
  %i.jv = ptrtoaddr ptr %i.jt to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !417 ; 7 uses
  %wide.trip.count.i5.i.i71 = zext nneg i32 %i.hy to i64 ; 5 uses
  %min.iters.check220 = icmp ult i32 %i.hy, 8
  %i.jy = ptrtoaddr ptr %i.jx to i64
  %i.jz = sub i64 %i.jy, %i.jv
  %diff.check218 = icmp ugt i64 %i.jz, -32
  %or.cond241 = select i1 %min.iters.check220, i1 true, i1 %diff.check218
  br i1 %or.cond241, label %scalar.ph219.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.i4.i.i70
  %n.vec222 = and i64 %wide.trip.count.i5.i.i71, 2147483640 ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next227, %vector.body223 ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %index224 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index224 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load225 = load <4 x float>, ptr %i.kb, align 4, !tbaa !68
  %wide.load226 = load <4 x float>, ptr %i.kc, align 4, !tbaa !68
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <4 x float> %wide.load225, ptr %i.ka, align 4, !tbaa !68
  store <4 x float> %wide.load226, ptr %i.kd, align 4, !tbaa !68
  %index.next227 = add nuw i64 %index224, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.ke, label %middle.block228, label %vector.body223, !llvm.loop !494

middle.block228:                                  ; preds = %vector.body223
  %cmp.n229 = icmp eq i64 %n.vec222, %wide.trip.count.i5.i.i71
  br i1 %cmp.n229, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94, label %scalar.ph219.preheader

scalar.ph219.preheader:                           ; preds = %.lr.ph.i4.i.i70, %middle.block228
  %indvars.iv.i6.i.i72.ph = phi i64 [ 0, %.lr.ph.i4.i.i70 ], [ %n.vec222, %middle.block228 ] ; 3 uses
  %xtraiter260 = and i64 %wide.trip.count.i5.i.i71, 3 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol

scalar.ph219.prol:                                ; preds = %scalar.ph219.preheader, %scalar.ph219.prol
  %indvars.iv.i6.i.i72.prol = phi i64 [ %indvars.iv.next.i7.i.i73.prol, %scalar.ph219.prol ], [ %indvars.iv.i6.i.i72.ph, %scalar.ph219.preheader ] ; 3 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %scalar.ph219.prol ], [ 0, %scalar.ph219.preheader ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i6.i.i72.prol
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.i6.i.i72.prol
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !68
  store float %i.kh, ptr %i.kf, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i73.prol = add nuw nsw i64 %indvars.iv.i6.i.i72.prol, 1 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol, !llvm.loop !495

scalar.ph219.prol.loopexit:                       ; preds = %scalar.ph219.prol, %scalar.ph219.preheader
  %indvars.iv.i6.i.i72.unr = phi i64 [ %indvars.iv.i6.i.i72.ph, %scalar.ph219.preheader ], [ %indvars.iv.next.i7.i.i73.prol, %scalar.ph219.prol ]
  %i.ki = sub nsw i64 %indvars.iv.i6.i.i72.ph, %wide.trip.count.i5.i.i71
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94, label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219
  %indvars.iv.i6.i.i72 = phi i64 [ %indvars.iv.next.i7.i.i73.3, %scalar.ph219 ], [ %indvars.iv.i6.i.i72.unr, %scalar.ph219.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i6.i.i72
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.i6.i.i72
  %i.km = load float, ptr %i.kl, align 4, !tbaa !68
  store float %i.km, ptr %i.kk, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i73 = add nuw nsw i64 %indvars.iv.i6.i.i72, 1 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i7.i.i73
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next.i7.i.i73
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !68
  store float %i.kp, ptr %i.kn, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i73.1 = add nuw nsw i64 %indvars.iv.i6.i.i72, 2 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i7.i.i73.1
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next.i7.i.i73.1
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !68
  store float %i.ks, ptr %i.kq, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i73.2 = add nuw nsw i64 %indvars.iv.i6.i.i72, 3 ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i7.i.i73.2
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next.i7.i.i73.2
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !68
  store float %i.kv, ptr %i.kt, align 4, !tbaa !68
  %indvars.iv.next.i7.i.i73.3 = add nuw nsw i64 %indvars.iv.i6.i.i72, 4 ; 2 uses
  %exitcond.not.i8.i.i74.3 = icmp eq i64 %indvars.iv.next.i7.i.i73.3, %wide.trip.count.i5.i.i71
  br i1 %exitcond.not.i8.i.i74.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94, label %scalar.ph219, !llvm.loop !496

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94:      ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219, %middle.block228, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i69
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !32 ; 10 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !32 ; 2 uses
  %i.la = icmp sgt i32 %i.kx, %i.kz
  br i1 %i.la, label %bb.r, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i

bb.r:                                             ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !33
  %i.ld = icmp slt i32 %i.lc, %i.kx
  br i1 %i.ld, label %bb.s, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i100 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i.i.i.i100, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.le = sext i32 %i.kx to i64
  %i.lf = shl nsw i64 %i.le, 4
  %i.lg = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.lf, i32 noundef 16)
  %.pre.i.i.i101 = load i32, ptr %i.ky, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.lh = phi i32 [ %.pre.i.i.i101, %bb.t ], [ %i.kz, %bb.s ] ; 4 uses
  %.0.i.i.i.i.i102 = phi ptr [ %i.lg, %bb.t ], [ null, %bb.s ] ; 4 uses
  %i.li = icmp sgt i32 %i.lh, 0
  br i1 %i.li, label %.lr.ph.i.i.i.i.i104, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i104:                              ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %wide.trip.count.i.i.i.i.i105 = zext nneg i32 %i.lh to i64 ; 2 uses
  %xtraiter263 = and i64 %wide.trip.count.i.i.i.i.i105, 1
  %i.lk = icmp eq i32 %i.lh, 1
  br i1 %i.lk, label %.epil.preheader, label %.lr.ph.i.i.i.i.i104.new

.lr.ph.i.i.i.i.i104.new:                          ; preds = %.lr.ph.i.i.i.i.i104
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i105, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i104.new
  %indvars.iv.i.i.i.i.i106 = phi i64 [ 0, %.lr.ph.i.i.i.i.i104.new ], [ %indvars.iv.next.i.i.i.i.i107.1, %bb.u ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i104.new ], [ %niter.next.1, %bb.u ]
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i102, i64 %indvars.iv.i.i.i.i.i106
  %i.lm = load ptr, ptr %i.lj, align 8, !tbaa !31
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %indvars.iv.i.i.i.i.i106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ll, ptr noundef nonnull align 4 dereferenceable(16) %i.ln, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i.i107 = or disjoint i64 %indvars.iv.i.i.i.i.i106, 1 ; 2 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i102, i64 %indvars.iv.next.i.i.i.i.i107
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !31
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i.i.i.i107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lo, ptr noundef nonnull align 4 dereferenceable(16) %i.lq, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i.i107.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i106, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !52

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.u
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i104
  %indvars.iv.i.i.i.i.i106.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i104 ], [ %indvars.iv.next.i.i.i.i.i107.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod265 = trunc i32 %i.lh to i1
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i102, i64 %indvars.iv.i.i.i.i.i106.epil.init
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !31
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.ls, i64 %indvars.iv.i.i.i.i.i106.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lr, ptr noundef nonnull align 4 dereferenceable(16) %i.lt, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !31 ; 2 uses
  %.not.i5.i.i.i.i103 = icmp eq ptr %i.lv, null
  br i1 %.not.i5.i.i.i.i103, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lx = load i8, ptr %i.lw, align 8, !tbaa !30, !range !34, !noundef !46
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.w, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lv)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.lz, align 8, !tbaa !30
  store ptr %.0.i.i.i.i.i102, ptr %i.lu, align 8, !tbaa !31
  store i32 %i.kx, ptr %i.lb, align 8, !tbaa !33
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i, %bb.r, %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !32
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !31 ; 3 uses
  %i.mc = icmp sgt i32 %i.kx, 0
  br i1 %i.mc, label %.lr.ph.i4.i.i95, label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit

.lr.ph.i4.i.i95:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %wide.trip.count.i5.i.i96 = zext nneg i32 %i.kx to i64 ; 2 uses
  %xtraiter267 = and i64 %wide.trip.count.i5.i.i96, 1
  %i.me = icmp eq i32 %i.kx, 1
end_hunk_3
