Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSequentialImpulseConstraintSolverMt?download=true
inline.NumInlined: 542
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN37btSequentialImpulseConstraintSolverMt26allocAllContactConstraintsEPP20btPersistentManifoldiRK19btContactSolverInfo:bb.a
  %.041152 = phi i32 [ 0, %.lr.ph156 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv161 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %.041152, ptr %i.q, align 4, !tbaa !132
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %.040153, ptr %i.r, align 8, !tbaa !131
  %i.s = load i32, ptr %i.p, align 8, !tbaa !127  ; 4 uses
  %i.t = add nsw i32 %i.s, %.041152               ; 2 uses
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.w = icmp ult i32 %i.s, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.1150.epil.init = phi i32 [ %.040153, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod210 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %.1150.epil = phi i32 [ %.1150.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.epil
  %i.y = load i8, ptr %i.x, align 1, !tbaa !130, !range !72, !noundef !93
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = add nsw i32 %.1150.epil, 3
  %spec.select.epil = select i1 %i.z, i32 %i.aa, i32 %.1150.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !249

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.g
  %.1.lcssa = phi i32 [ %.040153, %bb.g ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.h ] ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge157, label %bb.g, !llvm.loop !250

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.i ] ; 5 uses
  %.1150 = phi i32 [ %.040153, %.lr.ph.new ], [ %spec.select.3, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !130, !range !72, !noundef !93
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = add nsw i32 %.1150, 3
  %spec.select = select i1 %i.ad, i32 %i.ae, i32 %.1150 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !130, !range !72, !noundef !93
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = add nsw i32 %spec.select, 3
  %spec.select.1 = select i1 %i.ai, i32 %i.aj, i32 %spec.select ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !130, !range !72, !noundef !93
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = add nsw i32 %spec.select.1, 3
  %spec.select.2 = select i1 %i.an, i32 %i.ao, i32 %spec.select.1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !130, !range !72, !noundef !93
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = add nsw i32 %spec.select.2, 3
  %spec.select.3 = select i1 %i.as, i32 %i.at, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !251

bb.j:                                             ; preds = %._crit_edge157
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !139 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.041.lcssa
  br i1 %i.aw, label %bb.k, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit95

bb.k:                                             ; preds = %bb.j
  %i.ax = sdiv i32 %.041.lcssa, 16                ; 2 uses
  %i.ay = add nsw i32 %i.ax, %.041.lcssa          ; 9 uses
  %i.az = icmp slt i32 %i.av, %i.ay
  br i1 %i.az, label %bb.l, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = sext i32 %i.ay to i64
  %i.bb = mul nsw i64 %i.ba, 160
  %i.bc = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bb, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i unwind label %bb.af

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ null, %bb.l ], [ %i.bc, %bb.m ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !94 ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.be to i64 ; 2 uses
  %xtraiter212 = and i64 %wide.trip.count.i.i, 1
  %i.bh = icmp eq i32 %i.be, 1
  br i1 %i.bh, label %.epil.preheader211, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter216 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.n ] ; 4 uses
  %niter217 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter217.next.1, %bb.n ]
  %i.bi = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw [160 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bi, ptr noundef nonnull align 8 dereferenceable(160) %i.bk, i64 160, i1 false), !tbaa.struct !140
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw [160 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bl, ptr noundef nonnull align 8 dereferenceable(160) %i.bn, i64 160, i1 false), !tbaa.struct !140
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter217.next.1 = add i64 %niter217, 2         ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !1

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod214.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i, label %.epil.preheader211

.epil.preheader211:                               ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %i.be to i1
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.bo = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.epil.init
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw [160 x i8], ptr %i.bp, i64 %indvars.iv.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bo, ptr noundef nonnull align 8 dereferenceable(160) %i.bq, i64 160, i1 false), !tbaa.struct !140
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader211, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !76 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.bs, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !141, !range !72, !noundef !93
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.p, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bs)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i unwind label %bb.af

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i: ; preds = %bb.p, %bb.o, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.bw, align 8, !tbaa !141
  store ptr %.0.i.i, ptr %i.br, align 8, !tbaa !76
  store i32 %i.ay, ptr %i.au, align 8, !tbaa !139
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit

_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !33
  %i.bz = icmp slt i32 %i.by, %i.ay
  br i1 %i.bz, label %bb.q, label %_ZN20btAlignedObjectArrayIiE7reserveEi.exit

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit
  %.not.i.i58 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i58, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = sext i32 %i.ay to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %i.cc = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cb, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i unwind label %bb.af

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i:   ; preds = %bb.r, %bb.q
  %.0.i.i59 = phi ptr [ null, %bb.q ], [ %i.cc, %bb.r ] ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31 ; 9 uses
  br i1 %i.cf, label %.lr.ph.i.i61, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i

.lr.ph.i.i61:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %.0.i.i59191 = ptrtoaddr ptr %.0.i.i59 to i64
  %wide.trip.count.i.i62 = zext nneg i32 %i.ce to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ce, 8
  %i.cj = sub i64 %i.ci, %.0.i.i59191
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i61
  %n.vec = and i64 %wide.trip.count.i.i62, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i59, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !75
  %wide.load192 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !75
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !75
  store <4 x i32> %wide.load192, ptr %i.cn, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i62
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i61, %middle.block
  %indvars.iv.i.i63.ph = phi i64 [ 0, %.lr.ph.i.i61 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter218 = and i64 %wide.trip.count.i.i62, 3 ; 2 uses
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i63.prol = phi i64 [ %indvars.iv.next.i.i64.prol, %scalar.ph.prol ], [ %indvars.iv.i.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i59, i64 %indvars.iv.i.i63.prol
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i63.prol
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !75
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !75
  %indvars.iv.next.i.i64.prol = add nuw nsw i64 %indvars.iv.i.i63.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter218
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !253

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i63.unr = phi i64 [ %indvars.iv.i.i63.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i64.prol, %scalar.ph.prol ]
  %i.cs = sub nsw i64 %indvars.iv.i.i63.ph, %wide.trip.count.i.i62
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i63 = phi i64 [ %indvars.iv.next.i.i64.3, %scalar.ph ], [ %indvars.iv.i.i63.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i59, i64 %indvars.iv.i.i63
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i63
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !75
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !75
  %indvars.iv.next.i.i64 = add nuw nsw i64 %indvars.iv.i.i63, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i59, i64 %indvars.iv.next.i.i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i64
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !75
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !75
  %indvars.iv.next.i.i64.1 = add nuw nsw i64 %indvars.iv.i.i63, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i59, i64 %indvars.iv.next.i.i64.1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i64.1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !75
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !75
  %indvars.iv.next.i.i64.2 = add nuw nsw i64 %indvars.iv.i.i63, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i59, i64 %indvars.iv.next.i.i64.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i64.2
  %i.df = load i32, ptr %i.de, align 4, !tbaa !75
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !75
  %indvars.iv.next.i.i64.3 = add nuw nsw i64 %indvars.iv.i.i63, 4 ; 2 uses
  %exitcond.not.i.i65.3 = icmp eq i64 %indvars.iv.next.i.i64.3, %wide.trip.count.i.i62
  br i1 %exitcond.not.i.i65.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph, !llvm.loop !254

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i:   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i
  %.not.i5.i60 = icmp eq ptr %i.ch, null
  br i1 %.not.i5.i60, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !30, !range !72, !noundef !93
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.s, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i unwind label %bb.af

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 1, ptr %i.dj, align 8, !tbaa !30
  store ptr %.0.i.i59, ptr %i.cg, align 8, !tbaa !31
  store i32 %i.ay, ptr %i.bx, align 8, !tbaa !33
  br label %_ZN20btAlignedObjectArrayIiE7reserveEi.exit

_ZN20btAlignedObjectArrayIiE7reserveEi.exit:      ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i, %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !69
  %i.dm = mul nsw i32 %i.dl, %i.ay                ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !139
  %i.dp = icmp slt i32 %i.do, %i.dm
  br i1 %i.dp, label %bb.t, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit81

bb.t:                                             ; preds = %_ZN20btAlignedObjectArrayIiE7reserveEi.exit
  %.not.i.i68 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i68, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i69, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = sext i32 %i.dm to i64
  %i.dr = mul nsw i64 %i.dq, 160
  %i.ds = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dr, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i69 unwind label %bb.af

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i69: ; preds = %bb.u, %bb.t
  %.0.i.i70 = phi ptr [ null, %bb.t ], [ %i.ds, %bb.u ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !94 ; 4 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i74, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71

.lr.ph.i.i74:                                     ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i69
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %wide.trip.count.i.i75 = zext nneg i32 %i.du to i64 ; 2 uses
  %xtraiter221 = and i64 %wide.trip.count.i.i75, 1
  %i.dx = icmp eq i32 %i.du, 1
  br i1 %i.dx, label %.epil.preheader220, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74
  %unroll_iter225 = and i64 %wide.trip.count.i.i75, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i74.new
  %indvars.iv.i.i76 = phi i64 [ 0, %.lr.ph.i.i74.new ], [ %indvars.iv.next.i.i77.1, %bb.v ] ; 4 uses
  %niter226 = phi i64 [ 0, %.lr.ph.i.i74.new ], [ %niter226.next.1, %bb.v ]
  %i.dy = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i70, i64 %indvars.iv.i.i76
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !76
  %i.ea = getelementptr inbounds nuw [160 x i8], ptr %i.dz, i64 %indvars.iv.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.dy, ptr noundef nonnull align 8 dereferenceable(160) %i.ea, i64 160, i1 false), !tbaa.struct !140
  %indvars.iv.next.i.i77 = or disjoint i64 %indvars.iv.i.i76, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i70, i64 %indvars.iv.next.i.i77
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !76
  %i.ed = getelementptr inbounds nuw [160 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.eb, ptr noundef nonnull align 8 dereferenceable(160) %i.ed, i64 160, i1 false), !tbaa.struct !140
  %indvars.iv.next.i.i77.1 = add nuw nsw i64 %indvars.iv.i.i76, 2 ; 2 uses
  %niter226.next.1 = add i64 %niter226, 2         ; 2 uses
  %niter226.ncmp.1 = icmp eq i64 %niter226.next.1, %unroll_iter225
  br i1 %niter226.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71.loopexit.unr-lcssa, label %bb.v, !llvm.loop !1

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71.loopexit.unr-lcssa: ; preds = %bb.v
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71, label %.epil.preheader220

.epil.preheader220:                               ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71.loopexit.unr-lcssa, %.lr.ph.i.i74
  %indvars.iv.i.i76.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %indvars.iv.next.i.i77.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i32 %i.du to i1
  call void @llvm.assume(i1 %lcmp.mod224)
  %i.ee = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i70, i64 %indvars.iv.i.i76.epil.init
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !76
  %i.eg = getelementptr inbounds nuw [160 x i8], ptr %i.ef, i64 %indvars.iv.i.i76.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ee, ptr noundef nonnull align 8 dereferenceable(160) %i.eg, i64 160, i1 false), !tbaa.struct !140
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71: ; preds = %.epil.preheader220, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i69
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !76 ; 2 uses
  %.not.i5.i72 = icmp eq ptr %i.ei, null
  br i1 %.not.i5.i72, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i73, label %bb.w

bb.w:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !141, !range !72, !noundef !93
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.x, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i73

bb.x:                                             ; preds = %bb.w
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ei)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i73 unwind label %bb.af

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i73: ; preds = %bb.x, %bb.w, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i71
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.em, align 8, !tbaa !141
  store ptr %.0.i.i70, ptr %i.eh, align 8, !tbaa !76
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !139
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit81

_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit81: ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i73, %_ZN20btAlignedObjectArrayIiE7reserveEi.exit
  %i.en = add nsw i32 %.040.lcssa, %i.ax          ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !139
  %i.eq = icmp slt i32 %i.ep, %i.en
  br i1 %i.eq, label %bb.y, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit95

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit81
  %.not.i.i82 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i82, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i83, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = sext i32 %i.en to i64
  %i.es = mul nsw i64 %i.er, 160
  %i.et = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.es, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i83 unwind label %bb.af

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i83: ; preds = %bb.z, %bb.y
  %.0.i.i84 = phi ptr [ null, %bb.y ], [ %i.et, %bb.z ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !94 ; 4 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i.i88, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85

.lr.ph.i.i88:                                     ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i83
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %wide.trip.count.i.i89 = zext nneg i32 %i.ev to i64 ; 2 uses
  %xtraiter228 = and i64 %wide.trip.count.i.i89, 1
  %i.ey = icmp eq i32 %i.ev, 1
  br i1 %i.ey, label %.epil.preheader227, label %.lr.ph.i.i88.new

.lr.ph.i.i88.new:                                 ; preds = %.lr.ph.i.i88
  %unroll_iter232 = and i64 %wide.trip.count.i.i89, 2147483646
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i88.new
  %indvars.iv.i.i90 = phi i64 [ 0, %.lr.ph.i.i88.new ], [ %indvars.iv.next.i.i91.1, %bb.aa ] ; 4 uses
  %niter233 = phi i64 [ 0, %.lr.ph.i.i88.new ], [ %niter233.next.1, %bb.aa ]
  %i.ez = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i84, i64 %indvars.iv.i.i90
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !76
  %i.fb = getelementptr inbounds nuw [160 x i8], ptr %i.fa, i64 %indvars.iv.i.i90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ez, ptr noundef nonnull align 8 dereferenceable(160) %i.fb, i64 160, i1 false), !tbaa.struct !140
  %indvars.iv.next.i.i91 = or disjoint i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i84, i64 %indvars.iv.next.i.i91
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !76
  %i.fe = getelementptr inbounds nuw [160 x i8], ptr %i.fd, i64 %indvars.iv.next.i.i91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.fc, ptr noundef nonnull align 8 dereferenceable(160) %i.fe, i64 160, i1 false), !tbaa.struct !140
  %indvars.iv.next.i.i91.1 = add nuw nsw i64 %indvars.iv.i.i90, 2 ; 2 uses
  %niter233.next.1 = add i64 %niter233, 2         ; 2 uses
  %niter233.ncmp.1 = icmp eq i64 %niter233.next.1, %unroll_iter232
  br i1 %niter233.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !1

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85.loopexit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod230.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85, label %.epil.preheader227

.epil.preheader227:                               ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85.loopexit.unr-lcssa, %.lr.ph.i.i88
  %indvars.iv.i.i90.epil.init = phi i64 [ 0, %.lr.ph.i.i88 ], [ %indvars.iv.next.i.i91.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i32 %i.ev to i1
  call void @llvm.assume(i1 %lcmp.mod231)
  %i.ff = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i84, i64 %indvars.iv.i.i90.epil.init
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !76
  %i.fh = getelementptr inbounds nuw [160 x i8], ptr %i.fg, i64 %indvars.iv.i.i90.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ff, ptr noundef nonnull align 8 dereferenceable(160) %i.fh, i64 160, i1 false), !tbaa.struct !140
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85: ; preds = %.epil.preheader227, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i83
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !76 ; 2 uses
  %.not.i5.i86 = icmp eq ptr %i.fj, null
  br i1 %.not.i5.i86, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i87, label %bb.ab

bb.ab:                                            ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !141, !range !72, !noundef !93
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ac, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i87

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fj)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i87 unwind label %bb.af

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i87: ; preds = %bb.ac, %bb.ab, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i85
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.fn, align 8, !tbaa !141
  store ptr %.0.i.i84, ptr %i.fi, align 8, !tbaa !76
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !139
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE7reserveEi.exit95

bb.ad:                                            ; preds = %._crit_edge157
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ae:                                            ; preds = %bb.be, %bb.bb, %bb.ax, %bb.au, %bb.aq, %bb.ap, %bb.al, %bb.ai
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.af:                                            ; preds = %bb.ac, %bb.z, %bb.x, %bb.u, %bb.s, %bb.r, %bb.p, %bb.m
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj
end_hunk_0
