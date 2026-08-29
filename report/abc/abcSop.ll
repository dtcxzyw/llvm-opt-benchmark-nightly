Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSop?download=true
inline.NumInlined: 129
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Abc_SopCreateFromTruth:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec67, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %.148.us, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cl = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat81, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind83 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next85, %vec.epilog.vector.body ] ; 2 uses
  %i.cm = lshr <4 x i32> %broadcast.splat79, %vec.ind83
  %i.cn = trunc <4 x i32> %i.cm to <4 x i8>
  %i.co = and <4 x i8> %i.cn, splat (i8 1)
  %i.cp = or disjoint <4 x i8> %i.co, splat (i8 48)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %index82
  store <4 x i8> %i.cp, ptr %i.cq, align 1, !tbaa !8
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %vec.ind.next85 = add <4 x i32> %vec.ind83, splat (i32 4)
  %i.cr = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge46.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec67, %vec.epilog.iter.check ], [ %n.vec77, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = lshr i32 %.148.us, %i.cs
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = and i8 %i.cu, 1
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond55.not, label %._crit_edge46.us, label %vec.epilog.scalar.ph, !llvm.loop !39

Abc_SopStart.exit.us:                             ; preds = %._crit_edge46.us, %.lr.ph50.split.us
  %.2.us = phi i32 [ %i.cz, %._crit_edge46.us ], [ %.13647.us, %.lr.ph50.split.us ]
  %i.cy = add nuw nsw i32 %.148.us, 1             ; 2 uses
  %exitcond57.not = icmp eq i32 %i.cy, %smax56
  br i1 %exitcond57.not, label %.loopexit, label %.lr.ph50.split.us, !llvm.loop !40

._crit_edge46.us:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block75
  %i.cz = add nsw i32 %.13647.us, 1
  br label %Abc_SopStart.exit.us

.loopexit:                                        ; preds = %Abc_SopStart.exit.us, %.loopexit.sink.split, %bb.b, %.lr.ph50, %._crit_edge
  %.037 = phi ptr [ null, %._crit_edge ], [ %i.ay, %.lr.ph50 ], [ %i.c, %.loopexit.sink.split ], [ null, %bb.b ], [ %i.ay, %Abc_SopStart.exit.us ]
  ret ptr %.037
}

; Function Attrs: nounwind uwtable
define ptr @Abc_SopCreateFromIsop(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val29 = load i32, ptr %i.a, align 4, !tbaa !41 ; 5 uses
  %i.b = icmp eq i32 %.val29, 0
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 3                        ; 3 uses
  %i.d = mul nsw i32 %.val29, %i.c                ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = tail call ptr @Mem_FlexEntryFetch(ptr noundef %0, i32 noundef %i.e) #23 ; 7 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 45, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !8
  %i.i = icmp sgt i32 %.val29, 0
  br i1 %i.i, label %.lr.ph.i, label %Abc_SopStart.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = sext i32 %1 to i64
  %invariant.gep.i = getelementptr i8, ptr %i.f, i64 %i.j ; 5 uses
  %i.k = sext i32 %i.c to i64                     ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val29 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.l = icmp ult i32 %.val29, 4
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
  br i1 %niter.ncmp.3, label %Abc_SopStart.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !9

Abc_SopStart.exit.loopexit.unr-lcssa:             ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_SopStart.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Abc_SopStart.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %Abc_SopStart.exit.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
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
  br i1 %epil.iter.cmp.not, label %Abc_SopStart.exit, label %bb.d, !llvm.loop !45

Abc_SopStart.exit:                                ; preds = %Abc_SopStart.exit.loopexit.unr-lcssa, %bb.d, %bb.b
  %.val32 = load i32, ptr %i.a, align 4, !tbaa !41
  %i.ab = icmp sgt i32 %.val32, 0
  br i1 %i.ab, label %.lr.ph34, label %.critedge

.lr.ph34:                                         ; preds = %Abc_SopStart.exit
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.lr.ph34
  %i.ae = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  %min.iters.check40 = icmp ult i32 %1, 16
  %i.af = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check.not.not = icmp eq i64 %i.af, 0
  %n.vec71 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec71, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next37, %._crit_edge ] ; 3 uses
  %.val30 = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val30, i64 %indvars.iv36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.ai = mul nuw nsw i64 %indvars.iv36, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai ; 25 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue70, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue70 ] ; 17 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %pred.store.continue70 ] ; 2 uses
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
  br i1 %i.at, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = extractelement <16 x i8> %predphi, i64 1
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !8
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue
  %i.ax = extractelement <16 x i1> %i.ap, i64 2
  br i1 %i.ax, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = extractelement <16 x i8> %predphi, i64 2
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !8
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.bb = extractelement <16 x i1> %i.ap, i64 3
  br i1 %i.bb, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.be = extractelement <16 x i8> %predphi, i64 3
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !8
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.bf = extractelement <16 x i1> %i.ap, i64 4
  br i1 %i.bf, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = extractelement <16 x i8> %predphi, i64 4
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !8
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.bj = extractelement <16 x i1> %i.ap, i64 5
  br i1 %i.bj, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 5
  %i.bm = extractelement <16 x i8> %predphi, i64 5
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !8
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.bn = extractelement <16 x i1> %i.ap, i64 6
  br i1 %i.bn, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bq = extractelement <16 x i8> %predphi, i64 6
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !8
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.br = extractelement <16 x i1> %i.ap, i64 7
  br i1 %i.br, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 7
  %i.bu = extractelement <16 x i8> %predphi, i64 7
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !8
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.bv = extractelement <16 x i1> %i.ap, i64 8
  br i1 %i.bv, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = extractelement <16 x i8> %predphi, i64 8
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !8
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.bz = extractelement <16 x i1> %i.ap, i64 9
  br i1 %i.bz, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cc = extractelement <16 x i8> %predphi, i64 9
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !8
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.cd = extractelement <16 x i1> %i.ap, i64 10
  br i1 %i.cd, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  %i.cg = extractelement <16 x i8> %predphi, i64 10
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !8
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.ch = extractelement <16 x i1> %i.ap, i64 11
  br i1 %i.ch, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  %i.ck = extractelement <16 x i8> %predphi, i64 11
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !8
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.cl = extractelement <16 x i1> %i.ap, i64 12
  br i1 %i.cl, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = extractelement <16 x i8> %predphi, i64 12
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !8
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.cp = extractelement <16 x i1> %i.ap, i64 13
  br i1 %i.cp, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 13
  %i.cs = extractelement <16 x i8> %predphi, i64 13
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !8
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.ct = extractelement <16 x i1> %i.ap, i64 14
  br i1 %i.ct, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %i.cw = extractelement <16 x i8> %predphi, i64 14
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !8
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.cx = extractelement <16 x i1> %i.ap, i64 15
  br i1 %i.cx, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15
  %i.da = extractelement <16 x i8> %predphi, i64 15
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !8
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %pred.store.continue70
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert72 = insertelement <8 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat73 = shufflevector <8 x i32> %broadcast.splatinsert72, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dc = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert74 = insertelement <8 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat75 = shufflevector <8 x i32> %broadcast.splatinsert74, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat75, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue94, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %pred.store.continue94 ] ; 9 uses
  %vec.ind77 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next96, %pred.store.continue94 ] ; 2 uses
  %i.dd = shl <8 x i32> %vec.ind77, splat (i32 1)
  %i.de = ashr <8 x i32> %broadcast.splat73, %i.dd
  %i.df = and <8 x i32> %i.de, splat (i32 3)      ; 2 uses
  %i.dg = icmp eq <8 x i32> %i.df, splat (i32 2)
  %i.dh = add nsw <8 x i32> %i.df, splat (i32 -1)
  %i.di = icmp ult <8 x i32> %i.dh, splat (i32 2) ; 8 uses
  %predphi78 = select <8 x i1> %i.dg, <8 x i8> splat (i8 49), <8 x i8> splat (i8 48) ; 8 uses
  %i.dj = extractelement <8 x i1> %i.di, i64 0
  br i1 %i.dj, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %vec.epilog.vector.body
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.dl = extractelement <8 x i8> %predphi78, i64 0
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !8
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %vec.epilog.vector.body
  %i.dm = extractelement <8 x i1> %i.di, i64 1
  br i1 %i.dm, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = extractelement <8 x i8> %predphi78, i64 1
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !8
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.dq = extractelement <8 x i1> %i.di, i64 2
  br i1 %i.dq, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = extractelement <8 x i8> %predphi78, i64 2
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !8
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.du = extractelement <8 x i1> %i.di, i64 3
  br i1 %i.du, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.dx = extractelement <8 x i8> %predphi78, i64 3
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !8
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.dy = extractelement <8 x i1> %i.di, i64 4
  br i1 %i.dy, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = extractelement <8 x i8> %predphi78, i64 4
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !8
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.ec = extractelement <8 x i1> %i.di, i64 5
  br i1 %i.ec, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 5
  %i.ef = extractelement <8 x i8> %predphi78, i64 5
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.eg = extractelement <8 x i1> %i.di, i64 6
  br i1 %i.eg, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %i.ej = extractelement <8 x i8> %predphi78, i64 6
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !8
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.ek = extractelement <8 x i1> %i.di, i64 7
  br i1 %i.ek, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  %i.el = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index76
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 7
  %i.en = extractelement <8 x i8> %predphi78, i64 7
  store i8 %i.en, ptr %i.em, align 1, !tbaa !8
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %index.next95 = add nuw i64 %index76, 8         ; 2 uses
  %vec.ind.next96 = add <8 x i32> %vec.ind77, splat (i32 8)
  %i.eo = icmp eq i64 %index.next95, %n.vec71
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %pred.store.continue94
  br i1 %cmp.n97, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec71, %vec.epilog.middle.block ]
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
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !41
  %i.et = sext i32 %.val to i64
  %i.eu = icmp slt i64 %indvars.iv.next37, %i.et
  br i1 %i.eu, label %iter.check, label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %._crit_edge, %Abc_SopStart.exit, %.lr.ph34, %bb.a
  %.026 = phi ptr [ null, %bb.a ], [ %i.f, %.lr.ph34 ], [ %i.f, %Abc_SopStart.exit ], [ %i.f, %._crit_edge ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define ptr @Abc_SopCreateFromTruthIsop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge38.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %Abc_SopComplement.exit.sink.split, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %Abc_SopComplement.exit.sink.split, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %._crit_edge
  %wide.trip.count46 = zext nneg i32 %i.d to i64
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %bb.c
  %indvars.iv43 = phi i64 [ 0, %.lr.ph37.preheader ], [ %indvars.iv.next44, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv43
  %i.k = load i64, ptr %i.j, align 8, !tbaa !52
  %.not28 = icmp eq i64 %i.k, -1
  br i1 %.not28, label %bb.c, label %._crit_edge38

bb.c:                                             ; preds = %.lr.ph37
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %Abc_SopComplement.exit.sink.split, label %.lr.ph37, !llvm.loop !55

._crit_edge38:                                    ; preds = %.lr.ph37
  %i.l = trunc nuw nsw i64 %indvars.iv43 to i32
  %i.m = icmp eq i32 %i.d, %i.l
  br i1 %i.m, label %Abc_SopComplement.exit.sink.split, label %._crit_edge38.thread

._crit_edge38.thread:                             ; preds = %bb.a, %._crit_edge38
  %i.n = tail call i32 @Kit_TruthIsop(ptr noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef 1) #23
  %i.o = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %.val29.i = load i32, ptr %i.o, align 4, !tbaa !41 ; 5 uses
  %i.p = icmp eq i32 %.val29.i, 0
  br i1 %i.p, label %Abc_SopCreateFromIsop.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge38.thread
  %i.q = add nsw i32 %1, 3                        ; 3 uses
  %i.r = mul nsw i32 %.val29.i, %i.q              ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  %i.t = tail call ptr @Mem_FlexEntryFetch(ptr noundef %0, i32 noundef %i.s) #23 ; 7 uses
  %i.u = sext i32 %i.r to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 45, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !8
  %i.w = icmp sgt i32 %.val29.i, 0
  br i1 %i.w, label %.lr.ph.i.i, label %Abc_SopStart.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.x = sext i32 %1 to i64
  %invariant.gep.i.i = getelementptr i8, ptr %i.t, i64 %i.x ; 5 uses
  %i.y = sext i32 %i.q to i64                     ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %.val29.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.z = icmp ult i32 %.val29.i, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.e ]
  %i.aa = mul nsw i64 %indvars.iv.i.i, %i.y
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aa ; 3 uses
  store i8 32, ptr %gep.i.i, align 1, !tbaa !8
  %i.ab = getelementptr i8, ptr %gep.i.i, i64 1
  store i8 49, ptr %i.ab, align 1, !tbaa !8
  %i.ac = getelementptr i8, ptr %gep.i.i, i64 2
  store i8 10, ptr %i.ac, align 1, !tbaa !8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %i.ad = mul nsw i64 %indvars.iv.next.i.i, %i.y
  %gep.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ad ; 3 uses
  store i8 32, ptr %gep.i.i.1, align 1, !tbaa !8
  %i.ae = getelementptr i8, ptr %gep.i.i.1, i64 1
  store i8 49, ptr %i.ae, align 1, !tbaa !8
  %i.af = getelementptr i8, ptr %gep.i.i.1, i64 2
  store i8 10, ptr %i.af, align 1, !tbaa !8
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2
  %i.ag = mul nsw i64 %indvars.iv.next.i.i.1, %i.y
  %gep.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ag ; 3 uses
  store i8 32, ptr %gep.i.i.2, align 1, !tbaa !8
  %i.ah = getelementptr i8, ptr %gep.i.i.2, i64 1
  store i8 49, ptr %i.ah, align 1, !tbaa !8
  %i.ai = getelementptr i8, ptr %gep.i.i.2, i64 2
  store i8 10, ptr %i.ai, align 1, !tbaa !8
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3
  %i.aj = mul nsw i64 %indvars.iv.next.i.i.2, %i.y
  %gep.i.i.3 = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aj ; 3 uses
  store i8 32, ptr %gep.i.i.3, align 1, !tbaa !8
  %i.ak = getelementptr i8, ptr %gep.i.i.3, i64 1
  store i8 49, ptr %i.ak, align 1, !tbaa !8
  %i.al = getelementptr i8, ptr %gep.i.i.3, i64 2
  store i8 10, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_SopStart.exit.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !9

Abc_SopStart.exit.i.loopexit.unr-lcssa:           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_SopStart.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %Abc_SopStart.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %Abc_SopStart.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.am = mul nsw i64 %indvars.iv.i.i.epil, %i.y
  %gep.i.i.epil = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.am ; 3 uses
  store i8 32, ptr %gep.i.i.epil, align 1, !tbaa !8
  %i.an = getelementptr i8, ptr %gep.i.i.epil, i64 1
  store i8 49, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr i8, ptr %gep.i.i.epil, i64 2
  store i8 10, ptr %i.ao, align 1, !tbaa !8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_SopStart.exit.i, label %bb.f, !llvm.loop !56

Abc_SopStart.exit.i:                              ; preds = %Abc_SopStart.exit.i.loopexit.unr-lcssa, %bb.f, %bb.d
  %.val32.i = load i32, ptr %i.o, align 4, !tbaa !41
  %i.ap = icmp sgt i32 %.val32.i, 0
  br i1 %i.ap, label %.lr.ph34.i, label %Abc_SopCreateFromIsop.exit

.lr.ph34.i:                                       ; preds = %Abc_SopStart.exit.i
  %i.aq = getelementptr i8, ptr %3, i64 8
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %Abc_SopCreateFromIsop.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph34.i
  %i.as = zext nneg i32 %i.q to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  %min.iters.check62 = icmp ult i32 %1, 16
  %i.at = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.at, 0
  %n.vec93 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n119 = icmp eq i64 %n.vec93, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next37.i, %._crit_edge.i ] ; 3 uses
  %.val30.i = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val30.i, i64 %indvars.iv36.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !13 ; 3 uses
  %i.aw = mul nuw nsw i64 %indvars.iv36.i, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aw ; 25 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue92, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue92 ] ; 17 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %pred.store.continue92 ] ; 2 uses
  %i.ay = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.az = ashr <16 x i32> %broadcast.splat, %i.ay
  %i.ba = and <16 x i32> %i.az, splat (i32 3)     ; 2 uses
  %i.bb = icmp eq <16 x i32> %i.ba, splat (i32 1)
  %i.bc = add nsw <16 x i32> %i.ba, splat (i32 -1)
  %i.bd = icmp ult <16 x i32> %i.bc, splat (i32 2) ; 16 uses
  %predphi = select <16 x i1> %i.bb, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49) ; 16 uses
  %i.be = extractelement <16 x i1> %i.bd, i64 0
  br i1 %i.be, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.bg = extractelement <16 x i8> %predphi, i64 0
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bh = extractelement <16 x i1> %i.bd, i64 1
  br i1 %i.bh, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = extractelement <16 x i8> %predphi, i64 1
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !8
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue
  %i.bl = extractelement <16 x i1> %i.bd, i64 2
  br i1 %i.bl, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = extractelement <16 x i8> %predphi, i64 2
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !8
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.bp = extractelement <16 x i1> %i.bd, i64 3
  br i1 %i.bp, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = extractelement <16 x i8> %predphi, i64 3
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !8
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.bt = extractelement <16 x i1> %i.bd, i64 4
  br i1 %i.bt, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = extractelement <16 x i8> %predphi, i64 4
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !8
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.bx = extractelement <16 x i1> %i.bd, i64 5
  br i1 %i.bx, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.ca = extractelement <16 x i8> %predphi, i64 5
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !8
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.cb = extractelement <16 x i1> %i.bd, i64 6
  br i1 %i.cb, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  %i.ce = extractelement <16 x i8> %predphi, i64 6
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !8
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.cf = extractelement <16 x i1> %i.bd, i64 7
  br i1 %i.cf, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 7
  %i.ci = extractelement <16 x i8> %predphi, i64 7
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !8
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.cj = extractelement <16 x i1> %i.bd, i64 8
  br i1 %i.cj, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = extractelement <16 x i8> %predphi, i64 8
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !8
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.cn = extractelement <16 x i1> %i.bd, i64 9
  br i1 %i.cn, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  %i.co = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 9
  %i.cq = extractelement <16 x i8> %predphi, i64 9
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !8
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.cr = extractelement <16 x i1> %i.bd, i64 10
  br i1 %i.cr, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = extractelement <16 x i8> %predphi, i64 10
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !8
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.cv = extractelement <16 x i1> %i.bd, i64 11
  br i1 %i.cv, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  %i.cy = extractelement <16 x i8> %predphi, i64 11
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !8
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.cz = extractelement <16 x i1> %i.bd, i64 12
  br i1 %i.cz, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  %i.da = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = extractelement <16 x i8> %predphi, i64 12
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !8
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.dd = extractelement <16 x i1> %i.bd, i64 13
  br i1 %i.dd, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 13
  %i.dg = extractelement <16 x i8> %predphi, i64 13
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !8
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.dh = extractelement <16 x i1> %i.bd, i64 14
  br i1 %i.dh, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %i.di = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dk = extractelement <16 x i8> %predphi, i64 14
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !8
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.dl = extractelement <16 x i1> %i.bd, i64 15
  br i1 %i.dl, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = extractelement <16 x i8> %predphi, i64 15
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !8
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %pred.store.continue92
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert94 = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat95 = shufflevector <8 x i32> %broadcast.splatinsert94, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dq = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert96 = insertelement <8 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat97 = shufflevector <8 x i32> %broadcast.splatinsert96, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat97, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue116, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %pred.store.continue116 ] ; 9 uses
  %vec.ind99 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next118, %pred.store.continue116 ] ; 2 uses
  %i.dr = shl <8 x i32> %vec.ind99, splat (i32 1)
  %i.ds = ashr <8 x i32> %broadcast.splat95, %i.dr
  %i.dt = and <8 x i32> %i.ds, splat (i32 3)      ; 2 uses
  %i.du = icmp eq <8 x i32> %i.dt, splat (i32 1)
  %i.dv = add nsw <8 x i32> %i.dt, splat (i32 -1)
  %i.dw = icmp ult <8 x i32> %i.dv, splat (i32 2) ; 8 uses
  %predphi100 = select <8 x i1> %i.du, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49) ; 8 uses
  %i.dx = extractelement <8 x i1> %i.dw, i64 0
  br i1 %i.dx, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %vec.epilog.vector.body
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.dz = extractelement <8 x i8> %predphi100, i64 0
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !8
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %vec.epilog.vector.body
  %i.ea = extractelement <8 x i1> %i.dw, i64 1
  br i1 %i.ea, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = extractelement <8 x i8> %predphi100, i64 1
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !8
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.ee = extractelement <8 x i1> %i.dw, i64 2
  br i1 %i.ee, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eh = extractelement <8 x i8> %predphi100, i64 2
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !8
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.ei = extractelement <8 x i1> %i.dw, i64 3
  br i1 %i.ei, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  %i.el = extractelement <8 x i8> %predphi100, i64 3
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !8
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.em = extractelement <8 x i1> %i.dw, i64 4
  br i1 %i.em, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  %i.en = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = extractelement <8 x i8> %predphi100, i64 4
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !8
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %i.eq = extractelement <8 x i1> %i.dw, i64 5
  br i1 %i.eq, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  %i.er = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  %i.et = extractelement <8 x i8> %predphi100, i64 5
  store i8 %i.et, ptr %i.es, align 1, !tbaa !8
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %i.eu = extractelement <8 x i1> %i.dw, i64 6
  br i1 %i.eu, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  %i.ex = extractelement <8 x i8> %predphi100, i64 6
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !8
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %i.ey = extractelement <8 x i1> %i.dw, i64 7
  br i1 %i.ey, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index98
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 7
  %i.fb = extractelement <8 x i8> %predphi100, i64 7
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !8
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %index.next117 = add nuw i64 %index98, 8        ; 2 uses
  %vec.ind.next118 = add <8 x i32> %vec.ind99, splat (i32 8)
  %i.fc = icmp eq i64 %index.next117, %n.vec93
  br i1 %i.fc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %pred.store.continue116
  br i1 %cmp.n119, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.fd = shl i32 %indvars.iv.tr.i, 1
  %i.fe = ashr i32 %i.av, %i.fd
  %i.ff = and i32 %i.fe, 3
  switch i32 %i.ff, label %bb.h [
    i32 1, label %.sink.split.i
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %vec.epilog.scalar.ph
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %vec.epilog.scalar.ph
  %.sink.i = phi i8 [ 49, %bb.g ], [ 48, %vec.epilog.scalar.ph ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.fg, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %vec.epilog.scalar.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.h, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !41
  %i.fh = sext i32 %.val.i to i64
  %i.fi = icmp slt i64 %indvars.iv.next37.i, %i.fh
  br i1 %i.fi, label %iter.check, label %Abc_SopCreateFromIsop.exit, !llvm.loop !51

Abc_SopCreateFromIsop.exit:                       ; preds = %._crit_edge.i, %._crit_edge38.thread, %Abc_SopStart.exit.i, %.lr.ph34.i
  %.026.i = phi ptr [ null, %._crit_edge38.thread ], [ %i.t, %.lr.ph34.i ], [ %i.t, %Abc_SopStart.exit.i ], [ %i.t, %._crit_edge.i ] ; 3 uses
  %.not29 = icmp eq i32 %i.n, 0
  br i1 %.not29, label %Abc_SopComplement.exit, label %.preheader

.preheader:                                       ; preds = %Abc_SopCreateFromIsop.exit, %bb.m
  %.0.i = phi ptr [ %i.fm, %bb.m ], [ %.026.i, %Abc_SopCreateFromIsop.exit ] ; 3 uses
  %i.fj = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.fj, label %bb.m [
    i8 0, label %Abc_SopComplement.exit
    i8 10, label %bb.i
  ]

bb.i:                                             ; preds = %.preheader
  %i.fk = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  switch i8 %i.fl, label %bb.m [
    i8 48, label %.sink.split.i30
    i8 49, label %bb.j
    i8 120, label %bb.k
    i8 110, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i30

bb.k:                                             ; preds = %bb.i
  br label %.sink.split.i30

bb.l:                                             ; preds = %bb.i
  br label %.sink.split.i30

.sink.split.i30:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i31 = phi i8 [ 48, %bb.j ], [ 120, %bb.l ], [ 110, %bb.k ], [ 49, %bb.i ]
  store i8 %.sink.i31, ptr %i.fk, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i30, %bb.i, %.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader, !llvm.loop !60

Abc_SopComplement.exit.sink.split:                ; preds = %bb.b, %bb.c, %._crit_edge38, %._crit_edge
  %.sink = phi i32 [ 667680, %._crit_edge ], [ 667936, %bb.c ], [ 667936, %._crit_edge38 ], [ 667680, %bb.b ]
  %i.fn = tail call ptr @Mem_FlexEntryFetch(ptr noundef %0, i32 noundef 4) #23 ; 2 uses
  store i32 %.sink, ptr %i.fn, align 1
  br label %Abc_SopComplement.exit

Abc_SopComplement.exit:                           ; preds = %.preheader, %Abc_SopComplement.exit.sink.split, %Abc_SopCreateFromIsop.exit
  %.026 = phi ptr [ %.026.i, %Abc_SopCreateFromIsop.exit ], [ %i.fn, %Abc_SopComplement.exit.sink.split ], [ %.026.i, %.preheader ]
  ret ptr %.026
}

declare i32 @Kit_TruthIsop(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SopComplement(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.d, %bb.g ]    ; 3 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !8
  switch i8 %i.a, label %bb.g [
    i8 0, label %bb.h
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  switch i8 %i.c, label %bb.g [
    i8 48, label %.sink.split
    i8 49, label %bb.d
    i8 120, label %bb.e
    i8 110, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  %.sink = phi i8 [ 48, %bb.d ], [ 120, %bb.f ], [ 110, %bb.e ], [ 49, %bb.c ]
  store i8 %.sink, ptr %i.b, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !60

bb.h:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_SopToIsop(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ]  ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.a, label %bb.c [
    i8 10, label %Abc_SopGetVarNum.exit
    i8 0, label %Abc_SopGetVarNum.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !61

Abc_SopGetVarNum.exit:                            ; preds = %bb.b
  %i.c = ptrtoint ptr %.0.i to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, -2                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  store i32 0, ptr %i.h, align 4, !tbaa !41
  %i.i = load i8, ptr %0, align 1, !tbaa !8
  %.not26 = icmp eq i8 %i.i, 0
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

Abc_SopGetVarNum.exit.thread:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !41
  %i.k = load i8, ptr %0, align 1, !tbaa !8
  %.not2642 = icmp eq i8 %i.k, 0
  br i1 %.not2642, label %._crit_edge28, label %.preheader.lr.ph.thread

.preheader.lr.ph.thread:                          ; preds = %Abc_SopGetVarNum.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.preheader

.preheader.lr.ph:                                 ; preds = %Abc_SopGetVarNum.exit
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
end_hunk_0
begin_hunk_1_@Abc_SopFromTruthsHex:bb.a
  %i.k = load i8, ptr %.017, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 48
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, 120
  %spec.select.idx = select i1 %i.o, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.017, i64 %spec.select.idx
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.1 = phi ptr [ %.017, %.lr.ph ], [ %spec.select, %bb.c ] ; 2 uses
  %i.p = tail call i32 @Abc_SopCheckReadTruth(ptr noundef nonnull %i.a, ptr noundef nonnull %.1, i32 noundef 1)
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @Abc_SopFromTruthHex(ptr noundef nonnull %.1)
  %i.r = load i32, ptr %i.b, align 4, !tbaa !78   ; 7 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !90
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !81
  br label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %i.r, 16
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i32 %i.r, 1073741823
  %i.z = shl nuw nsw i32 %i.r, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.r, %spec.select.i
  %.pre19 = load ptr, ptr %i.d, align 8, !tbaa !81 ; 3 uses
  br i1 %.not.i10.i, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i11.i = icmp eq ptr %.pre19, null
  %i.aa = zext nneg i32 %spec.select.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %.pre19, i64 noundef %i.ab) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.x, %bb.i ], [ %i.w, %bb.h ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !81
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !90
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.j, %Vec_PtrGrow.exit12.sink.split.i
  %i.ae = phi ptr [ %.pre, %.Vec_PtrPush.exit_crit_edge ], [ %.pre19, %bb.j ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.af = add nsw i32 %i.r, 1
  store i32 %i.af, ptr %i.b, align 4, !tbaa !78
  %i.ag = sext i32 %i.r to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !82
  %i.ai = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.15) #23 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %Vec_PtrPush.exit, %bb.d, %Abc_UtilStrsav.exit
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.i) #23
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_SopGenerateCounters(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %0, 1                        ; 2 uses
  %i.b = icmp ult i32 %i.a, 2
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.b, i32 %i.a, i32 %i.d     ; 4 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.f = add nsw i32 %.09.i, -1
  %or.cond.i = icmp ult i32 %i.f, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.09.i ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !78
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !90
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %spec.store.select.i, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #25
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !81
  %.not83 = icmp eq i32 %.09.i, 0
  br i1 %.not83, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %Vec_PtrAlloc.exit
  %i.m = shl nuw i32 1, %0
  %.not84 = icmp eq i32 %0, 31
  %i.n = icmp sgt i32 %0, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph81, %Vec_StrFree.exit
  %.080 = phi i32 [ 0, %.lr.ph81 ], [ %i.dn, %Vec_StrFree.exit ] ; 2 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 4 uses
  store i32 0, ptr %i.p, align 4, !tbaa !97
  store i32 1000, ptr %i.o, align 8, !tbaa !100
  %i.q = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 8 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !101
  br i1 %.not84, label %Vec_StrPush.exit58, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.c
  %i.s = shl nuw i32 1, %.080
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph78, %bb.ac
  %i.t = phi i32 [ 1000, %.lr.ph78 ], [ %i.cg, %bb.ac ]
  %.promoted72 = phi ptr [ %i.q, %.lr.ph78 ], [ %.promoted7294, %bb.ac ] ; 3 uses
  %.promoted69 = phi i32 [ 1000, %.lr.ph78 ], [ %.promoted6991, %bb.ac ] ; 3 uses
  %.promoted = phi i32 [ 0, %.lr.ph78 ], [ %.promoted89, %bb.ac ] ; 3 uses
  %.02575 = phi i32 [ 0, %.lr.ph78 ], [ %i.ch, %bb.ac ] ; 3 uses
  %i.u = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.02575)
  %i.v = and i32 %i.u, %i.s
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %bb.d
  br i1 %i.n, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %.preheader
  %i.w = sext i32 %.promoted to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Vec_StrPush.exit
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %Vec_StrPush.exit ] ; 7 uses
  %storemerge6773 = phi ptr [ %.promoted72, %.lr.ph ], [ %storemerge6774, %Vec_StrPush.exit ] ; 6 uses
  %spec.select.sink.i71 = phi i32 [ %.promoted69, %.lr.ph ], [ %spec.select.sink.i70, %Vec_StrPush.exit ] ; 3 uses
  %.02468 = phi i32 [ 0, %.lr.ph ], [ %i.am, %Vec_StrPush.exit ] ; 2 uses
  %i.x = shl nuw i32 1, %.02468
  %i.y = and i32 %i.x, %.02575
  %.not26 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not26, i8 48, i8 49
  %i.aa = trunc nsw i64 %indvars.iv to i32
  %i.ab = icmp eq i32 %spec.select.sink.i71, %i.aa
  br i1 %i.ab, label %bb.f, label %Vec_StrPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp slt i64 %indvars.iv, 16
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge6773, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge6773, i64 noundef 16) #24
  br label %Vec_StrPush.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrPush.exit

bb.j:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ag = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 4 uses
  %i.ah = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ah
  br i1 %.not.i9.i, label %bb.k, label %Vec_StrPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge6773, null
  %i.ai = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %storemerge6773, i64 noundef %i.ai) #24
  br label %Vec_StrPush.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #25
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %bb.e, %bb.j
  %storemerge6774 = phi ptr [ %storemerge6773, %bb.e ], [ %storemerge6773, %bb.j ], [ %i.ae, %bb.i ], [ %i.ad, %bb.h ], [ %i.aj, %bb.l ], [ %i.ak, %bb.m ] ; 4 uses
  %spec.select.sink.i70 = phi i32 [ %spec.select.sink.i71, %bb.e ], [ %spec.select.sink.i71, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %storemerge6774, i64 %indvars.iv
  store i8 %i.z, ptr %i.al, align 1, !tbaa !8
  %i.am = add nuw nsw i32 %.02468, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %0
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !102

._crit_edge:                                      ; preds = %Vec_StrPush.exit
  %i.an = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.an, ptr %i.p, align 4, !tbaa !97
  store i32 %spec.select.sink.i70, ptr %i.o, align 8
  store ptr %storemerge6774, ptr %i.r, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %.preheader
  %i.ao = phi ptr [ %storemerge6774, %._crit_edge ], [ %.promoted72, %.preheader ] ; 6 uses
  %i.ap = phi i32 [ %spec.select.sink.i70, %._crit_edge ], [ %.promoted69, %.preheader ] ; 5 uses
  %i.aq = phi i32 [ %i.an, %._crit_edge ], [ %.promoted, %.preheader ] ; 10 uses
  %i.ar = icmp eq i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.o, label %Vec_StrPush.exit34

bb.o:                                             ; preds = %bb.n
  %i.as = icmp slt i32 %i.ap, 16
  br i1 %i.as, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i32 = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i30

bb.r:                                             ; preds = %bb.p
  %i.au = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i30

bb.s:                                             ; preds = %bb.o
  %i.av = icmp samesign ult i32 %i.ap, 1073741823
  %i.aw = shl nuw nsw i32 %i.ap, 1
  %spec.select.i27 = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 4 uses
  %.not.i9.i28 = icmp samesign ult i32 %i.ap, %spec.select.i27
  br i1 %.not.i9.i28, label %bb.t, label %Vec_StrPush.exit34

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i29 = icmp eq ptr %i.ao, null
  %i.ax = zext nneg i32 %spec.select.i27 to i64   ; 2 uses
  br i1 %.not9.i10.i29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.ax) #24
  br label %Vec_StrGrow.exit11.sink.split.i30

bb.v:                                             ; preds = %bb.t
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ax) #25
  br label %Vec_StrGrow.exit11.sink.split.i30

Vec_StrGrow.exit11.sink.split.i30:                ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge64 = phi ptr [ %i.au, %bb.r ], [ %i.at, %bb.q ], [ %i.ay, %bb.u ], [ %i.az, %bb.v ] ; 2 uses
  %spec.select.sink.i31 = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i27, %bb.u ], [ %spec.select.i27, %bb.v ]
  store ptr %storemerge64, ptr %i.r, align 8, !tbaa !101
  store i32 %spec.select.sink.i31, ptr %i.o, align 8, !tbaa !100
  br label %Vec_StrPush.exit34

Vec_StrPush.exit34:                               ; preds = %bb.n, %bb.s, %Vec_StrGrow.exit11.sink.split.i30
  %i.ba = phi ptr [ %i.ao, %bb.n ], [ %i.ao, %bb.s ], [ %storemerge64, %Vec_StrGrow.exit11.sink.split.i30 ] ; 2 uses
  %i.bb = add nsw i32 %i.aq, 1                    ; 7 uses
  store i32 %i.bb, ptr %i.p, align 4, !tbaa !97
  %i.bc = sext i32 %i.aq to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  store i8 32, ptr %i.bd, align 1, !tbaa !8
  %i.be = load i32, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %i.bf = icmp eq i32 %i.bb, %i.be
  br i1 %i.bf, label %bb.w, label %Vec_StrPush.exit42

bb.w:                                             ; preds = %Vec_StrPush.exit34
  %i.bg = icmp slt i32 %i.aq, 15
  br i1 %i.bg, label %Vec_StrGrow.exit11.sink.split.i38, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = icmp samesign ult i32 %i.aq, 1073741822
  %i.bi = shl nuw nsw i32 %i.bb, 1
  %spec.select.i35 = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 3 uses
  %.not.i9.i36 = icmp samesign ult i32 %i.bb, %spec.select.i35
  br i1 %.not.i9.i36, label %bb.y, label %Vec_StrPush.exit42.thread

Vec_StrPush.exit42.thread:                        ; preds = %bb.x
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !101 ; 2 uses
  %i.bk = add nuw nsw i32 %i.aq, 2
  %i.bl = zext nneg i32 %i.bb to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  store i8 49, ptr %i.bm, align 1, !tbaa !8
  br label %Vec_StrPush.exit50

bb.y:                                             ; preds = %bb.x
  %i.bn = zext nneg i32 %spec.select.i35 to i64
  br label %Vec_StrGrow.exit11.sink.split.i38

Vec_StrGrow.exit11.sink.split.i38:                ; preds = %bb.w, %bb.y
  %.sink = phi i64 [ %i.bn, %bb.y ], [ 16, %bb.w ]
  %spec.select.sink.i39 = phi i32 [ %spec.select.i35, %bb.y ], [ 16, %bb.w ] ; 2 uses
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef %.sink) #24
  store ptr %i.bo, ptr %i.r, align 8, !tbaa !101
  store i32 %spec.select.sink.i39, ptr %i.o, align 8, !tbaa !100
  br label %Vec_StrPush.exit42

Vec_StrPush.exit42:                               ; preds = %Vec_StrPush.exit34, %Vec_StrGrow.exit11.sink.split.i38
  %i.bp = phi i32 [ %i.be, %Vec_StrPush.exit34 ], [ %spec.select.sink.i39, %Vec_StrGrow.exit11.sink.split.i38 ] ; 5 uses
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  %i.br = add nsw i32 %i.aq, 2                    ; 4 uses
  %i.bs = sext i32 %i.bb to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %i.bs
  store i8 49, ptr %i.bt, align 1, !tbaa !8
  %i.bu = icmp eq i32 %i.br, %i.bp
  br i1 %i.bu, label %bb.z, label %Vec_StrPush.exit50

bb.z:                                             ; preds = %Vec_StrPush.exit42
  %i.bv = icmp slt i32 %i.aq, 14
  br i1 %i.bv, label %Vec_StrGrow.exit11.sink.split.i46, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = icmp samesign ult i32 %i.aq, 1073741821
  %i.bx = shl nuw nsw i32 %i.bp, 1
  %spec.select.i43 = select i1 %i.bw, i32 %i.bx, i32 2147483647 ; 3 uses
  %.not.i9.i44 = icmp samesign ult i32 %i.bp, %spec.select.i43
  br i1 %.not.i9.i44, label %bb.ab, label %Vec_StrPush.exit50

bb.ab:                                            ; preds = %bb.aa
  %i.by = zext nneg i32 %spec.select.i43 to i64
  br label %Vec_StrGrow.exit11.sink.split.i46

Vec_StrGrow.exit11.sink.split.i46:                ; preds = %bb.z, %bb.ab
  %.sink112 = phi i64 [ %i.by, %bb.ab ], [ 16, %bb.z ]
  %spec.select.sink.i47 = phi i32 [ %spec.select.i43, %bb.ab ], [ 16, %bb.z ] ; 2 uses
  %i.bz = tail call ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef %.sink112) #24 ; 2 uses
  store ptr %i.bz, ptr %i.r, align 8, !tbaa !101
  store i32 %spec.select.sink.i47, ptr %i.o, align 8, !tbaa !100
  br label %Vec_StrPush.exit50

Vec_StrPush.exit50:                               ; preds = %Vec_StrPush.exit42.thread, %Vec_StrPush.exit42, %bb.aa, %Vec_StrGrow.exit11.sink.split.i46
  %i.ca = phi i32 [ %i.br, %Vec_StrPush.exit42 ], [ %i.br, %bb.aa ], [ %i.br, %Vec_StrGrow.exit11.sink.split.i46 ], [ %i.bk, %Vec_StrPush.exit42.thread ]
  %i.cb = phi i32 [ %i.bp, %Vec_StrPush.exit42 ], [ %i.bp, %bb.aa ], [ %spec.select.sink.i47, %Vec_StrGrow.exit11.sink.split.i46 ], [ %i.bb, %Vec_StrPush.exit42.thread ] ; 2 uses
  %i.cc = phi ptr [ %i.bq, %Vec_StrPush.exit42 ], [ %i.bq, %bb.aa ], [ %i.bz, %Vec_StrGrow.exit11.sink.split.i46 ], [ %i.bj, %Vec_StrPush.exit42.thread ] ; 2 uses
  %i.cd = add nsw i32 %i.aq, 3                    ; 2 uses
  store i32 %i.cd, ptr %i.p, align 4, !tbaa !97
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 %i.ce
  store i8 10, ptr %i.cf, align 1, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.d, %Vec_StrPush.exit50
  %i.cg = phi i32 [ %i.t, %bb.d ], [ %i.cb, %Vec_StrPush.exit50 ] ; 6 uses
  %.promoted7294 = phi ptr [ %.promoted72, %bb.d ], [ %i.cc, %Vec_StrPush.exit50 ] ; 7 uses
  %.promoted6991 = phi i32 [ %.promoted69, %bb.d ], [ %i.cb, %Vec_StrPush.exit50 ]
  %.promoted89 = phi i32 [ %.promoted, %bb.d ], [ %i.cd, %Vec_StrPush.exit50 ] ; 5 uses
  %i.ch = add nuw nsw i32 %.02575, 1              ; 2 uses
  %exitcond86.not = icmp eq i32 %i.ch, %smax
  br i1 %exitcond86.not, label %._crit_edge79, label %bb.d, !llvm.loop !103

._crit_edge79:                                    ; preds = %bb.ac
  %i.ci = icmp eq i32 %.promoted89, %i.cg
  br i1 %i.ci, label %bb.ad, label %Vec_StrPush.exit58

bb.ad:                                            ; preds = %._crit_edge79
  %i.cj = icmp slt i32 %i.cg, 16
  br i1 %i.cj, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.not9.i.i56 = icmp eq ptr %.promoted7294, null
  br i1 %.not9.i.i56, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %.promoted7294, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i54

bb.ag:                                            ; preds = %bb.ae
  %i.cl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i54

end_hunk_1
