Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyMLCPConstraintSolver?download=true
inline.NumInlined: 604
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo:bb.a
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i.i.i490
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !41
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !41
  %indvars.iv.next.i.i.i490.1 = add nuw nsw i64 %indvars.iv.i.i.i489, 2 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i.i.i490.1
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i.i.i490.1
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !41
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !41
  %indvars.iv.next.i.i.i490.2 = add nuw nsw i64 %indvars.iv.i.i.i489, 3 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i.i.i490.2
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i.i.i490.2
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !41
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !41
  %indvars.iv.next.i.i.i490.3 = add nuw nsw i64 %indvars.iv.i.i.i489, 4 ; 2 uses
  %exitcond.not.i.i.i491.3 = icmp eq i64 %indvars.iv.next.i.i.i490.3, %wide.trip.count.i.i.i488
  br i1 %exitcond.not.i.i.i491.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i485, label %scalar.ph1027, !llvm.loop !167

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i483: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i481
  %.not.i5.i.i484 = icmp eq ptr %i.kh, null
  br i1 %.not.i5.i.i484, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i486, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i485

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i485: ; preds = %scalar.ph1027.prol.loopexit, %scalar.ph1027, %middle.block1036, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i483
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.li = load i8, ptr %i.lh, align 8, !tbaa !48, !range !31, !noundef !32
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.ai, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i486

bb.ai:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i485
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.kh)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i486 unwind label %bb.ax

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i486: ; preds = %bb.ai, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i485, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i483
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store i8 1, ptr %i.lk, align 8, !tbaa !48
  store ptr %i.ke, ptr %i.kg, align 8, !tbaa !47
  store i32 %i.jx, ptr %i.jz, align 8, !tbaa !46
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i486, %bb.ag, %.loopexit740
  store i32 %i.jx, ptr %i.jh, align 4, !tbaa !45
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull @.str.7)
          to label %.preheader739 unwind label %bb.ba

.preheader739:                                    ; preds = %bb.aj
  %i.ll = load i32, ptr %i.a, align 4, !tbaa !17
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph787, label %._crit_edge788

.lr.ph787:                                        ; preds = %.preheader739
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1436 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1524 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  br label %bb.bb

._crit_edge788:                                   ; preds = %.loopexit737, %.preheader739
  %.sroa.22672.0.lcssa = phi ptr [ %.sroa.22672.6, %.preheader739 ], [ %.sroa.22672.2, %.loopexit737 ] ; 9 uses
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.ly = load i32, ptr %i.iv, align 4, !tbaa !21
  %.not.i494 = icmp eq i32 %i.ly, 0
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = select i1 %.not.i494, ptr null, ptr %i.ma ; 4 uses
  %i.mc = load i32, ptr %i.jb, align 4, !tbaa !21
  %.not.i495 = icmp eq i32 %i.mc, 0
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = select i1 %.not.i495, ptr null, ptr %i.me ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull @.str.8)
          to label %bb.bv unwind label %bb.ca

bb.ak:                                            ; preds = %._crit_edge749
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit657.thread

bb.al:                                            ; preds = %bb.u
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  br label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit657.thread

_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit657.thread: ; preds = %bb.ak, %bb.al
  %.pn = phi { ptr, i32 } [ %i.mh, %bb.al ], [ %i.mg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit660

bb.am:                                            ; preds = %.loopexit741
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.w
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn332 = phi { ptr, i32 } [ %i.mj, %bb.an ], [ %i.mi, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit657

bb.ap:                                            ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1E7reserveEi.exit
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.x
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn334 = phi { ptr, i32 } [ %i.ml, %bb.aq ], [ %i.mk, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ed

bb.as:                                            ; preds = %bb.y
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn336 = phi { ptr, i32 } [ %i.mn, %bb.at ], [ %i.mm, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.ed

bb.av:                                            ; preds = %bb.ac
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %bb.af
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ai, %bb.ah
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn338 = phi { ptr, i32 } [ %i.mq, %bb.ax ], [ %i.mp, %bb.aw ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn338.pn = phi { ptr, i32 } [ %.pn338, %bb.ay ], [ %i.mo, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.ed

bb.ba:                                            ; preds = %bb.aj
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bb:                                            ; preds = %.lr.ph787, %.loopexit737
  %indvars.iv874 = phi i64 [ 0, %.lr.ph787 ], [ %indvars.iv.next875, %.loopexit737 ] ; 5 uses
  %.0285784 = phi i32 [ 0, %.lr.ph787 ], [ %i.wj, %.loopexit737 ] ; 5 uses
  %.0287782 = phi i32 [ 0, %.lr.ph787 ], [ %i.wi, %.loopexit737 ] ; 2 uses
  %.0288781 = phi i32 [ 0, %.lr.ph787 ], [ %.4, %.loopexit737 ] ; 3 uses
  %.sroa.3.0780 = phi i32 [ 0, %.lr.ph787 ], [ %.sroa.3.2, %.loopexit737 ] ; 13 uses
  %.sroa.15.0779 = phi i32 [ %.sroa.15.3, %.lr.ph787 ], [ %.sroa.15.2, %.loopexit737 ] ; 3 uses
  %.sroa.22672.0778 = phi ptr [ %.sroa.22672.6, %.lr.ph787 ], [ %.sroa.22672.2, %.loopexit737 ] ; 9 uses
  %i.ms = load ptr, ptr %i.ln, align 8, !tbaa !47
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %indvars.iv874
  store i32 %.0287782, ptr %i.mt, align 4, !tbaa !41
  %i.mu = load ptr, ptr %i.lo, align 8, !tbaa !33
  %i.mv = sext i32 %.0285784 to i64               ; 3 uses
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mu, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !35 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 152
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !49 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 156
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !50 ; 2 uses
  %i.nc = load ptr, ptr %i.lp, align 8, !tbaa !51 ; 2 uses
  %i.nd = sext i32 %i.mz to i64                   ; 2 uses
  %i.ne = getelementptr inbounds [248 x i8], ptr %i.nc, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 240
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !56 ; 10 uses
  %i.nh = sext i32 %i.nb to i64                   ; 2 uses
  %i.ni = getelementptr inbounds [248 x i8], ptr %i.nc, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 240
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !56 ; 11 uses
  %i.nl = load i32, ptr %i.lq, align 4, !tbaa !59
  %i.nm = icmp slt i32 %.0285784, %i.nl
  br i1 %i.nm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.nn = load ptr, ptr %i.lr, align 8, !tbaa !203
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv874
  %i.np = load i32, ptr %i.no, align 4, !tbaa !205
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.nq = phi i32 [ %i.np, %bb.bc ], [ 1, %bb.bb ] ; 10 uses
  %.not361 = icmp eq ptr %i.ng, null              ; 2 uses
  br i1 %.not361, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nr = icmp eq i32 %.sroa.3.0780, %.sroa.15.0779
  br i1 %i.nr, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %.not.i.i496 = icmp eq i32 %.sroa.3.0780, 0
  %i.ns = shl nuw nsw i32 %.sroa.3.0780, 1
  %i.nt = select i1 %.not.i.i496, i32 1, i32 %i.ns ; 4 uses
  %i.nu = icmp slt i32 %.sroa.3.0780, %i.nt
  br i1 %i.nu, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.nv = zext nneg i32 %i.nt to i64
  %i.nw = shl nuw nsw i64 %i.nv, 4
  %i.nx = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.nw, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i unwind label %bb.bj ; 5 uses

_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i: ; preds = %bb.bg
  %i.ny = icmp sgt i32 %.sroa.3.0780, 0
  br i1 %i.ny, label %.lr.ph.i.i.i501, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i501:                                  ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i502 = zext nneg i32 %.sroa.3.0780 to i64 ; 2 uses
  %xtraiter1141 = and i64 %wide.trip.count.i.i.i502, 1
  %i.nz = icmp eq i32 %.sroa.3.0780, 1
  br i1 %i.nz, label %.epil.preheader1140, label %.lr.ph.i.i.i501.new

.lr.ph.i.i.i501.new:                              ; preds = %.lr.ph.i.i.i501
  %unroll_iter1144 = and i64 %wide.trip.count.i.i.i502, 2147483646
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i.i501.new
  %indvars.iv.i.i.i503 = phi i64 [ 0, %.lr.ph.i.i.i501.new ], [ %indvars.iv.next.i.i.i504.1, %bb.bh ] ; 4 uses
  %niter1145 = phi i64 [ 0, %.lr.ph.i.i.i501.new ], [ %niter1145.next.1, %bb.bh ]
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i503
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.0778, i64 %indvars.iv.i.i.i503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oa, ptr noundef nonnull align 4 dereferenceable(16) %i.ob, i64 16, i1 false), !tbaa.struct !206
  %indvars.iv.next.i.i.i504 = or disjoint i64 %indvars.iv.i.i.i503, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i504
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.0778, i64 %indvars.iv.next.i.i.i504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oc, ptr noundef nonnull align 4 dereferenceable(16) %i.od, i64 16, i1 false), !tbaa.struct !206
  %indvars.iv.next.i.i.i504.1 = add nuw nsw i64 %indvars.iv.i.i.i503, 2 ; 2 uses
  %niter1145.next.1 = add i64 %niter1145, 2       ; 2 uses
  %niter1145.ncmp.1 = icmp eq i64 %niter1145.next.1, %unroll_iter1144
  br i1 %niter1145.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !168

_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i
  %.not.i5.i.i500.not = icmp eq ptr %.sroa.22672.0778, null
  br i1 %.not.i5.i.i500.not, label %bb.bi, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread

_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa: ; preds = %bb.bh
  %lcmp.mod1142.not = icmp eq i64 %xtraiter1141, 0
  br i1 %lcmp.mod1142.not, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread, label %.epil.preheader1140

.epil.preheader1140:                              ; preds = %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i501
  %indvars.iv.i.i.i503.epil.init = phi i64 [ 0, %.lr.ph.i.i.i501 ], [ %indvars.iv.next.i.i.i504.1, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1143 = trunc i32 %.sroa.3.0780 to i1
  call void @llvm.assume(i1 %lcmp.mod1143)
  %i.oe = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i503.epil.init
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.0778, i64 %indvars.iv.i.i.i503.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oe, ptr noundef nonnull align 4 dereferenceable(16) %i.of, i64 16, i1 false), !tbaa.struct !206
  br label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread

_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread: ; preds = %.epil.preheader1140, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.22672.0778)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.be, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i
  %.sroa.22672.7 = phi ptr [ %.sroa.22672.0778, %bb.be ], [ %.sroa.22672.0778, %bb.bf ], [ %i.nx, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread ], [ %i.nx, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i ] ; 3 uses
  %.sroa.15.4 = phi i32 [ %.sroa.15.0779, %bb.be ], [ %.sroa.3.0780, %bb.bf ], [ %i.nt, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread ], [ %i.nt, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i ] ; 2 uses
  %i.og = add nsw i32 %.sroa.3.0780, 1            ; 2 uses
  %i.oh = sext i32 %.sroa.3.0780 to i64
  %i.oi = getelementptr inbounds [16 x i8], ptr %.sroa.22672.7, i64 %i.oh ; 5 uses
  store <4 x i32> zeroinitializer, ptr %i.oi, align 4, !tbaa !41
  %i.oj = getelementptr inbounds [4 x i8], ptr %.sroa.10706.2, i64 %i.nd ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !41
  store i32 %.sroa.3.0780, ptr %i.oj, align 4, !tbaa !41
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !208
  %i.om = trunc nuw nsw i64 %indvars.iv874 to i32
  store i32 %i.om, ptr %i.oi, align 4, !tbaa !209
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 %.0285784, ptr %i.on, align 4, !tbaa !210
  %.not362 = icmp eq ptr %i.nk, null
  %i.oo = select i1 %.not362, i32 -1, i32 %i.nb
  %i.op = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !211
  %i.oq = icmp sgt i32 %i.nq, 0
  br i1 %i.oq, label %.lr.ph756, label %.loopexit738

.lr.ph756:                                        ; preds = %bb.bi
  %i.or = load ptr, ptr %i.lo, align 8, !tbaa !33
  %i.os = getelementptr inbounds nuw i8, ptr %i.ng, i64 452
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ng, i64 372
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ng, i64 388
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ng, i64 404
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ng, i64 376
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ng, i64 392
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ng, i64 408
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ng, i64 380
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ng, i64 412
  %i.pb = load i32, ptr %i.lt, align 4, !tbaa !67
  %i.pc = load ptr, ptr %i.lu, align 8, !tbaa !23 ; 6 uses
  %i.pd = load i32, ptr %i.lw, align 4, !tbaa !67
  %i.pe = load ptr, ptr %i.lx, align 8, !tbaa !23 ; 6 uses
  %.promoted757 = load i32, ptr %i.ls, align 8, !tbaa !68
  %.promoted = load i32, ptr %i.lv, align 8, !tbaa !68
  %i.pf = sext i32 %.0288781 to i64
  %i.pg = sext i32 %i.pd to i64
  %i.ph = sext i32 %i.pb to i64
  %wide.trip.count855 = zext nneg i32 %i.nq to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.or, i64 %i.mv
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i.thread, %bb.bg
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bk:                                            ; preds = %.lr.ph756, %bb.bk
  %indvars.iv850 = phi i64 [ %i.pf, %.lr.ph756 ], [ %indvars.iv.next851, %bb.bk ] ; 3 uses
  %indvars.iv848 = phi i64 [ 0, %.lr.ph756 ], [ %indvars.iv.next849, %bb.bk ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv848
  %i.pj = load ptr, ptr %gep, align 8, !tbaa !35  ; 9 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load float, ptr %i.os, align 4, !tbaa !80 ; 3 uses
  %i.pm = load float, ptr %i.pk, align 4, !tbaa !25 ; 2 uses
  %i.pn = fmul float %i.pl, %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 20
  %i.pp = load float, ptr %i.po, align 4, !tbaa !25
  %i.pq = fmul float %i.pl, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !25
  %i.pt = fmul float %i.pl, %i.ps
  %i.pu = load float, ptr %i.ot, align 4, !tbaa !25
  %i.pv = load float, ptr %i.pj, align 4, !tbaa !25 ; 3 uses
  %i.pw = load float, ptr %i.ou, align 4, !tbaa !25
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 4 ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !25 ; 2 uses
  %i.pz = fmul float %i.pw, %i.py
  %i.qa = call float @llvm.fmuladd.f32(float %i.pu, float %i.pv, float %i.pz)
  %i.qb = load float, ptr %i.ov, align 4, !tbaa !25
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !25 ; 3 uses
  %i.qe = call noundef float @llvm.fmuladd.f32(float %i.qb, float %i.qd, float %i.qa)
  %i.qf = load float, ptr %i.ow, align 4, !tbaa !25
  %19 = load float, ptr %i.oy, align 4, !tbaa !25
  %i.qg = load float, ptr %i.oz, align 4, !tbaa !25
  %20 = load <2 x float>, ptr %i.ox, align 4, !tbaa !25
  %21 = insertelement <2 x float> poison, float %i.py, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %22, %20                 ; 2 uses
  %24 = extractelement <2 x float> %23, i64 0
  %25 = call float @llvm.fmuladd.f32(float %i.qf, float %i.pv, float %24)
  %26 = call noundef float @llvm.fmuladd.f32(float %19, float %i.qd, float %25)
  %27 = extractelement <2 x float> %23, i64 1
  %i.qh = call float @llvm.fmuladd.f32(float %i.qg, float %i.pv, float %27)
  %i.qi = load float, ptr %i.pa, align 4, !tbaa !25
  %i.qj = call noundef float @llvm.fmuladd.f32(float %i.qi, float %i.qd, float %i.qh)
  %i.qk = mul nsw i64 %indvars.iv850, %i.ph       ; 6 uses
  %i.ql = mul nsw i64 %indvars.iv850, %i.pg       ; 6 uses
  %i.qm = getelementptr [4 x i8], ptr %i.pc, i64 %i.qk ; 3 uses
  store float %i.pm, ptr %i.qm, align 4, !tbaa !25
  %i.qn = load float, ptr %i.pj, align 4, !tbaa !25
  %i.qo = getelementptr [4 x i8], ptr %i.pc, i64 %i.qk
  %i.qp = getelementptr i8, ptr %i.qo, i64 16
  store float %i.qn, ptr %i.qp, align 4, !tbaa !25
  %i.qq = getelementptr [4 x i8], ptr %i.pe, i64 %i.ql ; 3 uses
  store float %i.pn, ptr %i.qq, align 4, !tbaa !25
  %i.qr = getelementptr [4 x i8], ptr %i.pe, i64 %i.ql
  %i.qs = getelementptr i8, ptr %i.qr, i64 16
  store float %i.qe, ptr %i.qs, align 4, !tbaa !25
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pj, i64 20
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !25
  %i.qv = getelementptr [4 x i8], ptr %i.pc, i64 %i.qk
  %i.qw = getelementptr i8, ptr %i.qv, i64 4
  store float %i.qu, ptr %i.qw, align 4, !tbaa !25
  %i.qx = load float, ptr %i.px, align 4, !tbaa !25
  %i.qy = getelementptr [4 x i8], ptr %i.pc, i64 %i.qk
  %i.qz = getelementptr i8, ptr %i.qy, i64 20
  store float %i.qx, ptr %i.qz, align 4, !tbaa !25
  %i.ra = getelementptr [4 x i8], ptr %i.pe, i64 %i.ql
  %i.rb = getelementptr i8, ptr %i.ra, i64 4
  store float %i.pq, ptr %i.rb, align 4, !tbaa !25
  %i.rc = getelementptr [4 x i8], ptr %i.pe, i64 %i.ql
  %i.rd = getelementptr i8, ptr %i.rc, i64 20
  store float %26, ptr %i.rd, align 4, !tbaa !25
  %i.re = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.rf = load float, ptr %i.re, align 4, !tbaa !25
  %i.rg = getelementptr [4 x i8], ptr %i.pc, i64 %i.qk
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  store float %i.rf, ptr %i.rh, align 4, !tbaa !25
  %i.ri = load float, ptr %i.qc, align 4, !tbaa !25
  %i.rj = getelementptr [4 x i8], ptr %i.pc, i64 %i.qk
  %i.rk = getelementptr i8, ptr %i.rj, i64 24
  store float %i.ri, ptr %i.rk, align 4, !tbaa !25
  %i.rl = getelementptr [4 x i8], ptr %i.pe, i64 %i.ql
  %i.rm = getelementptr i8, ptr %i.rl, i64 8
  store float %i.pt, ptr %i.rm, align 4, !tbaa !25
  %i.rn = getelementptr [4 x i8], ptr %i.pe, i64 %i.ql
  %i.ro = getelementptr i8, ptr %i.rn, i64 24
  store float %i.qj, ptr %i.ro, align 4, !tbaa !25
  %i.rp = getelementptr i8, ptr %i.qm, i64 12
  store float 0.000000e+00, ptr %i.rp, align 4, !tbaa !25
  %i.rq = getelementptr i8, ptr %i.qq, i64 12
  store float 0.000000e+00, ptr %i.rq, align 4, !tbaa !25
  %i.rr = getelementptr i8, ptr %i.qm, i64 28
  store float 0.000000e+00, ptr %i.rr, align 4, !tbaa !25
  %i.rs = getelementptr i8, ptr %i.qq, i64 28
  store float 0.000000e+00, ptr %i.rs, align 4, !tbaa !25
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1 ; 2 uses
  %exitcond856.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count855
  br i1 %exitcond856.not, label %..loopexit738_crit_edge, label %bb.bk, !llvm.loop !169

bb.bl:                                            ; preds = %bb.bd
  %i.rt = add nsw i32 %i.nq, %.0288781
  br label %.loopexit738

..loopexit738_crit_edge:                          ; preds = %bb.bk
  %i.ru = shl i32 %i.nq, 3                        ; 2 uses
  %i.rv = add i32 %.promoted757, %i.ru
  %i.rw = add i32 %.promoted, %i.ru
  %i.rx = trunc nsw i64 %indvars.iv.next851 to i32
  store i32 %i.rv, ptr %i.ls, align 8, !tbaa !68
  store i32 %i.rw, ptr %i.lv, align 8, !tbaa !68
  br label %.loopexit738

.loopexit738:                                     ; preds = %bb.bi, %..loopexit738_crit_edge, %bb.bl
  %.sroa.22672.1 = phi ptr [ %.sroa.22672.0778, %bb.bl ], [ %.sroa.22672.7, %..loopexit738_crit_edge ], [ %.sroa.22672.7, %bb.bi ] ; 9 uses
  %.sroa.15.1 = phi i32 [ %.sroa.15.0779, %bb.bl ], [ %.sroa.15.4, %..loopexit738_crit_edge ], [ %.sroa.15.4, %bb.bi ] ; 11 uses
  %.sroa.3.1 = phi i32 [ %.sroa.3.0780, %bb.bl ], [ %i.og, %..loopexit738_crit_edge ], [ %i.og, %bb.bi ] ; 5 uses
  %.2 = phi i32 [ %i.rt, %bb.bl ], [ %i.rx, %..loopexit738_crit_edge ], [ %.0288781, %bb.bi ] ; 3 uses
  %.not363 = icmp eq ptr %i.nk, null
  br i1 %.not363, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %.loopexit738
  %i.ry = icmp eq i32 %.sroa.3.1, %.sroa.15.1
  br i1 %i.ry, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %.not.i.i513 = icmp eq i32 %.sroa.15.1, 0
  %i.rz = shl nuw nsw i32 %.sroa.15.1, 1
  %i.sa = select i1 %.not.i.i513, i32 1, i32 %i.rz ; 4 uses
  %i.sb = icmp slt i32 %.sroa.15.1, %i.sa
  br i1 %i.sb, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.sc = zext nneg i32 %i.sa to i64
  %i.sd = shl nuw nsw i64 %i.sc, 4
  %i.se = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.sd, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i516 unwind label %bb.br ; 5 uses

_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i516: ; preds = %bb.bo
  %i.sf = icmp sgt i32 %.sroa.15.1, 0
  br i1 %i.sf, label %.lr.ph.i.i.i522, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518

.lr.ph.i.i.i522:                                  ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i516
  %wide.trip.count.i.i.i523 = zext nneg i32 %.sroa.15.1 to i64 ; 2 uses
  %xtraiter1147 = and i64 %wide.trip.count.i.i.i523, 1
  %i.sg = icmp eq i32 %.sroa.15.1, 1
  br i1 %i.sg, label %.epil.preheader1146, label %.lr.ph.i.i.i522.new

.lr.ph.i.i.i522.new:                              ; preds = %.lr.ph.i.i.i522
  %unroll_iter1150 = and i64 %wide.trip.count.i.i.i523, 2147483646
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i.i522.new
  %indvars.iv.i.i.i524 = phi i64 [ 0, %.lr.ph.i.i.i522.new ], [ %indvars.iv.next.i.i.i525.1, %bb.bp ] ; 4 uses
  %niter1151 = phi i64 [ 0, %.lr.ph.i.i.i522.new ], [ %niter1151.next.1, %bb.bp ]
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %i.se, i64 %indvars.iv.i.i.i524
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.1, i64 %indvars.iv.i.i.i524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sh, ptr noundef nonnull align 4 dereferenceable(16) %i.si, i64 16, i1 false), !tbaa.struct !206
  %indvars.iv.next.i.i.i525 = or disjoint i64 %indvars.iv.i.i.i524, 1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.se, i64 %indvars.iv.next.i.i.i525
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.1, i64 %indvars.iv.next.i.i.i525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sj, ptr noundef nonnull align 4 dereferenceable(16) %i.sk, i64 16, i1 false), !tbaa.struct !206
  %indvars.iv.next.i.i.i525.1 = add nuw nsw i64 %indvars.iv.i.i.i524, 2 ; 2 uses
  %niter1151.next.1 = add i64 %niter1151, 2       ; 2 uses
  %niter1151.ncmp.1 = icmp eq i64 %niter1151.next.1, %unroll_iter1150
  br i1 %niter1151.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !168

_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518: ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1E8allocateEi.exit.i.i516
  %.not.i5.i.i519.not = icmp eq ptr %.sroa.22672.1, null
  br i1 %.not.i5.i.i519.not, label %bb.bq, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread

_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread.loopexit.unr-lcssa: ; preds = %bb.bp
  %lcmp.mod1148.not = icmp eq i64 %xtraiter1147, 0
  br i1 %lcmp.mod1148.not, label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread, label %.epil.preheader1146

.epil.preheader1146:                              ; preds = %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i522
  %indvars.iv.i.i.i524.epil.init = phi i64 [ 0, %.lr.ph.i.i.i522 ], [ %indvars.iv.next.i.i.i525.1, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1149 = trunc i32 %.sroa.15.1 to i1
  call void @llvm.assume(i1 %lcmp.mod1149)
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.se, i64 %indvars.iv.i.i.i524.epil.init
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.1, i64 %indvars.iv.i.i.i524.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sl, ptr noundef nonnull align 4 dereferenceable(16) %i.sm, i64 16, i1 false), !tbaa.struct !206
  br label %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread

_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread: ; preds = %.epil.preheader1146, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread.loopexit.unr-lcssa, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.22672.1)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bn, %bb.bm, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518
  %.sroa.22672.8 = phi ptr [ %.sroa.22672.1, %bb.bm ], [ %.sroa.22672.1, %bb.bn ], [ %i.se, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread ], [ %i.se, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518 ] ; 3 uses
  %.sroa.15.5 = phi i32 [ %.sroa.15.1, %bb.bm ], [ %.sroa.15.1, %bb.bn ], [ %i.sa, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread ], [ %i.sa, %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518 ] ; 2 uses
  %i.sn = add nsw i32 %.sroa.3.1, 1               ; 2 uses
  %i.so = sext i32 %.sroa.3.1 to i64
  %i.sp = getelementptr inbounds [16 x i8], ptr %.sroa.22672.8, i64 %i.so ; 5 uses
  store <4 x i32> zeroinitializer, ptr %i.sp, align 4, !tbaa !41
  %i.sq = getelementptr inbounds [4 x i8], ptr %.sroa.10706.2, i64 %i.nh ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !41
  store i32 %.sroa.3.1, ptr %i.sq, align 4, !tbaa !41
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !208
  %i.st = trunc nuw nsw i64 %indvars.iv874 to i32
  store i32 %i.st, ptr %i.sp, align 4, !tbaa !209
  %i.su = select i1 %.not361, i32 -1, i32 %i.mz
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i32 %i.su, ptr %i.sv, align 4, !tbaa !211
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 12
  store i32 %.0285784, ptr %i.sw, align 4, !tbaa !210
  %i.sx = icmp sgt i32 %i.nq, 0
  br i1 %i.sx, label %.lr.ph770, label %.loopexit737

.lr.ph770:                                        ; preds = %bb.bq
  %i.sy = load ptr, ptr %i.lo, align 8, !tbaa !33
  %i.sz = getelementptr inbounds nuw i8, ptr %i.nk, i64 452
  %i.ta = getelementptr inbounds nuw i8, ptr %i.nk, i64 372
  %i.tb = getelementptr inbounds nuw i8, ptr %i.nk, i64 388
  %i.tc = getelementptr inbounds nuw i8, ptr %i.nk, i64 404
  %i.td = getelementptr inbounds nuw i8, ptr %i.nk, i64 376
  %i.te = getelementptr inbounds nuw i8, ptr %i.nk, i64 392
  %i.tf = getelementptr inbounds nuw i8, ptr %i.nk, i64 408
  %i.tg = getelementptr inbounds nuw i8, ptr %i.nk, i64 380
  %i.th = getelementptr inbounds nuw i8, ptr %i.nk, i64 412
  %i.ti = load i32, ptr %i.lt, align 4, !tbaa !67
  %i.tj = load ptr, ptr %i.lu, align 8, !tbaa !23 ; 6 uses
  %i.tk = load i32, ptr %i.lw, align 4, !tbaa !67
  %i.tl = load ptr, ptr %i.lx, align 8, !tbaa !23 ; 6 uses
  %.promoted772 = load i32, ptr %i.ls, align 8, !tbaa !68
  %.promoted775 = load i32, ptr %i.lv, align 8, !tbaa !68
  %i.tm = sext i32 %.2 to i64
  %i.tn = sext i32 %i.tk to i64
  %i.to = sext i32 %i.ti to i64
  %wide.trip.count872 = zext nneg i32 %i.nq to i64
  %invariant.gep974 = getelementptr [8 x i8], ptr %i.sy, i64 %i.mv
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK20btAlignedObjectArrayI12btJointNode1E4copyEiiPS0_.exit.i.i518.thread, %bb.bo
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %.lr.ph770, %bb.bs
  %indvars.iv867 = phi i64 [ %i.tm, %.lr.ph770 ], [ %indvars.iv.next868, %bb.bs ] ; 3 uses
  %indvars.iv865 = phi i64 [ 0, %.lr.ph770 ], [ %indvars.iv.next866, %bb.bs ] ; 2 uses
  %gep975 = getelementptr [8 x i8], ptr %invariant.gep974, i64 %indvars.iv865
  %i.tq = load ptr, ptr %gep975, align 8, !tbaa !35 ; 10 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 48
  %i.ts = load float, ptr %i.sz, align 4, !tbaa !80 ; 3 uses
  %i.tt = load float, ptr %i.tr, align 4, !tbaa !25 ; 2 uses
  %i.tu = fmul float %i.ts, %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 52
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !25
  %i.tx = fmul float %i.ts, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 56
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !25
  %i.ua = fmul float %i.ts, %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tq, i64 32 ; 2 uses
  %i.uc = load float, ptr %i.ta, align 4, !tbaa !25
  %i.ud = load float, ptr %i.ub, align 4, !tbaa !25 ; 3 uses
  %i.ue = load float, ptr %i.tb, align 4, !tbaa !25
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tq, i64 36
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !25 ; 2 uses
  %i.uh = fmul float %i.ue, %i.ug
  %i.ui = call float @llvm.fmuladd.f32(float %i.uc, float %i.ud, float %i.uh)
  %i.uj = load float, ptr %i.tc, align 4, !tbaa !25
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !25 ; 3 uses
  %i.um = call noundef float @llvm.fmuladd.f32(float %i.uj, float %i.ul, float %i.ui)
  %i.un = load float, ptr %i.td, align 4, !tbaa !25
  %28 = load float, ptr %i.tf, align 4, !tbaa !25
  %i.uo = load float, ptr %i.tg, align 4, !tbaa !25
  %29 = load <2 x float>, ptr %i.te, align 4, !tbaa !25
  %30 = insertelement <2 x float> poison, float %i.ug, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x float> %31, %29                 ; 2 uses
  %33 = extractelement <2 x float> %32, i64 0
  %34 = call float @llvm.fmuladd.f32(float %i.un, float %i.ud, float %33)
  %35 = call noundef float @llvm.fmuladd.f32(float %28, float %i.ul, float %34)
  %36 = extractelement <2 x float> %32, i64 1
  %i.up = call float @llvm.fmuladd.f32(float %i.uo, float %i.ud, float %36)
  %i.uq = load float, ptr %i.th, align 4, !tbaa !25
  %i.ur = call noundef float @llvm.fmuladd.f32(float %i.uq, float %i.ul, float %i.up)
  %i.us = mul nsw i64 %indvars.iv867, %i.to       ; 6 uses
  %i.ut = mul nsw i64 %indvars.iv867, %i.tn       ; 6 uses
  %i.uu = getelementptr [4 x i8], ptr %i.tj, i64 %i.us ; 3 uses
  store float %i.tt, ptr %i.uu, align 4, !tbaa !25
  %i.uv = load float, ptr %i.ub, align 4, !tbaa !25
  %i.uw = getelementptr [4 x i8], ptr %i.tj, i64 %i.us
  %i.ux = getelementptr i8, ptr %i.uw, i64 16
  store float %i.uv, ptr %i.ux, align 4, !tbaa !25
  %i.uy = getelementptr [4 x i8], ptr %i.tl, i64 %i.ut ; 3 uses
  store float %i.tu, ptr %i.uy, align 4, !tbaa !25
  %i.uz = getelementptr [4 x i8], ptr %i.tl, i64 %i.ut
  %i.va = getelementptr i8, ptr %i.uz, i64 16
  store float %i.um, ptr %i.va, align 4, !tbaa !25
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tq, i64 52
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !25
  %i.vd = getelementptr [4 x i8], ptr %i.tj, i64 %i.us
  %i.ve = getelementptr i8, ptr %i.vd, i64 4
  store float %i.vc, ptr %i.ve, align 4, !tbaa !25
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tq, i64 36
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !25
  %i.vh = getelementptr [4 x i8], ptr %i.tj, i64 %i.us
  %i.vi = getelementptr i8, ptr %i.vh, i64 20
  store float %i.vg, ptr %i.vi, align 4, !tbaa !25
  %i.vj = getelementptr [4 x i8], ptr %i.tl, i64 %i.ut
  %i.vk = getelementptr i8, ptr %i.vj, i64 4
  store float %i.tx, ptr %i.vk, align 4, !tbaa !25
  %i.vl = getelementptr [4 x i8], ptr %i.tl, i64 %i.ut
  %i.vm = getelementptr i8, ptr %i.vl, i64 20
  store float %35, ptr %i.vm, align 4, !tbaa !25
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tq, i64 56
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !25
  %i.vp = getelementptr [4 x i8], ptr %i.tj, i64 %i.us
  %i.vq = getelementptr i8, ptr %i.vp, i64 8
  store float %i.vo, ptr %i.vq, align 4, !tbaa !25
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !25
  %i.vt = getelementptr [4 x i8], ptr %i.tj, i64 %i.us
  %i.vu = getelementptr i8, ptr %i.vt, i64 24
  store float %i.vs, ptr %i.vu, align 4, !tbaa !25
  %i.vv = getelementptr [4 x i8], ptr %i.tl, i64 %i.ut
  %i.vw = getelementptr i8, ptr %i.vv, i64 8
  store float %i.ua, ptr %i.vw, align 4, !tbaa !25
  %i.vx = getelementptr [4 x i8], ptr %i.tl, i64 %i.ut
  %i.vy = getelementptr i8, ptr %i.vx, i64 24
  store float %i.ur, ptr %i.vy, align 4, !tbaa !25
  %i.vz = getelementptr i8, ptr %i.uu, i64 12
  store float 0.000000e+00, ptr %i.vz, align 4, !tbaa !25
  %i.wa = getelementptr i8, ptr %i.uy, i64 12
  store float 0.000000e+00, ptr %i.wa, align 4, !tbaa !25
  %i.wb = getelementptr i8, ptr %i.uu, i64 28
  store float 0.000000e+00, ptr %i.wb, align 4, !tbaa !25
  %i.wc = getelementptr i8, ptr %i.uy, i64 28
  store float 0.000000e+00, ptr %i.wc, align 4, !tbaa !25
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 1 ; 2 uses
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next866, %wide.trip.count872
  br i1 %exitcond873.not, label %..loopexit737_crit_edge, label %bb.bs, !llvm.loop !170

bb.bt:                                            ; preds = %.loopexit738
  %i.wd = add nsw i32 %.2, %i.nq
  br label %.loopexit737

..loopexit737_crit_edge:                          ; preds = %bb.bs
  %i.we = shl i32 %i.nq, 3                        ; 2 uses
  %i.wf = add i32 %.promoted772, %i.we
  %i.wg = add i32 %.promoted775, %i.we
  %i.wh = trunc nsw i64 %indvars.iv.next868 to i32
  store i32 %i.wf, ptr %i.ls, align 8, !tbaa !68
  store i32 %i.wg, ptr %i.lv, align 8, !tbaa !68
  br label %.loopexit737

.loopexit737:                                     ; preds = %bb.bq, %..loopexit737_crit_edge, %bb.bt
  %.sroa.22672.2 = phi ptr [ %.sroa.22672.1, %bb.bt ], [ %.sroa.22672.8, %..loopexit737_crit_edge ], [ %.sroa.22672.8, %bb.bq ] ; 2 uses
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %bb.bt ], [ %.sroa.15.5, %..loopexit737_crit_edge ], [ %.sroa.15.5, %bb.bq ]
  %.sroa.3.2 = phi i32 [ %.sroa.3.1, %bb.bt ], [ %i.sn, %..loopexit737_crit_edge ], [ %i.sn, %bb.bq ]
  %.4 = phi i32 [ %i.wd, %bb.bt ], [ %i.wh, %..loopexit737_crit_edge ], [ %.2, %bb.bq ]
  %i.wi = add nsw i32 %i.nq, %.0287782
  %i.wj = add nsw i32 %i.nq, %.0285784            ; 2 uses
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1
  %i.wk = load i32, ptr %i.a, align 4, !tbaa !17
  %i.wl = icmp slt i32 %i.wj, %i.wk
  br i1 %i.wl, label %bb.bb, label %._crit_edge788, !llvm.loop !171

bb.bu:                                            ; preds = %bb.br, %bb.bj
  %.sroa.22672.3 = phi ptr [ %.sroa.22672.1, %bb.br ], [ %.sroa.22672.0778, %bb.bj ]
  %.pn367.pn.pn = phi { ptr, i32 } [ %i.tp, %bb.br ], [ %i.pi, %bb.bj ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  br label %bb.bz

bb.bv:                                            ; preds = %._crit_edge788
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.wm, i32 noundef %i.b, i32 noundef %i.b)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull @.str.9)
          to label %bb.bx unwind label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.20)
          to label %.noexc542 unwind label %bb.ce

.noexc542:                                        ; preds = %bb.bx
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !21 ; 2 uses
  %.not.i540 = icmp eq i32 %i.wo, 0
  br i1 %.not.i540, label %bb.by, label %_Z9btSetZeroIfEvPT_i.exit.i541

_Z9btSetZeroIfEvPT_i.exit.i541:                   ; preds = %.noexc542
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !23
  %i.wr = sext i32 %i.wo to i64
  %i.ws = shl nuw nsw i64 %i.wr, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wq, i8 0, i64 %i.ws, i1 false), !tbaa !25
  br label %bb.by

bb.by:                                            ; preds = %_Z9btSetZeroIfEvPT_i.exit.i541, %.noexc542
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull @.str.10)
          to label %.preheader736 unwind label %bb.cg

.preheader736:                                    ; preds = %bb.by
  %i.wt = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph803, label %._crit_edge804

.lr.ph803:                                        ; preds = %.preheader736
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !47 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !33 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !59 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  br label %bb.ch

._crit_edge804:                                   ; preds = %._crit_edge799, %.preheader736
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull @.str.11)
          to label %bb.cx unwind label %bb.de

bb.bz:                                            ; preds = %bb.bu, %bb.ba
  %.sroa.22672.4 = phi ptr [ %.sroa.22672.3, %bb.bu ], [ %.sroa.22672.6, %bb.ba ]
  %.pn367.pn.pn.pn = phi { ptr, i32 } [ %.pn367.pn.pn, %bb.bu ], [ %i.mr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.ed

bb.ca:                                            ; preds = %._crit_edge788
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bv
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn341 = phi { ptr, i32 } [ %i.xg, %bb.cb ], [ %i.xf, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.ed

bb.cd:                                            ; preds = %bb.bw
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bx
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn343 = phi { ptr, i32 } [ %i.xi, %bb.ce ], [ %i.xh, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.ed

bb.cg:                                            ; preds = %bb.by
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ch:                                            ; preds = %.lr.ph803, %._crit_edge799
  %indvars.iv877 = phi i64 [ 0, %.lr.ph803 ], [ %indvars.iv.next878, %._crit_edge799 ] ; 5 uses
  %.0279802 = phi i32 [ 0, %.lr.ph803 ], [ %i.aet, %._crit_edge799 ] ; 3 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv877
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !41 ; 4 uses
  %i.xm = sext i32 %.0279802 to i64
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.wy, i64 %i.xm
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !35 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 152
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !49 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 156
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !50 ; 2 uses
  %i.xt = icmp slt i32 %.0279802, %i.xa
  br i1 %i.xt, label %bb.ci, label %.thread958

bb.ci:                                            ; preds = %bb.ch
  %i.xu = load ptr, ptr %i.xb, align 8, !tbaa !203
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv877
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !205
  %i.xx = freeze i32 %i.xw                        ; 3 uses
  %i.xy = sext i32 %i.xl to i64
  %.idx = shl nsw i64 %i.xy, 6
  %i.xz = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx ; 2 uses
  %i.ya = sext i32 %i.xq to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %.sroa.10706.2, i64 %i.ya
  %.0278790 = load i32, ptr %i.yb, align 4, !tbaa !41 ; 2 uses
  %i.yc = icmp sgt i32 %.0278790, -1
  %i.yd = icmp sgt i32 %i.xx, 0
  %or.cond976 = and i1 %i.yc, %i.yd
  br i1 %or.cond976, label %.lr.ph793.split.us.preheader, label %._crit_edge794

.thread958:                                       ; preds = %bb.ch
  %i.ye = sext i32 %i.xl to i64
  %.idx960 = shl nsw i64 %i.ye, 6
end_hunk_0
