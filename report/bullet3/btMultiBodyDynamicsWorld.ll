Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %i.km = shl nsw i64 %i.kl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep624, i8 0, i64 %i.km, i1 false), !tbaa !177
  br label %.loopexit556

.loopexit556:                                     ; preds = %.lr.ph.i282, %bb.am
  %.pre-phi = phi i32 [ %.pre666.pre-phi, %.lr.ph.i282 ], [ %i.iz, %bb.am ] ; 6 uses
  %i.kn = phi i32 [ %.pre661, %.lr.ph.i282 ], [ %i.ic, %bb.am ] ; 4 uses
  store i32 %i.iz, ptr %i.gs, align 4, !tbaa !145
  %i.ko = load i32, ptr %i.gx, align 4, !tbaa !75 ; 2 uses
  %.not548 = icmp slt i32 %i.kn, %i.ko
  br i1 %.not548, label %.loopexit555, label %bb.ar

bb.ar:                                            ; preds = %.loopexit556
  %i.kp = load i32, ptr %i.gy, align 8, !tbaa !76
  %.not549 = icmp sgt i32 %i.kp, %i.kn
  br i1 %.not549, label %.loopexit555, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i304 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i304, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kq = sext i32 %.pre-phi to i64
  %i.kr = shl nsw i64 %i.kq, 4
  %i.ks = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.kr, i32 noundef 16)
          to label %.noexc313 unwind label %.thread531

.noexc313:                                        ; preds = %bb.at
  %.pre.i305 = load i32, ptr %i.gx, align 4, !tbaa !75
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %.noexc313, %bb.as
  %i.kt = phi i32 [ %.pre.i305, %.noexc313 ], [ %i.ko, %bb.as ] ; 4 uses
  %.0.i.i.i306 = phi ptr [ %i.ks, %.noexc313 ], [ null, %bb.as ] ; 4 uses
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %.lr.ph.i.i.i308, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i308:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i309 = zext nneg i32 %i.kt to i64 ; 2 uses
  %xtraiter1238.a = and i64 %wide.trip.count.i.i.i309, 1
  %i.kv = icmp eq i32 %i.kt, 1
  br i1 %i.kv, label %.epil.preheader1237, label %.lr.ph.i.i.i308.new

.lr.ph.i.i.i308.new:                              ; preds = %.lr.ph.i.i.i308
  %unroll_iter1241 = and i64 %wide.trip.count.i.i.i309, 2147483646
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i.i.i308.new
  %indvars.iv.i.i.i310 = phi i64 [ 0, %.lr.ph.i.i.i308.new ], [ %indvars.iv.next.i.i.i311.1, %bb.au ] ; 4 uses
  %niter1242 = phi i64 [ 0, %.lr.ph.i.i.i308.new ], [ %niter1242.next.1, %bb.au ]
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i306, i64 %indvars.iv.i.i.i310
  %i.kx = load ptr, ptr %i.gz, align 8, !tbaa !77
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kx, i64 %indvars.iv.i.i.i310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kw, ptr noundef nonnull align 4 dereferenceable(16) %i.ky, i64 16, i1 false), !tbaa.struct !79
  %indvars.iv.next.i.i.i311 = or disjoint i64 %indvars.iv.i.i.i310, 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i306, i64 %indvars.iv.next.i.i.i311
  %i.la = load ptr, ptr %i.gz, align 8, !tbaa !77
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %indvars.iv.next.i.i.i311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kz, ptr noundef nonnull align 4 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa.struct !79
  %indvars.iv.next.i.i.i311.1 = add nuw nsw i64 %indvars.iv.i.i.i310, 2 ; 2 uses
  %niter1242.next.1 = add i64 %niter1242, 2       ; 2 uses
  %niter1242.ncmp.1 = icmp eq i64 %niter1242.next.1, %unroll_iter1241
  br i1 %niter1242.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.au, !llvm.loop !1

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.au
  %lcmp.mod1239.not.a = icmp eq i64 %xtraiter1238.a, 0
  br i1 %lcmp.mod1239.not.a, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader1237

.epil.preheader1237:                              ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i308
  %indvars.iv.i.i.i310.epil.init = phi i64 [ 0, %.lr.ph.i.i.i308 ], [ %indvars.iv.next.i.i.i311.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1240 = trunc i32 %i.kt to i1
  call void @llvm.assume(i1 %lcmp.mod1240)
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i306, i64 %indvars.iv.i.i.i310.epil.init
  %i.ld = load ptr, ptr %i.gz, align 8, !tbaa !77
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %indvars.iv.i.i.i310.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lc, ptr noundef nonnull align 4 dereferenceable(16) %i.le, i64 16, i1 false), !tbaa.struct !79
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader1237, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.lf = load ptr, ptr %i.gz, align 8, !tbaa !77 ; 2 uses
  %.not.i5.i.i307 = icmp eq ptr %i.lf, null
  br i1 %.not.i5.i.i307, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.lg = load i8, ptr %i.ha, align 8, !tbaa !80, !range !30, !noundef !31
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.aw, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lf)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i unwind label %.thread531

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.aw, %bb.av, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.ha, align 8, !tbaa !80
  store ptr %.0.i.i.i306, ptr %i.gz, align 8, !tbaa !77
  store i32 %.pre-phi, ptr %i.gy, align 8, !tbaa !76
  %.pre662.pre = load i32, ptr %i.ib, align 4, !tbaa !61 ; 2 uses
  %.pre669 = add nsw i32 %.pre662.pre, 1
  br label %.loopexit555

.loopexit555:                                     ; preds = %bb.ar, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %.loopexit556
  %.pre-phi668 = phi i32 [ %.pre-phi, %.loopexit556 ], [ %.pre669, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %.pre-phi, %bb.ar ] ; 4 uses
  %i.li = phi i32 [ %i.kn, %.loopexit556 ], [ %.pre662.pre, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.kn, %bb.ar ] ; 2 uses
  store i32 %.pre-phi, ptr %i.gx, align 4, !tbaa !75
  %i.lj = load i32, ptr %i.hc, align 4, !tbaa !149 ; 2 uses
  %.not550 = icmp slt i32 %i.li, %i.lj
  br i1 %.not550, label %.loopexit554, label %bb.ax

bb.ax:                                            ; preds = %.loopexit555
  %i.lk = load i32, ptr %i.hd, align 8, !tbaa !150
  %.not551 = icmp sgt i32 %i.lk, %i.li
  br i1 %.not551, label %.loopexit554, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i320 = icmp eq i32 %.pre-phi668, 0
  br i1 %.not.i.i.i320, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = sext i32 %.pre-phi668 to i64
  %i.lm = mul nsw i64 %i.ll, 48
  %i.ln = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.lm, i32 noundef 16)
          to label %.noexc329 unwind label %.thread531

.noexc329:                                        ; preds = %bb.az
  %.pre.i321 = load i32, ptr %i.hc, align 4, !tbaa !149
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i: ; preds = %.noexc329, %bb.ay
  %i.lo = phi i32 [ %.pre.i321, %.noexc329 ], [ %i.lj, %bb.ay ] ; 2 uses
  %.0.i.i.i322 = phi ptr [ %i.ln, %.noexc329 ], [ null, %bb.ay ] ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.i.i.i324, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i324:                                  ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i325 = zext nneg i32 %i.lo to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i.i.i324
  %indvars.iv.i.i.i326 = phi i64 [ 0, %.lr.ph.i.i.i324 ], [ %indvars.iv.next.i.i.i327, %bb.ba ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i322, i64 %indvars.iv.i.i.i326 ; 3 uses
  %i.lr = load ptr, ptr %i.he, align 8, !tbaa !148
  %i.ls = getelementptr inbounds nuw [48 x i8], ptr %i.lr, i64 %indvars.iv.i.i.i326 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.lq, ptr noundef nonnull align 4 dereferenceable(48) %i.ls, i64 16, i1 false), !tbaa.struct !79
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lu, ptr noundef nonnull align 4 dereferenceable(16) %i.lt, i64 16, i1 false), !tbaa.struct !79
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lw, ptr noundef nonnull align 4 dereferenceable(16) %i.lv, i64 16, i1 false), !tbaa.struct !79
  %indvars.iv.next.i.i.i327 = add nuw nsw i64 %indvars.iv.i.i.i326, 1 ; 2 uses
  %exitcond.not.i.i.i328 = icmp eq i64 %indvars.iv.next.i.i.i327, %wide.trip.count.i.i.i325
  br i1 %exitcond.not.i.i.i328, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i, label %bb.ba, !llvm.loop !3

_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i: ; preds = %bb.ba, %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.lx = load ptr, ptr %i.he, align 8, !tbaa !148 ; 2 uses
  %.not.i5.i.i323 = icmp eq ptr %i.lx, null
  br i1 %.not.i5.i.i323, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.ly = load i8, ptr %i.hf, align 8, !tbaa !147, !range !30, !noundef !31
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.bc, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lx)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i unwind label %.thread531

_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i: ; preds = %bb.bc, %bb.bb, %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.hf, align 8, !tbaa !147
  store ptr %.0.i.i.i322, ptr %i.he, align 8, !tbaa !148
  store i32 %.pre-phi668, ptr %i.hd, align 8, !tbaa !150
  br label %.loopexit554

.loopexit554:                                     ; preds = %bb.ax, %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, %.loopexit555
  store i32 %.pre-phi668, ptr %i.hc, align 4, !tbaa !149
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hv, i64 636
  %i.mb = load i8, ptr %i.ma, align 4, !tbaa !178, !range !30, !noundef !31
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.loopexit554
  %i.md = load float, ptr %i.hg, align 4, !tbaa !179
  %i.me = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.mf = trunc nuw i8 %i.me to i1
  %i.mg = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.mh = trunc nuw i8 %i.mg to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.md, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.mf, i1 noundef zeroext %i.mh)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit505 unwind label %.thread531

bb.be:                                            ; preds = %.loopexit554
  %i.mi = getelementptr inbounds nuw i8, ptr %i.hv, i64 628 ; 9 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !182 ; 14 uses
  %i.mk = add nsw i32 %i.mj, 6                    ; 28 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.hv, i64 632 ; 4 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !332 ; 14 uses
  %i.mn = add nsw i32 %i.mm, 7                    ; 2 uses
  %i.mo = shl nsw i32 %i.mn, 1
  %i.mp = shl nsw i32 %i.mk, 3
  %i.mq = add nsw i32 %i.mo, %i.mp                ; 2 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  call void @llvm.assume(i1 %i.mr)
  %8 = zext nneg i32 %i.mq to i64
  %9 = shl nuw nsw i64 %8, 2                      ; 2 uses
  %10 = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %9, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352 unwind label %.thread531 ; 36 uses

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352: ; preds = %bb.be
  %11 = ptrtoaddr ptr %10 to i64                  ; 26 uses
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %9, i1 false), !tbaa !177
  %i.ms = sext i32 %i.mn to i64                   ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %10, i64 %i.ms ; 22 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.mt, i64 %i.ms ; 28 uses
  %i.mv = sext i32 %i.mk to i64                   ; 8 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %i.mv ; 14 uses
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mv ; 14 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.mv ; 13 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.mv ; 13 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.mv ; 13 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.mv ; 13 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.mv ; 8 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !177
  store float %i.ne, ptr %10, align 4, !tbaa !177
  %i.nf = getelementptr inbounds nuw i8, ptr %i.hv, i64 60
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !177
  %i.nh = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.ng, ptr %i.nh, align 4, !tbaa !177
  %i.ni = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  %i.nj = load float, ptr %i.ni, align 8, !tbaa !177
  %i.nk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.nj, ptr %i.nk, align 4, !tbaa !177
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hv, i64 68
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !177
  %i.nn = getelementptr inbounds nuw i8, ptr %10, i64 12
  store float %i.nm, ptr %i.nn, align 4, !tbaa !177
  %i.no = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.np = load float, ptr %i.no, align 8, !tbaa !177
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store float %i.np, ptr %i.nq, align 4, !tbaa !177
  %i.nr = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !177
  %i.nt = getelementptr inbounds nuw i8, ptr %10, i64 20
  store float %i.ns, ptr %i.nt, align 4, !tbaa !177
  %i.nu = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.nv = load float, ptr %i.nu, align 8, !tbaa !177
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store float %i.nv, ptr %i.nw, align 4, !tbaa !177
  %i.nx = load i32, ptr %i.ib, align 4, !tbaa !61 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, 0
  br i1 %i.ny, label %.preheader.lr.ph, label %.preheader553

.preheader.lr.ph:                                 ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352
  %i.nz = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !62 ; 2 uses
  %i.ob = ptrtoaddr ptr %i.oa to i64
  %wide.trip.count633.a = zext nneg i32 %i.nx to i64
  %i.oc = add i64 %11, -464
  %i.od = sub i64 %i.oc, %i.ob
  br label %.preheader

.preheader553:                                    ; preds = %._crit_edge584, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352
  %i.oe = icmp sgt i32 %i.mj, -6                  ; 9 uses
  br i1 %i.oe, label %.lr.ph587, label %._crit_edge588

.lr.ph587:                                        ; preds = %.preheader553
  %i.of = getelementptr inbounds nuw i8, ptr %i.hv, i64 288
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !144 ; 7 uses
  %wide.trip.count638.a = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1157 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check1157, label %scalar.ph1156.preheader, label %vector.memcheck1158

vector.memcheck1158:                              ; preds = %.lr.ph587
  %i.oh = ptrtoaddr ptr %i.og to i64
  %i.oi = sext i32 %i.mm to i64
  %i.oj = shl nsw i64 %i.oi, 3
  %i.ok = add i64 %i.oj, %11
  %i.ol = sub i64 %i.ok, %i.oh
  %i.om = add i64 %i.ol, 55
  %diff.check1159 = icmp ult i64 %i.om, 31
  br i1 %diff.check1159, label %scalar.ph1156.preheader, label %vector.ph1160

vector.ph1160:                                    ; preds = %vector.memcheck1158
  %n.vec1161 = and i64 %wide.trip.count638.a, 4294967288 ; 3 uses
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1166, %vector.body1162 ] ; 3 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index1163 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %wide.load1164 = load <4 x float>, ptr %i.on, align 4, !tbaa !177
  %wide.load1165 = load <4 x float>, ptr %i.oo, align 4, !tbaa !177
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index1163 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store <4 x float> %wide.load1164, ptr %i.op, align 4, !tbaa !177
  store <4 x float> %wide.load1165, ptr %i.oq, align 4, !tbaa !177
  %index.next1166 = add nuw i64 %index1163, 8     ; 2 uses
  %i.or = icmp eq i64 %index.next1166, %n.vec1161
  br i1 %i.or, label %middle.block1167, label %vector.body1162, !llvm.loop !273

middle.block1167:                                 ; preds = %vector.body1162
  %cmp.n1168 = icmp eq i64 %n.vec1161, %wide.trip.count638.a
  br i1 %cmp.n1168, label %._crit_edge588, label %scalar.ph1156.preheader

scalar.ph1156.preheader:                          ; preds = %vector.memcheck1158, %.lr.ph587, %middle.block1167
  %indvars.iv635.ph.a = phi i64 [ 0, %vector.memcheck1158 ], [ 0, %.lr.ph587 ], [ %n.vec1161, %middle.block1167 ] ; 3 uses
  %xtraiter1246 = and i64 %wide.trip.count638.a, 3 ; 2 uses
  %lcmp.mod1247.not = icmp eq i64 %xtraiter1246, 0
  br i1 %lcmp.mod1247.not, label %scalar.ph1156.prol.loopexit, label %scalar.ph1156.prol

scalar.ph1156.prol:                               ; preds = %scalar.ph1156.preheader, %scalar.ph1156.prol
  %indvars.iv635.prol = phi i64 [ %indvars.iv.next636.prol, %scalar.ph1156.prol ], [ %indvars.iv635.ph.a, %scalar.ph1156.preheader ] ; 3 uses
  %prol.iter1248 = phi i64 [ %prol.iter1248.next, %scalar.ph1156.prol ], [ 0, %scalar.ph1156.preheader ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv635.prol
  %i.ot = load float, ptr %i.os, align 4, !tbaa !177
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv635.prol
  store float %i.ot, ptr %i.ou, align 4, !tbaa !177
  %indvars.iv.next636.prol = add nuw nsw i64 %indvars.iv635.prol, 1 ; 2 uses
  %prol.iter1248.next = add i64 %prol.iter1248, 1 ; 2 uses
  %prol.iter1248.cmp.not = icmp eq i64 %prol.iter1248.next, %xtraiter1246
  br i1 %prol.iter1248.cmp.not, label %scalar.ph1156.prol.loopexit, label %scalar.ph1156.prol, !llvm.loop !274

scalar.ph1156.prol.loopexit:                      ; preds = %scalar.ph1156.prol, %scalar.ph1156.preheader
  %indvars.iv635.unr = phi i64 [ %indvars.iv635.ph.a, %scalar.ph1156.preheader ], [ %indvars.iv.next636.prol, %scalar.ph1156.prol ]
  %i.ov = sub nsw i64 %indvars.iv635.ph.a, %wide.trip.count638.a
  %i.ow = icmp ugt i64 %i.ov, -4
  br i1 %i.ow, label %._crit_edge588, label %scalar.ph1156

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge584
  %indvars.iv630.a = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next631.a, %._crit_edge584 ] ; 3 uses
  %i.ox = getelementptr inbounds nuw [688 x i8], ptr %i.oa, i64 %indvars.iv630.a ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 560
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !333 ; 3 uses
  %i.pa = icmp sgt i32 %i.oz, 0
  br i1 %i.pa, label %.lr.ph583, label %._crit_edge584

.lr.ph583:                                        ; preds = %.preheader
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 464 ; 6 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 332
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !334
  %invariant.op = add i32 %i.pd, 7                ; 9 uses
  %wide.trip.count628 = zext nneg i32 %i.oz to i64 ; 6 uses
  %min.iters.check1173 = icmp ult i32 %i.oz, 12
  br i1 %min.iters.check1173, label %scalar.ph1172.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph583
  %i.pe = add nsw i64 %wide.trip.count628, -1     ; 2 uses
  %i.pf = trunc nsw i64 %i.pe to i32
  %i.pg = add i32 %invariant.op, %i.pf
  %i.ph = icmp slt i32 %i.pg, %invariant.op
  %i.pi = icmp ugt i64 %i.pe, 4294967295
  %i.pj = or i1 %i.ph, %i.pi
  br i1 %i.pj, label %scalar.ph1172.preheader, label %vector.memcheck1174

vector.memcheck1174:                              ; preds = %vector.scevcheck
  %i.pk = mul nsw i64 %indvars.iv630.a, -688
  %i.pl = add i64 %i.od, %i.pk
  %i.pm = sext i32 %invariant.op to i64
  %i.pn = shl nsw i64 %i.pm, 2
  %i.po = add i64 %i.pl, %i.pn
  %i.pp = add i64 %i.po, -1
  %diff.check1175 = icmp ult i64 %i.pp, 31
  br i1 %diff.check1175, label %scalar.ph1172.preheader, label %vector.ph1176

vector.ph1176:                                    ; preds = %vector.memcheck1174
  %n.vec1177 = and i64 %wide.trip.count628, 2147483640 ; 3 uses
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %vector.ph1176
  %index1179 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1182, %vector.body1178 ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %index1179 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %wide.load1180 = load <4 x float>, ptr %i.pq, align 4, !tbaa !177
  %wide.load1181 = load <4 x float>, ptr %i.pr, align 4, !tbaa !177
  %i.ps = trunc nuw nsw i64 %index1179 to i32
  %i.pt = add i32 %invariant.op, %i.ps
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %10, i64 %i.pu ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <4 x float> %wide.load1180, ptr %i.pv, align 4, !tbaa !177
  store <4 x float> %wide.load1181, ptr %i.pw, align 4, !tbaa !177
  %index.next1182 = add nuw i64 %index1179, 8     ; 2 uses
  %i.px = icmp eq i64 %index.next1182, %n.vec1177
  br i1 %i.px, label %middle.block1183, label %vector.body1178, !llvm.loop !275

middle.block1183:                                 ; preds = %vector.body1178
  %cmp.n1184 = icmp eq i64 %n.vec1177, %wide.trip.count628
  br i1 %cmp.n1184, label %._crit_edge584, label %scalar.ph1172.preheader

scalar.ph1172.preheader:                          ; preds = %vector.memcheck1174, %vector.scevcheck, %.lr.ph583, %middle.block1183
  %indvars.iv625.ph = phi i64 [ 0, %vector.memcheck1174 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph583 ], [ %n.vec1177, %middle.block1183 ] ; 3 uses
  %xtraiter1243 = and i64 %wide.trip.count628, 3  ; 2 uses
  %lcmp.mod1244.not = icmp eq i64 %xtraiter1243, 0
  br i1 %lcmp.mod1244.not, label %scalar.ph1172.prol.loopexit, label %scalar.ph1172.prol

scalar.ph1172.prol:                               ; preds = %scalar.ph1172.preheader, %scalar.ph1172.prol
  %indvars.iv625.prol = phi i64 [ %indvars.iv.next626.prol, %scalar.ph1172.prol ], [ %indvars.iv625.ph, %scalar.ph1172.preheader ] ; 3 uses
  %prol.iter1245 = phi i64 [ %prol.iter1245.next, %scalar.ph1172.prol ], [ 0, %scalar.ph1172.preheader ]
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv625.prol
  %i.pz = load float, ptr %i.py, align 4, !tbaa !177
  %i.qa = trunc nuw nsw i64 %indvars.iv625.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.qa
  %i.qb = sext i32 %.reass.prol to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %10, i64 %i.qb
  store float %i.pz, ptr %i.qc, align 4, !tbaa !177
  %indvars.iv.next626.prol = add nuw nsw i64 %indvars.iv625.prol, 1 ; 2 uses
  %prol.iter1245.next = add i64 %prol.iter1245, 1 ; 2 uses
  %prol.iter1245.cmp.not = icmp eq i64 %prol.iter1245.next, %xtraiter1243
  br i1 %prol.iter1245.cmp.not, label %scalar.ph1172.prol.loopexit, label %scalar.ph1172.prol, !llvm.loop !276

scalar.ph1172.prol.loopexit:                      ; preds = %scalar.ph1172.prol, %scalar.ph1172.preheader
  %indvars.iv625.unr = phi i64 [ %indvars.iv625.ph, %scalar.ph1172.preheader ], [ %indvars.iv.next626.prol, %scalar.ph1172.prol ]
  %i.qd = sub nsw i64 %indvars.iv625.ph, %wide.trip.count628
  %i.qe = icmp ugt i64 %i.qd, -4
  br i1 %i.qe, label %._crit_edge584, label %scalar.ph1172

.thread531:                                       ; preds = %bb.az, %bb.bc, %bb.at, %bb.aw, %bb.bd, %bb.ap, %bb.aq, %bb.be
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit508

._crit_edge584:                                   ; preds = %scalar.ph1172.prol.loopexit, %scalar.ph1172, %middle.block1183, %.preheader
  %indvars.iv.next631.a = add nuw nsw i64 %indvars.iv630.a, 1 ; 2 uses
  %exitcond634.not = icmp eq i64 %indvars.iv.next631.a, %wide.trip.count633.a
  br i1 %exitcond634.not, label %.preheader553, label %.preheader, !llvm.loop !277

scalar.ph1172:                                    ; preds = %scalar.ph1172.prol.loopexit, %scalar.ph1172
  %indvars.iv625 = phi i64 [ %indvars.iv.next626.3, %scalar.ph1172 ], [ %indvars.iv625.unr, %scalar.ph1172.prol.loopexit ] ; 6 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv625
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !177
  %i.qi = trunc nuw nsw i64 %indvars.iv625 to i32
  %.reass = add i32 %invariant.op, %i.qi
  %i.qj = sext i32 %.reass to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %10, i64 %i.qj
  store float %i.qh, ptr %i.qk, align 4, !tbaa !177
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv.next626
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !177
  %i.qn = trunc nuw nsw i64 %indvars.iv.next626 to i32
  %.reass.1 = add i32 %invariant.op, %i.qn
  %i.qo = sext i32 %.reass.1 to i64
  %i.qp = getelementptr inbounds [4 x i8], ptr %10, i64 %i.qo
  store float %i.qm, ptr %i.qp, align 4, !tbaa !177
  %indvars.iv.next626.1 = add nuw nsw i64 %indvars.iv625, 2 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv.next626.1
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !177
  %i.qs = trunc nuw nsw i64 %indvars.iv.next626.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.qs
  %i.qt = sext i32 %.reass.2 to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %10, i64 %i.qt
  store float %i.qr, ptr %i.qu, align 4, !tbaa !177
  %indvars.iv.next626.2 = add nuw nsw i64 %indvars.iv625, 3 ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv.next626.2
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !177
  %i.qx = trunc nuw nsw i64 %indvars.iv.next626.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.qx
  %i.qy = sext i32 %.reass.3 to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %10, i64 %i.qy
  store float %i.qw, ptr %i.qz, align 4, !tbaa !177
  %indvars.iv.next626.3 = add nuw nsw i64 %indvars.iv625, 4 ; 2 uses
  %exitcond629.not.3 = icmp eq i64 %indvars.iv.next626.3, %wide.trip.count628
  br i1 %exitcond629.not.3, label %._crit_edge584, label %scalar.ph1172, !llvm.loop !278

._crit_edge588:                                   ; preds = %scalar.ph1156.prol.loopexit, %scalar.ph1156, %middle.block1167, %.preheader553
  %i.ra = load float, ptr %i.hg, align 4, !tbaa !179 ; 7 uses
  %i.rb = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.rc = trunc nuw i8 %i.rb to i1
  %i.rd = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.re = trunc nuw i8 %i.rd to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.rc, i1 noundef zeroext %i.re)
          to label %bb.bf unwind label %bb.bm

scalar.ph1156:                                    ; preds = %scalar.ph1156.prol.loopexit, %scalar.ph1156
  %indvars.iv635.a = phi i64 [ %indvars.iv.next636.3, %scalar.ph1156 ], [ %indvars.iv635.unr, %scalar.ph1156.prol.loopexit ] ; 6 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv635.a
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !177
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv635.a
  store float %i.rg, ptr %i.rh, align 4, !tbaa !177
  %indvars.iv.next636.a = add nuw nsw i64 %indvars.iv635.a, 1 ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.next636.a
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !177
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next636.a
  store float %i.rj, ptr %i.rk, align 4, !tbaa !177
  %indvars.iv.next636.1 = add nuw nsw i64 %indvars.iv635.a, 2 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.next636.1
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !177
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next636.1
  store float %i.rm, ptr %i.rn, align 4, !tbaa !177
  %indvars.iv.next636.2 = add nuw nsw i64 %indvars.iv635.a, 3 ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.next636.2
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !177
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next636.2
  store float %i.rp, ptr %i.rq, align 4, !tbaa !177
  %indvars.iv.next636.3 = add nuw nsw i64 %indvars.iv635.a, 4 ; 2 uses
  %exitcond639.not.3 = icmp eq i64 %indvars.iv.next636.3, %wide.trip.count638.a
  br i1 %exitcond639.not.3, label %._crit_edge588, label %scalar.ph1156, !llvm.loop !279

bb.bf:                                            ; preds = %._crit_edge588
  %i.rr = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.rs = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.rt = ptrtoaddr ptr %i.rs to i64
  %i.ru = sext i32 %i.rr to i64                   ; 2 uses
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.ru ; 6 uses
  br i1 %i.oe, label %.lr.ph.preheader.i, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit"

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %wide.trip.count.i353 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1141 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check1141, label %.lr.ph.i354.preheader, label %vector.memcheck1142

vector.memcheck1142:                              ; preds = %.lr.ph.preheader.i
  %i.rw = sext i32 %i.mj to i64
  %i.rx = shl nsw i64 %i.rw, 4
  %i.ry = sext i32 %i.mm to i64
  %i.rz = shl nsw i64 %i.ry, 3
  %i.sa = shl nsw i64 %i.ru, 2
  %i.sb = add i64 %i.rx, %11
  %i.sc = add i64 %i.sb, %i.rz
  %i.sd = add i64 %i.sa, %i.rt
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = add i64 %i.se, 151
  %diff.check1143 = icmp ult i64 %i.sf, 31
  br i1 %diff.check1143, label %.lr.ph.i354.preheader, label %vector.ph1144

vector.ph1144:                                    ; preds = %vector.memcheck1142
  %n.vec1145 = and i64 %wide.trip.count.i353, 2147483640 ; 3 uses
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1144
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1150, %vector.body1146 ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %index1147 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %wide.load1148 = load <4 x float>, ptr %i.sg, align 4, !tbaa !177
  %wide.load1149 = load <4 x float>, ptr %i.sh, align 4, !tbaa !177
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %index1147 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  store <4 x float> %wide.load1148, ptr %i.si, align 4, !tbaa !177
  store <4 x float> %wide.load1149, ptr %i.sj, align 4, !tbaa !177
  %index.next1150 = add nuw i64 %index1147, 8     ; 2 uses
  %i.sk = icmp eq i64 %index.next1150, %n.vec1145
  br i1 %i.sk, label %middle.block1151, label %vector.body1146, !llvm.loop !280

middle.block1151:                                 ; preds = %vector.body1146
  %cmp.n1152 = icmp eq i64 %n.vec1145, %wide.trip.count.i353
  br i1 %cmp.n1152, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit", label %.lr.ph.i354.preheader

.lr.ph.i354.preheader:                            ; preds = %vector.memcheck1142, %.lr.ph.preheader.i, %middle.block1151
  %indvars.iv.i355.ph = phi i64 [ 0, %vector.memcheck1142 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec1145, %middle.block1151 ] ; 3 uses
  %xtraiter1249 = and i64 %wide.trip.count.i353, 3 ; 2 uses
  %lcmp.mod1250.not = icmp eq i64 %xtraiter1249, 0
  br i1 %lcmp.mod1250.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol

.lr.ph.i354.prol:                                 ; preds = %.lr.ph.i354.preheader, %.lr.ph.i354.prol
  %indvars.iv.i355.prol = phi i64 [ %indvars.iv.next.i356.prol, %.lr.ph.i354.prol ], [ %indvars.iv.i355.ph, %.lr.ph.i354.preheader ] ; 3 uses
  %prol.iter1251 = phi i64 [ %prol.iter1251.next, %.lr.ph.i354.prol ], [ 0, %.lr.ph.i354.preheader ]
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv.i355.prol
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !177
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i355.prol
  store float %i.sm, ptr %i.sn, align 4, !tbaa !177
  %indvars.iv.next.i356.prol = add nuw nsw i64 %indvars.iv.i355.prol, 1 ; 2 uses
  %prol.iter1251.next = add i64 %prol.iter1251, 1 ; 2 uses
  %prol.iter1251.cmp.not = icmp eq i64 %prol.iter1251.next, %xtraiter1249
  br i1 %prol.iter1251.cmp.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol, !llvm.loop !281

.lr.ph.i354.prol.loopexit:                        ; preds = %.lr.ph.i354.prol, %.lr.ph.i354.preheader
  %indvars.iv.i355.unr = phi i64 [ %indvars.iv.i355.ph, %.lr.ph.i354.preheader ], [ %indvars.iv.next.i356.prol, %.lr.ph.i354.prol ]
  %i.so = sub nsw i64 %indvars.iv.i355.ph, %wide.trip.count.i353
  %i.sp = icmp ugt i64 %i.so, -4
  br i1 %i.sp, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit", label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.prol.loopexit, %.lr.ph.i354
  %indvars.iv.i355 = phi i64 [ %indvars.iv.next.i356.3, %.lr.ph.i354 ], [ %indvars.iv.i355.unr, %.lr.ph.i354.prol.loopexit ] ; 6 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv.i355
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !177
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i355
  store float %i.sr, ptr %i.ss, align 4, !tbaa !177
  %indvars.iv.next.i356 = add nuw nsw i64 %indvars.iv.i355, 1 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv.next.i356
  %i.su = load float, ptr %i.st, align 4, !tbaa !177
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i356
  store float %i.su, ptr %i.sv, align 4, !tbaa !177
  %indvars.iv.next.i356.1 = add nuw nsw i64 %indvars.iv.i355, 2 ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv.next.i356.1
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !177
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i356.1
  store float %i.sx, ptr %i.sy, align 4, !tbaa !177
  %indvars.iv.next.i356.2 = add nuw nsw i64 %indvars.iv.i355, 3 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv.next.i356.2
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !177
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i356.2
  store float %i.ta, ptr %i.tb, align 4, !tbaa !177
  %indvars.iv.next.i356.3 = add nuw nsw i64 %indvars.iv.i355, 4 ; 2 uses
  %exitcond.not.i357.3 = icmp eq i64 %indvars.iv.next.i356.3, %wide.trip.count.i353
  br i1 %exitcond.not.i357.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit", label %.lr.ph.i354, !llvm.loop !282

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit": ; preds = %.lr.ph.i354.prol.loopexit, %.lr.ph.i354, %middle.block1151, %bb.bf
  %i.tc = load i32, ptr %i.ml, align 8, !tbaa !332 ; 2 uses
  %i.td = icmp sgt i32 %i.tc, -7
  br i1 %i.td, label %.lr.ph.i358, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit"

.lr.ph.i358:                                      ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit"
  %i.te = add i32 %i.tc, 6                        ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.te, i32 0) ; 2 uses
  %i.tf = add nuw i32 %smax.i, 1
  %wide.trip.count.i359 = zext i32 %i.tf to i64   ; 3 uses
  %min.iters.check1125 = icmp slt i32 %i.te, 7
  br i1 %min.iters.check1125, label %scalar.ph1124.preheader, label %vector.memcheck1126

vector.memcheck1126:                              ; preds = %.lr.ph.i358
  %i.tg = sext i32 %i.mm to i64
  %i.th = shl nsw i64 %i.tg, 2
  %i.ti = add nsw i64 %i.th, 27
  %diff.check1127 = icmp ult i64 %i.ti, 31
  br i1 %diff.check1127, label %scalar.ph1124.preheader, label %vector.ph1128

vector.ph1128:                                    ; preds = %vector.memcheck1126
  %n.vec1129 = and i64 %wide.trip.count.i359, 4294967288 ; 3 uses
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1128
  %index1131 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1134, %vector.body1130 ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index1131 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %wide.load1132 = load <4 x float>, ptr %i.tj, align 4, !tbaa !177
  %wide.load1133 = load <4 x float>, ptr %i.tk, align 4, !tbaa !177
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %index1131 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store <4 x float> %wide.load1132, ptr %i.tl, align 4, !tbaa !177
  store <4 x float> %wide.load1133, ptr %i.tm, align 4, !tbaa !177
  %index.next1134 = add nuw i64 %index1131, 8     ; 2 uses
  %i.tn = icmp eq i64 %index.next1134, %n.vec1129
  br i1 %i.tn, label %middle.block1135, label %vector.body1130, !llvm.loop !283

middle.block1135:                                 ; preds = %vector.body1130
  %cmp.n1136 = icmp eq i64 %n.vec1129, %wide.trip.count.i359
  br i1 %cmp.n1136, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", label %scalar.ph1124.preheader

scalar.ph1124.preheader:                          ; preds = %vector.memcheck1126, %.lr.ph.i358, %middle.block1135
  %indvars.iv.i360.ph = phi i64 [ 0, %vector.memcheck1126 ], [ 0, %.lr.ph.i358 ], [ %n.vec1129, %middle.block1135 ] ; 3 uses
  %i.to = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.tp = add nuw nsw i64 %i.to, 1
  %i.tq = sub nsw i64 %i.to, %indvars.iv.i360.ph
  %xtraiter1252 = and i64 %i.tp, 3                ; 2 uses
  %lcmp.mod1253.not = icmp eq i64 %xtraiter1252, 0
  br i1 %lcmp.mod1253.not, label %scalar.ph1124.prol.loopexit, label %scalar.ph1124.prol

scalar.ph1124.prol:                               ; preds = %scalar.ph1124.preheader, %scalar.ph1124.prol
  %indvars.iv.i360.prol = phi i64 [ %indvars.iv.next.i361.prol, %scalar.ph1124.prol ], [ %indvars.iv.i360.ph, %scalar.ph1124.preheader ] ; 3 uses
  %prol.iter1254 = phi i64 [ %prol.iter1254.next, %scalar.ph1124.prol ], [ 0, %scalar.ph1124.preheader ]
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i360.prol
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !177
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i360.prol
  store float %i.ts, ptr %i.tt, align 4, !tbaa !177
  %indvars.iv.next.i361.prol = add nuw nsw i64 %indvars.iv.i360.prol, 1 ; 2 uses
  %prol.iter1254.next = add i64 %prol.iter1254, 1 ; 2 uses
  %prol.iter1254.cmp.not = icmp eq i64 %prol.iter1254.next, %xtraiter1252
  br i1 %prol.iter1254.cmp.not, label %scalar.ph1124.prol.loopexit, label %scalar.ph1124.prol, !llvm.loop !284

scalar.ph1124.prol.loopexit:                      ; preds = %scalar.ph1124.prol, %scalar.ph1124.preheader
  %indvars.iv.i360.unr = phi i64 [ %indvars.iv.i360.ph, %scalar.ph1124.preheader ], [ %indvars.iv.next.i361.prol, %scalar.ph1124.prol ]
  %i.tu = icmp ult i64 %i.tq, 3
  br i1 %i.tu, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", label %scalar.ph1124

scalar.ph1124:                                    ; preds = %scalar.ph1124.prol.loopexit, %scalar.ph1124
  %indvars.iv.i360 = phi i64 [ %indvars.iv.next.i361.3, %scalar.ph1124 ], [ %indvars.iv.i360.unr, %scalar.ph1124.prol.loopexit ] ; 6 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i360
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !177
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i360
  store float %i.tw, ptr %i.tx, align 4, !tbaa !177
  %indvars.iv.next.i361 = add nuw nsw i64 %indvars.iv.i360, 1 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i361
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !177
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i361
  store float %i.tz, ptr %i.ua, align 4, !tbaa !177
  %indvars.iv.next.i361.1 = add nuw nsw i64 %indvars.iv.i360, 2 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i361.1
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !177
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i361.1
  store float %i.uc, ptr %i.ud, align 4, !tbaa !177
  %indvars.iv.next.i361.2 = add nuw nsw i64 %indvars.iv.i360, 3 ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i361.2
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !177
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i361.2
  store float %i.uf, ptr %i.ug, align 4, !tbaa !177
  %indvars.iv.next.i361.3 = add nuw nsw i64 %indvars.iv.i360, 4 ; 2 uses
  %exitcond.not.i362.3 = icmp eq i64 %indvars.iv.next.i361.3, %wide.trip.count.i359
  br i1 %exitcond.not.i362.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", label %scalar.ph1124, !llvm.loop !285

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit": ; preds = %scalar.ph1124.prol.loopexit, %scalar.ph1124, %middle.block1135, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit"
  %i.uh = fmul float %i.ra, 5.000000e-01          ; 10 uses
  invoke void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.uh, ptr noundef nonnull %i.mt, ptr noundef nonnull %i.mu)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit"
  br i1 %i.oe, label %.lr.ph.preheader.i363, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit"

.lr.ph.preheader.i363:                            ; preds = %bb.bg
  %wide.trip.count.i364 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1103 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check1103, label %.lr.ph.i365.preheader, label %vector.memcheck1104

vector.memcheck1104:                              ; preds = %.lr.ph.preheader.i363
  %i.ui = sext i32 %i.mj to i64                   ; 2 uses
  %i.uj = shl nsw i64 %i.ui, 2
  %i.uk = add nsw i64 %i.uj, 23
  %diff.check1105 = icmp ult i64 %i.uk, 31
  %.neg = mul nsw i64 %i.ui, -12
  %i.ul = add nsw i64 %.neg, -73
  %diff.check1106 = icmp ult i64 %i.ul, 31
  %conflict.rdx1107 = or i1 %diff.check1105, %diff.check1106
  br i1 %conflict.rdx1107, label %.lr.ph.i365.preheader, label %vector.ph1108

vector.ph1108:                                    ; preds = %vector.memcheck1104
  %n.vec1109 = and i64 %wide.trip.count.i364, 2147483640 ; 3 uses
  %broadcast.splatinsert1110 = insertelement <4 x float> poison, float %i.uh, i64 0
  %broadcast.splat1111 = shufflevector <4 x float> %broadcast.splatinsert1110, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1108
  %index1113 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1118, %vector.body1112 ] ; 4 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index1113 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %wide.load1114 = load <4 x float>, ptr %i.um, align 4, !tbaa !177
  %wide.load1115 = load <4 x float>, ptr %i.un, align 4, !tbaa !177
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %index1113 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %wide.load1116 = load <4 x float>, ptr %i.uo, align 4, !tbaa !177
  %wide.load1117 = load <4 x float>, ptr %i.up, align 4, !tbaa !177
  %i.uq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1111, <4 x float> %wide.load1116, <4 x float> %wide.load1114)
  %i.ur = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1111, <4 x float> %wide.load1117, <4 x float> %wide.load1115)
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index1113 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store <4 x float> %i.uq, ptr %i.us, align 4, !tbaa !177
  store <4 x float> %i.ur, ptr %i.ut, align 4, !tbaa !177
  %index.next1118 = add nuw i64 %index1113, 8     ; 2 uses
  %i.uu = icmp eq i64 %index.next1118, %n.vec1109
  br i1 %i.uu, label %middle.block1119, label %vector.body1112, !llvm.loop !286

middle.block1119:                                 ; preds = %vector.body1112
  %cmp.n1120 = icmp eq i64 %n.vec1109, %wide.trip.count.i364
  br i1 %cmp.n1120, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit", label %.lr.ph.i365.preheader

.lr.ph.i365.preheader:                            ; preds = %vector.memcheck1104, %.lr.ph.preheader.i363, %middle.block1119
  %indvars.iv.i366.ph = phi i64 [ 0, %vector.memcheck1104 ], [ 0, %.lr.ph.preheader.i363 ], [ %n.vec1109, %middle.block1119 ] ; 6 uses
  %xtraiter1255 = and i64 %wide.trip.count.i364, 1
  %lcmp.mod1256.not = icmp eq i64 %xtraiter1255, 0
  br i1 %lcmp.mod1256.not, label %.lr.ph.i365.prol.loopexit, label %.lr.ph.i365.prol

.lr.ph.i365.prol:                                 ; preds = %.lr.ph.i365.preheader
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i366.ph
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !177
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i366.ph
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !177
  %i.uz = call float @llvm.fmuladd.f32(float %i.uh, float %i.uy, float %i.uw)
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i366.ph
  store float %i.uz, ptr %i.va, align 4, !tbaa !177
  %indvars.iv.next.i367.prol = or disjoint i64 %indvars.iv.i366.ph, 1
  br label %.lr.ph.i365.prol.loopexit

.lr.ph.i365.prol.loopexit:                        ; preds = %.lr.ph.i365.prol, %.lr.ph.i365.preheader
  %indvars.iv.i366.unr = phi i64 [ %indvars.iv.i366.ph, %.lr.ph.i365.preheader ], [ %indvars.iv.next.i367.prol, %.lr.ph.i365.prol ]
  %i.vb = add nsw i64 %wide.trip.count.i364, -1
  %i.vc = icmp eq i64 %indvars.iv.i366.ph, %i.vb
  br i1 %i.vc, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit", label %.lr.ph.i365

.lr.ph.i365:                                      ; preds = %.lr.ph.i365.prol.loopexit, %.lr.ph.i365
  %indvars.iv.i366 = phi i64 [ %indvars.iv.next.i367.1, %.lr.ph.i365 ], [ %indvars.iv.i366.unr, %.lr.ph.i365.prol.loopexit ] ; 5 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i366
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !177
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i366
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !177
  %i.vh = call float @llvm.fmuladd.f32(float %i.uh, float %i.vg, float %i.ve)
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i366
  store float %i.vh, ptr %i.vi, align 4, !tbaa !177
  %indvars.iv.next.i367 = add nuw nsw i64 %indvars.iv.i366, 1 ; 3 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i367
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !177
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i367
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !177
  %i.vn = call float @llvm.fmuladd.f32(float %i.uh, float %i.vm, float %i.vk)
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i367
  store float %i.vn, ptr %i.vo, align 4, !tbaa !177
  %indvars.iv.next.i367.1 = add nuw nsw i64 %indvars.iv.i366, 2 ; 2 uses
  %exitcond.not.i368.1 = icmp eq i64 %indvars.iv.next.i367.1, %wide.trip.count.i364
  br i1 %exitcond.not.i368.1, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit", label %.lr.ph.i365, !llvm.loop !287

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit": ; preds = %.lr.ph.i365.prol.loopexit, %.lr.ph.i365, %middle.block1119, %bb.bg
  %i.vp = getelementptr inbounds nuw i8, ptr %i.hv, i64 288 ; 4 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !144 ; 7 uses
  %i.vr = ptrtoaddr ptr %i.vq to i64
  %i.vs = load i32, ptr %i.mi, align 4, !tbaa !182 ; 2 uses
  %i.vt = icmp sgt i32 %i.vs, -6
  br i1 %i.vt, label %.lr.ph.preheader.i369, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit"

.lr.ph.preheader.i369:                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit"
  %i.vu = add i32 %i.vs, 5                        ; 2 uses
  %smax.i370 = call i32 @llvm.smax.i32(i32 %i.vu, i32 0) ; 2 uses
  %i.vv = add nuw i32 %smax.i370, 1
  %wide.trip.count.i371 = zext i32 %i.vv to i64   ; 3 uses
  %min.iters.check1085 = icmp slt i32 %i.vu, 11
  br i1 %min.iters.check1085, label %.lr.ph.i372.preheader, label %vector.memcheck1086

vector.memcheck1086:                              ; preds = %.lr.ph.preheader.i369
  %i.vw = sext i32 %i.mj to i64
  %i.vx = shl nsw i64 %i.vw, 2
  %i.vy = sext i32 %i.mm to i64
  %i.vz = shl nsw i64 %i.vy, 3
  %i.wa = add i64 %i.vx, %11
  %i.wb = add i64 %i.wa, %i.vz
  %i.wc = sub i64 %i.vr, %i.wb
  %i.wd = add i64 %i.wc, -81
  %diff.check1087 = icmp ult i64 %i.wd, 31
  br i1 %diff.check1087, label %.lr.ph.i372.preheader, label %vector.ph1088

vector.ph1088:                                    ; preds = %vector.memcheck1086
  %n.vec1089 = and i64 %wide.trip.count.i371, 4294967288 ; 3 uses
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %vector.ph1088
  %index1091 = phi i64 [ 0, %vector.ph1088 ], [ %index.next1094, %vector.body1090 ] ; 3 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index1091 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %wide.load1092 = load <4 x float>, ptr %i.we, align 4, !tbaa !177
  %wide.load1093 = load <4 x float>, ptr %i.wf, align 4, !tbaa !177
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %index1091 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store <4 x float> %wide.load1092, ptr %i.wg, align 4, !tbaa !177
  store <4 x float> %wide.load1093, ptr %i.wh, align 4, !tbaa !177
  %index.next1094 = add nuw i64 %index1091, 8     ; 2 uses
  %i.wi = icmp eq i64 %index.next1094, %n.vec1089
  br i1 %i.wi, label %middle.block1095, label %vector.body1090, !llvm.loop !288

middle.block1095:                                 ; preds = %vector.body1090
  %cmp.n1096 = icmp eq i64 %n.vec1089, %wide.trip.count.i371
  br i1 %cmp.n1096, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", label %.lr.ph.i372.preheader

.lr.ph.i372.preheader:                            ; preds = %vector.memcheck1086, %.lr.ph.preheader.i369, %middle.block1095
  %indvars.iv.i373.ph = phi i64 [ 0, %vector.memcheck1086 ], [ 0, %.lr.ph.preheader.i369 ], [ %n.vec1089, %middle.block1095 ] ; 3 uses
  %i.wj = zext nneg i32 %smax.i370 to i64         ; 2 uses
  %i.wk = add nuw nsw i64 %i.wj, 1
  %i.wl = sub nsw i64 %i.wj, %indvars.iv.i373.ph
  %xtraiter1258 = and i64 %i.wk, 3                ; 2 uses
  %lcmp.mod1259.not = icmp eq i64 %xtraiter1258, 0
  br i1 %lcmp.mod1259.not, label %.lr.ph.i372.prol.loopexit, label %.lr.ph.i372.prol

.lr.ph.i372.prol:                                 ; preds = %.lr.ph.i372.preheader, %.lr.ph.i372.prol
  %indvars.iv.i373.prol = phi i64 [ %indvars.iv.next.i374.prol, %.lr.ph.i372.prol ], [ %indvars.iv.i373.ph, %.lr.ph.i372.preheader ] ; 3 uses
  %prol.iter1260 = phi i64 [ %prol.iter1260.next, %.lr.ph.i372.prol ], [ 0, %.lr.ph.i372.preheader ]
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i373.prol
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !177
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.i373.prol
  store float %i.wn, ptr %i.wo, align 4, !tbaa !177
  %indvars.iv.next.i374.prol = add nuw nsw i64 %indvars.iv.i373.prol, 1 ; 2 uses
  %prol.iter1260.next = add i64 %prol.iter1260, 1 ; 2 uses
  %prol.iter1260.cmp.not = icmp eq i64 %prol.iter1260.next, %xtraiter1258
  br i1 %prol.iter1260.cmp.not, label %.lr.ph.i372.prol.loopexit, label %.lr.ph.i372.prol, !llvm.loop !289

.lr.ph.i372.prol.loopexit:                        ; preds = %.lr.ph.i372.prol, %.lr.ph.i372.preheader
  %indvars.iv.i373.unr = phi i64 [ %indvars.iv.i373.ph, %.lr.ph.i372.preheader ], [ %indvars.iv.next.i374.prol, %.lr.ph.i372.prol ]
  %i.wp = icmp ult i64 %i.wl, 3
  br i1 %i.wp, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", label %.lr.ph.i372

.lr.ph.i372:                                      ; preds = %.lr.ph.i372.prol.loopexit, %.lr.ph.i372
  %indvars.iv.i373 = phi i64 [ %indvars.iv.next.i374.3, %.lr.ph.i372 ], [ %indvars.iv.i373.unr, %.lr.ph.i372.prol.loopexit ] ; 6 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i373
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !177
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.i373
  store float %i.wr, ptr %i.ws, align 4, !tbaa !177
  %indvars.iv.next.i374 = add nuw nsw i64 %indvars.iv.i373, 1 ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i374
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !177
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.next.i374
  store float %i.wu, ptr %i.wv, align 4, !tbaa !177
  %indvars.iv.next.i374.1 = add nuw nsw i64 %indvars.iv.i373, 2 ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i374.1
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !177
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.next.i374.1
  store float %i.wx, ptr %i.wy, align 4, !tbaa !177
  %indvars.iv.next.i374.2 = add nuw nsw i64 %indvars.iv.i373, 3 ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i374.2
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !177
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.next.i374.2
  store float %i.xa, ptr %i.xb, align 4, !tbaa !177
  %indvars.iv.next.i374.3 = add nuw nsw i64 %indvars.iv.i373, 4 ; 2 uses
  %exitcond.not.i375.3 = icmp eq i64 %indvars.iv.next.i374.3, %wide.trip.count.i371
  br i1 %exitcond.not.i375.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", label %.lr.ph.i372, !llvm.loop !290

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit": ; preds = %.lr.ph.i372.prol.loopexit, %.lr.ph.i372, %middle.block1095, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit"
  %i.xc = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.xd = trunc nuw i8 %i.xc to i1
  %i.xe = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.xf = trunc nuw i8 %i.xe to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.xd, i1 noundef zeroext %i.xf)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit"
  %i.xg = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.xh = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.xi = ptrtoaddr ptr %i.xh to i64
  %i.xj = sext i32 %i.xg to i64                   ; 2 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xj ; 6 uses
  br i1 %i.oe, label %.lr.ph.preheader.i376, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382"

.lr.ph.preheader.i376:                            ; preds = %bb.bh
  %wide.trip.count.i377 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1069 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check1069, label %.lr.ph.i378.preheader, label %vector.memcheck1070

vector.memcheck1070:                              ; preds = %.lr.ph.preheader.i376
  %i.xl = sext i32 %i.mj to i64
  %i.xm = mul nsw i64 %i.xl, 20
  %i.xn = sext i32 %i.mm to i64
  %i.xo = shl nsw i64 %i.xn, 3
  %i.xp = shl nsw i64 %i.xj, 2
  %i.xq = add i64 %i.xm, %11
  %i.xr = add i64 %i.xq, %i.xo
  %i.xs = add i64 %i.xp, %i.xi
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = add i64 %i.xt, 175
  %diff.check1071 = icmp ult i64 %i.xu, 31
  br i1 %diff.check1071, label %.lr.ph.i378.preheader, label %vector.ph1072

vector.ph1072:                                    ; preds = %vector.memcheck1070
  %n.vec1073 = and i64 %wide.trip.count.i377, 2147483640 ; 3 uses
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %vector.ph1072
  %index1075 = phi i64 [ 0, %vector.ph1072 ], [ %index.next1078, %vector.body1074 ] ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %index1075 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %wide.load1076 = load <4 x float>, ptr %i.xv, align 4, !tbaa !177
  %wide.load1077 = load <4 x float>, ptr %i.xw, align 4, !tbaa !177
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index1075 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  store <4 x float> %wide.load1076, ptr %i.xx, align 4, !tbaa !177
  store <4 x float> %wide.load1077, ptr %i.xy, align 4, !tbaa !177
  %index.next1078 = add nuw i64 %index1075, 8     ; 2 uses
  %i.xz = icmp eq i64 %index.next1078, %n.vec1073
  br i1 %i.xz, label %middle.block1079, label %vector.body1074, !llvm.loop !291

middle.block1079:                                 ; preds = %vector.body1074
  %cmp.n1080 = icmp eq i64 %n.vec1073, %wide.trip.count.i377
  br i1 %cmp.n1080, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382", label %.lr.ph.i378.preheader

.lr.ph.i378.preheader:                            ; preds = %vector.memcheck1070, %.lr.ph.preheader.i376, %middle.block1079
  %indvars.iv.i379.ph = phi i64 [ 0, %vector.memcheck1070 ], [ 0, %.lr.ph.preheader.i376 ], [ %n.vec1073, %middle.block1079 ] ; 3 uses
  %xtraiter1261 = and i64 %wide.trip.count.i377, 3 ; 2 uses
  %lcmp.mod1262.not = icmp eq i64 %xtraiter1261, 0
  br i1 %lcmp.mod1262.not, label %.lr.ph.i378.prol.loopexit, label %.lr.ph.i378.prol

.lr.ph.i378.prol:                                 ; preds = %.lr.ph.i378.preheader, %.lr.ph.i378.prol
  %indvars.iv.i379.prol = phi i64 [ %indvars.iv.next.i380.prol, %.lr.ph.i378.prol ], [ %indvars.iv.i379.ph, %.lr.ph.i378.preheader ] ; 3 uses
  %prol.iter1263 = phi i64 [ %prol.iter1263.next, %.lr.ph.i378.prol ], [ 0, %.lr.ph.i378.preheader ]
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv.i379.prol
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !177
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i379.prol
  store float %i.yb, ptr %i.yc, align 4, !tbaa !177
  %indvars.iv.next.i380.prol = add nuw nsw i64 %indvars.iv.i379.prol, 1 ; 2 uses
  %prol.iter1263.next = add i64 %prol.iter1263, 1 ; 2 uses
  %prol.iter1263.cmp.not = icmp eq i64 %prol.iter1263.next, %xtraiter1261
  br i1 %prol.iter1263.cmp.not, label %.lr.ph.i378.prol.loopexit, label %.lr.ph.i378.prol, !llvm.loop !292

.lr.ph.i378.prol.loopexit:                        ; preds = %.lr.ph.i378.prol, %.lr.ph.i378.preheader
  %indvars.iv.i379.unr = phi i64 [ %indvars.iv.i379.ph, %.lr.ph.i378.preheader ], [ %indvars.iv.next.i380.prol, %.lr.ph.i378.prol ]
  %i.yd = sub nsw i64 %indvars.iv.i379.ph, %wide.trip.count.i377
  %i.ye = icmp ugt i64 %i.yd, -4
  br i1 %i.ye, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382", label %.lr.ph.i378

.lr.ph.i378:                                      ; preds = %.lr.ph.i378.prol.loopexit, %.lr.ph.i378
  %indvars.iv.i379 = phi i64 [ %indvars.iv.next.i380.3, %.lr.ph.i378 ], [ %indvars.iv.i379.unr, %.lr.ph.i378.prol.loopexit ] ; 6 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv.i379
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !177
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i379
  store float %i.yg, ptr %i.yh, align 4, !tbaa !177
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i379, 1 ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv.next.i380
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !177
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i380
  store float %i.yj, ptr %i.yk, align 4, !tbaa !177
  %indvars.iv.next.i380.1 = add nuw nsw i64 %indvars.iv.i379, 2 ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv.next.i380.1
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !177
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i380.1
  store float %i.ym, ptr %i.yn, align 4, !tbaa !177
  %indvars.iv.next.i380.2 = add nuw nsw i64 %indvars.iv.i379, 3 ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv.next.i380.2
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !177
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i380.2
  store float %i.yp, ptr %i.yq, align 4, !tbaa !177
  %indvars.iv.next.i380.3 = add nuw nsw i64 %indvars.iv.i379, 4 ; 2 uses
  %exitcond.not.i381.3 = icmp eq i64 %indvars.iv.next.i380.3, %wide.trip.count.i377
  br i1 %exitcond.not.i381.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382", label %.lr.ph.i378, !llvm.loop !293

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382": ; preds = %.lr.ph.i378.prol.loopexit, %.lr.ph.i378, %middle.block1079, %bb.bh
  %i.yr = load i32, ptr %i.ml, align 8, !tbaa !332 ; 2 uses
  %i.ys = icmp sgt i32 %i.yr, -7
  br i1 %i.ys, label %.lr.ph.i383, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389"

.lr.ph.i383:                                      ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382"
  %i.yt = add i32 %i.yr, 6                        ; 2 uses
  %smax.i384 = call i32 @llvm.smax.i32(i32 %i.yt, i32 0) ; 2 uses
  %i.yu = add nuw i32 %smax.i384, 1
  %wide.trip.count.i385 = zext i32 %i.yu to i64   ; 3 uses
  %min.iters.check1053 = icmp slt i32 %i.yt, 7
  br i1 %min.iters.check1053, label %scalar.ph1052.preheader, label %vector.memcheck1054

vector.memcheck1054:                              ; preds = %.lr.ph.i383
  %i.yv = sext i32 %i.mm to i64
  %i.yw = shl nsw i64 %i.yv, 2
  %i.yx = add nsw i64 %i.yw, 27
  %diff.check1055 = icmp ult i64 %i.yx, 31
  br i1 %diff.check1055, label %scalar.ph1052.preheader, label %vector.ph1056

vector.ph1056:                                    ; preds = %vector.memcheck1054
  %n.vec1057 = and i64 %wide.trip.count.i385, 4294967288 ; 3 uses
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %vector.ph1056
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1062, %vector.body1058 ] ; 3 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index1059 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %wide.load1060 = load <4 x float>, ptr %i.yy, align 4, !tbaa !177
  %wide.load1061 = load <4 x float>, ptr %i.yz, align 4, !tbaa !177
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %index1059 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  store <4 x float> %wide.load1060, ptr %i.za, align 4, !tbaa !177
  store <4 x float> %wide.load1061, ptr %i.zb, align 4, !tbaa !177
  %index.next1062 = add nuw i64 %index1059, 8     ; 2 uses
  %i.zc = icmp eq i64 %index.next1062, %n.vec1057
  br i1 %i.zc, label %middle.block1063, label %vector.body1058, !llvm.loop !294

middle.block1063:                                 ; preds = %vector.body1058
  %cmp.n1064 = icmp eq i64 %n.vec1057, %wide.trip.count.i385
  br i1 %cmp.n1064, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", label %scalar.ph1052.preheader

scalar.ph1052.preheader:                          ; preds = %vector.memcheck1054, %.lr.ph.i383, %middle.block1063
  %indvars.iv.i386.ph = phi i64 [ 0, %vector.memcheck1054 ], [ 0, %.lr.ph.i383 ], [ %n.vec1057, %middle.block1063 ] ; 3 uses
  %i.zd = zext nneg i32 %smax.i384 to i64         ; 2 uses
  %i.ze = add nuw nsw i64 %i.zd, 1
  %i.zf = sub nsw i64 %i.zd, %indvars.iv.i386.ph
  %xtraiter1264 = and i64 %i.ze, 3                ; 2 uses
  %lcmp.mod1265.not = icmp eq i64 %xtraiter1264, 0
  br i1 %lcmp.mod1265.not, label %scalar.ph1052.prol.loopexit, label %scalar.ph1052.prol

scalar.ph1052.prol:                               ; preds = %scalar.ph1052.preheader, %scalar.ph1052.prol
  %indvars.iv.i386.prol = phi i64 [ %indvars.iv.next.i387.prol, %scalar.ph1052.prol ], [ %indvars.iv.i386.ph, %scalar.ph1052.preheader ] ; 3 uses
  %prol.iter1266 = phi i64 [ %prol.iter1266.next, %scalar.ph1052.prol ], [ 0, %scalar.ph1052.preheader ]
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i386.prol
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !177
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i386.prol
  store float %i.zh, ptr %i.zi, align 4, !tbaa !177
  %indvars.iv.next.i387.prol = add nuw nsw i64 %indvars.iv.i386.prol, 1 ; 2 uses
  %prol.iter1266.next = add i64 %prol.iter1266, 1 ; 2 uses
  %prol.iter1266.cmp.not = icmp eq i64 %prol.iter1266.next, %xtraiter1264
  br i1 %prol.iter1266.cmp.not, label %scalar.ph1052.prol.loopexit, label %scalar.ph1052.prol, !llvm.loop !295

scalar.ph1052.prol.loopexit:                      ; preds = %scalar.ph1052.prol, %scalar.ph1052.preheader
  %indvars.iv.i386.unr = phi i64 [ %indvars.iv.i386.ph, %scalar.ph1052.preheader ], [ %indvars.iv.next.i387.prol, %scalar.ph1052.prol ]
  %i.zj = icmp ult i64 %i.zf, 3
  br i1 %i.zj, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", label %scalar.ph1052

scalar.ph1052:                                    ; preds = %scalar.ph1052.prol.loopexit, %scalar.ph1052
  %indvars.iv.i386 = phi i64 [ %indvars.iv.next.i387.3, %scalar.ph1052 ], [ %indvars.iv.i386.unr, %scalar.ph1052.prol.loopexit ] ; 6 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i386
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !177
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i386
  store float %i.zl, ptr %i.zm, align 4, !tbaa !177
  %indvars.iv.next.i387 = add nuw nsw i64 %indvars.iv.i386, 1 ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i387
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !177
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i387
  store float %i.zo, ptr %i.zp, align 4, !tbaa !177
  %indvars.iv.next.i387.1 = add nuw nsw i64 %indvars.iv.i386, 2 ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i387.1
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !177
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i387.1
  store float %i.zr, ptr %i.zs, align 4, !tbaa !177
  %indvars.iv.next.i387.2 = add nuw nsw i64 %indvars.iv.i386, 3 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i387.2
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !177
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i387.2
  store float %i.zu, ptr %i.zv, align 4, !tbaa !177
  %indvars.iv.next.i387.3 = add nuw nsw i64 %indvars.iv.i386, 4 ; 2 uses
  %exitcond.not.i388.3 = icmp eq i64 %indvars.iv.next.i387.3, %wide.trip.count.i385
  br i1 %exitcond.not.i388.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", label %scalar.ph1052, !llvm.loop !296

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389": ; preds = %scalar.ph1052.prol.loopexit, %scalar.ph1052, %middle.block1063, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382"
  invoke void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.uh, ptr noundef nonnull %i.mt, ptr noundef nonnull %i.mw)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389"
  br i1 %i.oe, label %.lr.ph.preheader.i390, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396"

.lr.ph.preheader.i390:                            ; preds = %bb.bi
  %wide.trip.count.i391 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1031 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check1031, label %.lr.ph.i392.preheader, label %vector.memcheck1032

vector.memcheck1032:                              ; preds = %.lr.ph.preheader.i390
  %i.zw = sext i32 %i.mj to i64                   ; 2 uses
  %i.zx = shl nsw i64 %i.zw, 3
  %i.zy = add nsw i64 %i.zx, 47
  %diff.check1033 = icmp ult i64 %i.zy, 31
  %.neg1205 = mul nsw i64 %i.zw, -12
  %i.zz = add nsw i64 %.neg1205, -73
  %diff.check1034 = icmp ult i64 %i.zz, 31
  %conflict.rdx1035 = or i1 %diff.check1033, %diff.check1034
  br i1 %conflict.rdx1035, label %.lr.ph.i392.preheader, label %vector.ph1036

vector.ph1036:                                    ; preds = %vector.memcheck1032
  %n.vec1037 = and i64 %wide.trip.count.i391, 2147483640 ; 3 uses
  %broadcast.splatinsert1038 = insertelement <4 x float> poison, float %i.uh, i64 0
  %broadcast.splat1039 = shufflevector <4 x float> %broadcast.splatinsert1038, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1036
  %index1041 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1046, %vector.body1040 ] ; 4 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index1041 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %wide.load1042 = load <4 x float>, ptr %i.aaa, align 4, !tbaa !177
  %wide.load1043 = load <4 x float>, ptr %i.aab, align 4, !tbaa !177
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index1041 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %wide.load1044 = load <4 x float>, ptr %i.aac, align 4, !tbaa !177
  %wide.load1045 = load <4 x float>, ptr %i.aad, align 4, !tbaa !177
  %i.aae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1039, <4 x float> %wide.load1044, <4 x float> %wide.load1042)
  %i.aaf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1039, <4 x float> %wide.load1045, <4 x float> %wide.load1043)
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index1041 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  store <4 x float> %i.aae, ptr %i.aag, align 4, !tbaa !177
  store <4 x float> %i.aaf, ptr %i.aah, align 4, !tbaa !177
  %index.next1046 = add nuw i64 %index1041, 8     ; 2 uses
  %i.aai = icmp eq i64 %index.next1046, %n.vec1037
  br i1 %i.aai, label %middle.block1047, label %vector.body1040, !llvm.loop !297

middle.block1047:                                 ; preds = %vector.body1040
  %cmp.n1048 = icmp eq i64 %n.vec1037, %wide.trip.count.i391
  br i1 %cmp.n1048, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396", label %.lr.ph.i392.preheader

.lr.ph.i392.preheader:                            ; preds = %vector.memcheck1032, %.lr.ph.preheader.i390, %middle.block1047
  %indvars.iv.i393.ph = phi i64 [ 0, %vector.memcheck1032 ], [ 0, %.lr.ph.preheader.i390 ], [ %n.vec1037, %middle.block1047 ] ; 6 uses
  %xtraiter1267 = and i64 %wide.trip.count.i391, 1
  %lcmp.mod1268.not = icmp eq i64 %xtraiter1267, 0
  br i1 %lcmp.mod1268.not, label %.lr.ph.i392.prol.loopexit, label %.lr.ph.i392.prol

.lr.ph.i392.prol:                                 ; preds = %.lr.ph.i392.preheader
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i393.ph
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !177
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i393.ph
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !177
  %i.aan = call float @llvm.fmuladd.f32(float %i.uh, float %i.aam, float %i.aak)
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i393.ph
  store float %i.aan, ptr %i.aao, align 4, !tbaa !177
  %indvars.iv.next.i394.prol = or disjoint i64 %indvars.iv.i393.ph, 1
  br label %.lr.ph.i392.prol.loopexit

.lr.ph.i392.prol.loopexit:                        ; preds = %.lr.ph.i392.prol, %.lr.ph.i392.preheader
  %indvars.iv.i393.unr = phi i64 [ %indvars.iv.i393.ph, %.lr.ph.i392.preheader ], [ %indvars.iv.next.i394.prol, %.lr.ph.i392.prol ]
  %i.aap = add nsw i64 %wide.trip.count.i391, -1
  %i.aaq = icmp eq i64 %indvars.iv.i393.ph, %i.aap
  br i1 %i.aaq, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396", label %.lr.ph.i392

.lr.ph.i392:                                      ; preds = %.lr.ph.i392.prol.loopexit, %.lr.ph.i392
  %indvars.iv.i393 = phi i64 [ %indvars.iv.next.i394.1, %.lr.ph.i392 ], [ %indvars.iv.i393.unr, %.lr.ph.i392.prol.loopexit ] ; 5 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i393
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !177
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i393
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !177
  %i.aav = call float @llvm.fmuladd.f32(float %i.uh, float %i.aau, float %i.aas)
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i393
  store float %i.aav, ptr %i.aaw, align 4, !tbaa !177
  %indvars.iv.next.i394 = add nuw nsw i64 %indvars.iv.i393, 1 ; 3 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i394
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !177
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i394
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !177
  %i.abb = call float @llvm.fmuladd.f32(float %i.uh, float %i.aba, float %i.aay)
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i394
  store float %i.abb, ptr %i.abc, align 4, !tbaa !177
  %indvars.iv.next.i394.1 = add nuw nsw i64 %indvars.iv.i393, 2 ; 2 uses
  %exitcond.not.i395.1 = icmp eq i64 %indvars.iv.next.i394.1, %wide.trip.count.i391
  br i1 %exitcond.not.i395.1, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396", label %.lr.ph.i392, !llvm.loop !298

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396": ; preds = %.lr.ph.i392.prol.loopexit, %.lr.ph.i392, %middle.block1047, %bb.bi
  %i.abd = load ptr, ptr %i.vp, align 8, !tbaa !144 ; 7 uses
  %i.abe = ptrtoaddr ptr %i.abd to i64
  %i.abf = load i32, ptr %i.mi, align 4, !tbaa !182 ; 2 uses
  %i.abg = icmp sgt i32 %i.abf, -6
  br i1 %i.abg, label %.lr.ph.preheader.i397, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404"

.lr.ph.preheader.i397:                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396"
  %i.abh = add i32 %i.abf, 5                      ; 2 uses
  %smax.i398 = call i32 @llvm.smax.i32(i32 %i.abh, i32 0) ; 2 uses
  %i.abi = add nuw i32 %smax.i398, 1
  %wide.trip.count.i399 = zext i32 %i.abi to i64  ; 3 uses
  %min.iters.check1013 = icmp slt i32 %i.abh, 11
  br i1 %min.iters.check1013, label %.lr.ph.i400.preheader, label %vector.memcheck1014

vector.memcheck1014:                              ; preds = %.lr.ph.preheader.i397
  %i.abj = sext i32 %i.mj to i64
  %i.abk = sext i32 %i.mm to i64
  %i.abl = add nsw i64 %i.abj, %i.abk
  %i.abm = shl nsw i64 %i.abl, 3
  %i.abn = add i64 %i.abm, %11
  %i.abo = sub i64 %i.abe, %i.abn
  %i.abp = add i64 %i.abo, -105
  %diff.check1015 = icmp ult i64 %i.abp, 31
  br i1 %diff.check1015, label %.lr.ph.i400.preheader, label %vector.ph1016

vector.ph1016:                                    ; preds = %vector.memcheck1014
  %n.vec1017 = and i64 %wide.trip.count.i399, 4294967288 ; 3 uses
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1016
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1022, %vector.body1018 ] ; 3 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index1019 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %wide.load1020 = load <4 x float>, ptr %i.abq, align 4, !tbaa !177
  %wide.load1021 = load <4 x float>, ptr %i.abr, align 4, !tbaa !177
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %index1019 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  store <4 x float> %wide.load1020, ptr %i.abs, align 4, !tbaa !177
  store <4 x float> %wide.load1021, ptr %i.abt, align 4, !tbaa !177
  %index.next1022 = add nuw i64 %index1019, 8     ; 2 uses
  %i.abu = icmp eq i64 %index.next1022, %n.vec1017
  br i1 %i.abu, label %middle.block1023, label %vector.body1018, !llvm.loop !299

middle.block1023:                                 ; preds = %vector.body1018
  %cmp.n1024 = icmp eq i64 %n.vec1017, %wide.trip.count.i399
  br i1 %cmp.n1024, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", label %.lr.ph.i400.preheader

.lr.ph.i400.preheader:                            ; preds = %vector.memcheck1014, %.lr.ph.preheader.i397, %middle.block1023
  %indvars.iv.i401.ph = phi i64 [ 0, %vector.memcheck1014 ], [ 0, %.lr.ph.preheader.i397 ], [ %n.vec1017, %middle.block1023 ] ; 3 uses
  %i.abv = zext nneg i32 %smax.i398 to i64        ; 2 uses
  %i.abw = add nuw nsw i64 %i.abv, 1
  %i.abx = sub nsw i64 %i.abv, %indvars.iv.i401.ph
  %xtraiter1270 = and i64 %i.abw, 3               ; 2 uses
  %lcmp.mod1271.not = icmp eq i64 %xtraiter1270, 0
  br i1 %lcmp.mod1271.not, label %.lr.ph.i400.prol.loopexit, label %.lr.ph.i400.prol

.lr.ph.i400.prol:                                 ; preds = %.lr.ph.i400.preheader, %.lr.ph.i400.prol
  %indvars.iv.i401.prol = phi i64 [ %indvars.iv.next.i402.prol, %.lr.ph.i400.prol ], [ %indvars.iv.i401.ph, %.lr.ph.i400.preheader ] ; 3 uses
  %prol.iter1272 = phi i64 [ %prol.iter1272.next, %.lr.ph.i400.prol ], [ 0, %.lr.ph.i400.preheader ]
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i401.prol
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !177
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.i401.prol
  store float %i.abz, ptr %i.aca, align 4, !tbaa !177
  %indvars.iv.next.i402.prol = add nuw nsw i64 %indvars.iv.i401.prol, 1 ; 2 uses
  %prol.iter1272.next = add i64 %prol.iter1272, 1 ; 2 uses
  %prol.iter1272.cmp.not = icmp eq i64 %prol.iter1272.next, %xtraiter1270
  br i1 %prol.iter1272.cmp.not, label %.lr.ph.i400.prol.loopexit, label %.lr.ph.i400.prol, !llvm.loop !300

.lr.ph.i400.prol.loopexit:                        ; preds = %.lr.ph.i400.prol, %.lr.ph.i400.preheader
  %indvars.iv.i401.unr = phi i64 [ %indvars.iv.i401.ph, %.lr.ph.i400.preheader ], [ %indvars.iv.next.i402.prol, %.lr.ph.i400.prol ]
  %i.acb = icmp ult i64 %i.abx, 3
  br i1 %i.acb, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %.lr.ph.i400.prol.loopexit, %.lr.ph.i400
  %indvars.iv.i401 = phi i64 [ %indvars.iv.next.i402.3, %.lr.ph.i400 ], [ %indvars.iv.i401.unr, %.lr.ph.i400.prol.loopexit ] ; 6 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i401
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !177
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.i401
  store float %i.acd, ptr %i.ace, align 4, !tbaa !177
  %indvars.iv.next.i402 = add nuw nsw i64 %indvars.iv.i401, 1 ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i402
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !177
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.next.i402
  store float %i.acg, ptr %i.ach, align 4, !tbaa !177
  %indvars.iv.next.i402.1 = add nuw nsw i64 %indvars.iv.i401, 2 ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i402.1
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !177
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.next.i402.1
  store float %i.acj, ptr %i.ack, align 4, !tbaa !177
  %indvars.iv.next.i402.2 = add nuw nsw i64 %indvars.iv.i401, 3 ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i402.2
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !177
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.next.i402.2
  store float %i.acm, ptr %i.acn, align 4, !tbaa !177
  %indvars.iv.next.i402.3 = add nuw nsw i64 %indvars.iv.i401, 4 ; 2 uses
  %exitcond.not.i403.3 = icmp eq i64 %indvars.iv.next.i402.3, %wide.trip.count.i399
  br i1 %exitcond.not.i403.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", label %.lr.ph.i400, !llvm.loop !301

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404": ; preds = %.lr.ph.i400.prol.loopexit, %.lr.ph.i400, %middle.block1023, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396"
  %i.aco = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.acp = trunc nuw i8 %i.aco to i1
  %i.acq = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.acr = trunc nuw i8 %i.acq to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.acp, i1 noundef zeroext %i.acr)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404"
  %i.acs = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.act = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.acu = ptrtoaddr ptr %i.act to i64
  %i.acv = sext i32 %i.acs to i64                 ; 2 uses
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.act, i64 %i.acv ; 6 uses
  br i1 %i.oe, label %.lr.ph.preheader.i405, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411"

.lr.ph.preheader.i405:                            ; preds = %bb.bj
  %wide.trip.count.i406 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check997 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check997, label %.lr.ph.i407.preheader, label %vector.memcheck998

vector.memcheck998:                               ; preds = %.lr.ph.preheader.i405
  %i.acx = sext i32 %i.mj to i64
  %i.acy = mul nsw i64 %i.acx, 24
  %i.acz = sext i32 %i.mm to i64
  %i.ada = shl nsw i64 %i.acz, 3
  %i.adb = shl nsw i64 %i.acv, 2
  %i.adc = add i64 %i.acy, %11
  %i.add = add i64 %i.adc, %i.ada
  %i.ade = add i64 %i.adb, %i.acu
  %i.adf = sub i64 %i.add, %i.ade
  %i.adg = add i64 %i.adf, 199
  %diff.check999 = icmp ult i64 %i.adg, 31
  br i1 %diff.check999, label %.lr.ph.i407.preheader, label %vector.ph1000

vector.ph1000:                                    ; preds = %vector.memcheck998
  %n.vec1001 = and i64 %wide.trip.count.i406, 2147483640 ; 3 uses
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1006, %vector.body1002 ] ; 3 uses
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %index1003 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %wide.load1004 = load <4 x float>, ptr %i.adh, align 4, !tbaa !177
  %wide.load1005 = load <4 x float>, ptr %i.adi, align 4, !tbaa !177
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %index1003 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  store <4 x float> %wide.load1004, ptr %i.adj, align 4, !tbaa !177
  store <4 x float> %wide.load1005, ptr %i.adk, align 4, !tbaa !177
  %index.next1006 = add nuw i64 %index1003, 8     ; 2 uses
  %i.adl = icmp eq i64 %index.next1006, %n.vec1001
  br i1 %i.adl, label %middle.block1007, label %vector.body1002, !llvm.loop !302

middle.block1007:                                 ; preds = %vector.body1002
  %cmp.n1008 = icmp eq i64 %n.vec1001, %wide.trip.count.i406
  br i1 %cmp.n1008, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411", label %.lr.ph.i407.preheader

.lr.ph.i407.preheader:                            ; preds = %vector.memcheck998, %.lr.ph.preheader.i405, %middle.block1007
  %indvars.iv.i408.ph = phi i64 [ 0, %vector.memcheck998 ], [ 0, %.lr.ph.preheader.i405 ], [ %n.vec1001, %middle.block1007 ] ; 3 uses
  %xtraiter1273 = and i64 %wide.trip.count.i406, 3 ; 2 uses
  %lcmp.mod1274.not = icmp eq i64 %xtraiter1273, 0
  br i1 %lcmp.mod1274.not, label %.lr.ph.i407.prol.loopexit, label %.lr.ph.i407.prol

.lr.ph.i407.prol:                                 ; preds = %.lr.ph.i407.preheader, %.lr.ph.i407.prol
  %indvars.iv.i408.prol = phi i64 [ %indvars.iv.next.i409.prol, %.lr.ph.i407.prol ], [ %indvars.iv.i408.ph, %.lr.ph.i407.preheader ] ; 3 uses
  %prol.iter1275 = phi i64 [ %prol.iter1275.next, %.lr.ph.i407.prol ], [ 0, %.lr.ph.i407.preheader ]
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.i408.prol
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !177
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i408.prol
  store float %i.adn, ptr %i.ado, align 4, !tbaa !177
  %indvars.iv.next.i409.prol = add nuw nsw i64 %indvars.iv.i408.prol, 1 ; 2 uses
  %prol.iter1275.next = add i64 %prol.iter1275, 1 ; 2 uses
  %prol.iter1275.cmp.not = icmp eq i64 %prol.iter1275.next, %xtraiter1273
  br i1 %prol.iter1275.cmp.not, label %.lr.ph.i407.prol.loopexit, label %.lr.ph.i407.prol, !llvm.loop !303

.lr.ph.i407.prol.loopexit:                        ; preds = %.lr.ph.i407.prol, %.lr.ph.i407.preheader
  %indvars.iv.i408.unr = phi i64 [ %indvars.iv.i408.ph, %.lr.ph.i407.preheader ], [ %indvars.iv.next.i409.prol, %.lr.ph.i407.prol ]
  %i.adp = sub nsw i64 %indvars.iv.i408.ph, %wide.trip.count.i406
  %i.adq = icmp ugt i64 %i.adp, -4
  br i1 %i.adq, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411", label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %.lr.ph.i407.prol.loopexit, %.lr.ph.i407
  %indvars.iv.i408 = phi i64 [ %indvars.iv.next.i409.3, %.lr.ph.i407 ], [ %indvars.iv.i408.unr, %.lr.ph.i407.prol.loopexit ] ; 6 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.i408
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !177
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i408
  store float %i.ads, ptr %i.adt, align 4, !tbaa !177
  %indvars.iv.next.i409 = add nuw nsw i64 %indvars.iv.i408, 1 ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.next.i409
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !177
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i409
  store float %i.adv, ptr %i.adw, align 4, !tbaa !177
  %indvars.iv.next.i409.1 = add nuw nsw i64 %indvars.iv.i408, 2 ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.next.i409.1
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !177
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i409.1
  store float %i.ady, ptr %i.adz, align 4, !tbaa !177
  %indvars.iv.next.i409.2 = add nuw nsw i64 %indvars.iv.i408, 3 ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.next.i409.2
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !177
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i409.2
  store float %i.aeb, ptr %i.aec, align 4, !tbaa !177
  %indvars.iv.next.i409.3 = add nuw nsw i64 %indvars.iv.i408, 4 ; 2 uses
  %exitcond.not.i410.3 = icmp eq i64 %indvars.iv.next.i409.3, %wide.trip.count.i406
  br i1 %exitcond.not.i410.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411", label %.lr.ph.i407, !llvm.loop !304

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411": ; preds = %.lr.ph.i407.prol.loopexit, %.lr.ph.i407, %middle.block1007, %bb.bj
  %i.aed = load i32, ptr %i.ml, align 8, !tbaa !332 ; 2 uses
  %i.aee = icmp sgt i32 %i.aed, -7
  br i1 %i.aee, label %.lr.ph.i412, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418"

.lr.ph.i412:                                      ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411"
  %i.aef = add i32 %i.aed, 6                      ; 2 uses
  %smax.i413 = call i32 @llvm.smax.i32(i32 %i.aef, i32 0) ; 2 uses
  %i.aeg = add nuw i32 %smax.i413, 1
  %wide.trip.count.i414 = zext i32 %i.aeg to i64  ; 3 uses
  %min.iters.check981 = icmp slt i32 %i.aef, 7
  br i1 %min.iters.check981, label %scalar.ph980.preheader, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i412
  %i.aeh = sext i32 %i.mm to i64
  %i.aei = shl nsw i64 %i.aeh, 2
  %i.aej = add nsw i64 %i.aei, 27
  %diff.check983 = icmp ult i64 %i.aej, 31
  br i1 %diff.check983, label %scalar.ph980.preheader, label %vector.ph984

vector.ph984:                                     ; preds = %vector.memcheck982
  %n.vec985 = and i64 %wide.trip.count.i414, 4294967288 ; 3 uses
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next990, %vector.body986 ] ; 3 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index987 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %wide.load988 = load <4 x float>, ptr %i.aek, align 4, !tbaa !177
  %wide.load989 = load <4 x float>, ptr %i.ael, align 4, !tbaa !177
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %index987 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  store <4 x float> %wide.load988, ptr %i.aem, align 4, !tbaa !177
  store <4 x float> %wide.load989, ptr %i.aen, align 4, !tbaa !177
  %index.next990 = add nuw i64 %index987, 8       ; 2 uses
  %i.aeo = icmp eq i64 %index.next990, %n.vec985
  br i1 %i.aeo, label %middle.block991, label %vector.body986, !llvm.loop !305

middle.block991:                                  ; preds = %vector.body986
  %cmp.n992 = icmp eq i64 %n.vec985, %wide.trip.count.i414
  br i1 %cmp.n992, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", label %scalar.ph980.preheader

scalar.ph980.preheader:                           ; preds = %vector.memcheck982, %.lr.ph.i412, %middle.block991
  %indvars.iv.i415.ph = phi i64 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i412 ], [ %n.vec985, %middle.block991 ] ; 3 uses
  %i.aep = zext nneg i32 %smax.i413 to i64        ; 2 uses
  %i.aeq = add nuw nsw i64 %i.aep, 1
  %i.aer = sub nsw i64 %i.aep, %indvars.iv.i415.ph
  %xtraiter1276 = and i64 %i.aeq, 3               ; 2 uses
  %lcmp.mod1277.not = icmp eq i64 %xtraiter1276, 0
  br i1 %lcmp.mod1277.not, label %scalar.ph980.prol.loopexit, label %scalar.ph980.prol

scalar.ph980.prol:                                ; preds = %scalar.ph980.preheader, %scalar.ph980.prol
  %indvars.iv.i415.prol = phi i64 [ %indvars.iv.next.i416.prol, %scalar.ph980.prol ], [ %indvars.iv.i415.ph, %scalar.ph980.preheader ] ; 3 uses
  %prol.iter1278 = phi i64 [ %prol.iter1278.next, %scalar.ph980.prol ], [ 0, %scalar.ph980.preheader ]
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i415.prol
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !177
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i415.prol
  store float %i.aet, ptr %i.aeu, align 4, !tbaa !177
  %indvars.iv.next.i416.prol = add nuw nsw i64 %indvars.iv.i415.prol, 1 ; 2 uses
  %prol.iter1278.next = add i64 %prol.iter1278, 1 ; 2 uses
  %prol.iter1278.cmp.not = icmp eq i64 %prol.iter1278.next, %xtraiter1276
  br i1 %prol.iter1278.cmp.not, label %scalar.ph980.prol.loopexit, label %scalar.ph980.prol, !llvm.loop !306

scalar.ph980.prol.loopexit:                       ; preds = %scalar.ph980.prol, %scalar.ph980.preheader
  %indvars.iv.i415.unr = phi i64 [ %indvars.iv.i415.ph, %scalar.ph980.preheader ], [ %indvars.iv.next.i416.prol, %scalar.ph980.prol ]
  %i.aev = icmp ult i64 %i.aer, 3
  br i1 %i.aev, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", label %scalar.ph980

scalar.ph980:                                     ; preds = %scalar.ph980.prol.loopexit, %scalar.ph980
  %indvars.iv.i415 = phi i64 [ %indvars.iv.next.i416.3, %scalar.ph980 ], [ %indvars.iv.i415.unr, %scalar.ph980.prol.loopexit ] ; 6 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i415
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !177
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i415
  store float %i.aex, ptr %i.aey, align 4, !tbaa !177
  %indvars.iv.next.i416 = add nuw nsw i64 %indvars.iv.i415, 1 ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i416
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !177
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i416
  store float %i.afa, ptr %i.afb, align 4, !tbaa !177
  %indvars.iv.next.i416.1 = add nuw nsw i64 %indvars.iv.i415, 2 ; 2 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i416.1
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !177
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i416.1
  store float %i.afd, ptr %i.afe, align 4, !tbaa !177
  %indvars.iv.next.i416.2 = add nuw nsw i64 %indvars.iv.i415, 3 ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.i416.2
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !177
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.next.i416.2
  store float %i.afg, ptr %i.afh, align 4, !tbaa !177
  %indvars.iv.next.i416.3 = add nuw nsw i64 %indvars.iv.i415, 4 ; 2 uses
  %exitcond.not.i417.3 = icmp eq i64 %indvars.iv.next.i416.3, %wide.trip.count.i414
  br i1 %exitcond.not.i417.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", label %scalar.ph980, !llvm.loop !307

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418": ; preds = %scalar.ph980.prol.loopexit, %scalar.ph980, %middle.block991, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411"
  invoke void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.ra, ptr noundef nonnull %i.mt, ptr noundef nonnull %i.mx)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418"
  br i1 %i.oe, label %.lr.ph.preheader.i419, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"

.lr.ph.preheader.i419:                            ; preds = %bb.bk
  %wide.trip.count.i420 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check959 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check959, label %.lr.ph.i421.preheader, label %vector.memcheck960

vector.memcheck960:                               ; preds = %.lr.ph.preheader.i419
  %i.afi = sext i32 %i.mj to i64
  %i.afj = mul nsw i64 %i.afi, 12                 ; 2 uses
  %i.afk = add nsw i64 %i.afj, 71
  %diff.check961 = icmp ult i64 %i.afk, 31
  %i.afl = add nsw i64 %i.afj, 103
  %diff.check962 = icmp ult i64 %i.afl, 31
  %conflict.rdx963 = or i1 %diff.check961, %diff.check962
  br i1 %conflict.rdx963, label %.lr.ph.i421.preheader, label %vector.ph964

vector.ph964:                                     ; preds = %vector.memcheck960
  %n.vec965 = and i64 %wide.trip.count.i420, 2147483640 ; 3 uses
  %broadcast.splatinsert966 = insertelement <4 x float> poison, float %i.ra, i64 0
  %broadcast.splat967 = shufflevector <4 x float> %broadcast.splatinsert966, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph964
  %index969 = phi i64 [ 0, %vector.ph964 ], [ %index.next974, %vector.body968 ] ; 4 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index969 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %wide.load970 = load <4 x float>, ptr %i.afm, align 4, !tbaa !177
  %wide.load971 = load <4 x float>, ptr %i.afn, align 4, !tbaa !177
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %index969 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %wide.load972 = load <4 x float>, ptr %i.afo, align 4, !tbaa !177
  %wide.load973 = load <4 x float>, ptr %i.afp, align 4, !tbaa !177
  %i.afq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat967, <4 x float> %wide.load972, <4 x float> %wide.load970)
  %i.afr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat967, <4 x float> %wide.load973, <4 x float> %wide.load971)
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index969 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  store <4 x float> %i.afq, ptr %i.afs, align 4, !tbaa !177
  store <4 x float> %i.afr, ptr %i.aft, align 4, !tbaa !177
  %index.next974 = add nuw i64 %index969, 8       ; 2 uses
  %i.afu = icmp eq i64 %index.next974, %n.vec965
  br i1 %i.afu, label %middle.block975, label %vector.body968, !llvm.loop !308

middle.block975:                                  ; preds = %vector.body968
  %cmp.n976 = icmp eq i64 %n.vec965, %wide.trip.count.i420
  br i1 %cmp.n976, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425", label %.lr.ph.i421.preheader

.lr.ph.i421.preheader:                            ; preds = %vector.memcheck960, %.lr.ph.preheader.i419, %middle.block975
  %indvars.iv.i422.ph = phi i64 [ 0, %vector.memcheck960 ], [ 0, %.lr.ph.preheader.i419 ], [ %n.vec965, %middle.block975 ] ; 6 uses
  %xtraiter1279 = and i64 %wide.trip.count.i420, 1
  %lcmp.mod1280.not = icmp eq i64 %xtraiter1279, 0
  br i1 %lcmp.mod1280.not, label %.lr.ph.i421.prol.loopexit, label %.lr.ph.i421.prol

.lr.ph.i421.prol:                                 ; preds = %.lr.ph.i421.preheader
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i422.ph
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !177
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i422.ph
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !177
  %i.afz = call float @llvm.fmuladd.f32(float %i.ra, float %i.afy, float %i.afw)
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i422.ph
  store float %i.afz, ptr %i.aga, align 4, !tbaa !177
  %indvars.iv.next.i423.prol = or disjoint i64 %indvars.iv.i422.ph, 1
  br label %.lr.ph.i421.prol.loopexit

.lr.ph.i421.prol.loopexit:                        ; preds = %.lr.ph.i421.prol, %.lr.ph.i421.preheader
  %indvars.iv.i422.unr = phi i64 [ %indvars.iv.i422.ph, %.lr.ph.i421.preheader ], [ %indvars.iv.next.i423.prol, %.lr.ph.i421.prol ]
  %i.agb = add nsw i64 %wide.trip.count.i420, -1
  %i.agc = icmp eq i64 %indvars.iv.i422.ph, %i.agb
  br i1 %i.agc, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425", label %.lr.ph.i421

.lr.ph.i421:                                      ; preds = %.lr.ph.i421.prol.loopexit, %.lr.ph.i421
  %indvars.iv.i422 = phi i64 [ %indvars.iv.next.i423.1, %.lr.ph.i421 ], [ %indvars.iv.i422.unr, %.lr.ph.i421.prol.loopexit ] ; 5 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i422
  %i.age = load float, ptr %i.agd, align 4, !tbaa !177
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i422
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !177
  %i.agh = call float @llvm.fmuladd.f32(float %i.ra, float %i.agg, float %i.age)
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i422
  store float %i.agh, ptr %i.agi, align 4, !tbaa !177
  %indvars.iv.next.i423 = add nuw nsw i64 %indvars.iv.i422, 1 ; 3 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i423
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !177
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i423
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !177
  %i.agn = call float @llvm.fmuladd.f32(float %i.ra, float %i.agm, float %i.agk)
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i423
  store float %i.agn, ptr %i.ago, align 4, !tbaa !177
  %indvars.iv.next.i423.1 = add nuw nsw i64 %indvars.iv.i422, 2 ; 2 uses
  %exitcond.not.i424.1 = icmp eq i64 %indvars.iv.next.i423.1, %wide.trip.count.i420
  br i1 %exitcond.not.i424.1, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425", label %.lr.ph.i421, !llvm.loop !309

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425": ; preds = %.lr.ph.i421.prol.loopexit, %.lr.ph.i421, %middle.block975, %bb.bk
  %i.agp = load ptr, ptr %i.vp, align 8, !tbaa !144 ; 7 uses
  %i.agq = ptrtoaddr ptr %i.agp to i64
  %i.agr = load i32, ptr %i.mi, align 4, !tbaa !182 ; 2 uses
  %i.ags = icmp sgt i32 %i.agr, -6
  br i1 %i.ags, label %.lr.ph.preheader.i426, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433"

.lr.ph.preheader.i426:                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"
  %i.agt = add i32 %i.agr, 5                      ; 2 uses
  %smax.i427 = call i32 @llvm.smax.i32(i32 %i.agt, i32 0) ; 2 uses
  %i.agu = add nuw i32 %smax.i427, 1
  %wide.trip.count.i428 = zext i32 %i.agu to i64  ; 3 uses
  %min.iters.check941 = icmp slt i32 %i.agt, 11
  br i1 %min.iters.check941, label %.lr.ph.i429.preheader, label %vector.memcheck942

vector.memcheck942:                               ; preds = %.lr.ph.preheader.i426
  %i.agv = sext i32 %i.mm to i64
  %i.agw = shl nsw i64 %i.agv, 3
  %i.agx = sext i32 %i.mj to i64
  %.neg1206 = mul nsw i64 %i.agx, -12
  %i.agy = add i64 %i.agq, -128
  %i.agz = add i64 %i.agw, %11
  %i.aha = sub i64 %i.agy, %i.agz
  %i.ahb = add i64 %.neg1206, %i.aha
  %i.ahc = add i64 %i.ahb, -1
  %diff.check943 = icmp ult i64 %i.ahc, 31
  br i1 %diff.check943, label %.lr.ph.i429.preheader, label %vector.ph944

vector.ph944:                                     ; preds = %vector.memcheck942
  %n.vec945 = and i64 %wide.trip.count.i428, 4294967288 ; 3 uses
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %vector.ph944
  %index947 = phi i64 [ 0, %vector.ph944 ], [ %index.next950, %vector.body946 ] ; 3 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index947 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %wide.load948 = load <4 x float>, ptr %i.ahd, align 4, !tbaa !177
  %wide.load949 = load <4 x float>, ptr %i.ahe, align 4, !tbaa !177
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %index947 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  store <4 x float> %wide.load948, ptr %i.ahf, align 4, !tbaa !177
  store <4 x float> %wide.load949, ptr %i.ahg, align 4, !tbaa !177
  %index.next950 = add nuw i64 %index947, 8       ; 2 uses
  %i.ahh = icmp eq i64 %index.next950, %n.vec945
  br i1 %i.ahh, label %middle.block951, label %vector.body946, !llvm.loop !310

middle.block951:                                  ; preds = %vector.body946
  %cmp.n952 = icmp eq i64 %n.vec945, %wide.trip.count.i428
  br i1 %cmp.n952, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429.preheader

.lr.ph.i429.preheader:                            ; preds = %vector.memcheck942, %.lr.ph.preheader.i426, %middle.block951
  %indvars.iv.i430.ph = phi i64 [ 0, %vector.memcheck942 ], [ 0, %.lr.ph.preheader.i426 ], [ %n.vec945, %middle.block951 ] ; 3 uses
  %i.ahi = zext nneg i32 %smax.i427 to i64        ; 2 uses
  %i.ahj = add nuw nsw i64 %i.ahi, 1
  %i.ahk = sub nsw i64 %i.ahi, %indvars.iv.i430.ph
  %xtraiter1282 = and i64 %i.ahj, 3               ; 2 uses
  %lcmp.mod1283.not = icmp eq i64 %xtraiter1282, 0
  br i1 %lcmp.mod1283.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol

.lr.ph.i429.prol:                                 ; preds = %.lr.ph.i429.preheader, %.lr.ph.i429.prol
  %indvars.iv.i430.prol = phi i64 [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ], [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ] ; 3 uses
  %prol.iter1284 = phi i64 [ %prol.iter1284.next, %.lr.ph.i429.prol ], [ 0, %.lr.ph.i429.preheader ]
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i430.prol
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !177
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv.i430.prol
  store float %i.ahm, ptr %i.ahn, align 4, !tbaa !177
  %indvars.iv.next.i431.prol = add nuw nsw i64 %indvars.iv.i430.prol, 1 ; 2 uses
  %prol.iter1284.next = add i64 %prol.iter1284, 1 ; 2 uses
  %prol.iter1284.cmp.not = icmp eq i64 %prol.iter1284.next, %xtraiter1282
  br i1 %prol.iter1284.cmp.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol, !llvm.loop !311

.lr.ph.i429.prol.loopexit:                        ; preds = %.lr.ph.i429.prol, %.lr.ph.i429.preheader
  %indvars.iv.i430.unr = phi i64 [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ], [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ]
  %i.aho = icmp ult i64 %i.ahk, 3
  br i1 %i.aho, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429
  %indvars.iv.i430 = phi i64 [ %indvars.iv.next.i431.3, %.lr.ph.i429 ], [ %indvars.iv.i430.unr, %.lr.ph.i429.prol.loopexit ] ; 6 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i430
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !177
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv.i430
  store float %i.ahq, ptr %i.ahr, align 4, !tbaa !177
  %indvars.iv.next.i431 = add nuw nsw i64 %indvars.iv.i430, 1 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i431
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !177
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv.next.i431
  store float %i.aht, ptr %i.ahu, align 4, !tbaa !177
  %indvars.iv.next.i431.1 = add nuw nsw i64 %indvars.iv.i430, 2 ; 2 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i431.1
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !177
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv.next.i431.1
  store float %i.ahw, ptr %i.ahx, align 4, !tbaa !177
  %indvars.iv.next.i431.2 = add nuw nsw i64 %indvars.iv.i430, 3 ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i431.2
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !177
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv.next.i431.2
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !177
  %indvars.iv.next.i431.3 = add nuw nsw i64 %indvars.iv.i430, 4 ; 2 uses
  %exitcond.not.i432.3 = icmp eq i64 %indvars.iv.next.i431.3, %wide.trip.count.i428
  br i1 %exitcond.not.i432.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429, !llvm.loop !312

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433": ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429, %middle.block951, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"
  %i.aib = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.aic = trunc nuw i8 %i.aib to i1
  %i.aid = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.aie = trunc nuw i8 %i.aid to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.aic, i1 noundef zeroext %i.aie)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433"
  %i.aif = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.aig = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.aih = ptrtoaddr ptr %i.aig to i64
  %i.aii = sext i32 %i.aif to i64                 ; 2 uses
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aii ; 6 uses
  br i1 %i.oe, label %.lr.ph.preheader.i434, label %.loopexit552

.lr.ph.preheader.i434:                            ; preds = %bb.bl
  %wide.trip.count.i435 = zext i32 %i.mk to i64   ; 7 uses
  %min.iters.check925 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check925, label %.lr.ph.i436.preheader, label %vector.memcheck926

vector.memcheck926:                               ; preds = %.lr.ph.preheader.i434
  %i.aik = sext i32 %i.mj to i64
  %i.ail = mul nsw i64 %i.aik, 28
  %i.aim = sext i32 %i.mm to i64
  %i.ain = shl nsw i64 %i.aim, 3
  %i.aio = shl nsw i64 %i.aii, 2
  %i.aip = add i64 %i.ail, %11
  %i.aiq = add i64 %i.aip, %i.ain
  %i.air = add i64 %i.aio, %i.aih
  %i.ais = sub i64 %i.aiq, %i.air
  %i.ait = add i64 %i.ais, 223
  %diff.check927 = icmp ult i64 %i.ait, 31
  br i1 %diff.check927, label %.lr.ph.i436.preheader, label %vector.ph928

vector.ph928:                                     ; preds = %vector.memcheck926
  %n.vec929 = and i64 %wide.trip.count.i435, 2147483640 ; 3 uses
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next934, %vector.body930 ] ; 3 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %index931 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %wide.load932 = load <4 x float>, ptr %i.aiu, align 4, !tbaa !177
  %wide.load933 = load <4 x float>, ptr %i.aiv, align 4, !tbaa !177
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index931 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 16
  store <4 x float> %wide.load932, ptr %i.aiw, align 4, !tbaa !177
  store <4 x float> %wide.load933, ptr %i.aix, align 4, !tbaa !177
  %index.next934 = add nuw i64 %index931, 8       ; 2 uses
  %i.aiy = icmp eq i64 %index.next934, %n.vec929
  br i1 %i.aiy, label %middle.block935, label %vector.body930, !llvm.loop !313

middle.block935:                                  ; preds = %vector.body930
  %cmp.n936 = icmp eq i64 %n.vec929, %wide.trip.count.i435
  br i1 %cmp.n936, label %.loopexit1204, label %.lr.ph.i436.preheader

.lr.ph.i436.preheader:                            ; preds = %vector.memcheck926, %.lr.ph.preheader.i434, %middle.block935
  %indvars.iv.i437.ph = phi i64 [ 0, %vector.memcheck926 ], [ 0, %.lr.ph.preheader.i434 ], [ %n.vec929, %middle.block935 ] ; 3 uses
  %xtraiter1285 = and i64 %wide.trip.count.i435, 3 ; 2 uses
  %lcmp.mod1286.not = icmp eq i64 %xtraiter1285, 0
  br i1 %lcmp.mod1286.not, label %.lr.ph.i436.prol.loopexit, label %.lr.ph.i436.prol

.lr.ph.i436.prol:                                 ; preds = %.lr.ph.i436.preheader, %.lr.ph.i436.prol
  %indvars.iv.i437.prol = phi i64 [ %indvars.iv.next.i438.prol, %.lr.ph.i436.prol ], [ %indvars.iv.i437.ph, %.lr.ph.i436.preheader ] ; 3 uses
  %prol.iter1287 = phi i64 [ %prol.iter1287.next, %.lr.ph.i436.prol ], [ 0, %.lr.ph.i436.preheader ]
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i437.prol
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !177
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i437.prol
  store float %i.aja, ptr %i.ajb, align 4, !tbaa !177
  %indvars.iv.next.i438.prol = add nuw nsw i64 %indvars.iv.i437.prol, 1 ; 2 uses
  %prol.iter1287.next = add i64 %prol.iter1287, 1 ; 2 uses
  %prol.iter1287.cmp.not = icmp eq i64 %prol.iter1287.next, %xtraiter1285
  br i1 %prol.iter1287.cmp.not, label %.lr.ph.i436.prol.loopexit, label %.lr.ph.i436.prol, !llvm.loop !314

.lr.ph.i436.prol.loopexit:                        ; preds = %.lr.ph.i436.prol, %.lr.ph.i436.preheader
  %indvars.iv.i437.unr = phi i64 [ %indvars.iv.i437.ph, %.lr.ph.i436.preheader ], [ %indvars.iv.next.i438.prol, %.lr.ph.i436.prol ]
  %i.ajc = sub nsw i64 %indvars.iv.i437.ph, %wide.trip.count.i435
  %i.ajd = icmp ugt i64 %i.ajc, -4
  br i1 %i.ajd, label %.loopexit1204, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %.lr.ph.i436.prol.loopexit, %.lr.ph.i436
  %indvars.iv.i437 = phi i64 [ %indvars.iv.next.i438.3, %.lr.ph.i436 ], [ %indvars.iv.i437.unr, %.lr.ph.i436.prol.loopexit ] ; 6 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i437
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !177
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i437
  store float %i.ajf, ptr %i.ajg, align 4, !tbaa !177
  %indvars.iv.next.i438 = add nuw nsw i64 %indvars.iv.i437, 1 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.next.i438
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !177
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i438
  store float %i.aji, ptr %i.ajj, align 4, !tbaa !177
  %indvars.iv.next.i438.1 = add nuw nsw i64 %indvars.iv.i437, 2 ; 2 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.next.i438.1
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !177
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i438.1
  store float %i.ajl, ptr %i.ajm, align 4, !tbaa !177
  %indvars.iv.next.i438.2 = add nuw nsw i64 %indvars.iv.i437, 3 ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.next.i438.2
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !177
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i438.2
  store float %i.ajo, ptr %i.ajp, align 4, !tbaa !177
  %indvars.iv.next.i438.3 = add nuw nsw i64 %indvars.iv.i437, 4 ; 2 uses
  %exitcond.not.i439.3 = icmp eq i64 %indvars.iv.next.i438.3, %wide.trip.count.i435
  br i1 %exitcond.not.i439.3, label %.loopexit1204, label %.lr.ph.i436, !llvm.loop !315

.loopexit1204:                                    ; preds = %.lr.ph.i436.prol.loopexit, %.lr.ph.i436, %middle.block935
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 1, ptr %i.hj, align 8, !tbaa !143
  store ptr null, ptr %i.hk, align 8, !tbaa !144
  store i32 0, ptr %i.hl, align 4, !tbaa !145
  store i32 0, ptr %i.hm, align 8, !tbaa !146
  %i.ajq = shl nuw nsw i64 %i.mv, 2               ; 2 uses
  %i.ajr = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ajq, i32 noundef 16)
          to label %.lr.ph.i441 unwind label %bb.bn ; 7 uses

.lr.ph.i441:                                      ; preds = %.loopexit1204
  %i.ajs = ptrtoaddr ptr %i.ajr to i64            ; 9 uses
  store i8 1, ptr %i.hj, align 8, !tbaa !143
  store ptr %i.ajr, ptr %i.hk, align 8, !tbaa !144
  store i32 %i.mk, ptr %i.hm, align 8, !tbaa !146
  %i.ajt = sext i32 %i.mj to i64
  %i.aju = shl nsw i64 %i.ajt, 2
  %i.ajv = add nsw i64 %i.aju, 24                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ajr, i8 0, i64 %i.ajv, i1 false), !tbaa !177
  store i32 %i.mk, ptr %i.hl, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 1, ptr %i.hn, align 8, !tbaa !143
  store ptr null, ptr %i.ho, align 8, !tbaa !144
  store i32 0, ptr %i.hp, align 4, !tbaa !145
  store i32 0, ptr %i.hq, align 8, !tbaa !146
  %i.ajw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ajq, i32 noundef 16)
          to label %.lr.ph591 unwind label %.loopexit.split-lp.loopexit.split-lp ; 7 uses

.loopexit552:                                     ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 1, ptr %i.hj, align 8, !tbaa !143
  store ptr null, ptr %i.hk, align 8, !tbaa !144
  store i32 0, ptr %i.hm, align 8, !tbaa !146
  store i32 %i.mk, ptr %i.hl, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 1, ptr %i.hn, align 8, !tbaa !143
  store ptr null, ptr %i.ho, align 8, !tbaa !144
  store i32 0, ptr %i.hq, align 8, !tbaa !146
  store i32 %i.mk, ptr %i.hp, align 4, !tbaa !145
  br label %._crit_edge592

.lr.ph591:                                        ; preds = %.lr.ph.i441
  store i8 1, ptr %i.hn, align 8, !tbaa !143
  store ptr %i.ajw, ptr %i.ho, align 8, !tbaa !144
  store i32 %i.mk, ptr %i.hq, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr align 4 %i.ajw, i8 0, i64 %i.ajv, i1 false), !tbaa !177
  store i32 %i.mk, ptr %i.hp, align 4, !tbaa !145
  %i.ajx = fdiv float %i.ra, 6.000000e+00         ; 3 uses
  %wide.trip.count643.a = zext i32 %i.mk to i64
  %min.iters.check869 = icmp ult i32 %i.mk, 20
  br i1 %min.iters.check869, label %scalar.ph868.preheader, label %vector.memcheck870

vector.memcheck870:                               ; preds = %.lr.ph591
  %i.ajy = ptrtoaddr ptr %i.ajw to i64            ; 9 uses
  %i.ajz = sub i64 %i.ajs, %i.ajy
  %diff.check871 = icmp ugt i64 %i.ajz, -16
  %i.aka = sext i32 %i.mj to i64                  ; 7 uses
  %i.akb = mul nsw i64 %i.aka, 28                 ; 2 uses
  %i.akc = sext i32 %i.mm to i64
  %i.akd = shl nsw i64 %i.akc, 3                  ; 16 uses
  %i.ake = add i64 %i.akb, %11
  %i.akf = add i64 %i.ake, %i.akd
  %i.akg = sub i64 %i.akf, %i.ajs
  %i.akh = add i64 %i.akg, 223
  %diff.check872.a = icmp ult i64 %i.akh, 15
  %conflict.rdx873.a = or i1 %diff.check871, %diff.check872.a
  %i.aki = mul nsw i64 %i.aka, 24                 ; 2 uses
  %i.akj = add i64 %i.aki, %11
  %i.akk = add i64 %i.akj, %i.akd
  %i.akl = sub i64 %i.akk, %i.ajs
  %i.akm = add i64 %i.akl, 199
  %diff.check874.a = icmp ult i64 %i.akm, 15
  %conflict.rdx875.a = or i1 %conflict.rdx873.a, %diff.check874.a
  %i.akn = mul nsw i64 %i.aka, 20                 ; 2 uses
  %i.ako = add i64 %i.akn, %11
  %i.akp = add i64 %i.ako, %i.akd
  %i.akq = sub i64 %i.akp, %i.ajs
  %i.akr = add i64 %i.akq, 175
  %diff.check876.a = icmp ult i64 %i.akr, 15
  %conflict.rdx877.a = or i1 %conflict.rdx875.a, %diff.check876.a
  %i.aks = shl nsw i64 %i.aka, 4                  ; 2 uses
  %i.akt = add i64 %i.aks, %11
  %i.aku = add i64 %i.akt, %i.akd
  %i.akv = sub i64 %i.aku, %i.ajs
  %i.akw = add i64 %i.akv, 151
  %diff.check878.a = icmp ult i64 %i.akw, 15
  %conflict.rdx879.a = or i1 %conflict.rdx877.a, %diff.check878.a
  %i.akx = mul nsw i64 %i.aka, 12                 ; 2 uses
  %i.aky = add i64 %i.akd, %11
  %i.akz = add i64 %i.aky, %i.akx
  %i.ala = sub i64 %i.ajs, %i.akz
  %i.alb = add i64 %i.ala, -129
  %diff.check880.a = icmp ult i64 %i.alb, 15
  %conflict.rdx881.a = or i1 %conflict.rdx879.a, %diff.check880.a
  %i.alc = shl nsw i64 %i.aka, 3                  ; 2 uses
  %i.ald = add i64 %i.alc, %11
  %i.ale = add i64 %i.ald, %i.akd
  %i.alf = sub i64 %i.ajs, %i.ale
  %i.alg = add i64 %i.alf, -105
  %diff.check882.a = icmp ult i64 %i.alg, 15
  %conflict.rdx883.a = or i1 %conflict.rdx881.a, %diff.check882.a
  %i.alh = shl nsw i64 %i.aka, 2                  ; 2 uses
  %i.ali = add i64 %i.alh, %11
  %i.alj = add i64 %i.ali, %i.akd
  %i.alk = sub i64 %i.ajs, %i.alj
  %i.all = add i64 %i.alk, -81
  %diff.check884.a = icmp ult i64 %i.all, 15
  %conflict.rdx885.a = or i1 %conflict.rdx883.a, %diff.check884.a
  %i.alm = add i64 %i.akd, %11
  %i.aln = sub i64 %i.ajs, %i.alm
  %i.alo = add i64 %i.aln, -57
  %diff.check886.a = icmp ult i64 %i.alo, 15
  %conflict.rdx887.a = or i1 %conflict.rdx885.a, %diff.check886.a
  %i.alp = add i64 %i.akd, %11
  %i.alq = add i64 %i.alp, %i.akb
  %i.alr = sub i64 %i.ajy, %i.alq
  %i.als = add i64 %i.alr, -225
  %diff.check888.a = icmp ult i64 %i.als, 15
  %conflict.rdx889.a = or i1 %conflict.rdx887.a, %diff.check888.a
  %i.alt = add i64 %i.akd, %11
  %i.alu = add i64 %i.alt, %i.aki
  %i.alv = sub i64 %i.ajy, %i.alu
  %i.alw = add i64 %i.alv, -201
  %diff.check890 = icmp ult i64 %i.alw, 15
  %conflict.rdx891 = or i1 %conflict.rdx889.a, %diff.check890
  %i.alx = add i64 %i.akd, %11
  %i.aly = add i64 %i.alx, %i.akn
  %i.alz = sub i64 %i.ajy, %i.aly
  %i.ama = add i64 %i.alz, -177
  %diff.check892 = icmp ult i64 %i.ama, 15
  %conflict.rdx893 = or i1 %conflict.rdx891, %diff.check892
  %i.amb = add i64 %i.akd, %11
  %i.amc = add i64 %i.amb, %i.aks
  %i.amd = sub i64 %i.ajy, %i.amc
  %i.ame = add i64 %i.amd, -153
  %diff.check894 = icmp ult i64 %i.ame, 15
  %conflict.rdx895 = or i1 %conflict.rdx893, %diff.check894
  %i.amf = add i64 %i.akd, %11
  %i.amg = add i64 %i.amf, %i.akx
  %i.amh = sub i64 %i.ajy, %i.amg
  %i.ami = add i64 %i.amh, -129
  %diff.check896 = icmp ult i64 %i.ami, 15
  %conflict.rdx897 = or i1 %conflict.rdx895, %diff.check896
  %i.amj = add i64 %i.alc, %11
  %i.amk = add i64 %i.amj, %i.akd
  %i.aml = sub i64 %i.ajy, %i.amk
  %i.amm = add i64 %i.aml, -105
  %diff.check898 = icmp ult i64 %i.amm, 15
  %conflict.rdx899 = or i1 %conflict.rdx897, %diff.check898
  %i.amn = add i64 %i.alh, %11
  %i.amo = add i64 %i.amn, %i.akd
  %i.amp = sub i64 %i.ajy, %i.amo
  %i.amq = add i64 %i.amp, -81
  %diff.check900 = icmp ult i64 %i.amq, 15
  %conflict.rdx901 = or i1 %conflict.rdx899, %diff.check900
  %i.amr = add i64 %i.akd, %11
  %i.ams = sub i64 %i.ajy, %i.amr
  %i.amt = add i64 %i.ams, -57
  %diff.check902 = icmp ult i64 %i.amt, 15
  %conflict.rdx903 = or i1 %conflict.rdx901, %diff.check902
  br i1 %conflict.rdx903, label %scalar.ph868.preheader, label %vector.ph904

vector.ph904:                                     ; preds = %vector.memcheck870
  %n.vec905 = and i64 %wide.trip.count.i435, 2147483644 ; 3 uses
  %broadcast.splatinsert906 = insertelement <4 x float> poison, float %i.ajx, i64 0
  %broadcast.splat907 = shufflevector <4 x float> %broadcast.splatinsert906, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %vector.ph904
  %index909 = phi i64 [ 0, %vector.ph904 ], [ %index.next918, %vector.body908 ] ; 11 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index909
  %wide.load910 = load <4 x float>, ptr %i.amu, align 4, !tbaa !177
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index909
  %wide.load911 = load <4 x float>, ptr %i.amv, align 4, !tbaa !177
  %i.amw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load911, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load910)
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index909
  %wide.load912 = load <4 x float>, ptr %i.amx, align 4, !tbaa !177
  %i.amy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load912, <4 x float> splat (float 2.000000e+00), <4 x float> %i.amw)
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index909
  %wide.load913 = load <4 x float>, ptr %i.amz, align 4, !tbaa !177
  %i.ana = fadd <4 x float> %i.amy, %wide.load913
  %i.anb = fmul <4 x float> %broadcast.splat907, %i.ana
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %index909
  store <4 x float> %i.anb, ptr %i.anc, align 4, !tbaa !177
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %index909
  %wide.load914 = load <4 x float>, ptr %i.and, align 4, !tbaa !177
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index909
  %wide.load915 = load <4 x float>, ptr %i.ane, align 4, !tbaa !177
  %i.anf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load915, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load914)
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %index909
  %wide.load916 = load <4 x float>, ptr %i.ang, align 4, !tbaa !177
  %i.anh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load916, <4 x float> splat (float 2.000000e+00), <4 x float> %i.anf)
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index909
  %wide.load917 = load <4 x float>, ptr %i.ani, align 4, !tbaa !177
  %i.anj = fadd <4 x float> %i.anh, %wide.load917
  %i.ank = fmul <4 x float> %broadcast.splat907, %i.anj
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %index909
  store <4 x float> %i.ank, ptr %i.anl, align 4, !tbaa !177
  %index.next918 = add nuw i64 %index909, 4       ; 2 uses
  %i.anm = icmp eq i64 %index.next918, %n.vec905
  br i1 %i.anm, label %middle.block919, label %vector.body908, !llvm.loop !316

middle.block919:                                  ; preds = %vector.body908
  %cmp.n920 = icmp eq i64 %n.vec905, %wide.trip.count.i435
  br i1 %cmp.n920, label %._crit_edge592, label %scalar.ph868.preheader

scalar.ph868.preheader:                           ; preds = %vector.memcheck870, %.lr.ph591, %middle.block919
  %indvars.iv640.ph.a = phi i64 [ 0, %vector.memcheck870 ], [ 0, %.lr.ph591 ], [ %n.vec905, %middle.block919 ]
  br label %scalar.ph868

._crit_edge592:                                   ; preds = %scalar.ph868, %middle.block919, %.loopexit552
  %i.ann = phi ptr [ null, %.loopexit552 ], [ %i.ajr, %middle.block919 ], [ %i.ajr, %scalar.ph868 ] ; 9 uses
  %i.ano = phi ptr [ null, %.loopexit552 ], [ %i.ajw, %middle.block919 ], [ %i.ajw, %scalar.ph868 ] ; 6 uses
  %i.anp = ptrtoaddr ptr %i.ann to i64
  %i.anq = load ptr, ptr %i.vp, align 8, !tbaa !144 ; 16 uses
  %i.anr = ptrtoaddr ptr %i.anq to i64            ; 2 uses
  %i.ans = load i32, ptr %i.mi, align 4, !tbaa !182 ; 5 uses
  %i.ant = icmp sgt i32 %i.ans, -6
  br i1 %i.ant, label %.lr.ph.preheader.i485, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit

.lr.ph.preheader.i485:                            ; preds = %._crit_edge592
  %i.anu = add i32 %i.ans, 5                      ; 3 uses
  %smax.i486 = call i32 @llvm.smax.i32(i32 %i.anu, i32 0) ; 3 uses
  %i.anv = add nuw i32 %smax.i486, 1
  %wide.trip.count.i487 = zext i32 %i.anv to i64  ; 6 uses
  %min.iters.check821 = icmp slt i32 %i.anu, 7
  br i1 %min.iters.check821, label %.lr.ph.i488.preheader, label %vector.memcheck822

vector.memcheck822:                               ; preds = %.lr.ph.preheader.i485
  %i.anw = sext i32 %i.mm to i64
  %i.anx = shl nsw i64 %i.anw, 3
  %i.any = add i64 %i.anx, %11
  %i.anz = sub i64 %i.anr, %i.any
  %i.aoa = add i64 %i.anz, -57
  %diff.check823 = icmp ult i64 %i.aoa, 31
  br i1 %diff.check823, label %.lr.ph.i488.preheader, label %vector.ph824

vector.ph824:                                     ; preds = %vector.memcheck822
  %n.vec825 = and i64 %wide.trip.count.i487, 4294967288 ; 3 uses
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph824
  %index827 = phi i64 [ 0, %vector.ph824 ], [ %index.next830, %vector.body826 ] ; 3 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index827 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %wide.load828 = load <4 x float>, ptr %i.aob, align 4, !tbaa !177
  %wide.load829 = load <4 x float>, ptr %i.aoc, align 4, !tbaa !177
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %index827 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  store <4 x float> %wide.load828, ptr %i.aod, align 4, !tbaa !177
  store <4 x float> %wide.load829, ptr %i.aoe, align 4, !tbaa !177
  %index.next830 = add nuw i64 %index827, 8       ; 2 uses
  %i.aof = icmp eq i64 %index.next830, %n.vec825
  br i1 %i.aof, label %middle.block831, label %vector.body826, !llvm.loop !317

middle.block831:                                  ; preds = %vector.body826
  %cmp.n832 = icmp eq i64 %n.vec825, %wide.trip.count.i487
  br i1 %cmp.n832, label %.lr.ph.i493, label %.lr.ph.i488.preheader

.lr.ph.i488.preheader:                            ; preds = %vector.memcheck822, %.lr.ph.preheader.i485, %middle.block831
  %indvars.iv.i489.ph = phi i64 [ 0, %vector.memcheck822 ], [ 0, %.lr.ph.preheader.i485 ], [ %n.vec825, %middle.block831 ] ; 3 uses
  %i.aog = zext nneg i32 %smax.i486 to i64        ; 2 uses
  %i.aoh = add nuw nsw i64 %i.aog, 1
  %i.aoi = sub nsw i64 %i.aog, %indvars.iv.i489.ph
  %xtraiter1288 = and i64 %i.aoh, 3               ; 2 uses
  %lcmp.mod1289.not = icmp eq i64 %xtraiter1288, 0
  br i1 %lcmp.mod1289.not, label %.lr.ph.i488.prol.loopexit, label %.lr.ph.i488.prol

.lr.ph.i488.prol:                                 ; preds = %.lr.ph.i488.preheader, %.lr.ph.i488.prol
  %indvars.iv.i489.prol = phi i64 [ %indvars.iv.next.i490.prol, %.lr.ph.i488.prol ], [ %indvars.iv.i489.ph, %.lr.ph.i488.preheader ] ; 3 uses
  %prol.iter1290 = phi i64 [ %prol.iter1290.next, %.lr.ph.i488.prol ], [ 0, %.lr.ph.i488.preheader ]
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i489.prol
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !177
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.i489.prol
  store float %i.aok, ptr %i.aol, align 4, !tbaa !177
  %indvars.iv.next.i490.prol = add nuw nsw i64 %indvars.iv.i489.prol, 1 ; 2 uses
  %prol.iter1290.next = add i64 %prol.iter1290, 1 ; 2 uses
  %prol.iter1290.cmp.not = icmp eq i64 %prol.iter1290.next, %xtraiter1288
  br i1 %prol.iter1290.cmp.not, label %.lr.ph.i488.prol.loopexit, label %.lr.ph.i488.prol, !llvm.loop !318

.lr.ph.i488.prol.loopexit:                        ; preds = %.lr.ph.i488.prol, %.lr.ph.i488.preheader
  %indvars.iv.i489.unr = phi i64 [ %indvars.iv.i489.ph, %.lr.ph.i488.preheader ], [ %indvars.iv.next.i490.prol, %.lr.ph.i488.prol ]
  %i.aom = icmp ult i64 %i.aoi, 3
  br i1 %i.aom, label %.lr.ph.i493, label %.lr.ph.i488

.lr.ph.i488:                                      ; preds = %.lr.ph.i488.prol.loopexit, %.lr.ph.i488
  %indvars.iv.i489 = phi i64 [ %indvars.iv.next.i490.3, %.lr.ph.i488 ], [ %indvars.iv.i489.unr, %.lr.ph.i488.prol.loopexit ] ; 6 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i489
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !177
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.i489
  store float %i.aoo, ptr %i.aop, align 4, !tbaa !177
  %indvars.iv.next.i490 = add nuw nsw i64 %indvars.iv.i489, 1 ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i490
  %i.aor = load float, ptr %i.aoq, align 4, !tbaa !177
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next.i490
  store float %i.aor, ptr %i.aos, align 4, !tbaa !177
  %indvars.iv.next.i490.1 = add nuw nsw i64 %indvars.iv.i489, 2 ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i490.1
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !177
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next.i490.1
  store float %i.aou, ptr %i.aov, align 4, !tbaa !177
  %indvars.iv.next.i490.2 = add nuw nsw i64 %indvars.iv.i489, 3 ; 2 uses
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i490.2
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !177
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next.i490.2
  store float %i.aox, ptr %i.aoy, align 4, !tbaa !177
  %indvars.iv.next.i490.3 = add nuw nsw i64 %indvars.iv.i489, 4 ; 2 uses
  %exitcond.not.i491.3 = icmp eq i64 %indvars.iv.next.i490.3, %wide.trip.count.i487
  br i1 %exitcond.not.i491.3, label %.lr.ph.i493, label %.lr.ph.i488, !llvm.loop !319

bb.bm:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", %._crit_edge588
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  br label %.thread536

bb.bn:                                            ; preds = %.loopexit1204
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

scalar.ph868:                                     ; preds = %scalar.ph868.preheader, %scalar.ph868
  %indvars.iv640.a = phi i64 [ %indvars.iv.next641.a, %scalar.ph868 ], [ %indvars.iv640.ph.a, %scalar.ph868.preheader ] ; 11 uses
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv640.a
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !177
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv640.a
  %i.ape = load float, ptr %i.apd, align 4, !tbaa !177
  %i.apf = call float @llvm.fmuladd.f32(float %i.ape, float 2.000000e+00, float %i.apc)
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv640.a
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !177
  %i.api = call float @llvm.fmuladd.f32(float %i.aph, float 2.000000e+00, float %i.apf)
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv640.a
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !177
  %i.apl = fadd float %i.api, %i.apk
  %i.apm = fmul float %i.ajx, %i.apl
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %indvars.iv640.a
  store float %i.apm, ptr %i.apn, align 4, !tbaa !177
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv640.a
  %i.app = load float, ptr %i.apo, align 4, !tbaa !177
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv640.a
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !177
  %i.aps = call float @llvm.fmuladd.f32(float %i.apr, float 2.000000e+00, float %i.app)
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv640.a
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !177
  %i.apv = call float @llvm.fmuladd.f32(float %i.apu, float 2.000000e+00, float %i.aps)
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv640.a
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !177
  %i.apy = fadd float %i.apv, %i.apx
  %i.apz = fmul float %i.ajx, %i.apy
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %indvars.iv640.a
  store float %i.apz, ptr %i.aqa, align 4, !tbaa !177
  %indvars.iv.next641.a = add nuw nsw i64 %indvars.iv640.a, 1 ; 2 uses
  %exitcond644.not = icmp eq i64 %indvars.iv.next641.a, %wide.trip.count643.a
  br i1 %exitcond644.not, label %._crit_edge592, label %scalar.ph868, !llvm.loop !320

.lr.ph.i493:                                      ; preds = %.lr.ph.i488.prol.loopexit, %.lr.ph.i488, %middle.block831
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.hv, i64 620 ; 3 uses
  %min.iters.check795 = icmp slt i32 %i.anu, 3
  br i1 %min.iters.check795, label %scalar.ph794.preheader, label %vector.memcheck796

vector.memcheck796:                               ; preds = %.lr.ph.i493
  %i.aqc = zext nneg i32 %smax.i486 to i64
  %i.aqd = shl nuw nsw i64 %i.aqc, 2
  %i.aqe = add nuw nsw i64 %i.aqd, 4              ; 2 uses
  %i.aqf = getelementptr i8, ptr %i.anq, i64 %i.aqe ; 2 uses
  %i.aqg = getelementptr i8, ptr %i.ano, i64 %i.aqe
  %i.aqh = getelementptr i8, ptr %i.hv, i64 624
  %bound0 = icmp ult ptr %i.anq, %i.aqg
  %bound1 = icmp ult ptr %i.ano, %i.aqf
  %found.conflict = and i1 %bound0, %bound1
  %bound0797 = icmp ult ptr %i.anq, %i.aqh
  %bound1798 = icmp ult ptr %i.aqb, %i.aqf
  %found.conflict799 = and i1 %bound0797, %bound1798
  %conflict.rdx = or i1 %found.conflict, %found.conflict799
  br i1 %conflict.rdx, label %scalar.ph794.preheader, label %vector.ph800

vector.ph800:                                     ; preds = %vector.memcheck796
  %n.vec801 = and i64 %wide.trip.count.i487, 4294967292 ; 3 uses
  %i.aqi = load float, ptr %i.aqb, align 4, !tbaa !183, !alias.scope !335
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aqi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqj = fneg <4 x float> %broadcast.splat      ; 2 uses
  br label %vector.body802

vector.body802:                                   ; preds = %pred.store.continue811, %vector.ph800
  %index803 = phi i64 [ 0, %vector.ph800 ], [ %index.next812, %pred.store.continue811 ] ; 6 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %index803
  %wide.load804 = load <4 x float>, ptr %i.aqk, align 4, !tbaa !177, !alias.scope !336
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %index803 ; 3 uses
  %wide.load805 = load <4 x float>, ptr %i.aql, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  %i.aqm = fadd <4 x float> %wide.load804, %wide.load805 ; 3 uses
  store <4 x float> %i.aqm, ptr %i.aql, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  %i.aqn = fcmp olt <4 x float> %i.aqm, %i.aqj    ; 2 uses
  %i.aqo = fcmp olt <4 x float> %broadcast.splat, %i.aqm
  %i.aqp = or <4 x i1> %i.aqn, %i.aqo             ; 4 uses
  %predphi = select <4 x i1> %i.aqn, <4 x float> %i.aqj, <4 x float> %broadcast.splat ; 4 uses
  %i.aqq = extractelement <4 x i1> %i.aqp, i64 0
  br i1 %i.aqq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body802
  %i.aqr = extractelement <4 x float> %predphi, i64 0
  store float %i.aqr, ptr %i.aql, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body802
  %i.aqs = extractelement <4 x i1> %i.aqp, i64 1
  br i1 %i.aqs, label %pred.store.if806, label %pred.store.continue807

pred.store.if806:                                 ; preds = %pred.store.continue
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %index803
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 4
  %i.aqv = extractelement <4 x float> %predphi, i64 1
  store float %i.aqv, ptr %i.aqu, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue807

pred.store.continue807:                           ; preds = %pred.store.if806, %pred.store.continue
  %i.aqw = extractelement <4 x i1> %i.aqp, i64 2
  br i1 %i.aqw, label %pred.store.if808, label %pred.store.continue809

pred.store.if808:                                 ; preds = %pred.store.continue807
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %index803
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.aqz = extractelement <4 x float> %predphi, i64 2
  store float %i.aqz, ptr %i.aqy, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue809

pred.store.continue809:                           ; preds = %pred.store.if808, %pred.store.continue807
  %i.ara = extractelement <4 x i1> %i.aqp, i64 3
  br i1 %i.ara, label %pred.store.if810, label %pred.store.continue811

pred.store.if810:                                 ; preds = %pred.store.continue809
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %index803
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 12
end_hunk_0
begin_hunk_1_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a

middle.block813:                                  ; preds = %pred.store.continue811
  %cmp.n814 = icmp eq i64 %n.vec801, %wide.trip.count.i487
  br i1 %cmp.n814, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph794.preheader

scalar.ph794.preheader:                           ; preds = %vector.memcheck796, %.lr.ph.i493, %middle.block813
  %indvars.iv.i496.ph = phi i64 [ 0, %vector.memcheck796 ], [ 0, %.lr.ph.i493 ], [ %n.vec801, %middle.block813 ]
  br label %scalar.ph794

scalar.ph794:                                     ; preds = %scalar.ph794.preheader, %_Z7btClampIfEvRT_RKS0_S3_.exit.i
  %indvars.iv.i496 = phi i64 [ %indvars.iv.next.i497, %_Z7btClampIfEvRT_RKS0_S3_.exit.i ], [ %indvars.iv.i496.ph, %scalar.ph794.preheader ] ; 3 uses
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %indvars.iv.i496
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !177
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.i496 ; 3 uses
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !177
  %i.arj = fadd float %i.arg, %i.ari              ; 3 uses
  store float %i.arj, ptr %i.arh, align 4, !tbaa !177
  %i.ark = load float, ptr %i.aqb, align 4, !tbaa !183 ; 3 uses
  %i.arl = fneg float %i.ark                      ; 2 uses
  %i.arm = fcmp olt float %i.arj, %i.arl
  br i1 %i.arm, label %.sink.split.i.i, label %bb.bo

bb.bo:                                            ; preds = %scalar.ph794
  %i.arn = fcmp olt float %i.ark, %i.arj
  br i1 %i.arn, label %.sink.split.i.i, label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

.sink.split.i.i:                                  ; preds = %bb.bo, %scalar.ph794
  %.sink.i.i = phi float [ %i.arl, %scalar.ph794 ], [ %i.ark, %bb.bo ]
  store float %.sink.i.i, ptr %i.arh, align 4, !tbaa !177
  br label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

_Z7btClampIfEvRT_RKS0_S3_.exit.i:                 ; preds = %.sink.split.i.i, %bb.bo
  %indvars.iv.next.i497 = add nuw nsw i64 %indvars.iv.i496, 1 ; 2 uses
  %exitcond.not.i498 = icmp eq i64 %indvars.iv.next.i497, %wide.trip.count.i487
  br i1 %exitcond.not.i498, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph794, !llvm.loop !326

_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit: ; preds = %_Z7btClampIfEvRT_RKS0_S3_.exit.i, %middle.block813, %._crit_edge592
  %i.aro = add i32 %i.ans, 6
  %i.arp = mul i32 %i.ans, %i.ans
  %i.arq = add i32 %i.aro, %i.arp
  %i.arr = sext i32 %i.arq to i64                 ; 2 uses
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.anq, i64 %i.arr ; 6 uses
  br i1 %i.oe, label %.lr.ph594, label %._crit_edge595

.lr.ph594:                                        ; preds = %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %wide.trip.count648 = zext i32 %i.mk to i64     ; 5 uses
  %min.iters.check772 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check772, label %scalar.ph771.preheader, label %vector.memcheck773

vector.memcheck773:                               ; preds = %.lr.ph594
  %i.art = shl nsw i64 %i.arr, 2
  %i.aru = add i64 %i.art, %i.anr
  %i.arv = sub i64 %i.anp, %i.aru
  %diff.check774 = icmp ugt i64 %i.arv, -32
  br i1 %diff.check774, label %scalar.ph771.preheader, label %vector.ph775

vector.ph775:                                     ; preds = %vector.memcheck773
  %n.vec776 = and i64 %wide.trip.count648, 4294967288 ; 3 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph775
  %index778 = phi i64 [ 0, %vector.ph775 ], [ %index.next781, %vector.body777 ] ; 3 uses
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %index778 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  %wide.load779 = load <4 x float>, ptr %i.arw, align 4, !tbaa !177
  %wide.load780 = load <4 x float>, ptr %i.arx, align 4, !tbaa !177
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %index778 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  store <4 x float> %wide.load779, ptr %i.ary, align 4, !tbaa !177
  store <4 x float> %wide.load780, ptr %i.arz, align 4, !tbaa !177
  %index.next781 = add nuw i64 %index778, 8       ; 2 uses
  %i.asa = icmp eq i64 %index.next781, %n.vec776
  br i1 %i.asa, label %middle.block782, label %vector.body777, !llvm.loop !327

middle.block782:                                  ; preds = %vector.body777
  %cmp.n783 = icmp eq i64 %n.vec776, %wide.trip.count648
  br i1 %cmp.n783, label %._crit_edge595, label %scalar.ph771.preheader

scalar.ph771.preheader:                           ; preds = %vector.memcheck773, %.lr.ph594, %middle.block782
  %indvars.iv645.ph = phi i64 [ 0, %vector.memcheck773 ], [ 0, %.lr.ph594 ], [ %n.vec776, %middle.block782 ] ; 3 uses
  %xtraiter1291 = and i64 %wide.trip.count648, 3  ; 2 uses
  %lcmp.mod1292.not = icmp eq i64 %xtraiter1291, 0
  br i1 %lcmp.mod1292.not, label %scalar.ph771.prol.loopexit, label %scalar.ph771.prol

scalar.ph771.prol:                                ; preds = %scalar.ph771.preheader, %scalar.ph771.prol
  %indvars.iv645.prol = phi i64 [ %indvars.iv.next646.prol, %scalar.ph771.prol ], [ %indvars.iv645.ph, %scalar.ph771.preheader ] ; 3 uses
  %prol.iter1293 = phi i64 [ %prol.iter1293.next, %scalar.ph771.prol ], [ 0, %scalar.ph771.preheader ]
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv645.prol
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !177
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv645.prol
  store float %i.asc, ptr %i.asd, align 4, !tbaa !177
  %indvars.iv.next646.prol = add nuw nsw i64 %indvars.iv645.prol, 1 ; 2 uses
  %prol.iter1293.next = add i64 %prol.iter1293, 1 ; 2 uses
  %prol.iter1293.cmp.not = icmp eq i64 %prol.iter1293.next, %xtraiter1291
  br i1 %prol.iter1293.cmp.not, label %scalar.ph771.prol.loopexit, label %scalar.ph771.prol, !llvm.loop !328

scalar.ph771.prol.loopexit:                       ; preds = %scalar.ph771.prol, %scalar.ph771.preheader
  %indvars.iv645.unr = phi i64 [ %indvars.iv645.ph, %scalar.ph771.preheader ], [ %indvars.iv.next646.prol, %scalar.ph771.prol ]
  %i.ase = sub nsw i64 %indvars.iv645.ph, %wide.trip.count648
  %i.asf = icmp ugt i64 %i.ase, -4
  br i1 %i.asf, label %._crit_edge595, label %scalar.ph771

._crit_edge595:                                   ; preds = %scalar.ph771.prol.loopexit, %scalar.ph771, %middle.block782, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %i.asg = getelementptr inbounds nuw i8, ptr %i.hv, i64 625
  store i8 1, ptr %i.asg, align 1, !tbaa !184
  %i.ash = load i32, ptr %i.ib, align 4, !tbaa !61
  %i.asi = icmp sgt i32 %i.ash, 0
  br i1 %i.asi, label %.lr.ph598, label %._crit_edge599

.lr.ph598:                                        ; preds = %._crit_edge595
  %i.asj = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  br label %bb.bp

scalar.ph771:                                     ; preds = %scalar.ph771.prol.loopexit, %scalar.ph771
  %indvars.iv645.a = phi i64 [ %indvars.iv.next646.3, %scalar.ph771 ], [ %indvars.iv645.unr, %scalar.ph771.prol.loopexit ] ; 6 uses
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv645.a
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !177
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv645.a
  store float %i.asl, ptr %i.asm, align 4, !tbaa !177
  %indvars.iv.next646.a = add nuw nsw i64 %indvars.iv645.a, 1 ; 2 uses
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv.next646.a
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !177
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv.next646.a
  store float %i.aso, ptr %i.asp, align 4, !tbaa !177
  %indvars.iv.next646.1 = add nuw nsw i64 %indvars.iv645.a, 2 ; 2 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv.next646.1
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !177
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv.next646.1
  store float %i.asr, ptr %i.ass, align 4, !tbaa !177
  %indvars.iv.next646.2 = add nuw nsw i64 %indvars.iv645.a, 3 ; 2 uses
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv.next646.2
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !177
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv.next646.2
  store float %i.asu, ptr %i.asv, align 4, !tbaa !177
  %indvars.iv.next646.3 = add nuw nsw i64 %indvars.iv645.a, 4 ; 2 uses
  %exitcond649.not.3 = icmp eq i64 %indvars.iv.next646.3, %wide.trip.count648
  br i1 %exitcond649.not.3, label %._crit_edge595, label %scalar.ph771, !llvm.loop !329

._crit_edge599:                                   ; preds = %bb.bq, %._crit_edge595
  %i.asw = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.asx = trunc nuw i8 %i.asw to i1
  %i.asy = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.asz = trunc nuw i8 %i.asy to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.asx, i1 noundef zeroext %i.asz)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bp, %.lr.ph.i441, %._crit_edge599
  %lpad.loopexit.split-lp1212 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.by

bb.bp:                                            ; preds = %.lr.ph598, %bb.bq
  %indvars.iv650 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next651, %bb.bq ] ; 2 uses
  %i.ata = load ptr, ptr %i.asj, align 8, !tbaa !62
  %i.atb = getelementptr inbounds nuw [688 x i8], ptr %i.ata, i64 %indvars.iv650
  invoke void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.atb, ptr noundef null)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.atc = load i32, ptr %i.ib, align 4, !tbaa !61
  %i.atd = sext i32 %i.atc to i64
  %i.ate = icmp slt i64 %indvars.iv.next651, %i.atd
  br i1 %i.ate, label %bb.bp, label %._crit_edge599, !llvm.loop !330

bb.br:                                            ; preds = %._crit_edge599
  %.not.i.i.i499.not = icmp eq ptr %i.ano, null
  br i1 %.not.i.i.i499.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ano)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.atf = landingpad { ptr, i32 }
          catch ptr null
  %i.atg = extractvalue { ptr, i32 } %i.atf, 0
  call void @__clang_call_terminate(ptr %i.atg) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i.i500.not = icmp eq ptr %i.ann, null
  br i1 %.not.i.i.i500.not, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ann)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ath = landingpad { ptr, i32 }
          catch ptr null
  %i.ati = extractvalue { ptr, i32 } %i.ath, 0
  call void @__clang_call_terminate(ptr %i.ati) #20
  unreachable

bb.bw:                                            ; preds = %bb.bu, %_ZN20btAlignedObjectArrayIfED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %10)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit505 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.atj = landingpad { ptr, i32 }
          catch ptr null
  %i.atk = extractvalue { ptr, i32 } %i.atj, 0
  call void @__clang_call_terminate(ptr %i.atk) #20
  unreachable

bb.by:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bn
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1212, %.loopexit.split-lp.loopexit.split-lp ], [ %i.apa, %bb.bn ]
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread536

.thread536:                                       ; preds = %bb.by, %bb.bm
  %.pn244.pn.pn = phi { ptr, i32 } [ %i.aoz, %bb.bm ], [ %.pn.pn.pn, %bb.by ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %10)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit508 unwind label %bb.bz

bb.bz:                                            ; preds = %.thread536
  %i.atl = landingpad { ptr, i32 }
          catch ptr null
  %i.atm = extractvalue { ptr, i32 } %i.atl, 0
  call void @__clang_call_terminate(ptr %i.atm) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit505:         ; preds = %bb.bw, %bb.bd, %._crit_edge580
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.atn = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ato = sext i32 %i.atn to i64
  %i.atp = icmp slt i64 %indvars.iv.next654, %i.ato
  br i1 %i.atp, label %bb.ad, label %._crit_edge602, !llvm.loop !331

_ZN20btAlignedObjectArrayIfED2Ev.exit508:         ; preds = %.thread531, %.thread536
  %.pn251 = phi { ptr, i32 } [ %i.qf, %.thread531 ], [ %.pn244.pn.pn, %.thread536 ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit508, %bb.ac
  %.pn251.pn = phi { ptr, i32 } [ %.pn251, %_ZN20btAlignedObjectArrayIfED2Ev.exit508 ], [ %i.hs, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.split-lp560

.loopexit.split-lp560:                            ; preds = %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %bb.ca, %bb.ab
  %.pn251.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.t ], [ %i.hr, %bb.ab ], [ %.pn251.pn, %bb.ca ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn251.pn.pn.pn.pn.pn
}

declare void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640), float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = select i1 %.not, ptr %i.a, ptr %1        ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.f = load i32, ptr %i.e, align 4, !tbaa !185
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load float, ptr %i.b, align 4, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = fmul float %i.h, -5.000000e-01           ; 2 uses
  %i.k = tail call noundef float @sinf(float noundef %i.j) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load <2 x float>, ptr %i.g, align 8, !tbaa !177 ; 2 uses
  %i.t = load <2 x float>, ptr %i.i, align 4, !tbaa !177 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.t, %i.t
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.u)
  %i.x = extractelement <2 x float> %i.t, i64 1   ; 2 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.w)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv float %i.k, %sqrt.i.i.i
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul <2 x float> %i.s, %i.ab            ; 4 uses
  %i.ad = fmul <2 x float> %i.t, %i.ab            ; 3 uses
  %i.ae = tail call noundef float @cosf(float noundef %i.j) #18 ; 2 uses
  %i.af = load float, ptr %i.m, align 4, !tbaa !177 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.l, align 8, !tbaa !177 ; 5 uses
  %i.ah = load <2 x float>, ptr %i.n, align 4, !tbaa !177 ; 4 uses
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ad, <2 x float> %i.ac, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = fmul <2 x float> %i.aj, %i.ad
  %i.an = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.al)
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ah, <2 x float> %i.am)
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.aq)
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ag, <2 x float> %i.ar)
  %i.au = fneg <2 x float> %i.ad                  ; 3 uses
  %i.av = fneg <2 x float> %i.ac
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ag, <2 x float> %i.as) ; 5 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.ap, <2 x float> %i.at) ; 3 uses
  %i.ay = extractelement <2 x float> %i.ag, i64 0
  %i.az = fneg float %i.ay
  %i.ba = extractelement <2 x float> %i.ac, i64 0
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %i.bb)
  %i.bd = extractelement <2 x float> %i.au, i64 0
  %i.be = extractelement <2 x float> %i.ag, i64 1
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.be, float %i.bc)
  %i.bg = extractelement <2 x float> %i.au, i64 1
  %i.bh = extractelement <2 x float> %i.ah, i64 1
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bh, float %i.bf) ; 6 uses
  %i.bj = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2>
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %i.aw, float %i.bi, i64 1
  store <2 x float> %i.bj, ptr %i.c, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.414.0..sroa_idx, align 8
  %i.bk = load <2 x float>, ptr %i.q, align 4, !tbaa !177 ; 5 uses
  %i.bl = load <2 x float>, ptr %i.p, align 8, !tbaa !177 ; 3 uses
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.bn = fmul <2 x float> %i.ax, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bl, <2 x float> %i.bn)
  %i.br = fneg <2 x float> %i.aw                  ; 3 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bk, <2 x float> %i.bq) ; 3 uses
  %i.bt = extractelement <2 x float> %i.bk, i64 0
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop165 = fmul <2 x float> %i.bk, %shift
  %i.bu = extractelement <2 x float> %foldExtExtBinop165, i64 0
  %i.bv = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bv, float %i.bu)
  %i.bx = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.by = fneg float %i.bx                        ; 3 uses
  %i.bz = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bz, float %i.bw) ; 3 uses
  %i.cb = fneg float %i.bt
  %i.cc = fmul float %i.bx, %i.cb
  %i.cd = extractelement <2 x float> %i.br, i64 1 ; 3 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bz, float %i.cc)
  %i.cf = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.bv, float %i.ce) ; 3 uses
  %i.ch = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.ci = fmul float %i.bi, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cd, float %i.ci)
  %i.ck = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cf, float %i.cj)
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bx, float %i.cl)
  %i.cn = fmul float %i.bi, %i.ck
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.by, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cd, float %i.co)
  %i.cq = fmul float %i.bi, %i.ca
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cf, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.by, float %i.cr)
  %i.ct = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cs, i64 1
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.aw, <2 x float> %i.cu)
  %i.cw = load float, ptr %i.o, align 8, !tbaa !177
  %i.cx = fadd float %i.cw, %i.cm
  %i.cy = load <2 x float>, ptr %i.r, align 4, !tbaa !177
  %i.cz = fadd <2 x float> %i.cy, %i.cv
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !177 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dh = load float, ptr %i.da, align 8, !tbaa !177
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !177
  %i.dl = load float, ptr %i.b, align 4, !tbaa !177 ; 2 uses
  %i.dm = fmul float %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.do = load float, ptr %i.de, align 4, !tbaa !177 ; 4 uses
  %i.dp = load float, ptr %i.df, align 8, !tbaa !177 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dg, align 4, !tbaa !177 ; 4 uses
  %i.dr = load <2 x float>, ptr %i.db, align 8, !tbaa !177 ; 3 uses
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dt = insertelement <2 x float> %i.ds, float %i.do, i64 0
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.dp, i64 1
  %i.dw = fmul <2 x float> %i.dt, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dr, <2 x float> %i.dw)
  %i.ea = load float, ptr %i.c, align 8, !tbaa !177 ; 3 uses
  %i.eb = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ea, i64 1 ; 2 uses
  %i.ed = fneg <2 x float> %i.ec                  ; 4 uses
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.do, i64 1
  %i.eg = fneg <2 x float> %i.ef                  ; 3 uses
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.dq, <2 x float> %i.dz) ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI34btSortConstraintOnIslandPredicate2EEvRKT_ii:bb.a
.preheader.split:                                 ; preds = %_ZNK34btSortConstraintOnIslandPredicate2clEPK17btTypedConstraintS2_.exit
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.bn = sext i32 %.0 to i64
  br label %bb.h

bb.h:                                             ; preds = %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36, %.preheader.split
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36 ], [ %i.bn, %.preheader.split ] ; 5 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv78
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !122 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !126, !nonnull !31, !align !127
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !120 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !128, !nonnull !31, !align !127
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 228
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !120
  br label %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36

_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36: ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ %i.bt, %bb.h ]
  %i.ca = icmp slt i32 %i.ax, %i.bz
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1
  br i1 %i.ca, label %bb.h, label %.split54, !llvm.loop !410

.split54:                                         ; preds = %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36
  %i.cb = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cc = trunc nsw i64 %indvars.iv78 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv78
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split54
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv78
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !122
  store ptr %i.ba, ptr %i.cd, align 8, !tbaa !122
  %i.ce = add nsw i32 %i.cb, 1
  %i.cf = add nsw i32 %i.cc, -1
  br label %bb.k

bb.k:                                             ; preds = %.split54, %bb.j
  %.232 = phi i32 [ %i.ce, %bb.j ], [ %i.cb, %.split54 ] ; 3 uses
  %.2 = phi i32 [ %i.cf, %bb.j ], [ %i.cc, %.split54 ] ; 3 uses
  %.not35 = icmp sgt i32 %.232, %.2
  br i1 %.not35, label %.split66.us, label %.split, !llvm.loop !411

.split66.us:                                      ; preds = %bb.k, %bb.f
  %.us-phi67 = phi i32 [ %.232.us, %bb.f ], [ %.232, %bb.k ] ; 2 uses
  %.us-phi68 = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.k ] ; 2 uses
  %i.cg = icmp slt i32 %.tr39, %.us-phi68
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split66.us
  tail call void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI34btSortConstraintOnIslandPredicate2EEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr39, i32 noundef %.us-phi68)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split66.us
  %i.ch = icmp slt i32 %.us-phi67, %3
  br i1 %i.ch, label %tailrecurse, label %bb.n

bb.n:                                             ; preds = %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIP21btMultiBodyConstraintE17quickSortInternalI42btSortMultiBodyConstraintOnIslandPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr37 = phi i32 [ %2, %bb.a ], [ %.232, %bb.j ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.c = add nsw i32 %.tr37, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %tailrecurse
  %.030 = phi i32 [ %.tr37, %tailrecurse ], [ %.232, %bb.g ]
  %.0 = phi i32 [ %3, %tailrecurse ], [ %.2, %bb.g ]
  %i.h = sext i32 %.030 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135  ; 4 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412 ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412
  %i.t = icmp slt i32 %i.o, 0
  %i.u = select i1 %i.t, i32 %i.s, i32 %i.o
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.k), !inline_history !412 ; 2 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.k), !inline_history !412
  %i.ad = icmp slt i32 %i.y, 0
  %i.ae = select i1 %i.ad, i32 %i.ac, i32 %i.y
  %i.af = icmp slt i32 %i.ae, %i.u
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.af, label %bb.c, label %.preheader, !llvm.loop !413

.preheader:                                       ; preds = %bb.c
  %i.ag = sext i32 %.0 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %bb.d ], [ %i.ag, %.preheader ] ; 5 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv42
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !135 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj), !inline_history !412 ; 2 uses
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj), !inline_history !412
  %i.as = icmp slt i32 %i.an, 0
  %i.at = select i1 %i.as, i32 %i.ar, i32 %i.an
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412
  %i.bc = icmp slt i32 %i.ax, 0
  %i.bd = select i1 %i.bc, i32 %i.bb, i32 %i.ax
  %i.be = icmp slt i32 %i.bd, %i.at
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  br i1 %i.be, label %bb.d, label %bb.e, !llvm.loop !414

bb.e:                                             ; preds = %bb.d
  %i.bf = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv42 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv42
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv42 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !135
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !135
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !135
  %i.bm = add nsw i32 %i.bf, 1
  %i.bn = add nsw i32 %i.bg, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.232 = phi i32 [ %i.bm, %bb.f ], [ %i.bf, %bb.e ] ; 4 uses
  %.2 = phi i32 [ %i.bn, %bb.f ], [ %i.bg, %bb.e ] ; 4 uses
  %.not35 = icmp sgt i32 %.232, %.2
  br i1 %.not35, label %bb.h, label %bb.b, !llvm.loop !415

bb.h:                                             ; preds = %bb.g
  %i.bo = icmp slt i32 %.tr37, %.2
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN20btAlignedObjectArrayIP21btMultiBodyConstraintE17quickSortInternalI42btSortMultiBodyConstraintOnIslandPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr37, i32 noundef %.2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bp = icmp slt i32 %.232, %3
  br i1 %i.bp, label %tailrecurse, label %bb.k

bb.k:                                             ; preds = %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = distinct !{!4, !25}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTS18btAlignedAllocatorIP11btMultiBodyLj16EE"}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 _ZTS11btMultiBody", !16, i64 0}
!18 = !{!"bool", !10, i64 0}
!19 = !{!"_ZTS20btAlignedObjectArrayIP11btMultiBodyE", !14, i64 0, !11, i64 4, !11, i64 8, !17, i64 16, !18, i64 24}
!20 = !{!19, !11, i64 4}
!21 = !{!19, !11, i64 8}
!22 = !{!19, !17, i64 16}
!23 = !{!"p1 _ZTS11btMultiBody", !15, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!19, !18, i64 24}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"p1 _ZTS23btMultiBodyLinkCollider", !15, i64 0}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!"_ZTS9btVector3", !10, i64 0}
!35 = !{!"_ZTS10btQuadWord", !10, i64 0}
!36 = !{!"_ZTS12btQuaternion", !35, i64 0}
!37 = !{!"float", !10, i64 0}
!38 = !{!"_ZTS18btAlignedAllocatorI15btMultibodyLinkLj16EE"}
!39 = !{!"p1 _ZTS15btMultibodyLink", !15, i64 0}
!40 = !{!"_ZTS20btAlignedObjectArrayI15btMultibodyLinkE", !38, i64 0, !11, i64 4, !11, i64 8, !39, i64 16, !18, i64 24}
!41 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!42 = !{!"p1 float", !15, i64 0}
!43 = !{!"_ZTS20btAlignedObjectArrayIfE", !41, i64 0, !11, i64 4, !11, i64 8, !42, i64 16, !18, i64 24}
!44 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!45 = !{!"p1 _ZTS9btVector3", !15, i64 0}
!46 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !44, i64 0, !11, i64 4, !11, i64 8, !45, i64 16, !18, i64 24}
!47 = !{!"_ZTS18btAlignedAllocatorI11btMatrix3x3Lj16EE"}
!48 = !{!"p1 _ZTS11btMatrix3x3", !15, i64 0}
!49 = !{!"_ZTS20btAlignedObjectArrayI11btMatrix3x3E", !47, i64 0, !11, i64 4, !11, i64 8, !48, i64 16, !18, i64 24}
!50 = !{!"_ZTS11btMatrix3x3", !10, i64 0}
!51 = !{!"_ZTS11btMultiBody", !32, i64 8, !33, i64 16, !34, i64 24, !34, i64 40, !36, i64 56, !36, i64 72, !37, i64 88, !34, i64 92, !34, i64 108, !34, i64 124, !34, i64 140, !34, i64 156, !40, i64 176, !43, i64 208, !43, i64 240, !43, i64 272, !46, i64 304, !49, i64 336, !50, i64 368, !50, i64 416, !50, i64 464, !50, i64 512, !18, i64 560, !18, i64 561, !18, i64 562, !18, i64 563, !18, i64 564, !37, i64 568, !37, i64 572, !37, i64 576, !15, i64 584, !11, i64 592, !11, i64 596, !11, i64 600, !37, i64 604, !37, i64 608, !18, i64 612, !37, i64 616, !37, i64 620, !18, i64 624, !18, i64 625, !11, i64 628, !11, i64 632, !18, i64 636, !18, i64 637, !18, i64 638, !18, i64 639}
!52 = !{!51, !32, i64 8}
!53 = !{!"_ZTS11btTransform", !50, i64 0, !34, i64 48}
!54 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!55 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!56 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!57 = !{!"p2 _ZTS17btCollisionObject", !16, i64 0}
!58 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !56, i64 0, !11, i64 4, !11, i64 8, !57, i64 16, !18, i64 24}
!59 = !{!"_ZTS17btCollisionObject", !53, i64 8, !53, i64 72, !34, i64 136, !34, i64 152, !34, i64 168, !11, i64 184, !37, i64 188, !54, i64 192, !55, i64 200, !15, i64 208, !55, i64 216, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !37, i64 244, !37, i64 248, !37, i64 252, !37, i64 256, !37, i64 260, !37, i64 264, !37, i64 268, !11, i64 272, !15, i64 280, !11, i64 288, !11, i64 292, !11, i64 296, !37, i64 300, !37, i64 304, !37, i64 308, !11, i64 312, !58, i64 320, !11, i64 352, !34, i64 356}
!60 = !{!59, !11, i64 240}
!61 = !{!40, !11, i64 4}
!62 = !{!40, !39, i64 16}
!63 = !{!"_ZTS21btSpatialMotionVector", !34, i64 0, !34, i64 16}
!64 = !{!"_ZTSN15btMultibodyLink22eFeatherstoneJointTypeE", !10, i64 0}
!65 = !{!"p1 _ZTS24btMultiBodyJointFeedback", !15, i64 0}
!66 = !{!"_ZTS15btMultibodyLink", !37, i64 0, !34, i64 4, !11, i64 20, !36, i64 24, !34, i64 40, !34, i64 56, !63, i64 72, !63, i64 104, !10, i64 136, !11, i64 328, !11, i64 332, !36, i64 336, !34, i64 352, !36, i64 368, !34, i64 384, !34, i64 400, !34, i64 416, !34, i64 432, !34, i64 448, !10, i64 464, !10, i64 492, !10, i64 520, !32, i64 544, !11, i64 552, !11, i64 556, !11, i64 560, !64, i64 564, !65, i64 568, !53, i64 576, !33, i64 640, !33, i64 648, !15, i64 656, !37, i64 664, !37, i64 668, !37, i64 672, !37, i64 676, !37, i64 680, !37, i64 684}
!67 = !{!66, !32, i64 544}
!68 = !{!"_ZTS18btAlignedAllocatorI12btQuaternionLj16EE"}
!69 = !{!"p1 _ZTS12btQuaternion", !15, i64 0}
!70 = !{!"_ZTS20btAlignedObjectArrayI12btQuaternionE", !68, i64 0, !11, i64 4, !11, i64 8, !69, i64 16, !18, i64 24}
!71 = !{!70, !11, i64 4}
!72 = !{!70, !11, i64 8}
!73 = !{!70, !69, i64 16}
!74 = !{!70, !18, i64 24}
!75 = !{!46, !11, i64 4}
!76 = !{!46, !11, i64 8}
!77 = !{!46, !45, i64 16}
!78 = !{!10, !10, i64 0}
!79 = !{i64 0, i64 16, !78}
!80 = !{!46, !18, i64 24}
!81 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!82 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !81, i64 0, !11, i64 4, !11, i64 8, !57, i64 16, !18, i64 24}
!83 = !{!"p1 _ZTS12btDispatcher", !15, i64 0}
!84 = !{!"p1 _ZTS12btIDebugDraw", !15, i64 0}
!85 = !{!"_ZTS16btDispatcherInfo", !37, i64 0, !11, i64 4, !11, i64 8, !37, i64 12, !18, i64 16, !84, i64 24, !18, i64 32, !18, i64 33, !18, i64 34, !37, i64 36, !18, i64 40, !37, i64 44, !18, i64 48}
!86 = !{!"p1 _ZTS21btBroadphaseInterface", !15, i64 0}
!87 = !{!"_ZTS16btCollisionWorld", !82, i64 8, !83, i64 40, !85, i64 48, !86, i64 104, !84, i64 112, !18, i64 120}
!88 = !{!"_ZTS23btContactSolverInfoData", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !11, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !11, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !37, i64 100, !37, i64 104, !37, i64 108, !37, i64 112, !18, i64 116, !18, i64 117, !11, i64 120, !11, i64 124}
!89 = !{!"_ZTS19btContactSolverInfo", !88, i64 0}
!90 = !{!"_ZTS15btDynamicsWorld", !87, i64 0, !15, i64 128, !15, i64 136, !15, i64 144, !89, i64 152}
!91 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!92 = !{!"p2 _ZTS17btTypedConstraint", !16, i64 0}
!93 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !91, i64 0, !11, i64 4, !11, i64 8, !92, i64 16, !18, i64 24}
!94 = !{!"p1 _ZTS27InplaceSolverIslandCallback", !15, i64 0}
!95 = !{!"p1 _ZTS18btConstraintSolver", !15, i64 0}
!96 = !{!"p1 _ZTS25btSimulationIslandManager", !15, i64 0}
!97 = !{!"_ZTS18btAlignedAllocatorIP11btRigidBodyLj16EE"}
!98 = !{!"p2 _ZTS11btRigidBody", !16, i64 0}
!99 = !{!"_ZTS20btAlignedObjectArrayIP11btRigidBodyE", !97, i64 0, !11, i64 4, !11, i64 8, !98, i64 16, !18, i64 24}
!100 = !{!"_ZTS18btAlignedAllocatorIP17btActionInterfaceLj16EE"}
!101 = !{!"p2 _ZTS17btActionInterface", !16, i64 0}
!102 = !{!"_ZTS20btAlignedObjectArrayIP17btActionInterfaceE", !100, i64 0, !11, i64 4, !11, i64 8, !101, i64 16, !18, i64 24}
!103 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!104 = !{!"p2 _ZTS20btPersistentManifold", !16, i64 0}
!105 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !103, i64 0, !11, i64 4, !11, i64 8, !104, i64 16, !18, i64 24}
!106 = !{!"_ZTS11btSpinMutex", !11, i64 0}
!107 = !{!"_ZTS23btDiscreteDynamicsWorld", !90, i64 0, !93, i64 280, !94, i64 312, !95, i64 320, !96, i64 328, !93, i64 336, !99, i64 368, !34, i64 400, !37, i64 416, !37, i64 420, !18, i64 424, !18, i64 425, !18, i64 426, !18, i64 427, !102, i64 432, !11, i64 464, !18, i64 468, !105, i64 472, !106, i64 504}
!108 = !{!107, !96, i64 328}
!109 = !{!87, !83, i64 40}
!110 = !{!"vtable pointer", !9, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!105, !11, i64 4}
!113 = !{!105, !104, i64 16}
!114 = !{!93, !11, i64 4}
!115 = !{!93, !92, i64 16}
!116 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTS13btTypedObject", !11, i64 0}
!119 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!120 = !{!59, !11, i64 228}
!121 = !{!"p1 _ZTS17btTypedConstraint", !15, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"p1 _ZTS11btRigidBody", !15, i64 0}
!124 = !{!"p1 _ZTS15btJointFeedback", !15, i64 0}
!125 = !{!"_ZTS17btTypedConstraint", !118, i64 8, !11, i64 12, !10, i64 16, !37, i64 24, !18, i64 28, !18, i64 29, !11, i64 32, !123, i64 40, !123, i64 48, !37, i64 56, !37, i64 60, !124, i64 64}
!126 = !{!125, !123, i64 40}
!127 = !{i64 8}
!128 = !{!125, !123, i64 48}
!129 = !{!"_ZTS18btAlignedAllocatorIP21btMultiBodyConstraintLj16EE"}
!130 = !{!"p2 _ZTS21btMultiBodyConstraint", !16, i64 0}
!131 = !{!"_ZTS20btAlignedObjectArrayIP21btMultiBodyConstraintE", !129, i64 0, !11, i64 4, !11, i64 8, !130, i64 16, !18, i64 24}
!132 = !{!131, !11, i64 4}
!133 = !{!131, !130, i64 16}
!134 = !{!"p1 _ZTS21btMultiBodyConstraint", !15, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"p1 _ZTS27btMultiBodyConstraintSolver", !15, i64 0}
!137 = !{!"p1 _ZTS36MultiBodyInplaceSolverIslandCallback", !15, i64 0}
!138 = !{!"_ZTS24btMultiBodyDynamicsWorld", !107, i64 0, !19, i64 512, !131, i64 544, !131, i64 576, !136, i64 608, !137, i64 616, !70, i64 624, !46, i64 656, !70, i64 688, !46, i64 720, !43, i64 752, !46, i64 784, !49, i64 816}
!139 = !{!138, !137, i64 616}
!140 = !{!131, !18, i64 24}
!141 = !{!131, !11, i64 8}
!142 = !{!138, !136, i64 608}
!143 = !{!43, !18, i64 24}
!144 = !{!43, !42, i64 16}
!145 = !{!43, !11, i64 4}
!146 = !{!43, !11, i64 8}
!147 = !{!49, !18, i64 24}
!148 = !{!49, !48, i64 16}
!149 = !{!49, !11, i64 4}
!150 = !{!49, !11, i64 8}
!151 = !{!"_ZTSN25btSimulationIslandManager14IslandCallbackE"}
!152 = !{!"p1 _ZTS19btContactSolverInfo", !15, i64 0}
!153 = !{!"_ZTS18btAlignedAllocatorI21btSolverAnalyticsDataLj16EE"}
!154 = !{!"p1 _ZTS21btSolverAnalyticsData", !15, i64 0}
!155 = !{!"_ZTS20btAlignedObjectArrayI21btSolverAnalyticsDataE", !153, i64 0, !11, i64 4, !11, i64 8, !154, i64 16, !18, i64 24}
!156 = !{!"_ZTS36MultiBodyInplaceSolverIslandCallback", !151, i64 0, !152, i64 8, !136, i64 16, !130, i64 24, !11, i64 32, !92, i64 40, !11, i64 48, !84, i64 56, !83, i64 64, !82, i64 72, !82, i64 104, !105, i64 136, !93, i64 168, !131, i64 200, !155, i64 232}
!157 = !{!156, !152, i64 8}
!158 = !{!156, !136, i64 16}
!159 = !{!156, !130, i64 24}
!160 = !{!156, !11, i64 48}
!161 = !{!156, !84, i64 56}
!162 = !{!156, !83, i64 64}
!163 = !{!82, !18, i64 24}
!164 = !{!82, !57, i64 16}
!165 = !{!82, !11, i64 4}
!166 = !{!82, !11, i64 8}
!167 = !{!105, !18, i64 24}
!168 = !{!105, !11, i64 8}
!169 = !{!93, !18, i64 24}
!170 = !{!93, !11, i64 8}
!171 = !{!155, !18, i64 24}
!172 = !{!155, !154, i64 16}
!173 = !{!155, !11, i64 4}
!174 = !{!155, !11, i64 8}
!175 = !{!107, !95, i64 320}
!176 = !{!87, !84, i64 112}
!177 = !{!37, !37, i64 0}
!178 = !{!51, !18, i64 636}
!179 = !{!88, !37, i64 12}
!180 = !{!88, !18, i64 116}
!181 = !{!88, !18, i64 117}
!182 = !{!51, !11, i64 628}
!183 = !{!51, !37, i64 620}
!184 = !{!51, !18, i64 625}
!185 = !{!66, !64, i64 564}
!186 = !{!119, !119, i64 0}
!187 = !{!59, !11, i64 272}
!188 = !{!156, !92, i64 40}
!189 = !{!88, !11, i64 120}
!190 = !{!"_ZTS18btConstraintSolver"}
end_hunk_2
