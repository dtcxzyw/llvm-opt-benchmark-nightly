Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitDsd?download=true
inline.NumInlined: 404
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 72
begin_hunk_0_@Kit_DsdCofactoring:.preheader241
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr %i.lj, ptr %i.lk, align 16, !tbaa !79
  %i.ll = shl i32 79, %i.k
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !79
  %i.lp = shl nuw i32 1, %i.e
  %i.lq = select i1 %i.d, i32 1, i32 %i.lp        ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %select.unfold.preheader.i, label %Kit_TruthCopy.exit

select.unfold.preheader.i:                        ; preds = %.preheader241
  %i.ls = zext nneg i32 %i.lq to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.lq, 8
  br i1 %min.iters.check, label %select.unfold.i, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.ls, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lt = xor i64 %index, -1
  %i.lu = add i64 %i.lt, %i.ls                    ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -12
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 -28
  %wide.load = load <4 x i32>, ptr %i.lw, align 4, !tbaa !25
  %wide.load353 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !25
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.lu ; 2 uses
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -12
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 -28
  store <4 x i32> %wide.load, ptr %i.lz, align 4, !tbaa !25
  store <4 x i32> %wide.load353, ptr %i.ma, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %Kit_TruthCopy.exit, label %vector.body, !llvm.loop !390

select.unfold.i:                                  ; preds = %select.unfold.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %i.ls, %select.unfold.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !25
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  store i32 %i.md, ptr %i.me, align 4, !tbaa !25
  %i.mf = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.mf, label %select.unfold.i, label %Kit_TruthCopy.exit, !llvm.loop !391

Kit_TruthCopy.exit:                               ; preds = %vector.body, %select.unfold.i, %.preheader241
  %i.mg = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %i.j, i32 noundef %1, i32 noundef 0)
  store ptr %i.mg, ptr %i.a, align 16, !tbaa !384
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Kit_TruthCopy.exit
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Kit_TruthCopy.exit
  %i.mi = icmp sgt i32 %3, 0
  br i1 %i.mi, label %.lr.ph260, label %Kit_DsdCofactoringGetVars.exit.thread

.lr.ph260:                                        ; preds = %bb.b
  %.not157 = icmp eq ptr %2, null
  %wide.trip.count289 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph260, %._crit_edge
  %indvars.iv286.a = phi i64 [ 0, %.lr.ph260 ], [ %i.qj, %._crit_edge ] ; 8 uses
  %i.mj = trunc nuw nsw i64 %indvars.iv286.a to i32 ; 2 uses
  %i.mk = shl nuw i32 1, %i.mj                    ; 3 uses
  %i.ml = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %indvars.iv286.a
  %.not238 = icmp eq i64 %indvars.iv286.a, 31
  br i1 %.not238, label %Kit_DsdCofactoringGetVars.exit.thread, label %.preheader42.preheader.i

.preheader42.preheader.i:                         ; preds = %bb.c
  %wide.trip.count75.i = zext nneg i32 %i.mk to i64
  br label %.preheader42.i

.preheader42.i:                                   ; preds = %.critedge.i, %.preheader42.preheader.i
  %indvars.iv72.i = phi i64 [ 0, %.preheader42.preheader.i ], [ %indvars.iv.next73.i, %.critedge.i ] ; 2 uses
  %.057.i = phi i32 [ 0, %.preheader42.preheader.i ], [ %.1.lcssa.i, %.critedge.i ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv72.i
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !384 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mp = load i16, ptr %i.mo, align 4, !tbaa !48 ; 2 uses
  %.not60.i = icmp eq i16 %i.mp, 0
  br i1 %.not60.i, label %.critedge.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.preheader42.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !50
  %wide.trip.count70.i = zext i16 %i.mp to i64
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %.lr.ph52.i
  %indvars.iv67.i = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next68.i, %.critedge2.i ] ; 2 uses
  %.151.i = phi i32 [ %.057.i, %.lr.ph52.i ], [ %.4.i, %.critedge2.i ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv67.i
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !51 ; 3 uses
  %.not.i = icmp eq ptr %i.mt, null
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.mu = load i32, ptr %i.mt, align 4            ; 4 uses
  %i.mv = and i32 %i.mu, 448
  %.not39.i = icmp ne i32 %i.mv, 320
  %.mask.i = and i32 %i.mu, -67108864
  %i.mw = icmp eq i32 %.mask.i, 201326592
  %or.cond.i = or i1 %.not39.i, %i.mw
  %.not61.i = icmp ult i32 %i.mu, 67108864
  %or.cond82.i = or i1 %.not61.i, %or.cond.i
  br i1 %or.cond82.i, label %.critedge2.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.e
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %.val.i = load i16, ptr %i.mn, align 8, !tbaa !44
  %i.my = lshr i32 %i.mu, 26
  %i.mz = zext nneg i32 %i.my to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph48.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next65.i, %bb.i ] ; 2 uses
  %.247.i = phi i32 [ %.151.i, %.lr.ph48.i ], [ %.3.i, %bb.i ] ; 7 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv64.i
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !59
  %i.nc = lshr i16 %i.nb, 1                       ; 2 uses
  %i.nd = zext nneg i16 %i.nc to i32              ; 2 uses
  %.not41.i = icmp ult i16 %i.nc, %.val.i
  br i1 %.not41.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ne = icmp sgt i32 %.247.i, 0
  br i1 %i.ne, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %.247.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i161 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i162, %bb.h ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i161
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !25
  %i.nh = icmp eq i32 %i.ng, %i.nd
  br i1 %i.nh, label %._crit_edge.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !386

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ni = trunc nuw nsw i64 %indvars.iv.i161 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.g
  %.034.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.ni, %._crit_edge.loopexit.i ]
  %i.nj = icmp eq i32 %.034.lcssa.i, %.247.i
  br i1 %i.nj, label %._crit_edge.thread.i, label %bb.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i
  %i.nk = add nsw i32 %.247.i, 1
  %i.nl = sext i32 %.247.i to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nl
  store i32 %i.nd, ptr %i.nm, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.f
  %.3.i = phi i32 [ %i.nk, %._crit_edge.thread.i ], [ %.247.i, %._crit_edge.i ], [ %.247.i, %bb.f ] ; 2 uses
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next65.i, %i.mz
  br i1 %exitcond.not, label %.critedge2.i, label %bb.f, !llvm.loop !387

.critedge2.i:                                     ; preds = %bb.i, %bb.e
  %.4.i = phi i32 [ %.151.i, %bb.e ], [ %.3.i, %bb.i ] ; 2 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count70.i
  br i1 %exitcond71.not.i, label %.critedge.i, label %bb.d, !llvm.loop !388

.critedge.i:                                      ; preds = %.critedge2.i, %bb.d, %.preheader42.i
  %.1.lcssa.i = phi i32 [ %.057.i, %.preheader42.i ], [ %.4.i, %.critedge2.i ], [ %.151.i, %bb.d ] ; 4 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %Kit_DsdCofactoringGetVars.exit, label %.preheader42.i, !llvm.loop !389

Kit_DsdCofactoringGetVars.exit:                   ; preds = %.critedge.i
  %i.nn = icmp eq i32 %.1.lcssa.i, 0
  br i1 %i.nn, label %Kit_DsdCofactoringGetVars.exit.thread, label %.preheader240

.preheader240:                                    ; preds = %Kit_DsdCofactoringGetVars.exit
  %i.no = icmp sgt i32 %.1.lcssa.i, 0
  br i1 %i.no, label %.preheader239.us.preheader, label %._crit_edge255

.preheader239.us.preheader:                       ; preds = %.preheader240
  %i.np = add nuw nsw i64 %indvars.iv286.a, 1     ; 2 uses
  %i.nq = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv286.a
  %i.ns = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %i.np ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.mk, i32 1)
  %wide.trip.count278 = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader239.us

.preheader239.us:                                 ; preds = %.preheader239.us.preheader, %bb.ac
  %indvars.iv274 = phi i64 [ 0, %.preheader239.us.preheader ], [ %indvars.iv.next275, %bb.ac ] ; 2 uses
  %.0145253.us = phi i32 [ -1, %.preheader239.us.preheader ], [ %.1146.us, %bb.ac ]
  %.0148252.us = phi i32 [ 10000, %.preheader239.us.preheader ], [ %.1149.us, %bb.ac ] ; 2 uses
  %.0151251.us = phi i32 [ 10000, %.preheader239.us.preheader ], [ %.1152.us, %bb.ac ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv274
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !25 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader239.us, %Kit_DsdNtkFree.exit200.us
  %indvars.iv = phi i64 [ 0, %.preheader239.us ], [ %indvars.iv.next, %Kit_DsdNtkFree.exit200.us ] ; 3 uses
  %.0147248.us = phi i32 [ 0, %.preheader239.us ], [ %i.pe, %Kit_DsdNtkFree.exit200.us ]
  %.0150247.us = phi i32 [ 0, %.preheader239.us ], [ %.0.lcssa.i184.us, %Kit_DsdNtkFree.exit200.us ]
  %i.nv = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 16, !tbaa !79 ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !79 ; 2 uses
  tail call void @Kit_TruthCofactor0New(ptr noundef %i.nx, ptr noundef %i.nz, i32 noundef %1, i32 noundef %i.nu) #29
  %i.oa = or disjoint i64 %i.nv, 1                ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.oa
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !79 ; 3 uses
  tail call void @Kit_TruthCofactor1New(ptr noundef %i.oc, ptr noundef %i.nz, i32 noundef %1, i32 noundef %i.nu) #29
  %i.od = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %i.nx, i32 noundef %1, i32 noundef 0) ; 7 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nv
  store ptr %i.od, ptr %i.oe, align 16, !tbaa !384
  %i.of = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %i.oc, i32 noundef %1, i32 noundef 0) ; 7 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.oa
  store ptr %i.of, ptr %i.og, align 8, !tbaa !384
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 3 uses
  %i.oi = load i16, ptr %i.oh, align 4, !tbaa !48 ; 2 uses
  %.not17.i.us = icmp eq i16 %i.oi, 0
  br i1 %.not17.i.us, label %Kit_DsdNonDsdSizeMax.exit.us, label %.lr.ph.i163.us

.lr.ph.i163.us:                                   ; preds = %bb.j
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !50
  %wide.trip.count.i164.us = zext i16 %i.oi to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i163.us
  %indvars.iv.i165.us = phi i64 [ 0, %.lr.ph.i163.us ], [ %indvars.iv.next.i168.us, %bb.l ] ; 2 uses
  %.014.i.us = phi i32 [ 0, %.lr.ph.i163.us ], [ %.1.i.us, %bb.l ] ; 3 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv.i165.us
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !51 ; 2 uses
  %.not.i166.us = icmp eq ptr %i.om, null
  br i1 %.not.i166.us, label %Kit_DsdNonDsdSizeMax.exit.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.on = load i32, ptr %i.om, align 4            ; 2 uses
  %i.oo = and i32 %i.on, 448
  %.not12.i.us = icmp eq i32 %i.oo, 320
  %i.op = lshr i32 %i.on, 26
  %spec.select.i167.us = tail call i32 @llvm.umax.i32(i32 %.014.i.us, i32 %i.op)
  %.1.i.us = select i1 %.not12.i.us, i32 %spec.select.i167.us, i32 %.014.i.us ; 2 uses
  %indvars.iv.next.i168.us = add nuw nsw i64 %indvars.iv.i165.us, 1 ; 2 uses
  %exitcond.not.i169.us = icmp eq i64 %indvars.iv.next.i168.us, %wide.trip.count.i164.us
  br i1 %exitcond.not.i169.us, label %Kit_DsdNonDsdSizeMax.exit.us, label %bb.k, !llvm.loop !295

Kit_DsdNonDsdSizeMax.exit.us:                     ; preds = %bb.k, %bb.l, %bb.j
  %.0.lcssa.i171.us = phi i32 [ 0, %bb.j ], [ %.014.i.us, %bb.k ], [ %.1.i.us, %bb.l ]
  %i.oq = tail call i32 @llvm.smax.i32(i32 %.0150247.us, i32 %.0.lcssa.i171.us) ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.of, i64 4 ; 3 uses
  %i.os = load i16, ptr %i.or, align 4, !tbaa !48 ; 2 uses
  %.not17.i172.us = icmp eq i16 %i.os, 0
  br i1 %.not17.i172.us, label %Kit_DsdNonDsdSizeMax.exit185.us, label %.lr.ph.i173.us

.lr.ph.i173.us:                                   ; preds = %Kit_DsdNonDsdSizeMax.exit.us
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !50
  %wide.trip.count.i174.us = zext i16 %i.os to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i173.us
  %indvars.iv.i175.us = phi i64 [ 0, %.lr.ph.i173.us ], [ %indvars.iv.next.i181.us, %bb.n ] ; 2 uses
  %.014.i176.us = phi i32 [ 0, %.lr.ph.i173.us ], [ %.1.i180.us, %bb.n ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv.i175.us
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !51 ; 2 uses
  %.not.i177.us = icmp eq ptr %i.ow, null
  br i1 %.not.i177.us, label %Kit_DsdNonDsdSizeMax.exit185.us.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ox = load i32, ptr %i.ow, align 4            ; 2 uses
  %i.oy = and i32 %i.ox, 448
  %.not12.i178.us = icmp eq i32 %i.oy, 320
  %i.oz = lshr i32 %i.ox, 26
  %spec.select.i179.us = tail call i32 @llvm.umax.i32(i32 %.014.i176.us, i32 %i.oz)
  %.1.i180.us = select i1 %.not12.i178.us, i32 %spec.select.i179.us, i32 %.014.i176.us ; 2 uses
  %indvars.iv.next.i181.us = add nuw nsw i64 %indvars.iv.i175.us, 1 ; 2 uses
  %exitcond.not.i182.us = icmp eq i64 %indvars.iv.next.i181.us, %wide.trip.count.i174.us
  br i1 %exitcond.not.i182.us, label %Kit_DsdNonDsdSizeMax.exit185.us.loopexit, label %bb.m, !llvm.loop !295

Kit_DsdNonDsdSizeMax.exit185.us.loopexit:         ; preds = %bb.n, %bb.m
  %.0.lcssa.i184.us.ph = phi i32 [ %.1.i180.us, %bb.n ], [ %.014.i176.us, %bb.m ]
  %i.pa = tail call i32 @llvm.umax.i32(i32 %i.oq, i32 %.0.lcssa.i184.us.ph)
  br label %Kit_DsdNonDsdSizeMax.exit185.us

Kit_DsdNonDsdSizeMax.exit185.us:                  ; preds = %Kit_DsdNonDsdSizeMax.exit185.us.loopexit, %Kit_DsdNonDsdSizeMax.exit.us
  %.0.lcssa.i184.us = phi i32 [ %i.oq, %Kit_DsdNonDsdSizeMax.exit.us ], [ %i.pa, %Kit_DsdNonDsdSizeMax.exit185.us.loopexit ] ; 4 uses
  %i.pb = tail call i32 @Kit_TruthSupportSize(ptr noundef %i.nx, i32 noundef %1) #29
  %i.pc = add nsw i32 %i.pb, %.0147248.us
  %i.pd = tail call i32 @Kit_TruthSupportSize(ptr noundef %i.oc, i32 noundef %1) #29
  %i.pe = add nsw i32 %i.pc, %i.pd                ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.od, i64 24 ; 3 uses
  %i.pg = load i16, ptr %i.oh, align 4, !tbaa !48
  %.not28.i.us = icmp eq i16 %i.pg, 0
  br i1 %.not28.i.us, label %.critedge.i190.us, label %.lr.ph.i186.us

.lr.ph.i186.us:                                   ; preds = %Kit_DsdNonDsdSizeMax.exit185.us, %bb.o
  %indvars.iv.i187.us = phi i64 [ %indvars.iv.next.i189.us, %bb.o ], [ 0, %Kit_DsdNonDsdSizeMax.exit185.us ] ; 2 uses
  %i.ph = load ptr, ptr %i.pf, align 8, !tbaa !50
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.i187.us
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !51 ; 2 uses
  %.not.i188.us = icmp eq ptr %i.pj, null
  br i1 %.not.i188.us, label %.critedge.i190.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i186.us
  tail call void @free(ptr noundef nonnull %i.pj) #29
  %indvars.iv.next.i189.us = add nuw nsw i64 %indvars.iv.i187.us, 1 ; 2 uses
  %i.pk = load i16, ptr %i.oh, align 4, !tbaa !48
  %i.pl = zext i16 %i.pk to i64
  %i.pm = icmp samesign ult i64 %indvars.iv.next.i189.us, %i.pl
  br i1 %i.pm, label %.lr.ph.i186.us, label %.critedge.i190.us, !llvm.loop !54

.critedge.i190.us:                                ; preds = %.lr.ph.i186.us, %bb.o, %Kit_DsdNonDsdSizeMax.exit185.us
  %i.pn = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !55 ; 2 uses
  %.not22.i.us = icmp eq ptr %i.po, null
  br i1 %.not22.i.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge.i190.us
  tail call void @free(ptr noundef nonnull %i.po) #29
  store ptr null, ptr %i.pn, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge.i190.us
  %i.pp = load ptr, ptr %i.pf, align 8, !tbaa !50 ; 2 uses
  %.not23.i.us = icmp eq ptr %i.pp, null
  br i1 %.not23.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.pp) #29
  store ptr null, ptr %i.pf, align 8, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.pq = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !53 ; 2 uses
  %.not24.i.us = icmp eq ptr %i.pr, null
  br i1 %.not24.i.us, label %Kit_DsdNtkFree.exit.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.pr) #29
  br label %Kit_DsdNtkFree.exit.us

Kit_DsdNtkFree.exit.us:                           ; preds = %bb.t, %bb.s
  tail call void @free(ptr noundef nonnull %i.od) #29
  %i.ps = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 3 uses
  %i.pt = load i16, ptr %i.or, align 4, !tbaa !48
  %.not28.i191.us = icmp eq i16 %i.pt, 0
  br i1 %.not28.i191.us, label %.critedge.i196.us, label %.lr.ph.i192.us

.lr.ph.i192.us:                                   ; preds = %Kit_DsdNtkFree.exit.us, %bb.u
  %indvars.iv.i193.us = phi i64 [ %indvars.iv.next.i195.us, %bb.u ], [ 0, %Kit_DsdNtkFree.exit.us ] ; 2 uses
  %i.pu = load ptr, ptr %i.ps, align 8, !tbaa !50
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.i193.us
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !51 ; 2 uses
  %.not.i194.us = icmp eq ptr %i.pw, null
  br i1 %.not.i194.us, label %.critedge.i196.us, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i192.us
  tail call void @free(ptr noundef nonnull %i.pw) #29
  %indvars.iv.next.i195.us = add nuw nsw i64 %indvars.iv.i193.us, 1 ; 2 uses
  %i.px = load i16, ptr %i.or, align 4, !tbaa !48
  %i.py = zext i16 %i.px to i64
  %i.pz = icmp samesign ult i64 %indvars.iv.next.i195.us, %i.py
  br i1 %i.pz, label %.lr.ph.i192.us, label %.critedge.i196.us, !llvm.loop !54

.critedge.i196.us:                                ; preds = %.lr.ph.i192.us, %bb.u, %Kit_DsdNtkFree.exit.us
  %i.qa = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !55 ; 2 uses
  %.not22.i197.us = icmp eq ptr %i.qb, null
  br i1 %.not22.i197.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i196.us
  tail call void @free(ptr noundef nonnull %i.qb) #29
  store ptr null, ptr %i.qa, align 8, !tbaa !55
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i196.us
  %i.qc = load ptr, ptr %i.ps, align 8, !tbaa !50 ; 2 uses
  %.not23.i198.us = icmp eq ptr %i.qc, null
  br i1 %.not23.i198.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.qc) #29
  store ptr null, ptr %i.ps, align 8, !tbaa !50
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.qd = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !53 ; 2 uses
  %.not24.i199.us = icmp eq ptr %i.qe, null
  br i1 %.not24.i199.us, label %Kit_DsdNtkFree.exit200.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.qe) #29
  br label %Kit_DsdNtkFree.exit200.us

Kit_DsdNtkFree.exit200.us:                        ; preds = %bb.z, %bb.y
  tail call void @free(ptr noundef nonnull %i.of) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond273.not, label %._crit_edge.us, label %bb.j, !llvm.loop !392

bb.aa:                                            ; preds = %._crit_edge.us
  %i.qf = icmp eq i32 %.0151251.us, %.0.lcssa.i184.us
  %i.qg = icmp sgt i32 %.0148252.us, %i.pe
  %or.cond.us = select i1 %i.qf, i1 %i.qg, i1 false
  br i1 %or.cond.us, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.us
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1152.us = phi i32 [ %.0.lcssa.i184.us, %bb.ab ], [ %.0151251.us, %bb.aa ]
  %.1149.us = phi i32 [ %i.pe, %bb.ab ], [ %.0148252.us, %bb.aa ]
  %.1146.us = phi i32 [ %i.nu, %bb.ab ], [ %.0145253.us, %bb.aa ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge255, label %.preheader239.us, !llvm.loop !393

._crit_edge.us:                                   ; preds = %Kit_DsdNtkFree.exit200.us
  %i.qh = icmp sgt i32 %.0151251.us, %.0.lcssa.i184.us
  br i1 %i.qh, label %bb.ab, label %bb.aa

._crit_edge255:                                   ; preds = %bb.ac, %.preheader240
  %.0145.lcssa = phi i32 [ -1, %.preheader240 ], [ %.1146.us, %bb.ac ] ; 3 uses
  br i1 %.not157, label %.lr.ph, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge255
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv286.a
  store i32 %.0145.lcssa, ptr %i.qi, align 4, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge255, %bb.ad
  %i.qj = add nuw nsw i64 %indvars.iv286.a, 1     ; 5 uses
  %i.qk = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.qj ; 2 uses
  %i.ql = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv286.a
  %i.qm = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %i.qj ; 2 uses
  %smax283 = tail call i32 @llvm.smax.i32(i32 %i.mk, i32 1)
  %wide.trip.count284 = zext nneg i32 %smax283 to i64
  %i.qn = trunc nuw nsw i64 %i.qj to i32          ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.au
  %indvars.iv280 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next281, %bb.au ] ; 3 uses
  %i.qo = shl nuw nsw i64 %indvars.iv280, 1       ; 4 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 16, !tbaa !79 ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv280
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !79 ; 2 uses
  tail call void @Kit_TruthCofactor0New(ptr noundef %i.qq, ptr noundef %i.qs, i32 noundef %1, i32 noundef %.0145.lcssa) #29
  %i.qt = or disjoint i64 %i.qo, 1                ; 3 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !79 ; 2 uses
  tail call void @Kit_TruthCofactor1New(ptr noundef %i.qv, ptr noundef %i.qs, i32 noundef %1, i32 noundef %.0145.lcssa) #29
  %i.qw = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %i.qq, i32 noundef %1, i32 noundef 0) ; 7 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qo ; 2 uses
  store ptr %i.qw, ptr %i.qx, align 16, !tbaa !384
  %i.qy = tail call noundef ptr @Kit_DsdDecomposeInt(ptr noundef %i.qv, i32 noundef %1, i32 noundef 0) ; 7 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qt ; 2 uses
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !384
  br i1 %.not, label %bb.au, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ra = tail call ptr @Kit_DsdExpand(ptr noundef %i.qw) ; 3 uses
  store ptr %i.ra, ptr %i.qx, align 16, !tbaa !384
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 24 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 4 ; 2 uses
  %i.rd = load i16, ptr %i.rc, align 4, !tbaa !48
  %.not28.i201 = icmp eq i16 %i.rd, 0
  br i1 %.not28.i201, label %.critedge.i206, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %bb.af, %bb.ag
  %indvars.iv.i203 = phi i64 [ %indvars.iv.next.i205, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.re = load ptr, ptr %i.rb, align 8, !tbaa !50
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv.i203
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !51 ; 2 uses
  %.not.i204 = icmp eq ptr %i.rg, null
  br i1 %.not.i204, label %.critedge.i206, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i202
  tail call void @free(ptr noundef nonnull %i.rg) #29
  %indvars.iv.next.i205 = add nuw nsw i64 %indvars.iv.i203, 1 ; 2 uses
  %i.rh = load i16, ptr %i.rc, align 4, !tbaa !48
  %i.ri = zext i16 %i.rh to i64
  %i.rj = icmp samesign ult i64 %indvars.iv.next.i205, %i.ri
  br i1 %i.rj, label %.lr.ph.i202, label %.critedge.i206, !llvm.loop !54

.critedge.i206:                                   ; preds = %bb.ag, %.lr.ph.i202, %bb.af
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qw, i64 16 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !55 ; 2 uses
  %.not22.i207 = icmp eq ptr %i.rl, null
  br i1 %.not22.i207, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i206
  tail call void @free(ptr noundef nonnull %i.rl) #29
  store ptr null, ptr %i.rk, align 8, !tbaa !55
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge.i206
  %i.rm = load ptr, ptr %i.rb, align 8, !tbaa !50 ; 2 uses
  %.not23.i208 = icmp eq ptr %i.rm, null
  br i1 %.not23.i208, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef nonnull %i.rm) #29
  store ptr null, ptr %i.rb, align 8, !tbaa !50
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !53 ; 2 uses
  %.not24.i209 = icmp eq ptr %i.ro, null
  br i1 %.not24.i209, label %Kit_DsdNtkFree.exit210, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @free(ptr noundef nonnull %i.ro) #29
  br label %Kit_DsdNtkFree.exit210

Kit_DsdNtkFree.exit210:                           ; preds = %bb.ak, %bb.al
  tail call void @free(ptr noundef nonnull %i.qw) #29
  %i.rp = tail call ptr @Kit_DsdExpand(ptr noundef %i.qy) ; 3 uses
  store ptr %i.rp, ptr %i.qz, align 8, !tbaa !384
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 24 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qy, i64 4 ; 2 uses
  %i.rs = load i16, ptr %i.rr, align 4, !tbaa !48
  %.not28.i211 = icmp eq i16 %i.rs, 0
  br i1 %.not28.i211, label %.critedge.i216, label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %Kit_DsdNtkFree.exit210, %bb.am
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i215, %bb.am ], [ 0, %Kit_DsdNtkFree.exit210 ] ; 2 uses
  %i.rt = load ptr, ptr %i.rq, align 8, !tbaa !50
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv.i213
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !51 ; 2 uses
  %.not.i214 = icmp eq ptr %i.rv, null
  br i1 %.not.i214, label %.critedge.i216, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i212
  tail call void @free(ptr noundef nonnull %i.rv) #29
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i213, 1 ; 2 uses
  %i.rw = load i16, ptr %i.rr, align 4, !tbaa !48
  %i.rx = zext i16 %i.rw to i64
  %i.ry = icmp samesign ult i64 %indvars.iv.next.i215, %i.rx
  br i1 %i.ry, label %.lr.ph.i212, label %.critedge.i216, !llvm.loop !54

.critedge.i216:                                   ; preds = %bb.am, %.lr.ph.i212, %Kit_DsdNtkFree.exit210
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !55 ; 2 uses
  %.not22.i217 = icmp eq ptr %i.sa, null
  br i1 %.not22.i217, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge.i216
  tail call void @free(ptr noundef nonnull %i.sa) #29
  store ptr null, ptr %i.rz, align 8, !tbaa !55
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge.i216
  %i.sb = load ptr, ptr %i.rq, align 8, !tbaa !50 ; 2 uses
  %.not23.i218 = icmp eq ptr %i.sb, null
  br i1 %.not23.i218, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @free(ptr noundef nonnull %i.sb) #29
  store ptr null, ptr %i.rq, align 8, !tbaa !50
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !53 ; 2 uses
  %.not24.i219 = icmp eq ptr %i.sd, null
  br i1 %.not24.i219, label %Kit_DsdNtkFree.exit220, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef nonnull %i.sd) #29
  br label %Kit_DsdNtkFree.exit220

Kit_DsdNtkFree.exit220:                           ; preds = %bb.aq, %bb.ar
  tail call void @free(ptr noundef nonnull %i.qy) #29
  %i.se = trunc nuw nsw i64 %i.qo to i32
  %i.sf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.qn, i32 noundef %i.se) ; 0 uses
  %i.sg = load ptr, ptr @stdout, align 8, !tbaa !64 ; 3 uses
  %i.sh = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.sg) ; 0 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.ra, i64 6 ; 2 uses
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !61 ; 2 uses
  %i.sk = and i16 %i.sj, 1
  %.not.i221 = icmp eq i16 %i.sk, 0
  br i1 %.not.i221, label %Kit_DsdPrint.exit, label %bb.as

bb.as:                                            ; preds = %Kit_DsdNtkFree.exit220
  %fputc.i = tail call i32 @fputc(i32 33, ptr %i.sg) ; 0 uses
  %.pre.i222 = load i16, ptr %i.si, align 2, !tbaa !61
  br label %Kit_DsdPrint.exit

Kit_DsdPrint.exit:                                ; preds = %Kit_DsdNtkFree.exit220, %bb.as
  %i.sl = phi i16 [ %.pre.i222, %bb.as ], [ %i.sj, %Kit_DsdNtkFree.exit220 ]
  %i.sm = lshr i16 %i.sl, 1
  %i.sn = zext nneg i16 %i.sm to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %i.sg, ptr noundef nonnull readonly %i.ra, i32 noundef %i.sn)
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.so = trunc nuw nsw i64 %i.qt to i32
  %i.sp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.qn, i32 noundef %i.so) ; 0 uses
  %i.sq = load ptr, ptr @stdout, align 8, !tbaa !64 ; 3 uses
  %i.sr = tail call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.sq) ; 0 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rp, i64 6 ; 2 uses
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !61 ; 2 uses
  %i.su = and i16 %i.st, 1
  %.not.i223 = icmp eq i16 %i.su, 0
  br i1 %.not.i223, label %Kit_DsdPrint.exit226, label %bb.at

bb.at:                                            ; preds = %Kit_DsdPrint.exit
  %fputc.i224 = tail call i32 @fputc(i32 33, ptr %i.sq) ; 0 uses
  %.pre.i225 = load i16, ptr %i.ss, align 2, !tbaa !61
  br label %Kit_DsdPrint.exit226

Kit_DsdPrint.exit226:                             ; preds = %Kit_DsdPrint.exit, %bb.at
  %i.sv = phi i16 [ %.pre.i225, %bb.at ], [ %i.st, %Kit_DsdPrint.exit ]
  %i.sw = lshr i16 %i.sv, 1
  %i.sx = zext nneg i16 %i.sw to i32
  tail call void @Kit_DsdPrint_rec(ptr noundef %i.sq, ptr noundef nonnull readonly %i.rp, i32 noundef %i.sx)
  %putchar158 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.ae, %Kit_DsdPrint.exit226
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count284
  br i1 %exitcond285.not, label %._crit_edge, label %bb.ae, !llvm.loop !394

._crit_edge:                                      ; preds = %bb.au
  %exitcond290.not = icmp eq i64 %i.qj, %wide.trip.count289
  br i1 %exitcond290.not, label %Kit_DsdCofactoringGetVars.exit.thread, label %bb.c, !llvm.loop !395

Kit_DsdCofactoringGetVars.exit.thread:            ; preds = %._crit_edge, %Kit_DsdCofactoringGetVars.exit, %bb.c, %bb.b
  %.0139.lcssa = phi i32 [ 0, %bb.b ], [ 31, %bb.c ], [ %i.mj, %Kit_DsdCofactoringGetVars.exit ], [ %3, %._crit_edge ]
  br label %bb.av

bb.av:                                            ; preds = %Kit_DsdCofactoringGetVars.exit.thread, %bb.bd
  %indvars.iv291 = phi i64 [ 0, %Kit_DsdCofactoringGetVars.exit.thread ], [ %indvars.iv.next292, %bb.bd ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv291
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !384 ; 6 uses
  %.not160 = icmp eq ptr %i.sz, null
  br i1 %.not160, label %bb.bd, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 4 ; 2 uses
  %i.tc = load i16, ptr %i.tb, align 4, !tbaa !48
  %.not28.i227 = icmp eq i16 %i.tc, 0
  br i1 %.not28.i227, label %.critedge.i232, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %bb.aw, %bb.ax
  %indvars.iv.i229 = phi i64 [ %indvars.iv.next.i231, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !50
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.i229
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !51 ; 2 uses
  %.not.i230 = icmp eq ptr %i.tf, null
  br i1 %.not.i230, label %.critedge.i232, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i228
  tail call void @free(ptr noundef nonnull %i.tf) #29
  %indvars.iv.next.i231 = add nuw nsw i64 %indvars.iv.i229, 1 ; 2 uses
  %i.tg = load i16, ptr %i.tb, align 4, !tbaa !48
  %i.th = zext i16 %i.tg to i64
  %i.ti = icmp samesign ult i64 %indvars.iv.next.i231, %i.th
  br i1 %i.ti, label %.lr.ph.i228, label %.critedge.i232, !llvm.loop !54

.critedge.i232:                                   ; preds = %bb.ax, %.lr.ph.i228, %bb.aw
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sz, i64 16 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !55 ; 2 uses
  %.not22.i233 = icmp eq ptr %i.tk, null
  br i1 %.not22.i233, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i232
  tail call void @free(ptr noundef nonnull %i.tk) #29
  store ptr null, ptr %i.tj, align 8, !tbaa !55
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i232
  %i.tl = load ptr, ptr %i.ta, align 8, !tbaa !50 ; 2 uses
  %.not23.i234 = icmp eq ptr %i.tl, null
  br i1 %.not23.i234, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @free(ptr noundef nonnull %i.tl) #29
  store ptr null, ptr %i.ta, align 8, !tbaa !50
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !53 ; 2 uses
  %.not24.i235 = icmp eq ptr %i.tn, null
  br i1 %.not24.i235, label %Kit_DsdNtkFree.exit236, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.tn) #29
  br label %Kit_DsdNtkFree.exit236

Kit_DsdNtkFree.exit236:                           ; preds = %bb.bb, %bb.bc
  tail call void @free(ptr noundef nonnull %i.sz) #29
  br label %bb.bd

bb.bd:                                            ; preds = %bb.av, %Kit_DsdNtkFree.exit236
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next292, 16
  br i1 %exitcond294.not, label %.preheader.1, label %bb.av, !llvm.loop !396

.preheader.1:                                     ; preds = %bb.bd
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.be

bb.be:                                            ; preds = %bb.bm, %.preheader.1
  %indvars.iv291.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next292.1, %bb.bm ] ; 2 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv291.1
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !384 ; 6 uses
  %.not160.1 = icmp eq ptr %i.tq, null
  br i1 %.not160.1, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 24 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 4 ; 2 uses
  %i.tt = load i16, ptr %i.ts, align 4, !tbaa !48
  %.not28.i227.1 = icmp eq i16 %i.tt, 0
  br i1 %.not28.i227.1, label %.critedge.i232.1, label %.lr.ph.i228.1

.lr.ph.i228.1:                                    ; preds = %bb.bf, %bb.bg
  %indvars.iv.i229.1 = phi i64 [ %indvars.iv.next.i231.1, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.tu = load ptr, ptr %i.tr, align 8, !tbaa !50
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv.i229.1
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !51 ; 2 uses
  %.not.i230.1 = icmp eq ptr %i.tw, null
  br i1 %.not.i230.1, label %.critedge.i232.1, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i228.1
  tail call void @free(ptr noundef nonnull %i.tw) #29
  %indvars.iv.next.i231.1 = add nuw nsw i64 %indvars.iv.i229.1, 1 ; 2 uses
  %i.tx = load i16, ptr %i.ts, align 4, !tbaa !48
  %i.ty = zext i16 %i.tx to i64
  %i.tz = icmp samesign ult i64 %indvars.iv.next.i231.1, %i.ty
  br i1 %i.tz, label %.lr.ph.i228.1, label %.critedge.i232.1, !llvm.loop !54

.critedge.i232.1:                                 ; preds = %.lr.ph.i228.1, %bb.bg, %bb.bf
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !55 ; 2 uses
  %.not22.i233.1 = icmp eq ptr %i.ub, null
  br i1 %.not22.i233.1, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i232.1
  tail call void @free(ptr noundef nonnull %i.ub) #29
  store ptr null, ptr %i.ua, align 8, !tbaa !55
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.critedge.i232.1
  %i.uc = load ptr, ptr %i.tr, align 8, !tbaa !50 ; 2 uses
  %.not23.i234.1 = icmp eq ptr %i.uc, null
  br i1 %.not23.i234.1, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef nonnull %i.uc) #29
  store ptr null, ptr %i.tr, align 8, !tbaa !50
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !53 ; 2 uses
  %.not24.i235.1 = icmp eq ptr %i.ue, null
  br i1 %.not24.i235.1, label %Kit_DsdNtkFree.exit236.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.ue) #29
  br label %Kit_DsdNtkFree.exit236.1

Kit_DsdNtkFree.exit236.1:                         ; preds = %bb.bl, %bb.bk
  tail call void @free(ptr noundef nonnull %i.tq) #29
  br label %bb.bm

bb.bm:                                            ; preds = %Kit_DsdNtkFree.exit236.1, %bb.be
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291.1, 1 ; 2 uses
  %exitcond294.1.not = icmp eq i64 %indvars.iv.next292.1, 16
  br i1 %exitcond294.1.not, label %.preheader.2, label %bb.be, !llvm.loop !396

.preheader.2:                                     ; preds = %bb.bm
  %i.uf = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bv, %.preheader.2
  %indvars.iv291.2 = phi i64 [ 0, %.preheader.2 ], [ %indvars.iv.next292.2, %bb.bv ] ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %indvars.iv291.2
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !384 ; 6 uses
  %.not160.2 = icmp eq ptr %i.uh, null
  br i1 %.not160.2, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 24 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4 ; 2 uses
  %i.uk = load i16, ptr %i.uj, align 4, !tbaa !48
  %.not28.i227.2 = icmp eq i16 %i.uk, 0
  br i1 %.not28.i227.2, label %.critedge.i232.2, label %.lr.ph.i228.2

.lr.ph.i228.2:                                    ; preds = %bb.bo, %bb.bp
  %indvars.iv.i229.2 = phi i64 [ %indvars.iv.next.i231.2, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  %i.ul = load ptr, ptr %i.ui, align 8, !tbaa !50
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %indvars.iv.i229.2
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !51 ; 2 uses
  %.not.i230.2 = icmp eq ptr %i.un, null
  br i1 %.not.i230.2, label %.critedge.i232.2, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i228.2
  tail call void @free(ptr noundef nonnull %i.un) #29
  %indvars.iv.next.i231.2 = add nuw nsw i64 %indvars.iv.i229.2, 1 ; 2 uses
  %i.uo = load i16, ptr %i.uj, align 4, !tbaa !48
  %i.up = zext i16 %i.uo to i64
  %i.uq = icmp samesign ult i64 %indvars.iv.next.i231.2, %i.up
  br i1 %i.uq, label %.lr.ph.i228.2, label %.critedge.i232.2, !llvm.loop !54

.critedge.i232.2:                                 ; preds = %.lr.ph.i228.2, %bb.bp, %bb.bo
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uh, i64 16 ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !55 ; 2 uses
  %.not22.i233.2 = icmp eq ptr %i.us, null
  br i1 %.not22.i233.2, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.critedge.i232.2
  tail call void @free(ptr noundef nonnull %i.us) #29
  store ptr null, ptr %i.ur, align 8, !tbaa !55
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.critedge.i232.2
  %i.ut = load ptr, ptr %i.ui, align 8, !tbaa !50 ; 2 uses
end_hunk_0
