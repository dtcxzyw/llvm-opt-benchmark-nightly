Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitPla?download=true
inline.NumInlined: 58
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Kit_PlaStart:bb.a
  store i8 32, ptr %gep.1, align 1, !tbaa !8
  %i.o = getelementptr i8, ptr %gep.1, i64 1
  store i8 49, ptr %i.o, align 1, !tbaa !8
  %i.p = getelementptr i8, ptr %gep.1, i64 2
  store i8 10, ptr %i.p, align 1, !tbaa !8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.q = mul nsw i64 %indvars.iv.next.1, %i.i
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.q ; 3 uses
  store i8 32, ptr %gep.2, align 1, !tbaa !8
  %i.r = getelementptr i8, ptr %gep.2, i64 1
  store i8 49, ptr %i.r, align 1, !tbaa !8
  %i.s = getelementptr i8, ptr %gep.2, i64 2
  store i8 10, ptr %i.s, align 1, !tbaa !8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.t = mul nsw i64 %indvars.iv.next.2, %i.i
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.t ; 3 uses
  store i8 32, ptr %gep.3, align 1, !tbaa !8
  %i.u = getelementptr i8, ptr %gep.3, i64 1
  store i8 49, ptr %i.u, align 1, !tbaa !8
  %i.v = getelementptr i8, ptr %gep.3, i64 2
  store i8 10, ptr %i.v, align 1, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !14

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.w = mul nsw i64 %indvars.iv.epil, %i.i
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.w ; 3 uses
  store i8 32, ptr %gep.epil, align 1, !tbaa !8
  %i.x = getelementptr i8, ptr %gep.epil, i64 1
  store i8 49, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr i8, ptr %gep.epil, i64 2
  store i8 10, ptr %i.y, align 1, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !15

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  ret ptr %i.d
}

declare ptr @Aig_MmFlexEntryFetch(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define ptr @Kit_PlaCreateFromIsop(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val30 = load i32, ptr %i.a, align 4, !tbaa !17 ; 5 uses
  %i.b = icmp eq i32 %.val30, 0
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 3                        ; 3 uses
  %i.d = mul nsw i32 %.val30, %i.c                ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = tail call ptr @Aig_MmFlexEntryFetch(ptr noundef %0, i32 noundef %i.e) #14 ; 7 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 45, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !8
  %i.i = icmp sgt i32 %.val30, 0
  br i1 %i.i, label %.lr.ph.i, label %Kit_PlaStart.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = sext i32 %1 to i64
  %invariant.gep.i = getelementptr i8, ptr %i.f, i64 %i.j ; 5 uses
  %i.k = sext i32 %i.c to i64                     ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val30 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.l = icmp ult i32 %.val30, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.m = mul nsw i64 %indvars.iv.i, %i.k
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.m ; 3 uses
  store i8 32, ptr %gep.i, align 1, !tbaa !8
  %i.n = getelementptr i8, ptr %gep.i, i64 1
  store i8 49, ptr %i.n, align 1, !tbaa !8
  %i.o = getelementptr i8, ptr %gep.i, i64 2
  store i8 10, ptr %i.o, align 1, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.p = mul nsw i64 %indvars.iv.next.i, %i.k
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.p ; 3 uses
  store i8 32, ptr %gep.i.1, align 1, !tbaa !8
  %i.q = getelementptr i8, ptr %gep.i.1, i64 1
  store i8 49, ptr %i.q, align 1, !tbaa !8
  %i.r = getelementptr i8, ptr %gep.i.1, i64 2
  store i8 10, ptr %i.r, align 1, !tbaa !8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.s = mul nsw i64 %indvars.iv.next.i.1, %i.k
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.s ; 3 uses
  store i8 32, ptr %gep.i.2, align 1, !tbaa !8
  %i.t = getelementptr i8, ptr %gep.i.2, i64 1
  store i8 49, ptr %i.t, align 1, !tbaa !8
  %i.u = getelementptr i8, ptr %gep.i.2, i64 2
  store i8 10, ptr %i.u, align 1, !tbaa !8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.v = mul nsw i64 %indvars.iv.next.i.2, %i.k
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.v ; 3 uses
  store i8 32, ptr %gep.i.3, align 1, !tbaa !8
  %i.w = getelementptr i8, ptr %gep.i.3, i64 1
  store i8 49, ptr %i.w, align 1, !tbaa !8
  %i.x = getelementptr i8, ptr %gep.i.3, i64 2
  store i8 10, ptr %i.x, align 1, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Kit_PlaStart.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !14

Kit_PlaStart.exit.loopexit.unr-lcssa:             ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Kit_PlaStart.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Kit_PlaStart.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %Kit_PlaStart.exit.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.y = mul nsw i64 %indvars.iv.i.epil, %i.k
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.y ; 3 uses
  store i8 32, ptr %gep.i.epil, align 1, !tbaa !8
  %i.z = getelementptr i8, ptr %gep.i.epil, i64 1
  store i8 49, ptr %i.z, align 1, !tbaa !8
  %i.aa = getelementptr i8, ptr %gep.i.epil, i64 2
  store i8 10, ptr %i.aa, align 1, !tbaa !8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Kit_PlaStart.exit, label %bb.d, !llvm.loop !21

Kit_PlaStart.exit:                                ; preds = %Kit_PlaStart.exit.loopexit.unr-lcssa, %bb.d, %bb.b
  %.val33 = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ab = icmp sgt i32 %.val33, 0
  br i1 %i.ab, label %.lr.ph35, label %.critedge

.lr.ph35:                                         ; preds = %Kit_PlaStart.exit
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.lr.ph35
  %i.ae = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  %min.iters.check41 = icmp ult i32 %1, 16
  %i.af = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check.not.not = icmp eq i64 %i.af, 0
  %n.vec72 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n98 = icmp eq i64 %n.vec72, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %.val31 = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val31, i64 %indvars.iv37
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23 ; 3 uses
  %i.ai = mul nuw nsw i64 %indvars.iv37, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai ; 25 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue71, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue71 ] ; 17 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %pred.store.continue71 ] ; 2 uses
  %i.ak = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.al = ashr <16 x i32> %broadcast.splat, %i.ak
  %i.am = and <16 x i32> %i.al, splat (i32 3)     ; 2 uses
  %i.an = icmp eq <16 x i32> %i.am, splat (i32 2)
  %i.ao = add nsw <16 x i32> %i.am, splat (i32 -1)
  %i.ap = icmp ult <16 x i32> %i.ao, splat (i32 2) ; 16 uses
  %predphi = select <16 x i1> %i.an, <16 x i8> splat (i8 49), <16 x i8> splat (i8 48) ; 16 uses
  %i.aq = extractelement <16 x i1> %i.ap, i64 0
  br i1 %i.aq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.as = extractelement <16 x i8> %predphi, i64 0
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.at = extractelement <16 x i1> %i.ap, i64 1
  br i1 %i.at, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = extractelement <16 x i8> %predphi, i64 1
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !8
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue
  %i.ax = extractelement <16 x i1> %i.ap, i64 2
  br i1 %i.ax, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = extractelement <16 x i8> %predphi, i64 2
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !8
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bb = extractelement <16 x i1> %i.ap, i64 3
  br i1 %i.bb, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.be = extractelement <16 x i8> %predphi, i64 3
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !8
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.bf = extractelement <16 x i1> %i.ap, i64 4
  br i1 %i.bf, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = extractelement <16 x i8> %predphi, i64 4
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !8
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.bj = extractelement <16 x i1> %i.ap, i64 5
  br i1 %i.bj, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 5
  %i.bm = extractelement <16 x i8> %predphi, i64 5
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !8
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bn = extractelement <16 x i1> %i.ap, i64 6
  br i1 %i.bn, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bq = extractelement <16 x i8> %predphi, i64 6
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !8
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.br = extractelement <16 x i1> %i.ap, i64 7
  br i1 %i.br, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 7
  %i.bu = extractelement <16 x i8> %predphi, i64 7
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !8
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bv = extractelement <16 x i1> %i.ap, i64 8
  br i1 %i.bv, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = extractelement <16 x i8> %predphi, i64 8
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !8
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.bz = extractelement <16 x i1> %i.ap, i64 9
  br i1 %i.bz, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cc = extractelement <16 x i8> %predphi, i64 9
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !8
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.cd = extractelement <16 x i1> %i.ap, i64 10
  br i1 %i.cd, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  %i.cg = extractelement <16 x i8> %predphi, i64 10
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !8
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ch = extractelement <16 x i1> %i.ap, i64 11
  br i1 %i.ch, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  %i.ck = extractelement <16 x i8> %predphi, i64 11
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !8
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.cl = extractelement <16 x i1> %i.ap, i64 12
  br i1 %i.cl, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = extractelement <16 x i8> %predphi, i64 12
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !8
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.cp = extractelement <16 x i1> %i.ap, i64 13
  br i1 %i.cp, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 13
  %i.cs = extractelement <16 x i8> %predphi, i64 13
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !8
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.ct = extractelement <16 x i1> %i.ap, i64 14
  br i1 %i.ct, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %i.cw = extractelement <16 x i8> %predphi, i64 14
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !8
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.cx = extractelement <16 x i1> %i.ap, i64 15
  br i1 %i.cx, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15
  %i.da = extractelement <16 x i8> %predphi, i64 15
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !8
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %pred.store.continue71
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert73 = insertelement <8 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat74 = shufflevector <8 x i32> %broadcast.splatinsert73, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dc = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert75 = insertelement <8 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat76 = shufflevector <8 x i32> %broadcast.splatinsert75, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat76, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue95, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %pred.store.continue95 ] ; 9 uses
  %vec.ind78 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next97, %pred.store.continue95 ] ; 2 uses
  %i.dd = shl <8 x i32> %vec.ind78, splat (i32 1)
  %i.de = ashr <8 x i32> %broadcast.splat74, %i.dd
  %i.df = and <8 x i32> %i.de, splat (i32 3)      ; 2 uses
  %i.dg = icmp eq <8 x i32> %i.df, splat (i32 2)
  %i.dh = add nsw <8 x i32> %i.df, splat (i32 -1)
  %i.di = icmp ult <8 x i32> %i.dh, splat (i32 2) ; 8 uses
  %predphi79 = select <8 x i1> %i.dg, <8 x i8> splat (i8 49), <8 x i8> splat (i8 48) ; 8 uses
  %i.dj = extractelement <8 x i1> %i.di, i64 0
  br i1 %i.dj, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %vec.epilog.vector.body
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.dl = extractelement <8 x i8> %predphi79, i64 0
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !8
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %vec.epilog.vector.body
  %i.dm = extractelement <8 x i1> %i.di, i64 1
  br i1 %i.dm, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = extractelement <8 x i8> %predphi79, i64 1
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !8
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.dq = extractelement <8 x i1> %i.di, i64 2
  br i1 %i.dq, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = extractelement <8 x i8> %predphi79, i64 2
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !8
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.du = extractelement <8 x i1> %i.di, i64 3
  br i1 %i.du, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.dx = extractelement <8 x i8> %predphi79, i64 3
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !8
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.dy = extractelement <8 x i1> %i.di, i64 4
  br i1 %i.dy, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = extractelement <8 x i8> %predphi79, i64 4
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !8
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.ec = extractelement <8 x i1> %i.di, i64 5
  br i1 %i.ec, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 5
  %i.ef = extractelement <8 x i8> %predphi79, i64 5
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.eg = extractelement <8 x i1> %i.di, i64 6
  br i1 %i.eg, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %i.ej = extractelement <8 x i8> %predphi79, i64 6
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !8
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.ek = extractelement <8 x i1> %i.di, i64 7
  br i1 %i.ek, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %i.el = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index77
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 7
  %i.en = extractelement <8 x i8> %predphi79, i64 7
  store i8 %i.en, ptr %i.em, align 1, !tbaa !8
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %index.next96 = add nuw i64 %index77, 8         ; 2 uses
  %vec.ind.next97 = add <8 x i32> %vec.ind78, splat (i32 8)
  %i.eo = icmp eq i64 %index.next96, %n.vec72
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %pred.store.continue95
  br i1 %cmp.n98, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec72, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ep = shl i32 %indvars.iv.tr, 1
  %i.eq = ashr i32 %i.ah, %i.ep
  %i.er = and i32 %i.eq, 3
  switch i32 %i.er, label %bb.f [
    i32 1, label %.sink.split
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %vec.epilog.scalar.ph
  br label %.sink.split

.sink.split:                                      ; preds = %vec.epilog.scalar.ph, %bb.e
  %.sink = phi i8 [ 49, %bb.e ], [ 48, %vec.epilog.scalar.ph ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv
  store i8 %.sink, ptr %i.es, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %vec.epilog.scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !17
  %i.et = sext i32 %.val to i64
  %i.eu = icmp slt i64 %indvars.iv.next38, %i.et
  br i1 %i.eu, label %iter.check, label %.critedge, !llvm.loop !30

.critedge:                                        ; preds = %._crit_edge, %Kit_PlaStart.exit, %.lr.ph35, %bb.a
  %.027 = phi ptr [ null, %bb.a ], [ %i.f, %.lr.ph35 ], [ %i.f, %Kit_PlaStart.exit ], [ %i.f, %._crit_edge ]
  ret ptr %.027
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Kit_PlaToIsop(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ]  ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.a, label %bb.c [
    i8 10, label %Kit_PlaGetVarNum.exit
    i8 0, label %Kit_PlaGetVarNum.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !9

Kit_PlaGetVarNum.exit:                            ; preds = %bb.b
  %i.c = ptrtoint ptr %.0.i to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, -2                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %i.i = load i8, ptr %0, align 1, !tbaa !8
  %.not26 = icmp eq i8 %i.i, 0
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

Kit_PlaGetVarNum.exit.thread:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !17
  %i.k = load i8, ptr %0, align 1, !tbaa !8
  %.not2642 = icmp eq i8 %i.k, 0
  br i1 %.not2642, label %._crit_edge28, label %.preheader.lr.ph.thread

.preheader.lr.ph.thread:                          ; preds = %Kit_PlaGetVarNum.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.preheader

.preheader.lr.ph:                                 ; preds = %Kit_PlaGetVarNum.exit
  %i.m = icmp sgt i32 %i.g, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.o = sext i32 %i.g to i64                     ; 2 uses
  br i1 %i.m, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.thread, %.preheader.lr.ph
  %i.p = phi i64 [ -1, %.preheader.lr.ph.thread ], [ %i.o, %.preheader.lr.ph ]
  %i.q = phi ptr [ %i.l, %.preheader.lr.ph.thread ], [ %i.n, %.preheader.lr.ph ] ; 4 uses
  %i.r = phi ptr [ %i.j, %.preheader.lr.ph.thread ], [ %i.h, %.preheader.lr.ph ] ; 3 uses
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.s = zext nneg i32 %i.g to i64                ; 4 uses
  %xtraiter = and i64 %i.s, 1
  %i.t = icmp eq i32 %i.g, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod52 = trunc i64 %i.e to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %Vec_IntPush.exit.us
  %.02027.us = phi ptr [ %i.ba, %Vec_IntPush.exit.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.k ], [ %i.s, %.preheader.us ] ; 2 uses
  %.024.us = phi i32 [ %.1.us.1, %bb.k ], [ 0, %.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.preheader.us ]
  %i.u = getelementptr i8, ptr %.02027.us, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  switch i8 %i.w, label %bb.g [
    i8 48, label %bb.f
    i8 49, label %bb.e
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.us.new
  %i.x = shl i32 %.024.us, 2
  br label %bb.g

bb.e:                                             ; preds = %.preheader.us.new
  %i.y = shl i32 %.024.us, 2
  %i.z = or disjoint i32 %i.y, 2
  br label %bb.g

bb.f:                                             ; preds = %.preheader.us.new
  %i.aa = shl i32 %.024.us, 2
  %i.ab = or disjoint i32 %i.aa, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.preheader.us.new
  %.1.us = phi i32 [ %i.ab, %bb.f ], [ %i.z, %bb.e ], [ %i.x, %bb.d ], [ %.024.us, %.preheader.us.new ] ; 4 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02027.us, i64 %indvars.iv.next.1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  switch i8 %i.ad, label %bb.k [
    i8 48, label %bb.j
    i8 49, label %bb.i
    i8 45, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = shl i32 %.1.us, 2
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = shl i32 %.1.us, 2
  %i.ag = or disjoint i32 %i.af, 2
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ah = shl i32 %.1.us, 2
  %i.ai = or disjoint i32 %i.ah, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.1.us.1 = phi i32 [ %i.ai, %bb.j ], [ %i.ag, %bb.i ], [ %i.ae, %bb.h ], [ %.1.us, %bb.g ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !31

bb.l:                                             ; preds = %._crit_edge.us
  %i.aj = icmp slt i32 %i.bk, 16
  br i1 %i.aj, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp samesign ult i32 %i.bk, 1073741823
  %i.al = shl nuw nsw i32 %i.bk, 1
  %spec.select.i.us = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %.not.i9.i.us = icmp samesign ult i32 %i.bk, %spec.select.i.us
  %.pre35 = load ptr, ptr %i.n, align 8, !tbaa !22 ; 3 uses
  br i1 %.not.i9.i.us, label %bb.n, label %Vec_IntPush.exit.us

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i.us = icmp eq ptr %.pre35, null
  %i.am = zext nneg i32 %spec.select.i.us to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  br i1 %.not9.i10.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %.pre35, i64 noundef %i.an) #15
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.p:                                             ; preds = %bb.n
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #16
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.q:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !22  ; 2 uses
  %.not9.i.i.us = icmp eq ptr %i.aq, null
  br i1 %.not9.i.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.s:                                             ; preds = %bb.q
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.us

Vec_IntGrow.exit11.sink.split.i.us:               ; preds = %bb.r, %bb.s, %bb.o, %bb.p
  %i.at = phi ptr [ %i.ap, %bb.p ], [ %i.ao, %bb.o ], [ %i.ar, %bb.r ], [ %i.as, %bb.s ] ; 2 uses
  %spec.select.sink.i.us = phi i32 [ %spec.select.i.us, %bb.p ], [ %spec.select.i.us, %bb.o ], [ 16, %bb.r ], [ 16, %bb.s ]
  store ptr %i.at, ptr %i.n, align 8, !tbaa !22
  store i32 %spec.select.sink.i.us, ptr %1, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@Kit_PlaToIsop:bb.a
  %.not = icmp eq i8 %i.ci, 0
  br i1 %.not, label %._crit_edge28, label %.preheader, !llvm.loop !33

._crit_edge28:                                    ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit.us, %Kit_PlaGetVarNum.exit.thread, %Kit_PlaGetVarNum.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Kit_PlaStoreSop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.b = trunc i64 %i.a to i32
  %i.c = add i32 %i.b, 1
  %i.d = tail call ptr @Aig_MmFlexEntryFetch(ptr noundef %0, i32 noundef %i.c) #14 ; 2 uses
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %1) #14 ; 0 uses
  ret ptr %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @Kit_PlaFromTruth(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, 6
  %i.b = add nsw i32 %2, -5
  %i.c = shl nuw i32 1, %i.b
  %spec.select.i = select i1 %i.a, i32 1, i32 %i.c ; 2 uses
  %i.d = zext i32 %spec.select.i to i64           ; 2 uses
  %i.e = icmp sgt i32 %spec.select.i, 0
  br i1 %i.e, label %.lr.ph, label %Kit_PlaComplement.exit.sink.split

select.unfold.i:                                  ; preds = %.lr.ph
  %i.f = trunc nuw i64 %i.h to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %Kit_PlaComplement.exit.sink.split, !llvm.loop !34

.lr.ph:                                           ; preds = %bb.a, %select.unfold.i
  %indvars.iv.i33 = phi i64 [ %i.h, %select.unfold.i ], [ %i.d, %bb.a ]
  %i.h = add nsw i64 %indvars.iv.i33, -1          ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %select.unfold.i, label %.lr.ph35, !llvm.loop !34

select.unfold.i19:                                ; preds = %.lr.ph35
  %i.k = trunc nuw i64 %i.m to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph35, label %Kit_PlaComplement.exit.sink.split, !llvm.loop !35

.lr.ph35:                                         ; preds = %.lr.ph, %select.unfold.i19
  %indvars.iv.i2034 = phi i64 [ %i.m, %select.unfold.i19 ], [ %i.d, %.lr.ph ]
  %i.m = add nsw i64 %indvars.iv.i2034, -1        ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  %.not.i22 = icmp eq i32 %i.o, -1
  br i1 %.not.i22, label %select.unfold.i19, label %bb.b, !llvm.loop !35

bb.b:                                             ; preds = %.lr.ph35
  %i.p = tail call i32 @Kit_TruthIsop(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, i32 noundef 0) #14
  %i.q = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %.val30.i = load i32, ptr %i.q, align 4, !tbaa !17 ; 5 uses
  %i.r = icmp eq i32 %.val30.i, 0
  br i1 %i.r, label %Kit_PlaCreateFromIsop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %2, 3                        ; 3 uses
  %i.t = mul nsw i32 %.val30.i, %i.s              ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  %i.v = tail call ptr @Aig_MmFlexEntryFetch(ptr noundef %0, i32 noundef %i.u) #14 ; 7 uses
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 45, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !8
  %i.y = icmp sgt i32 %.val30.i, 0
  br i1 %i.y, label %.lr.ph.i.i, label %Kit_PlaStart.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.z = sext i32 %2 to i64
  %invariant.gep.i.i = getelementptr i8, ptr %i.v, i64 %i.z ; 5 uses
  %i.aa = sext i32 %i.s to i64                    ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %.val30.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.ab = icmp ult i32 %.val30.i, 4
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.d ]
  %i.ac = mul nsw i64 %indvars.iv.i.i, %i.aa
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ac ; 3 uses
  store i8 32, ptr %gep.i.i, align 1, !tbaa !8
  %i.ad = getelementptr i8, ptr %gep.i.i, i64 1
  store i8 49, ptr %i.ad, align 1, !tbaa !8
  %i.ae = getelementptr i8, ptr %gep.i.i, i64 2
  store i8 10, ptr %i.ae, align 1, !tbaa !8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %i.af = mul nsw i64 %indvars.iv.next.i.i, %i.aa
  %gep.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.af ; 3 uses
  store i8 32, ptr %gep.i.i.1, align 1, !tbaa !8
  %i.ag = getelementptr i8, ptr %gep.i.i.1, i64 1
  store i8 49, ptr %i.ag, align 1, !tbaa !8
  %i.ah = getelementptr i8, ptr %gep.i.i.1, i64 2
  store i8 10, ptr %i.ah, align 1, !tbaa !8
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2
  %i.ai = mul nsw i64 %indvars.iv.next.i.i.1, %i.aa
  %gep.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ai ; 3 uses
  store i8 32, ptr %gep.i.i.2, align 1, !tbaa !8
  %i.aj = getelementptr i8, ptr %gep.i.i.2, i64 1
  store i8 49, ptr %i.aj, align 1, !tbaa !8
  %i.ak = getelementptr i8, ptr %gep.i.i.2, i64 2
  store i8 10, ptr %i.ak, align 1, !tbaa !8
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3
  %i.al = mul nsw i64 %indvars.iv.next.i.i.2, %i.aa
  %gep.i.i.3 = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.al ; 3 uses
  store i8 32, ptr %gep.i.i.3, align 1, !tbaa !8
  %i.am = getelementptr i8, ptr %gep.i.i.3, i64 1
  store i8 49, ptr %i.am, align 1, !tbaa !8
  %i.an = getelementptr i8, ptr %gep.i.i.3, i64 2
  store i8 10, ptr %i.an, align 1, !tbaa !8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Kit_PlaStart.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !14

Kit_PlaStart.exit.i.loopexit.unr-lcssa:           ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Kit_PlaStart.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %Kit_PlaStart.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %Kit_PlaStart.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ao = mul nsw i64 %indvars.iv.i.i.epil, %i.aa
  %gep.i.i.epil = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ao ; 3 uses
  store i8 32, ptr %gep.i.i.epil, align 1, !tbaa !8
  %i.ap = getelementptr i8, ptr %gep.i.i.epil, i64 1
  store i8 49, ptr %i.ap, align 1, !tbaa !8
  %i.aq = getelementptr i8, ptr %gep.i.i.epil, i64 2
  store i8 10, ptr %i.aq, align 1, !tbaa !8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Kit_PlaStart.exit.i, label %bb.e, !llvm.loop !36

Kit_PlaStart.exit.i:                              ; preds = %Kit_PlaStart.exit.i.loopexit.unr-lcssa, %bb.e, %bb.c
  %.val33.i = load i32, ptr %i.q, align 4, !tbaa !17
  %i.ar = icmp sgt i32 %.val33.i, 0
  br i1 %i.ar, label %.lr.ph35.i, label %Kit_PlaCreateFromIsop.exit

.lr.ph35.i:                                       ; preds = %Kit_PlaStart.exit.i
  %i.as = getelementptr i8, ptr %3, i64 8
  %i.at = icmp sgt i32 %2, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %Kit_PlaCreateFromIsop.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph35.i
  %i.au = zext nneg i32 %i.s to i64
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %2, 8
  %min.iters.check36 = icmp ult i32 %2, 16
  %i.av = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.av, 0
  %n.vec67 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n93 = icmp eq i64 %n.vec67, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %.val31.i = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val31.i, i64 %indvars.iv37.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !23 ; 3 uses
  %i.ay = mul nuw nsw i64 %indvars.iv37.i, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ay ; 25 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue66, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue66 ] ; 17 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %pred.store.continue66 ] ; 2 uses
  %i.ba = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.bb = ashr <16 x i32> %broadcast.splat, %i.ba
  %i.bc = and <16 x i32> %i.bb, splat (i32 3)     ; 2 uses
  %i.bd = icmp eq <16 x i32> %i.bc, splat (i32 1)
  %i.be = add nsw <16 x i32> %i.bc, splat (i32 -1)
  %i.bf = icmp ult <16 x i32> %i.be, splat (i32 2) ; 16 uses
  %predphi = select <16 x i1> %i.bd, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49) ; 16 uses
  %i.bg = extractelement <16 x i1> %i.bf, i64 0
  br i1 %i.bg, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.bi = extractelement <16 x i8> %predphi, i64 0
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bj = extractelement <16 x i1> %i.bf, i64 1
  br i1 %i.bj, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = extractelement <16 x i8> %predphi, i64 1
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !8
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue
  %i.bn = extractelement <16 x i1> %i.bf, i64 2
  br i1 %i.bn, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = extractelement <16 x i8> %predphi, i64 2
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !8
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.br = extractelement <16 x i1> %i.bf, i64 3
  br i1 %i.br, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bu = extractelement <16 x i8> %predphi, i64 3
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !8
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.bv = extractelement <16 x i1> %i.bf, i64 4
  br i1 %i.bv, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = extractelement <16 x i8> %predphi, i64 4
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !8
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.bz = extractelement <16 x i1> %i.bf, i64 5
  br i1 %i.bz, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  %i.cc = extractelement <16 x i8> %predphi, i64 5
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !8
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.cd = extractelement <16 x i1> %i.bf, i64 6
  br i1 %i.cd, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cg = extractelement <16 x i8> %predphi, i64 6
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !8
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.ch = extractelement <16 x i1> %i.bf, i64 7
  br i1 %i.ch, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 7
  %i.ck = extractelement <16 x i8> %predphi, i64 7
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !8
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.cl = extractelement <16 x i1> %i.bf, i64 8
  br i1 %i.cl, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = extractelement <16 x i8> %predphi, i64 8
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !8
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.cp = extractelement <16 x i1> %i.bf, i64 9
  br i1 %i.cp, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.cs = extractelement <16 x i8> %predphi, i64 9
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !8
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.ct = extractelement <16 x i1> %i.bf, i64 10
  br i1 %i.ct, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 10
  %i.cw = extractelement <16 x i8> %predphi, i64 10
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !8
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.cx = extractelement <16 x i1> %i.bf, i64 11
  br i1 %i.cx, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 11
  %i.da = extractelement <16 x i8> %predphi, i64 11
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !8
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.db = extractelement <16 x i1> %i.bf, i64 12
  br i1 %i.db, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = extractelement <16 x i8> %predphi, i64 12
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !8
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.df = extractelement <16 x i1> %i.bf, i64 13
  br i1 %i.df, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.dg = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 13
  %i.di = extractelement <16 x i8> %predphi, i64 13
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !8
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.dj = extractelement <16 x i1> %i.bf, i64 14
  br i1 %i.dj, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 14
  %i.dm = extractelement <16 x i8> %predphi, i64 14
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !8
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.dn = extractelement <16 x i1> %i.bf, i64 15
  br i1 %i.dn, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.do = getelementptr inbounds nuw i8, ptr %i.az, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 15
  %i.dq = extractelement <16 x i8> %predphi, i64 15
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !8
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %pred.store.continue66
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert68 = insertelement <8 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat69 = shufflevector <8 x i32> %broadcast.splatinsert68, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ds = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert70 = insertelement <8 x i32> poison, i32 %i.ds, i64 0
  %broadcast.splat71 = shufflevector <8 x i32> %broadcast.splatinsert70, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat71, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue90, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %pred.store.continue90 ] ; 9 uses
  %vec.ind73 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next92, %pred.store.continue90 ] ; 2 uses
  %i.dt = shl <8 x i32> %vec.ind73, splat (i32 1)
  %i.du = ashr <8 x i32> %broadcast.splat69, %i.dt
  %i.dv = and <8 x i32> %i.du, splat (i32 3)      ; 2 uses
  %i.dw = icmp eq <8 x i32> %i.dv, splat (i32 1)
  %i.dx = add nsw <8 x i32> %i.dv, splat (i32 -1)
  %i.dy = icmp ult <8 x i32> %i.dx, splat (i32 2) ; 8 uses
  %predphi74 = select <8 x i1> %i.dw, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49) ; 8 uses
  %i.dz = extractelement <8 x i1> %i.dy, i64 0
  br i1 %i.dz, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %vec.epilog.vector.body
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.eb = extractelement <8 x i8> %predphi74, i64 0
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !8
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %vec.epilog.vector.body
  %i.ec = extractelement <8 x i1> %i.dy, i64 1
  br i1 %i.ec, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.ed = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = extractelement <8 x i8> %predphi74, i64 1
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.eg = extractelement <8 x i1> %i.dy, i64 2
  br i1 %i.eg, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = extractelement <8 x i8> %predphi74, i64 2
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !8
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.ek = extractelement <8 x i1> %i.dy, i64 3
  br i1 %i.ek, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.el = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %i.en = extractelement <8 x i8> %predphi74, i64 3
  store i8 %i.en, ptr %i.em, align 1, !tbaa !8
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.eo = extractelement <8 x i1> %i.dy, i64 4
  br i1 %i.eo, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = extractelement <8 x i8> %predphi74, i64 4
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !8
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.es = extractelement <8 x i1> %i.dy, i64 5
  br i1 %i.es, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  %i.et = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 5
  %i.ev = extractelement <8 x i8> %predphi74, i64 5
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !8
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.ew = extractelement <8 x i1> %i.dy, i64 6
  br i1 %i.ew, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %i.ex = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %i.ez = extractelement <8 x i8> %predphi74, i64 6
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !8
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.fa = extractelement <8 x i1> %i.dy, i64 7
  br i1 %i.fa, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.az, i64 %index72
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 7
  %i.fd = extractelement <8 x i8> %predphi74, i64 7
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !8
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %index.next91 = add nuw i64 %index72, 8         ; 2 uses
  %vec.ind.next92 = add <8 x i32> %vec.ind73, splat (i32 8)
  %i.fe = icmp eq i64 %index.next91, %n.vec67
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %pred.store.continue90
  br i1 %cmp.n93, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i23.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec67, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.g
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i, %bb.g ], [ %indvars.iv.i23.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i23 to i32
  %i.ff = shl i32 %indvars.iv.tr.i, 1
  %i.fg = ashr i32 %i.ax, %i.ff
  %i.fh = and i32 %i.fg, 3
  switch i32 %i.fh, label %bb.g [
    i32 1, label %.sink.split.i
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %vec.epilog.scalar.ph
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %vec.epilog.scalar.ph
  %.sink.i = phi i8 [ 49, %bb.f ], [ 48, %vec.epilog.scalar.ph ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i23
  store i8 %.sink.i, ptr %i.fi, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %vec.epilog.scalar.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !39

._crit_edge.i:                                    ; preds = %bb.g, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.q, align 4, !tbaa !17
  %i.fj = sext i32 %.val.i to i64
  %i.fk = icmp slt i64 %indvars.iv.next38.i, %i.fj
  br i1 %i.fk, label %iter.check, label %Kit_PlaCreateFromIsop.exit, !llvm.loop !30

Kit_PlaCreateFromIsop.exit:                       ; preds = %._crit_edge.i, %bb.b, %Kit_PlaStart.exit.i, %.lr.ph35.i
  %.027.i = phi ptr [ null, %bb.b ], [ %i.v, %.lr.ph35.i ], [ %i.v, %Kit_PlaStart.exit.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %Kit_PlaComplement.exit, label %.preheader

.preheader:                                       ; preds = %Kit_PlaCreateFromIsop.exit, %bb.l
  %.0.i = phi ptr [ %i.fo, %bb.l ], [ %.027.i, %Kit_PlaCreateFromIsop.exit ] ; 3 uses
  %i.fl = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.fl, label %bb.l [
    i8 0, label %Kit_PlaComplement.exit
    i8 10, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader
  %i.fm = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  switch i8 %i.fn, label %bb.l [
    i8 48, label %.sink.split.i24
    i8 49, label %bb.i
    i8 120, label %bb.j
    i8 110, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  br label %.sink.split.i24

bb.j:                                             ; preds = %bb.h
  br label %.sink.split.i24

bb.k:                                             ; preds = %bb.h
  br label %.sink.split.i24

.sink.split.i24:                                  ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i25 = phi i8 [ 48, %bb.i ], [ 120, %bb.k ], [ 110, %bb.j ], [ 49, %bb.h ]
  store i8 %.sink.i25, ptr %i.fm, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i24, %bb.h, %.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader, !llvm.loop !13

Kit_PlaComplement.exit.sink.split:                ; preds = %select.unfold.i, %select.unfold.i19, %bb.a
  %.sink = phi i32 [ 667680, %bb.a ], [ 667936, %select.unfold.i19 ], [ 667680, %select.unfold.i ]
  %i.fp = tail call noundef ptr @Aig_MmFlexEntryFetch(ptr noundef %0, i32 noundef 4) #14 ; 2 uses
  store i32 %.sink, ptr %i.fp, align 1
  br label %Kit_PlaComplement.exit

Kit_PlaComplement.exit:                           ; preds = %.preheader, %Kit_PlaComplement.exit.sink.split, %Kit_PlaCreateFromIsop.exit
  %.0 = phi ptr [ %.027.i, %Kit_PlaCreateFromIsop.exit ], [ %i.fp, %Kit_PlaComplement.exit.sink.split ], [ %.027.i, %.preheader ]
  ret ptr %.0
}

declare i32 @Kit_TruthIsop(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Kit_PlaFromIsop(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val26 = load i32, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.b = icmp eq i32 %.val26, 0
  br i1 %i.b, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 20 uses
  store i32 0, ptr %i.c, align 4, !tbaa !40
  %i.d = icmp sgt i32 %.val26, 0
  br i1 %i.d, label %.lr.ph82, label %.critedge.thread

.lr.ph82:                                         ; preds = %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = icmp sgt i32 %1, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %Vec_StrPush.exit68
  %indvars.iv = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next, %Vec_StrPush.exit68 ] ; 2 uses
  %.val27 = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.ae
  %.078 = phi i32 [ %i.bc, %bb.ae ], [ 0, %bb.c ] ; 2 uses
  %i.j = shl nuw i32 %.078, 1
  %i.k = ashr i32 %i.i, %i.j
  %i.l = and i32 %i.k, 3
  switch i32 %i.l, label %default.unreachable [
    i32 1, label %bb.d
    i32 2, label %bb.m
    i32 0, label %bb.v
    i32 3, label %bb.ae
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.c, align 4, !tbaa !40   ; 7 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !43
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %.Vec_StrPush.exit_crit_edge

.Vec_StrPush.exit_crit_edge:                      ; preds = %bb.d
  %.pre89 = load ptr, ptr %i.g, align 8, !tbaa !44
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %i.m, 16
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i32 %i.m, 1073741823
  %i.u = shl nuw nsw i32 %i.m, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.m, %spec.select.i
  %.pre90 = load ptr, ptr %i.g, align 8, !tbaa !44 ; 3 uses
  br i1 %.not.i9.i, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %.pre90, null
  %i.v = zext nneg i32 %spec.select.i to i64      ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @realloc(ptr noundef nonnull %.pre90, i64 noundef %i.v) #15
  br label %Vec_StrGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #16
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %i.y = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ %i.w, %bb.k ], [ %i.x, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store ptr %i.y, ptr %i.g, align 8, !tbaa !44
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !43
  %.pre91 = load i32, ptr %i.c, align 4, !tbaa !40
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph
  %i.z = load i32, ptr %i.c, align 4, !tbaa !40   ; 7 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !43
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.n, label %.Vec_StrPush.exit36_crit_edge

.Vec_StrPush.exit36_crit_edge:                    ; preds = %bb.m
  %.pre86 = load ptr, ptr %i.g, align 8, !tbaa !44
  br label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp slt i32 %i.z, 16
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !44  ; 2 uses
  %.not9.i.i34 = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i32

end_hunk_1
