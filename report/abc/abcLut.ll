Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcLut?download=true
inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Abc_NtkSuperChoiceLut:bb.a
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %scevgep446 = getelementptr i8, ptr %i.gp, i64 -4
  br label %bb.aj

.critedge100.i:                                   ; preds = %select.unfold.i276.i.i, %middle.block, %Abc_NodeLeavesRemove.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.val71.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %i.ks = icmp sgt i32 %.val71.i, %i.acb
  br i1 %i.ks, label %bb.aj, label %._crit_edge119.i

bb.aj:                                            ; preds = %.critedge100.i, %.lr.ph118.i
  %i.kt = phi i32 [ %i.db, %.lr.ph118.i ], [ %i.acb, %.critedge100.i ] ; 4 uses
  %i.ku = phi i32 [ %.pre.i.i261, %.lr.ph118.i ], [ %i.acb, %.critedge100.i ]
  %.pre429.i.i = phi i32 [ %.pre429.i.i255, %.lr.ph118.i ], [ %i.acb, %.critedge100.i ] ; 4 uses
  %i.kv = phi i32 [ %i.dc, %.lr.ph118.i ], [ %i.acb, %.critedge100.i ] ; 7 uses
  %.val71117.i = phi i32 [ %.val71116.i, %.lr.ph118.i ], [ %.val71.i, %.critedge100.i ] ; 14 uses
  %.fr = freeze i32 %i.ku                         ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.val205.i.i = load ptr, ptr %i.kp, align 8, !tbaa !29 ; 2 uses
  %i.kw = load ptr, ptr %.val205.i.i, align 8, !tbaa !30
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ky = icmp sgt i32 %.val71117.i, 0            ; 2 uses
  br i1 %i.ky, label %.preheader29.i.i.i, label %Abc_NodeDecomposeSort.exit.i.i.thread

Abc_NodeDecomposeSort.exit.i.i.thread:            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %select.unfold.preheader.i.i.i

.preheader29.i.i.i:                               ; preds = %bb.aj
  %i.kz = zext nneg i32 %.val71117.i to i64       ; 3 uses
  %i.la = shl nuw nsw i64 %i.kz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 8 %.val205.i.i, i64 %i.la, i1 false), !tbaa !86
  %i.lb = icmp sgt i32 %i.kv, 0
  br i1 %i.lb, label %.preheader.us.preheader.i.i.i, label %Abc_NodeDecomposeSort.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader29.i.i.i
  %wide.trip.count44.i.i.i = zext nneg i32 %i.kv to i64
  %xtraiter638 = and i64 %i.kz, 1
  %i.lc = icmp eq i32 %.val71117.i, 1
  %unroll_iter642 = and i64 %i.kz, 2147483646
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  %lcmp.mod641 = trunc i32 %.val71117.i to i1
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv41.i.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next42.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  br i1 %i.lc, label %.epil.preheader637, label %.preheader.us.i.i.i.new

.preheader.us.i.i.i.new:                          ; preds = %.preheader.us.i.i.i, %bb.an
  %indvars.iv.i.i90.i = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.an ], [ 0, %.preheader.us.i.i.i ] ; 4 uses
  %.033.us.i.i.i = phi i32 [ %.1.us.i.i.i.1, %bb.an ], [ 1000000, %.preheader.us.i.i.i ] ; 3 uses
  %.02032.us.i.i.i = phi i32 [ %.121.us.i.i.i.1, %bb.an ], [ -1, %.preheader.us.i.i.i ] ; 2 uses
  %niter643 = phi i64 [ %niter643.next.1, %bb.an ], [ 0, %.preheader.us.i.i.i ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i90.i
  %i.le = load ptr, ptr %i.ld, align 16, !tbaa !86 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not.us.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader.us.i.i.i.new
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = lshr i32 %i.lg, 12                      ; 2 uses
  %i.li = icmp sgt i32 %.033.us.i.i.i, %i.lh
  %i.lj = trunc nuw nsw i64 %indvars.iv.i.i90.i to i32
  %spec.select.us.i.i.i = select i1 %i.li, i32 %i.lj, i32 %.02032.us.i.i.i
  %spec.select28.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %.033.us.i.i.i, i32 %i.lh)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.preheader.us.i.i.i.new
  %.121.us.i.i.i = phi i32 [ %.02032.us.i.i.i, %.preheader.us.i.i.i.new ], [ %spec.select.us.i.i.i, %bb.ak ] ; 2 uses
  %.1.us.i.i.i = phi i32 [ %.033.us.i.i.i, %.preheader.us.i.i.i.new ], [ %spec.select28.us.i.i.i, %bb.ak ] ; 3 uses
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i90.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !86 ; 2 uses
  %.not.us.i.i.i.1 = icmp eq ptr %i.ll, null
  br i1 %.not.us.i.i.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = lshr i32 %i.ln, 12                      ; 2 uses
  %i.lp = icmp sgt i32 %.1.us.i.i.i, %i.lo
  %i.lq = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %spec.select.us.i.i.i.1 = select i1 %i.lp, i32 %i.lq, i32 %.121.us.i.i.i
  %spec.select28.us.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %.1.us.i.i.i, i32 %i.lo)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.121.us.i.i.i.1 = phi i32 [ %.121.us.i.i.i, %bb.al ], [ %spec.select.us.i.i.i.1, %bb.am ] ; 3 uses
  %.1.us.i.i.i.1 = phi i32 [ %.1.us.i.i.i, %bb.al ], [ %spec.select28.us.i.i.i.1, %bb.am ] ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i90.i, 2 ; 2 uses
  %niter643.next.1 = add i64 %niter643, 2         ; 2 uses
  %niter643.ncmp.1 = icmp eq i64 %niter643.next.1, %unroll_iter642
  br i1 %niter643.ncmp.1, label %._crit_edge.us.i.i.i.unr-lcssa, label %.preheader.us.i.i.i.new, !llvm.loop !87

._crit_edge.us.i.i.i.unr-lcssa:                   ; preds = %bb.an
  br i1 %lcmp.mod639.not, label %._crit_edge.us.i.i.i, label %.epil.preheader637

.epil.preheader637:                               ; preds = %._crit_edge.us.i.i.i.unr-lcssa, %.preheader.us.i.i.i
  %indvars.iv.i.i90.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ] ; 2 uses
  %.033.us.i.i.i.epil.init = phi i32 [ 1000000, %.preheader.us.i.i.i ], [ %.1.us.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ]
  %.02032.us.i.i.i.epil.init = phi i32 [ -1, %.preheader.us.i.i.i ], [ %.121.us.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod641)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i90.i.epil.init
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !86 ; 2 uses
  %.not.us.i.i.i.epil = icmp eq ptr %i.ls, null
  br i1 %.not.us.i.i.i.epil, label %._crit_edge.us.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.epil.preheader637
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 20
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = lshr i32 %i.lu, 12
  %i.lw = icmp sgt i32 %.033.us.i.i.i.epil.init, %i.lv
  %i.lx = trunc nuw nsw i64 %indvars.iv.i.i90.i.epil.init to i32
  %spec.select.us.i.i.i.epil = select i1 %i.lw, i32 %i.lx, i32 %.02032.us.i.i.i.epil.init
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %.epil.preheader637, %bb.ao, %._crit_edge.us.i.i.i.unr-lcssa
  %.121.us.i.i.i.lcssa = phi i32 [ %.121.us.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ], [ %.02032.us.i.i.i.epil.init, %.epil.preheader637 ], [ %spec.select.us.i.i.i.epil, %bb.ao ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv41.i.i.i
  store i32 %.121.us.i.i.i.lcssa, ptr %i.ly, align 4, !tbaa !43
  %i.lz = sext i32 %.121.us.i.i.i.lcssa to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.lz
  store ptr null, ptr %i.ma, align 8, !tbaa !86
  %indvars.iv.next42.i.i.i = add nuw nsw i64 %indvars.iv41.i.i.i, 1 ; 2 uses
  %exitcond45.not.i.i.i = icmp eq i64 %indvars.iv.next42.i.i.i, %wide.trip.count44.i.i.i
  br i1 %exitcond45.not.i.i.i, label %Abc_NodeDecomposeSort.exit.i.i, label %.preheader.us.i.i.i, !llvm.loop !88

Abc_NodeDecomposeSort.exit.i.i:                   ; preds = %._crit_edge.us.i.i.i, %.preheader29.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.mb = icmp slt i32 %.val71117.i, 6
  %i.mc = add nsw i32 %.val71117.i, -5
  %i.md = shl nuw i32 1, %i.mc
  %spec.select.i.i.i = select i1 %i.mb, i32 1, i32 %i.md ; 3 uses
  %i.me = icmp sgt i32 %spec.select.i.i.i, 0
  br i1 %i.me, label %select.unfold.preheader.i.i.i, label %Extra_TruthCopy.exit.thread.i.i

select.unfold.preheader.i.i.i:                    ; preds = %Abc_NodeDecomposeSort.exit.i.i.thread, %Abc_NodeDecomposeSort.exit.i.i
  %spec.select.i.i.i303 = phi i32 [ 1, %Abc_NodeDecomposeSort.exit.i.i.thread ], [ %spec.select.i.i.i, %Abc_NodeDecomposeSort.exit.i.i ] ; 6 uses
  %i.mf = load ptr, ptr %i.kr, align 8, !tbaa !42 ; 3 uses
  %i.mg = zext nneg i32 %spec.select.i.i.i303 to i64 ; 9 uses
  %min.iters.check548 = icmp samesign ult i32 %spec.select.i.i.i303, 8
  %i.mh = ptrtoaddr ptr %i.mf to i64
  %i.mi = sub i64 %i.mh, %i.gq
  %diff.check546 = icmp ugt i64 %i.mi, -32
  %or.cond581 = select i1 %min.iters.check548, i1 true, i1 %diff.check546
  br i1 %or.cond581, label %select.unfold.i.i.i, label %vector.ph549

vector.ph549:                                     ; preds = %select.unfold.preheader.i.i.i
  %n.vec550 = and i64 %i.mg, 2147483640
  br label %vector.body551

vector.body551:                                   ; preds = %vector.body551, %vector.ph549
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next555, %vector.body551 ] ; 2 uses
  %i.mj = xor i64 %index552, -1
  %i.mk = add i64 %i.mj, %i.mg                    ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -12
  %i.mn = getelementptr inbounds i8, ptr %i.ml, i64 -28
  %wide.load553 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !43
  %wide.load554 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !43
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mk ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -12
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 -28
  store <4 x i32> %wide.load553, ptr %i.mp, align 4, !tbaa !43
  store <4 x i32> %wide.load554, ptr %i.mq, align 4, !tbaa !43
  %index.next555 = add nuw i64 %index552, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.mr, label %Extra_TruthCopy.exit.i.i, label %vector.body551, !llvm.loop !89

select.unfold.i.i.i:                              ; preds = %select.unfold.preheader.i.i.i, %select.unfold.i.i.i
  %indvars.iv.i208.i.i = phi i64 [ %indvars.iv.next.i209.i.i, %select.unfold.i.i.i ], [ %i.mg, %select.unfold.preheader.i.i.i ] ; 2 uses
  %indvars.iv.next.i209.i.i = add nsw i64 %indvars.iv.i208.i.i, -1 ; 3 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i209.i.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !43
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i209.i.i
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !43
  %i.mv = icmp samesign ugt i64 %indvars.iv.i208.i.i, 1
  br i1 %i.mv, label %select.unfold.i.i.i, label %Extra_TruthCopy.exit.i.i, !llvm.loop !90

Extra_TruthCopy.exit.i.i:                         ; preds = %vector.body551, %select.unfold.i.i.i
  %i.mw = icmp sgt i32 %.fr, 0
  br i1 %i.mw, label %.preheader288.us.i.i.preheader, label %.lr.ph311.i.i

.preheader288.us.i.i.preheader:                   ; preds = %Extra_TruthCopy.exit.i.i
  %i.mx = zext nneg i32 %.fr to i64
  %min.iters.check534 = icmp samesign ult i32 %spec.select.i.i.i303, 8
  %n.vec536 = and i64 %i.mg, 2147483640
  %min.iters.check520 = icmp samesign ult i32 %spec.select.i.i.i303, 8
  %n.vec522 = and i64 %i.mg, 2147483640
  br label %.preheader288.us.i.i

Extra_TruthCopy.exit.thread.i.i:                  ; preds = %Abc_NodeDecomposeSort.exit.i.i
  %i.my = icmp sgt i32 %i.kv, 0
  br i1 %i.my, label %.preheader288.i.i, label %.lr.ph311.i.i

.preheader288.us.i.i:                             ; preds = %.preheader288.us.i.i.preheader, %._crit_edge.split.us.us.i.i
  %indvars.iv374.i.i = phi i64 [ %indvars.iv.next375.i.i, %._crit_edge.split.us.us.i.i ], [ 0, %.preheader288.us.i.i.preheader ] ; 4 uses
  %.0179300.us.i.i = phi i32 [ %.1180.lcssa.us.i.i, %._crit_edge.split.us.us.i.i ], [ 2, %.preheader288.us.i.i.preheader ] ; 2 uses
  %.not346.i.i = icmp eq i64 %indvars.iv374.i.i, 31
  br i1 %.not346.i.i, label %._crit_edge.split.us.us.i.i, label %.lr.ph.us.i.i

._crit_edge.split.us.us.loopexit.i.i:             ; preds = %Extra_TruthCopy.exit221.loopexit.us.us.i.i
  %i.mz = trunc nsw i64 %indvars.iv.next370.i.i to i32
  br label %._crit_edge.split.us.us.i.i

._crit_edge.split.us.us.i.i:                      ; preds = %._crit_edge.split.us.us.loopexit.i.i, %.preheader288.us.i.i
  %.1180.lcssa.us.i.i = phi i32 [ %.0179300.us.i.i, %.preheader288.us.i.i ], [ %i.mz, %._crit_edge.split.us.us.loopexit.i.i ]
  %indvars.iv.next375.i.i = add nuw nsw i64 %indvars.iv374.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next375.i.i, %i.mx
  br i1 %exitcond.not, label %._crit_edge302.i.i, label %.preheader288.us.i.i, !llvm.loop !91

.lr.ph.us.i.i:                                    ; preds = %.preheader288.us.i.i
  %4 = trunc nuw nsw i64 %indvars.iv374.i.i to i32
  %5 = shl nuw nsw i32 1, %4
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv374.i.i
  %i.nb = sext i32 %.0179300.us.i.i to i64
  %i.nc = load i32, ptr %i.na, align 4, !tbaa !43 ; 2 uses
  br label %select.unfold.preheader.i211.us.us.i.i

select.unfold.preheader.i211.us.us.i.i:           ; preds = %Extra_TruthCopy.exit221.loopexit.us.us.i.i, %.lr.ph.us.i.i
  %indvars.iv369.i.i = phi i64 [ %indvars.iv.next370.i.i, %Extra_TruthCopy.exit221.loopexit.us.us.i.i ], [ %i.nb, %.lr.ph.us.i.i ] ; 3 uses
  %.0181298.us.us.i.i = phi i32 [ %i.os, %Extra_TruthCopy.exit221.loopexit.us.us.i.i ], [ 0, %.lr.ph.us.i.i ]
  %i.nd = getelementptr [8 x i8], ptr %i.kq, i64 %indvars.iv369.i.i ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !42 ; 4 uses
  %i.nf = trunc nsw i64 %indvars.iv369.i.i to i32
  %i.ng = sdiv i32 %i.nf, 2
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.nh
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !42 ; 5 uses
  %i.nk = ptrtoaddr ptr %i.nj to i64              ; 2 uses
  %i.nl = ptrtoaddr ptr %i.ne to i64
  %i.nm = sub i64 %i.nl, %i.nk
  %diff.check532 = icmp ugt i64 %i.nm, -32
  %or.cond583 = select i1 %min.iters.check534, i1 true, i1 %diff.check532
  br i1 %or.cond583, label %select.unfold.i212.us.us.i.i, label %vector.body537

vector.body537:                                   ; preds = %select.unfold.preheader.i211.us.us.i.i, %vector.body537
  %index538 = phi i64 [ %index.next541, %vector.body537 ], [ 0, %select.unfold.preheader.i211.us.us.i.i ] ; 2 uses
  %i.nn = xor i64 %index538, -1
  %i.no = add i64 %i.nn, %i.mg                    ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 -12
  %i.nr = getelementptr inbounds i8, ptr %i.np, i64 -28
  %wide.load539 = load <4 x i32>, ptr %i.nq, align 4, !tbaa !43
  %wide.load540 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !43
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.no ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -12
  %i.nu = getelementptr inbounds i8, ptr %i.ns, i64 -28
  store <4 x i32> %wide.load539, ptr %i.nt, align 4, !tbaa !43
  store <4 x i32> %wide.load540, ptr %i.nu, align 4, !tbaa !43
  %index.next541 = add nuw i64 %index538, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next541, %n.vec536
  br i1 %i.nv, label %select.unfold.preheader.i217.us.us.i.i, label %vector.body537, !llvm.loop !92

select.unfold.i212.us.us.i.i:                     ; preds = %select.unfold.preheader.i211.us.us.i.i, %select.unfold.i212.us.us.i.i
  %indvars.iv.i213.us.us.i.i = phi i64 [ %indvars.iv.next.i214.us.us.i.i, %select.unfold.i212.us.us.i.i ], [ %i.mg, %select.unfold.preheader.i211.us.us.i.i ] ; 2 uses
  %indvars.iv.next.i214.us.us.i.i = add nsw i64 %indvars.iv.i213.us.us.i.i, -1 ; 3 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.next.i214.us.us.i.i
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !43
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.next.i214.us.us.i.i
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !43
  %i.nz = icmp samesign ugt i64 %indvars.iv.i213.us.us.i.i, 1
  br i1 %i.nz, label %select.unfold.i212.us.us.i.i, label %select.unfold.preheader.i217.us.us.i.i, !llvm.loop !93

select.unfold.preheader.i217.us.us.i.i:           ; preds = %vector.body537, %select.unfold.i212.us.us.i.i
  %i.oa = getelementptr i8, ptr %i.nd, i64 8      ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !42 ; 3 uses
  %i.oc = ptrtoaddr ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.nk
  %diff.check518 = icmp ugt i64 %i.od, -32
  %or.cond585 = select i1 %min.iters.check520, i1 true, i1 %diff.check518
  br i1 %or.cond585, label %select.unfold.i218.us.us.i.i, label %vector.body523

vector.body523:                                   ; preds = %select.unfold.preheader.i217.us.us.i.i, %vector.body523
  %index524 = phi i64 [ %index.next527, %vector.body523 ], [ 0, %select.unfold.preheader.i217.us.us.i.i ] ; 2 uses
  %i.oe = xor i64 %index524, -1
  %i.of = add i64 %i.oe, %i.mg                    ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -12
  %i.oi = getelementptr inbounds i8, ptr %i.og, i64 -28
  %wide.load525 = load <4 x i32>, ptr %i.oh, align 4, !tbaa !43
  %wide.load526 = load <4 x i32>, ptr %i.oi, align 4, !tbaa !43
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.of ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 -12
  %i.ol = getelementptr inbounds i8, ptr %i.oj, i64 -28
  store <4 x i32> %wide.load525, ptr %i.ok, align 4, !tbaa !43
  store <4 x i32> %wide.load526, ptr %i.ol, align 4, !tbaa !43
  %index.next527 = add nuw i64 %index524, 8       ; 2 uses
  %i.om = icmp eq i64 %index.next527, %n.vec522
  br i1 %i.om, label %Extra_TruthCopy.exit221.loopexit.us.us.i.i, label %vector.body523, !llvm.loop !94

select.unfold.i218.us.us.i.i:                     ; preds = %select.unfold.preheader.i217.us.us.i.i, %select.unfold.i218.us.us.i.i
  %indvars.iv.i219.us.us.i.i = phi i64 [ %indvars.iv.next.i220.us.us.i.i, %select.unfold.i218.us.us.i.i ], [ %i.mg, %select.unfold.preheader.i217.us.us.i.i ] ; 2 uses
  %indvars.iv.next.i220.us.us.i.i = add nsw i64 %indvars.iv.i219.us.us.i.i, -1 ; 3 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.next.i220.us.us.i.i
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !43
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv.next.i220.us.us.i.i
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !43
  %i.oq = icmp samesign ugt i64 %indvars.iv.i219.us.us.i.i, 1
  br i1 %i.oq, label %select.unfold.i218.us.us.i.i, label %Extra_TruthCopy.exit221.loopexit.us.us.i.i, !llvm.loop !95

Extra_TruthCopy.exit221.loopexit.us.us.i.i:       ; preds = %vector.body523, %select.unfold.i218.us.us.i.i
  tail call void @Extra_TruthCofactor0(ptr noundef nonnull %i.ne, i32 noundef %.val71117.i, i32 noundef %i.nc) #18
  %i.or = load ptr, ptr %i.oa, align 8, !tbaa !42
  tail call void @Extra_TruthCofactor1(ptr noundef %i.or, i32 noundef %.val71117.i, i32 noundef %i.nc) #18
  %indvars.iv.next370.i.i = add nsw i64 %indvars.iv369.i.i, 2 ; 2 uses
  %i.os = add nuw nsw i32 %.0181298.us.us.i.i, 1  ; 2 uses
  %exitcond373.not.i.i = icmp eq i32 %i.os, %5
  br i1 %exitcond373.not.i.i, label %._crit_edge.split.us.us.loopexit.i.i, label %select.unfold.preheader.i211.us.us.i.i, !llvm.loop !96

.preheader288.i.i:                                ; preds = %Extra_TruthCopy.exit.thread.i.i, %._crit_edge.split.i.i
  %i.ot = phi i32 [ %i.pe, %._crit_edge.split.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ]
  %i.ou = phi i32 [ %i.pf, %._crit_edge.split.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ]
  %indvars.iv366.i.i = phi i64 [ %indvars.iv.next367.i.i, %._crit_edge.split.i.i ], [ 0, %Extra_TruthCopy.exit.thread.i.i ] ; 4 uses
  %.0179300.i.i = phi i32 [ %.1180.lcssa.i.i, %._crit_edge.split.i.i ], [ 2, %Extra_TruthCopy.exit.thread.i.i ] ; 2 uses
  %.not345.i.i = icmp eq i64 %indvars.iv366.i.i, 31
  br i1 %.not345.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.preheader288.i.i
  %6 = trunc nuw nsw i64 %indvars.iv366.i.i to i32
  %7 = shl nuw nsw i32 1, %6
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv366.i.i
  %i.ow = sext i32 %.0179300.i.i to i64
  %i.ox = load i32, ptr %i.ov, align 4, !tbaa !43 ; 2 uses
  br label %Extra_TruthCopy.exit215.i.i

Extra_TruthCopy.exit215.i.i:                      ; preds = %Extra_TruthCopy.exit215.i.i, %.lr.ph.i87.i
  %indvars.iv.i88.i = phi i64 [ %i.ow, %.lr.ph.i87.i ], [ %indvars.iv.next.i89.i, %Extra_TruthCopy.exit215.i.i ] ; 2 uses
  %.0181298.i.i = phi i32 [ 0, %.lr.ph.i87.i ], [ %i.pc, %Extra_TruthCopy.exit215.i.i ]
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %indvars.iv.i88.i ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !42
  tail call void @Extra_TruthCofactor0(ptr noundef %i.oz, i32 noundef %.val71117.i, i32 noundef %i.ox) #18
  %i.pa = getelementptr i8, ptr %i.oy, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !42
  tail call void @Extra_TruthCofactor1(ptr noundef %i.pb, i32 noundef %.val71117.i, i32 noundef %i.ox) #18
  %indvars.iv.next.i89.i = add nsw i64 %indvars.iv.i88.i, 2 ; 2 uses
  %i.pc = add nuw nsw i32 %.0181298.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.pc, %7
  br i1 %exitcond.not.i.i, label %._crit_edge.split.loopexit.i.i, label %Extra_TruthCopy.exit215.i.i, !llvm.loop !96

._crit_edge.split.loopexit.i.i:                   ; preds = %Extra_TruthCopy.exit215.i.i
  %i.pd = trunc nsw i64 %indvars.iv.next.i89.i to i32
  br label %._crit_edge.split.i.i

._crit_edge.split.i.i:                            ; preds = %._crit_edge.split.loopexit.i.i, %.preheader288.i.i
  %i.pe = phi i32 [ %i.ot, %.preheader288.i.i ], [ %.pre429.i.i, %._crit_edge.split.loopexit.i.i ] ; 2 uses
  %i.pf = phi i32 [ %i.ou, %.preheader288.i.i ], [ %.pre429.i.i, %._crit_edge.split.loopexit.i.i ] ; 3 uses
  %.1180.lcssa.i.i = phi i32 [ %.0179300.i.i, %.preheader288.i.i ], [ %i.pd, %._crit_edge.split.loopexit.i.i ]
  %indvars.iv.next367.i.i = add nuw nsw i64 %indvars.iv366.i.i, 1 ; 2 uses
  %i.pg = sext i32 %i.pf to i64
  %i.ph = icmp slt i64 %indvars.iv.next367.i.i, %i.pg
  br i1 %i.ph, label %.preheader288.i.i, label %._crit_edge302.i.i, !llvm.loop !91

._crit_edge302.i.i:                               ; preds = %._crit_edge.split.i.i, %._crit_edge.split.us.us.i.i
  %i.pi = phi i1 [ true, %._crit_edge.split.us.us.i.i ], [ false, %._crit_edge.split.i.i ] ; 2 uses
  %spec.select.i.i.i302 = phi i32 [ %spec.select.i.i.i303, %._crit_edge.split.us.us.i.i ], [ %spec.select.i.i.i, %._crit_edge.split.i.i ] ; 3 uses
  %.pre429.i.i259 = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %.pre429.i.i, %._crit_edge.split.i.i ]
  %i.pj = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %i.pe, %._crit_edge.split.i.i ]
  %.lcssa297.i.i = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %i.pf, %._crit_edge.split.i.i ] ; 2 uses
  %.not347.i.i = icmp eq i32 %.lcssa297.i.i, 31
  br i1 %.not347.i.i, label %._crit_edge.thread.i.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %._crit_edge302.i.i, %Extra_TruthCopy.exit.thread.i.i, %Extra_TruthCopy.exit.i.i
  %i.pk = phi i1 [ true, %Extra_TruthCopy.exit.i.i ], [ false, %Extra_TruthCopy.exit.thread.i.i ], [ %i.pi, %._crit_edge302.i.i ]
  %spec.select.i.i.i301 = phi i32 [ %spec.select.i.i.i303, %Extra_TruthCopy.exit.i.i ], [ -2147483648, %Extra_TruthCopy.exit.thread.i.i ], [ %spec.select.i.i.i302, %._crit_edge302.i.i ] ; 4 uses
  %.pre429.i.i258 = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %.pre429.i.i, %Extra_TruthCopy.exit.thread.i.i ], [ %.pre429.i.i259, %._crit_edge302.i.i ] ; 2 uses
  %i.pl = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ], [ %i.pj, %._crit_edge302.i.i ] ; 2 uses
  %.lcssa297.ph.pn.i.i = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ], [ %.lcssa297.i.i, %._crit_edge302.i.i ]
  %i.pm = shl nuw nsw i32 1, %.lcssa297.ph.pn.i.i ; 5 uses
  %i.pn = zext i32 %spec.select.i.i.i301 to i64
  %i.po = lshr i32 %i.pm, 1
  %i.pp = zext nneg i32 %i.pm to i64              ; 2 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.kq, i64 %i.pp
  %i.pq = icmp sgt i32 %spec.select.i.i.i301, 0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph311.i.i
  %indvars.iv381.i.i = phi i64 [ 0, %.lr.ph311.i.i ], [ %indvars.iv.next382.i.i, %bb.ar ] ; 4 uses
  %.0310.i.i = phi i32 [ 0, %.lr.ph311.i.i ], [ %.1.fr.i.i, %bb.ar ] ; 7 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv381.i.i
  %i.pr = load ptr, ptr %gep.i.i, align 8, !tbaa !42
  %i.ps = icmp sgt i32 %.0310.i.i, 0
  br i1 %i.ps, label %.lr.ph306.preheader.i.i, label %.loopexit286.i.i

.lr.ph306.preheader.i.i:                          ; preds = %bb.ap
  %wide.trip.count.i.i = zext nneg i32 %.0310.i.i to i64
  br label %.lr.ph306.i.i

.lr.ph306.i.i:                                    ; preds = %bb.aq, %.lr.ph306.preheader.i.i
  %indvars.iv377.i.i = phi i64 [ 0, %.lr.ph306.preheader.i.i ], [ %indvars.iv.next378.i.i, %bb.aq ] ; 4 uses
  %i.pt = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv377.i.i ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 16, !tbaa !97
  %i.pv = sext i8 %i.pu to i32
  %i.pw = add nsw i32 %i.pm, %i.pv
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.px
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !42
  br i1 %i.pq, label %.lr.ph361, label %Extra_TruthIsEqual.exit.i.i

select.unfold.i223.i.i:                           ; preds = %.lr.ph361
  %i.qa = trunc nuw i64 %i.qc to i32
  %i.qb = icmp sgt i32 %i.qa, 0
  br i1 %i.qb, label %.lr.ph361, label %Extra_TruthIsEqual.exit.i.i, !llvm.loop !98

.lr.ph361:                                        ; preds = %.lr.ph306.i.i, %select.unfold.i223.i.i
  %indvars.iv.i224.i.i360 = phi i64 [ %i.qc, %select.unfold.i223.i.i ], [ %i.pn, %.lr.ph306.i.i ]
  %i.qc = add nsw i64 %indvars.iv.i224.i.i360, -1 ; 4 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !43
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qc
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !43
  %.not.i.i.i = icmp eq i32 %i.qe, %i.qg
  br i1 %.not.i.i.i, label %select.unfold.i223.i.i, label %bb.aq, !llvm.loop !98

Extra_TruthIsEqual.exit.i.i:                      ; preds = %.lr.ph306.i.i, %select.unfold.i223.i.i
  %i.qh = trunc nuw nsw i64 %indvars.iv377.i.i to i32
  %i.qi = trunc i64 %indvars.iv381.i.i to i8
  %i.qj = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv377.i.i ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !97  ; 2 uses
  %i.ql = add i8 %i.qk, 1
  store i8 %i.ql, ptr %i.qj, align 1, !tbaa !97
  %i.qm = sext i8 %i.qk to i64
  %i.qn = getelementptr inbounds i8, ptr %i.pt, i64 %i.qm
  store i8 %i.qi, ptr %i.qn, align 1, !tbaa !97
  br label %.loopexit286.i.i

bb.aq:                                            ; preds = %.lr.ph361
  %indvars.iv.next378.i.i = add nuw nsw i64 %indvars.iv377.i.i, 1 ; 2 uses
  %exitcond380.not.i.i = icmp eq i64 %indvars.iv.next378.i.i, %wide.trip.count.i.i
  br i1 %exitcond380.not.i.i, label %.loopexit286.thread.i.i, label %.lr.ph306.i.i, !llvm.loop !99

.loopexit286.i.i:                                 ; preds = %Extra_TruthIsEqual.exit.i.i, %bb.ap
  %.1182293.i.i = phi i32 [ %i.qh, %Extra_TruthIsEqual.exit.i.i ], [ 0, %bb.ap ]
  %.not201.i.i = icmp eq i32 %.1182293.i.i, %.0310.i.i
  br i1 %.not201.i.i, label %.loopexit286.thread.i.i, label %bb.ar

.loopexit286.thread.i.i:                          ; preds = %bb.aq, %.loopexit286.i.i
  %i.qo = trunc i64 %indvars.iv381.i.i to i8
  %i.qp = sext i32 %.0310.i.i to i64              ; 2 uses
  %i.qq = getelementptr inbounds [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %i.qp
  store i8 %i.qo, ptr %i.qq, align 16, !tbaa !97
  %i.qr = getelementptr inbounds i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %i.qp
  store i8 1, ptr %i.qr, align 1, !tbaa !97
  %i.qs = add nsw i32 %.0310.i.i, 1
  %.not202.i.i = icmp slt i32 %.0310.i.i, %i.po
  br i1 %.not202.i.i, label %bb.ar, label %Abc_NodeDecomposeStep.exit.i

bb.ar:                                            ; preds = %.loopexit286.thread.i.i, %.loopexit286.i.i
  %.1.i.i = phi i32 [ %.0310.i.i, %.loopexit286.i.i ], [ %i.qs, %.loopexit286.thread.i.i ]
  %.1.fr.i.i = freeze i32 %.1.i.i                 ; 6 uses
  %indvars.iv.next382.i.i = add nuw nsw i64 %indvars.iv381.i.i, 1 ; 2 uses
  %exitcond386.not.i.i = icmp eq i64 %indvars.iv.next382.i.i, %i.pp
  br i1 %exitcond386.not.i.i, label %._crit_edge.i.i, label %bb.ap, !llvm.loop !100

._crit_edge.i.i:                                  ; preds = %bb.ar
  %i.qt = icmp ult i32 %.1.fr.i.i, 2
  %i.qu = add i32 %.1.fr.i.i, -1
  %i.qv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qu, i1 true)
  %i.qw = sub nuw nsw i32 32, %i.qv
  %spec.select.i84.i = select i1 %i.qt, i32 %.1.fr.i.i, i32 %i.qw ; 2 uses
  br i1 %i.pk, label %select.unfold.preheader.i226.i.i, label %Extra_TruthClear.exit.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge302.i.i
  br i1 %i.pi, label %select.unfold.preheader.i226.i.i, label %.preheader.i.i

select.unfold.preheader.i226.i.i:                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.qx = phi i32 [ %spec.select.i84.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ]
  %i.qy = phi i32 [ %i.pm, %._crit_edge.i.i ], [ -2147483648, %._crit_edge.thread.i.i ]
  %.0.lcssa450.i.i310 = phi i32 [ %.1.fr.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ]
  %spec.select.i.i.i304308 = phi i32 [ %spec.select.i.i.i301, %._crit_edge.i.i ], [ %spec.select.i.i.i302, %._crit_edge.thread.i.i ] ; 2 uses
  %i.qz = zext nneg i32 %spec.select.i.i.i304308 to i64
  %i.ra = shl nuw nsw i64 %i.qz, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gp, i8 0, i64 %i.ra, i1 false), !tbaa !43
  br label %Extra_TruthClear.exit.i.i

Extra_TruthClear.exit.i.i:                        ; preds = %._crit_edge.i.i, %select.unfold.preheader.i226.i.i
  %i.rb = phi i32 [ %spec.select.i84.i, %._crit_edge.i.i ], [ %i.qx, %select.unfold.preheader.i226.i.i ] ; 6 uses
  %i.rc = phi i32 [ %i.pm, %._crit_edge.i.i ], [ %i.qy, %select.unfold.preheader.i226.i.i ]
  %.0.lcssa450.i.i309 = phi i32 [ %.1.fr.i.i, %._crit_edge.i.i ], [ %.0.lcssa450.i.i310, %select.unfold.preheader.i226.i.i ] ; 3 uses
  %spec.select.i.i.i304307 = phi i32 [ %spec.select.i.i.i301, %._crit_edge.i.i ], [ %spec.select.i.i.i304308, %select.unfold.preheader.i226.i.i ] ; 8 uses
  %i.rd = phi i1 [ false, %._crit_edge.i.i ], [ true, %select.unfold.preheader.i226.i.i ] ; 2 uses
  %i.re = icmp sgt i32 %.0.lcssa450.i.i309, 0     ; 2 uses
  br i1 %i.re, label %.lr.ph318.i.i, label %._crit_edge319.i.i

.lr.ph318.i.i:                                    ; preds = %Extra_TruthClear.exit.i.i
  %i.rf = zext i32 %spec.select.i.i.i304307 to i64 ; 15 uses
  %wide.trip.count396.i.i = zext nneg i32 %.0.lcssa450.i.i309 to i64
  %wide.trip.count391.i.i = zext nneg i32 %i.rb to i64
  %i.rg = load ptr, ptr %i.ab, align 8, !tbaa !39
  br i1 %i.rd, label %.lr.ph315.preheader.i.i.preheader, label %._crit_edge319.i.i

.lr.ph315.preheader.i.i.preheader:                ; preds = %.lr.ph318.i.i
  %.not573 = icmp eq i32 %spec.select.i.i.i304307, 0
  %i.rh = select i1 %.not573, i64 0, i64 4        ; 2 uses
  %scevgep447 = getelementptr i8, ptr %scevgep446, i64 %i.rh
  %i.ri = shl nuw nsw i64 %i.rf, 2                ; 5 uses
  %scevgep448 = getelementptr i8, ptr %i.gp, i64 %i.ri
  %.not574 = icmp eq i32 %spec.select.i.i.i304307, 0
  %i.rj = select i1 %.not574, i64 0, i64 4        ; 2 uses
  %.not575 = icmp eq i32 %spec.select.i.i.i304307, 0
  %i.rk = select i1 %.not575, i64 0, i64 4        ; 2 uses
  %i.rl = icmp ne i32 %spec.select.i.i.i304307, 0
  %.neg576 = sext i1 %i.rl to i64
  %i.rm = add nuw nsw i64 %i.rf, 1
  %i.rn = add nsw i64 %i.rm, %.neg576             ; 5 uses
  %min.iters.check481 = icmp ult i64 %i.rn, 8     ; 2 uses
  %n.vec506 = and i64 %i.rn, -8                   ; 3 uses
  %i.ro = sub nsw i64 %i.rf, %n.vec506
  %cmp.n515 = icmp eq i64 %i.rn, %n.vec506
  %n.vec483 = and i64 %i.rn, -8                   ; 3 uses
  %i.rp = sub nsw i64 %i.rf, %n.vec483
  %cmp.n492 = icmp eq i64 %i.rn, %n.vec483
  %i.rq = icmp ne i32 %spec.select.i.i.i304307, 0
  %.neg577 = sext i1 %i.rq to i64
  %i.rr = add nuw nsw i64 %i.rf, 1
  %i.rs = add nsw i64 %i.rr, %.neg577             ; 3 uses
  %min.iters.check456 = icmp ult i64 %i.rs, 8
  %n.vec458 = and i64 %i.rs, -8                   ; 3 uses
  %i.rt = sub nsw i64 %i.rf, %n.vec458
  %cmp.n467 = icmp eq i64 %i.rs, %n.vec458
  br label %.lr.ph315.preheader.i.i

.lr.ph315.preheader.i.i:                          ; preds = %.lr.ph315.preheader.i.i.preheader, %Extra_TruthOr.exit.i.i.loopexit
  %indvars.iv393.i.i = phi i64 [ %indvars.iv.next394.i.i, %Extra_TruthOr.exit.i.i.loopexit ], [ 0, %.lr.ph315.preheader.i.i.preheader ] ; 3 uses
  %i.ru = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv393.i.i
  %i.rv = load i8, ptr %i.ru, align 16, !tbaa !97
  %i.rw = sext i8 %i.rv to i32
  %i.rx = add nsw i32 %i.rc, %i.rw
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ry
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !42 ; 10 uses
  %i.sb = trunc nuw nsw i64 %indvars.iv393.i.i to i32
  %scevgep470 = getelementptr i8, ptr %i.sa, i64 -4 ; 2 uses
  %scevgep472 = getelementptr i8, ptr %scevgep470, i64 %i.rj
  %scevgep473 = getelementptr i8, ptr %i.sa, i64 %i.ri ; 2 uses
  %scevgep496 = getelementptr i8, ptr %scevgep470, i64 %i.rk
  br label %.lr.ph315.i.us.i

end_hunk_0
begin_hunk_1_@Abc_NtkSpecialMapping:bb.a

bb.bz:                                            ; preds = %.lr.ph268
  %i.nf = tail call ptr @Abc_NtkSpecialMap_rec(ptr noundef %i.mg, ptr noundef nonnull %i.ms, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %.val148 = load ptr, ptr %i.mh, align 8, !tbaa !172 ; 2 uses
  %i.ng = getelementptr i8, ptr %.val148, i64 4
  %.val148.val = load i32, ptr %i.ng, align 4, !tbaa !26
  %i.nh = sext i32 %.val148.val to i64
  %i.ni = icmp slt i64 %indvars.iv.next288, %i.nh
  br i1 %i.ni, label %.lr.ph268, label %.critedge6, !llvm.loop !211

.critedge6:                                       ; preds = %bb.ca, %.critedge4
  tail call void @Abc_NtkFinalize(ptr noundef nonnull %0, ptr noundef %i.mg) #18
  tail call void @Abc_NtkCleanMarkAB(ptr noundef nonnull %0) #18
  %i.nj = load i32, ptr %i.g, align 8, !tbaa !199 ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !194 ; 3 uses
  br i1 %i.nk, label %.lr.ph.i.i242, label %._crit_edge.i.i

.lr.ph.i.i242:                                    ; preds = %.critedge6, %bb.cc
  %i.nl = phi i32 [ %i.nt, %bb.cc ], [ %i.nj, %.critedge6 ]
  %i.nm = phi ptr [ %i.nu, %bb.cc ], [ %.pre.i.i, %.critedge6 ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.cc ], [ 0, %.critedge6 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %indvars.iv.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !190 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.np, null
  br i1 %.not15.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i242
  tail call void @free(ptr noundef nonnull %i.np) #18
  %i.nq = load ptr, ptr %i.l, align 8, !tbaa !194 ; 2 uses
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.nq, i64 %indvars.iv.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store ptr null, ptr %i.ns, align 8, !tbaa !190
  %.pre18.i.i = load i32, ptr %i.g, align 8, !tbaa !199
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i.i242
  %i.nt = phi i32 [ %.pre18.i.i, %bb.cb ], [ %i.nl, %.lr.ph.i.i242 ] ; 2 uses
  %i.nu = phi ptr [ %i.nq, %bb.cb ], [ %i.nm, %.lr.ph.i.i242 ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nv = sext i32 %i.nt to i64
  %i.nw = icmp slt i64 %indvars.iv.next.i.i, %i.nv
  br i1 %i.nw, label %.lr.ph.i.i242, label %._crit_edge.thread.i.i, !llvm.loop !212

._crit_edge.i.i:                                  ; preds = %.critedge6
  %.not.i.i241 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i241, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.cc, %._crit_edge.i.i
  %i.nx = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.nu, %bb.cc ]
  tail call void @free(ptr noundef nonnull %i.nx) #18
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.g) #18
  %i.ny = load ptr, ptr %i.d, align 8, !tbaa !190 ; 2 uses
  %.not.i = icmp eq ptr %i.ny, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.cd

bb.cd:                                            ; preds = %Vec_WecFree.exit
  tail call void @free(ptr noundef nonnull %i.ny) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WecFree.exit, %bb.cd
  tail call void @free(ptr noundef nonnull %i.a) #18
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mg, i64 32 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !51 ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 4
  %.val269 = load i32, ptr %i.ob, align 4, !tbaa !26
  %i.oc = icmp sgt i32 %.val269, 0
  br i1 %i.oc, label %.lr.ph273, label %.critedge8

.lr.ph273:                                        ; preds = %Vec_IntFree.exit, %bb.cg
  %i.od = phi ptr [ %i.or, %bb.cg ], [ %i.oa, %Vec_IntFree.exit ] ; 3 uses
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.cg ], [ 0, %Vec_IntFree.exit ] ; 2 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 8
  %.val126.val = load ptr, ptr %i.oe, align 8, !tbaa !29
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.val126.val, i64 %indvars.iv290
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !30 ; 2 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph273
  %i.oi = getelementptr i8, ptr %i.og, i64 20     ; 2 uses
  %.val145 = load i32, ptr %i.oi, align 4         ; 4 uses
  %i.oj = and i32 %.val145, 15
  %.not244 = icmp eq i32 %i.oj, 7
  br i1 %.not244, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ok = lshr i32 %.val145, 4
  %i.ol = lshr i32 %.val145, 5
  %i.om = or i32 %i.ok, %i.ol
  %i.on = shl i32 %i.om, 9
  %i.oo = and i32 %i.on, 512
  %i.op = and i32 %.val145, -569
  %i.oq = or disjoint i32 %i.oo, %i.op
  store i32 %i.oq, ptr %i.oi, align 4
  %.pre306 = load ptr, ptr %i.nz, align 8, !tbaa !51
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.lr.ph273
  %i.or = phi ptr [ %i.od, %.lr.ph273 ], [ %.pre306, %bb.cf ], [ %i.od, %bb.ce ] ; 2 uses
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 4
  %.val = load i32, ptr %i.os, align 4, !tbaa !26
  %i.ot = sext i32 %.val to i64
  %i.ou = icmp slt i64 %indvars.iv.next291, %i.ot
  br i1 %i.ou, label %.lr.ph273, label %.critedge8, !llvm.loop !213

.critedge8:                                       ; preds = %bb.cg, %Vec_IntFree.exit
  %i.ov = tail call i32 @Abc_NtkCheck(ptr noundef nonnull %i.mg) #18
  %.not110 = icmp eq i32 %i.ov, 0
  br i1 %.not110, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.critedge8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @Abc_NtkDelete(ptr noundef nonnull %i.mg) #18
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge8, %bb.ch
  %.0106 = phi ptr [ null, %bb.ch ], [ %i.mg, %.critedge8 ]
  ret ptr %.0106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @Abc_NtkCleanCopy(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NtkStartFrom(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Abc_NtkFinalize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkCleanMarkAB(ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #3

declare void @Extra_ProgressBarUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NodeGetCutsRecursive(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Cut_ManStart(ptr noundef) local_unnamed_addr #3

declare void @Cut_ManSetFanoutCounts(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NtkFanoutCounts(ptr noundef) local_unnamed_addr #3

declare void @Cut_NodeSetTriv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare ptr @Extra_ArrayAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare i32 @Extra_TruthSupport(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Extra_TruthShrink(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Abc_SopCreateFromTruth(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @Extra_TruthCofactor0(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Extra_TruthCofactor1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 56}
!9 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !14, i64 160, !5, i64 168, !15, i64 176, !14, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !16, i64 208, !5, i64 216, !17, i64 224, !19, i64 240, !20, i64 248, !11, i64 256, !21, i64 264, !11, i64 272, !22, i64 280, !5, i64 284, !23, i64 288, !13, i64 296, !18, i64 304, !24, i64 312, !13, i64 320, !14, i64 328, !11, i64 336, !11, i64 344, !14, i64 352, !11, i64 360, !11, i64 368, !23, i64 376, !23, i64 384, !10, i64 392, !25, i64 400, !13, i64 408, !23, i64 416, !23, i64 424, !13, i64 432, !23, i64 440, !23, i64 448, !23, i64 456}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!13 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!14 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!15 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !18, i64 8}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!20 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!21 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!25 = !{!"p1 float", !11, i64 0}
!26 = !{!27, !5, i64 4}
!27 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !28, i64 8}
!28 = !{!"any p2 pointer", !11, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!11, !11, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !5, i64 0}
!34 = !{!"Abc_ManScl_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !13, i64 16, !13, i64 24, !6, i64 32, !18, i64 96, !35, i64 104, !35, i64 112, !35, i64 120}
!35 = !{!"p2 int", !28, i64 0}
!36 = !{!34, !5, i64 4}
!37 = !{!34, !5, i64 8}
!38 = !{!34, !5, i64 12}
!39 = !{!34, !35, i64 104}
!40 = !{!34, !35, i64 112}
!41 = !{!34, !35, i64 120}
!42 = !{!18, !18, i64 0}
!43 = !{!5, !5, i64 0}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = !{!47, !5, i64 0}
!47 = !{!"Cut_ParamsStruct_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76}
!48 = !{!47, !5, i64 4}
!49 = !{!47, !5, i64 24}
!50 = !{!47, !5, i64 76}
!51 = !{!9, !13, i64 32}
!52 = !{!47, !5, i64 8}
!53 = !{!47, !5, i64 32}
!54 = !{!55, !5, i64 44}
!55 = !{!"Abc_Obj_t_", !14, i64 0, !56, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !17, i64 24, !17, i64 40, !11, i64 56, !6, i64 64, !6, i64 72}
!56 = !{!"p1 _ZTS10Abc_Obj_t_", !11, i64 0}
!57 = !{!55, !5, i64 16}
!58 = distinct !{!58, !32}
!59 = !{!13, !13, i64 0}
!60 = !{!34, !13, i64 24}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!63 = !{!55, !5, i64 28}
!64 = !{!65, !66, i64 16}
!65 = !{!"Cut_CutStruct_t_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 2, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !66, i64 16, !6, i64 24}
!66 = !{!"p1 _ZTS16Cut_CutStruct_t_", !11, i64 0}
!67 = !{!55, !14, i64 0}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !32}
!70 = !{!34, !13, i64 16}
!71 = distinct !{!71, !32}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !32}
!74 = !{!34, !18, i64 96}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !32, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = distinct !{!81, !32, !79}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !77}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
!86 = !{!56, !56, i64 0}
!87 = distinct !{!87, !32}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32, !79, !80}
!90 = distinct !{!90, !32, !79}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32, !79, !80}
!93 = distinct !{!93, !32, !79}
!94 = distinct !{!94, !32, !79, !80}
!95 = distinct !{!95, !32, !79}
!96 = distinct !{!96, !32}
!97 = !{!6, !6, i64 0}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !32, !79, !80}
!107 = !{!108}
!108 = distinct !{!108, !109}
!109 = distinct !{!109, !"LVerDomain"}
!110 = !{!111}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !32, !79, !80}
!113 = distinct !{!113, !32, !79}
!114 = distinct !{!114, !32, !79}
!115 = distinct !{!115, !32}
!116 = !{!117}
!117 = distinct !{!117, !118}
!118 = distinct !{!118, !"LVerDomain"}
!119 = !{!120}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !32, !79, !80}
!122 = distinct !{!122, !32, !79}
!123 = distinct !{!123, !32}
!124 = distinct !{!124, !32}
!125 = distinct !{!125, !32, !79}
!126 = distinct !{!126, !32}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !32, !79, !80}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !32, !79, !80}
!139 = distinct !{!139, !32, !79}
!140 = distinct !{!140, !32, !79}
!141 = distinct !{!141, !32}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !32, !79, !80}
!148 = distinct !{!148, !77}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = distinct !{!152, !32, !79, !80}
!153 = !{!154}
!154 = distinct !{!154, !151}
!155 = distinct !{!155, !77}
!156 = distinct !{!156, !32, !79}
!157 = distinct !{!157, !32}
!158 = !{!9, !11, i64 256}
!159 = !{!55, !18, i64 32}
!160 = distinct !{!160, !32}
!161 = distinct !{!161, !32}
end_hunk_1
