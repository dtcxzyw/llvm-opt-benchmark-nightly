inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@drft_backward:bb.a
  %i.ab = sext i32 %i.u to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  br i1 %.not116.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @dradb4(i32 noundef %i.r, i32 noundef %.0112123.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ad)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @dradb4(i32 noundef %i.r, i32 noundef %.0112123.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = sub nuw nsw i32 1, %.0111124.i
  br label %bb.s

bb.g:                                             ; preds = %.lr.ph.i
  %.not118.i = icmp eq i32 %.0111124.i, 0
  %i.af = sext i32 %.0125.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  br i1 %.not118.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @dradb2(i32 noundef %i.r, i32 noundef %.0112123.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.ah)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @dradb2(i32 noundef %i.r, i32 noundef %.0112123.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.ah)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = sub nuw nsw i32 1, %.0111124.i
  br label %bb.s

bb.k:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.r, %.0125.i
  %.not120.i = icmp eq i32 %.0111124.i, 0
  %i.ak = sext i32 %.0125.i to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4 ; 2 uses
  br i1 %.not120.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @dradb3(i32 noundef %i.r, i32 noundef %.0112123.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @dradb3(i32 noundef %i.r, i32 noundef %.0112123.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = sub nuw nsw i32 1, %.0111124.i
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %.not121.i = icmp eq i32 %.0111124.i, 0
  %i.ar = sext i32 %.0125.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  br i1 %.not121.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @dradbg(i32 noundef %i.r, i32 noundef %i.p, i32 noundef %.0112123.i, i32 noundef %i.s, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %1, ptr noundef %1, ptr noundef nonnull readonly %i.at)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call fastcc void @dradbg(i32 noundef %i.r, i32 noundef %i.p, i32 noundef %.0112123.i, i32 noundef %i.s, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef %i.e, ptr noundef %i.e, ptr noundef nonnull readonly %i.at)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = icmp eq i32 %i.r, 1
  %i.av = sub nuw nsw i32 1, %.0111124.i
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 %.0111124.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.j, %bb.f
  %.1.i = phi i32 [ %i.ae, %bb.f ], [ %spec.select.i, %bb.r ], [ %i.aq, %bb.n ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aw = add nsw i32 %i.p, -1
  %i.ax = mul nsw i32 %i.aw, %i.r
  %i.ay = add nsw i32 %i.ax, %.0125.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !620

._crit_edge.i:                                    ; preds = %bb.s
  %i.az = icmp ne i32 %.1.i, 0
  %i.ba = icmp sgt i32 %i.b, 0
  %or.cond.i = and i1 %i.ba, %i.az
  br i1 %or.cond.i, label %.lr.ph128.preheader.i, label %drftb1.exit

.lr.ph128.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count133.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %i.bb = sub i64 %i.f, %i.a
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph128.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph128.preheader.i
  %n.vec = and i64 %wide.trip.count133.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x float>, ptr %i.bc, align 4
  %wide.load8 = load <4 x float>, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %wide.load, ptr %i.be, align 4
  store <4 x float> %wide.load8, ptr %i.bf, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133.i
  br i1 %cmp.n, label %drftb1.exit, label %.lr.ph128.i.preheader

.lr.ph128.i.preheader:                            ; preds = %.lr.ph128.preheader.i, %middle.block
  %indvars.iv130.i.ph = phi i64 [ 0, %.lr.ph128.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count133.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph128.i.prol.loopexit, label %.lr.ph128.i.prol

.lr.ph128.i.prol:                                 ; preds = %.lr.ph128.i.preheader, %.lr.ph128.i.prol
  %indvars.iv130.i.prol = phi i64 [ %indvars.iv.next131.i.prol, %.lr.ph128.i.prol ], [ %indvars.iv130.i.ph, %.lr.ph128.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph128.i.prol ], [ 0, %.lr.ph128.i.preheader ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130.i.prol
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130.i.prol
  store float %i.bi, ptr %i.bj, align 4
  %indvars.iv.next131.i.prol = add nuw nsw i64 %indvars.iv130.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph128.i.prol.loopexit, label %.lr.ph128.i.prol, !llvm.loop !622

.lr.ph128.i.prol.loopexit:                        ; preds = %.lr.ph128.i.prol, %.lr.ph128.i.preheader
  %indvars.iv130.i.unr = phi i64 [ %indvars.iv130.i.ph, %.lr.ph128.i.preheader ], [ %indvars.iv.next131.i.prol, %.lr.ph128.i.prol ]
  %i.bk = sub nsw i64 %indvars.iv130.i.ph, %wide.trip.count133.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %drftb1.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.prol.loopexit, %.lr.ph128.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i.3, %.lr.ph128.i ], [ %indvars.iv130.i.unr, %.lr.ph128.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130.i
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130.i
  store float %i.bn, ptr %i.bo, align 4
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i
  store float %i.bq, ptr %i.br, align 4
  %indvars.iv.next131.i.1 = add nuw nsw i64 %indvars.iv130.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i.1
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i.1
  store float %i.bt, ptr %i.bu, align 4
  %indvars.iv.next131.i.2 = add nuw nsw i64 %indvars.iv130.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i.2
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i.2
  store float %i.bw, ptr %i.bx, align 4
  %indvars.iv.next131.i.3 = add nuw nsw i64 %indvars.iv130.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next131.i.3, %wide.trip.count133.i
  br i1 %exitcond134.not.i.3, label %drftb1.exit, label %.lr.ph128.i, !llvm.loop !623

drftb1.exit:                                      ; preds = %.lr.ph128.i.prol.loopexit, %.lr.ph128.i, %middle.block, %._crit_edge.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local void @drft_init(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 24)) %0, i32 noundef %1) local_unnamed_addr #54 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = mul nsw i32 %1, 3
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #71 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 32, i64 noundef 4) #71 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %fdrffti.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

.loopexit91.i.i:                                  ; preds = %.split.us.i.i, %.split.i.i
  %indvars.iv139.lcssa169.sink.i.i = phi i64 [ %indvar.i, %.split.i.i ], [ %indvars.iv.i.i, %.split.us.i.i ]
  %.us-phi.i.i = phi i32 [ %.170.i.i, %.split.i.i ], [ %.170.us.i.i, %.split.us.i.i ]
  %.us-phi97.i.i = trunc nsw i64 %indvars.iv139.lcssa169.sink.i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %.loopexit91.i.i, %bb.b
  %indvars.iv141.i.i = phi i64 [ %indvars.iv.next142.i.i, %.loopexit91.i.i ], [ -1, %bb.b ] ; 2 uses
  %.081.i.i = phi i32 [ %.182.fr.i.i, %.loopexit91.i.i ], [ 0, %bb.b ]
  %.069.i.i = phi i32 [ %.us-phi.i.i, %.loopexit91.i.i ], [ %1, %bb.b ] ; 2 uses
  %.0.i.i = phi i32 [ %.us-phi97.i.i, %.loopexit91.i.i ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv.next142.i.i = add nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.k = icmp slt i64 %indvars.iv141.i.i, 3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds [4 x i8], ptr @drfti1.ntryh, i64 %indvars.iv.next142.i.i
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i32 %.081.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.182.i.i = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %.182.fr.i.i = freeze i32 %.182.i.i             ; 5 uses
  %.not120.i.i = icmp eq i32 %.182.fr.i.i, 2
  %i.o = sext i32 %.0.i.i to i64                  ; 3 uses
  br i1 %.not120.i.i, label %.split.i.preheader.i, label %.split.us.i.i

.split.i.preheader.i:                             ; preds = %bb.f
  %i.p = shl nsw i64 %i.o, 2
  %i.q = add i32 %.0.i.i, -1
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p     ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.r, i64 4
  br label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.g
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ %i.o, %bb.f ] ; 5 uses
  %.170.us.i.i = phi i32 [ %i.u, %bb.g ], [ %.069.i.i, %bb.f ] ; 3 uses
  %i.u = sdiv i32 %.170.us.i.i, %.182.fr.i.i      ; 3 uses
  %i.v = mul nsw i32 %i.u, %.182.fr.i.i
  %.not.us.i.i = icmp eq i32 %.170.us.i.i, %i.v
  br i1 %.not.us.i.i, label %bb.g, label %.loopexit91.i.i

bb.g:                                             ; preds = %.split.us.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i32 %.182.fr.i.i, ptr %i.x, align 4
  %.not89.us.i.i = icmp eq i32 %i.u, 1
  br i1 %.not89.us.i.i, label %.split99.us.i.i, label %.split.us.i.i

.split99.us.i.i:                                  ; preds = %bb.g
  %i.y = icmp eq i64 %indvars.iv.i.i, 0
  br label %.split99.i.i

.split.i.i:                                       ; preds = %bb.i, %.split.i.preheader.i
  %indvar.i = phi i64 [ %i.o, %.split.i.preheader.i ], [ %indvars.iv.next140.i.i, %bb.i ] ; 7 uses
  %indvars.iv138.i.i = phi i64 [ 0, %.split.i.preheader.i ], [ %indvar.next.i, %bb.i ] ; 3 uses
  %.170.i.i = phi i32 [ %.069.i.i, %.split.i.preheader.i ], [ %i.af, %bb.i ] ; 4 uses
  %i.z = shl i64 %indvars.iv138.i.i, 2            ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %i.z
  %i.aa = trunc i64 %indvars.iv138.i.i to i32
  %i.ab = add i32 %i.q, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, -4                   ; 2 uses
  %scevgep14.i = getelementptr i8, ptr %scevgep.i, i64 %i.ad
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.z
  %scevgep16.i = getelementptr i8, ptr %scevgep15.i, i64 %i.ad
  %i.ae = shl i64 %indvar.i, 2
  %2 = and i64 %i.ae, 17179869180
  %i.af = sdiv i32 %.170.i.i, 2                   ; 2 uses
  %i.ag = shl nsw i32 %i.af, 1
  %.not.i.i = icmp eq i32 %.170.i.i, %i.ag
  br i1 %.not.i.i, label %bb.h, label %.loopexit91.i.i

bb.h:                                             ; preds = %.split.i.i
  %indvars.iv.next140.i.i = add i64 %indvar.i, 1  ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.e, i64 %indvar.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store i32 2, ptr %i.ai, align 4
  %i.aj = icmp eq i64 %indvar.i, 0                ; 2 uses
  br i1 %i.aj, label %bb.i, label %.preheader90.i.i

.preheader90.i.i:                                 ; preds = %bb.h
  %.not8895.i.i = icmp slt i64 %indvar.i, 1
  br i1 %.not8895.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader90.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep14.i, ptr align 4 %scevgep16.i, i64 %2, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %.preheader90.i.i
  store i32 2, ptr %i.j, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.h
  %i.ak = and i32 %.170.i.i, -2
  %.not89.i.i = icmp eq i32 %i.ak, 2
  %indvar.next.i = add i64 %indvars.iv138.i.i, 1
  br i1 %.not89.i.i, label %.split99.i.i, label %.split.i.i

.split99.i.i:                                     ; preds = %bb.i, %.split99.us.i.i
  %.us-phi100.in.i.i = phi i64 [ %indvars.iv.next.i.i, %.split99.us.i.i ], [ %indvars.iv.next140.i.i, %bb.i ]
  %.us-phi101.i.i = phi i1 [ %i.y, %.split99.us.i.i ], [ %i.aj, %bb.i ]
  %.us-phi102.in.i.i = phi i64 [ %indvars.iv.i.i, %.split99.us.i.i ], [ %indvar.i, %bb.i ] ; 2 uses
  %.us-phi102.i.i = trunc i64 %.us-phi102.in.i.i to i32
  %.us-phi100.i.i = trunc i64 %.us-phi100.in.i.i to i32
  store i32 %1, ptr %i.e, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.us-phi100.i.i, ptr %i.al, align 4
  %i.am = sitofp i32 %1 to float
  %i.an = fdiv nnan float f0x40C90FDB, %i.am
  %i.ao = icmp slt i32 %.us-phi102.i.i, 1
  %or.cond.not.i.i = select i1 %.us-phi101.i.i, i1 true, i1 %i.ao
  br i1 %or.cond.not.i.i, label %fdrffti.exit, label %.lr.ph119.preheader.i.i

.lr.ph119.preheader.i.i:                          ; preds = %.split99.i.i
  %wide.trip.count154.i.i = and i64 %.us-phi102.in.i.i, 2147483647
  br label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %._crit_edge114.i.i, %.lr.ph119.preheader.i.i
  %indvars.iv151.i.i = phi i64 [ 0, %.lr.ph119.preheader.i.i ], [ %indvars.iv.next152.i.i, %._crit_edge114.i.i ] ; 2 uses
  %.071118.i.i = phi i32 [ 0, %.lr.ph119.preheader.i.i ], [ %.172.lcssa.i.i, %._crit_edge114.i.i ] ; 4 uses
  %.075117.i.i = phi i32 [ 1, %.lr.ph119.preheader.i.i ], [ %i.as, %._crit_edge114.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv151.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4            ; 3 uses
  %i.as = mul nsw i32 %i.ar, %.075117.i.i         ; 2 uses
  %i.at = sdiv i32 %1, %i.as                      ; 5 uses
  %i.au = add i32 %i.ar, -1                       ; 3 uses
  %i.av = icmp sgt i32 %i.ar, 1
  br i1 %i.av, label %.lr.ph113.i.i, label %._crit_edge114.i.i

.lr.ph113.i.i:                                    ; preds = %.lr.ph119.i.i
  %i.aw = icmp sgt i32 %i.at, 2
  br i1 %i.aw, label %.lr.ph107.us.preheader.i.i, label %.lr.ph113.split.preheader.i.i

.lr.ph113.split.preheader.i.i:                    ; preds = %.lr.ph113.i.i
  %i.ax = mul i32 %i.at, %i.au
  %i.ay = add i32 %i.ax, %.071118.i.i
  br label %._crit_edge114.i.i

.lr.ph107.us.preheader.i.i:                       ; preds = %.lr.ph113.i.i
  %i.az = sext i32 %.071118.i.i to i64
  %i.ba = zext nneg i32 %i.at to i64
  %i.bb = add nsw i32 %i.at, -3                   ; 2 uses
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = add nuw i32 %i.bc, 1                    ; 2 uses
  %i.be = icmp eq i32 %i.bc, 0
  %unroll_iter = and i32 %i.bd, -2
  %i.bf = and i32 %i.bb, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bf, 0
  %lcmp.mod41 = trunc i32 %i.bd to i1
  br label %.lr.ph107.us.i.i

.lr.ph107.us.i.i:                                 ; preds = %._crit_edge108.us.i.i, %.lr.ph107.us.preheader.i.i
  %indvars.iv144.i.i = phi i64 [ %i.az, %.lr.ph107.us.preheader.i.i ], [ %indvars.iv.next145.i.i, %._crit_edge108.us.i.i ] ; 3 uses
  %.074110.us.i.i = phi i32 [ 0, %.lr.ph107.us.preheader.i.i ], [ %i.bg, %._crit_edge108.us.i.i ]
  %.178109.us.i.i = phi i32 [ 0, %.lr.ph107.us.preheader.i.i ], [ %i.cl, %._crit_edge108.us.i.i ]
  %i.bg = add nsw i32 %.074110.us.i.i, %.075117.i.i ; 2 uses
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = fmul float %i.an, %i.bh                 ; 3 uses
  br i1 %i.be, label %.epil.preheader, label %.lr.ph107.us.i.i.new

.lr.ph107.us.i.i.new:                             ; preds = %.lr.ph107.us.i.i, %.lr.ph107.us.i.i.new
  %indvars.iv146.i.i = phi i64 [ %indvars.iv.next147.i.i.1, %.lr.ph107.us.i.i.new ], [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ] ; 3 uses
  %.083103.us.i.i = phi float [ %i.bs, %.lr.ph107.us.i.i.new ], [ 0.000000e+00, %.lr.ph107.us.i.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph107.us.i.i.new ], [ 0, %.lr.ph107.us.i.i ]
  %i.bj = fadd float %.083103.us.i.i, 1.000000e+00 ; 2 uses
  %i.bk = fmul float %i.bi, %i.bj
  %i.bl = fpext float %i.bk to double             ; 2 uses
  %i.bm = tail call double @cos(double noundef %i.bl) #62
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.bo = tail call double @sin(double noundef %i.bl) #62
  %i.bp = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bo, i64 1
  %i.br = fptrunc <2 x double> %i.bq to <2 x float>
  store <2 x float> %i.br, ptr %i.bn, align 4
  %i.bs = fadd float %i.bj, 1.000000e+00          ; 3 uses
  %i.bt = fmul float %i.bi, %i.bs
  %i.bu = fpext float %i.bt to double             ; 2 uses
  %i.bv = tail call double @cos(double noundef %i.bu) #62
  %i.bw = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = tail call double @sin(double noundef %i.bu) #62
  %indvars.iv.next147.i.i.1 = add nsw i64 %indvars.iv146.i.i, 4 ; 2 uses
  %i.bz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float>
  store <2 x float> %i.cb, ptr %i.bx, align 4
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge108.us.i.i.unr-lcssa, label %.lr.ph107.us.i.i.new, !llvm.loop !624

._crit_edge108.us.i.i.unr-lcssa:                  ; preds = %.lr.ph107.us.i.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge108.us.i.i

.epil.preheader:                                  ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.lr.ph107.us.i.i
  %indvars.iv146.i.i.epil.init = phi i64 [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ], [ %indvars.iv.next147.i.i.1, %._crit_edge108.us.i.i.unr-lcssa ]
  %.083103.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph107.us.i.i ], [ %i.bs, %._crit_edge108.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.cc = fadd float %.083103.us.i.i.epil.init, 1.000000e+00
  %i.cd = fmul float %i.bi, %i.cc
  %i.ce = fpext float %i.cd to double             ; 2 uses
  %i.cf = tail call double @cos(double noundef %i.ce) #62
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i.epil.init
  %i.ch = tail call double @sin(double noundef %i.ce) #62
  %i.ci = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  store <2 x float> %i.ck, ptr %i.cg, align 4
  br label %._crit_edge108.us.i.i

._crit_edge108.us.i.i:                            ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next145.i.i = add i64 %indvars.iv144.i.i, %i.ba
  %i.cl = add nuw nsw i32 %.178109.us.i.i, 1      ; 2 uses
  %exitcond150.not.i.i = icmp eq i32 %i.cl, %i.au
  br i1 %exitcond150.not.i.i, label %._crit_edge114.loopexit.i.i, label %.lr.ph107.us.i.i, !llvm.loop !625

._crit_edge114.loopexit.i.i:                      ; preds = %._crit_edge108.us.i.i
  %i.cm = mul i32 %i.at, %i.au
  %i.cn = add i32 %i.cm, %.071118.i.i
  br label %._crit_edge114.i.i

._crit_edge114.i.i:                               ; preds = %._crit_edge114.loopexit.i.i, %.lr.ph113.split.preheader.i.i, %.lr.ph119.i.i
  %.172.lcssa.i.i = phi i32 [ %.071118.i.i, %.lr.ph119.i.i ], [ %i.cn, %._crit_edge114.loopexit.i.i ], [ %i.ay, %.lr.ph113.split.preheader.i.i ]
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %exitcond155.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count154.i.i
  br i1 %exitcond155.not.i.i, label %fdrffti.exit, label %.lr.ph119.i.i, !llvm.loop !626

fdrffti.exit:                                     ; preds = %._crit_edge114.i.i, %bb.a, %.split99.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @_ve_amp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = shl nsw i64 %i.c, 2
  %i.g = alloca i8, i64 %i.f, align 16            ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 5)
  %narrow = lshr i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.m = load float, ptr %i.l, align 4            ; 3 uses
  %i.n = sdiv i32 %i.i, 2
  %i.o = add nsw i32 %i.n, -2
  %i.p = sitofp i32 %i.o to float
  %i.q = fsub float %i.m, %i.p                    ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %.0153 = select i1 %i.r, float 0.000000e+00, float %i.q ; 2 uses
  %i.s = fcmp ogt float %.0153, %i.m
  %.1154 = select i1 %i.s, float %i.m, float %.0153 ; 2 uses
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4
  %wide.load3 = load <4 x float>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load4 = load <4 x float>, ptr %i.y, align 4
  %wide.load5 = load <4 x float>, ptr %i.z, align 4
  %i.aa = fmul <4 x float> %wide.load, %wide.load4
  %i.ab = fmul <4 x float> %wide.load3, %wide.load5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> %i.aa, ptr %i.ac, align 16
  store <4 x float> %i.ab, ptr %i.ad, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0156193.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0156193 = phi i64 [ %i.al, %scalar.ph ], [ %.0156193.ph, %scalar.ph.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0156193
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0156193
end_hunk_0
