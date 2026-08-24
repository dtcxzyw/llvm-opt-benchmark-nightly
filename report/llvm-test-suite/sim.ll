Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@findmax:bb.a
  %spec.select.1 = select i1 %i.o, i32 %i.p, i32 %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.k) ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !39

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre17, %.lr.ph ], [ %i.q, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.014.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %indvars.iv.epil.init
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = icmp sgt i32 %i.t, %.epil.init
  %i.v = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.u, i32 %i.v, i32 %.014.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ] ; 2 uses
  %i.w = zext nneg i32 %.0.lcssa to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34   ; 3 uses
  %i.z = add nsw i32 %i.a, -1                     ; 3 uses
  store i32 %i.z, ptr @numnode, align 4, !tbaa !4
  %.not = icmp eq i32 %.0.lcssa, %i.z
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.pre18, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !34
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ad = load ptr, ptr %.pre18, align 8, !tbaa !34 ; 2 uses
  store ptr %i.ad, ptr @most, align 8, !tbaa !34
  %i.ae = load ptr, ptr @low, align 8, !tbaa !34
  %i.af = icmp eq ptr %i.ae, %i.y
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.ad, ptr @low, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr %i.y
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @no_cross() local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @numnode, align 4, !tbaa !4 ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @LIST, align 8, !tbaa !32
  %i.d = load i32, ptr @mm, align 4, !tbaa !4
  %i.e = load i32, ptr @nn, align 4
  %i.f = load i32, ptr @m1, align 4
  %i.g = add nsw i32 %i.f, -1
  %i.h = load i32, ptr @n1, align 4
  %i.i = add nsw i32 %i.h, -1
  %i.j = load i32, ptr @rl, align 4
  %i.k = load i32, ptr @cl, align 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 3 uses
  %.not = icmp sgt i32 %i.o, %i.d
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41   ; 3 uses
  %.not19 = icmp sgt i32 %i.q, %i.e
  br i1 %.not19, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %.not20 = icmp slt i32 %i.s, %i.g
  br i1 %.not20, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %.not21 = icmp slt i32 %i.u, %i.i
  br i1 %.not21, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i32 %i.o, %i.j                  ; 2 uses
  %i.w = icmp slt i32 %i.q, %i.k                  ; 2 uses
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.o, ptr @rl, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.q, ptr @cl, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i1 true, ptr @flag, align 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !70

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.k
  %.025 = phi i32 [ %i.x, %bb.k ], [ 0, %bb.a ], [ %i.a, %bb.l ]
  %i.y = icmp eq i32 %.025, %i.a
  %. = zext i1 %i.y to i32
  ret i32 %.
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph405, label %tailrecurse._crit_edge

.lr.ph405:                                        ; preds = %bb.a
  %i.b = sub nsw i32 0, %5
  br label %bb.f

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.tr313.lcssa = phi i32 [ %2, %bb.a ], [ %.tr313.be, %tailrecurse.backedge ] ; 6 uses
  %ret.tr.lcssa = phi i32 [ poison, %bb.a ], [ %current.ret.tr, %tailrecurse.backedge ]
  %i.c = icmp sgt i32 %.tr313.lcssa, 0            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.d = load i32, ptr @I, align 4, !tbaa !4
  %i.e = add nsw i32 %i.d, %.tr313.lcssa
  store i32 %i.e, ptr @I, align 4, !tbaa !4
  %i.f = load i32, ptr @al_len, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, %.tr313.lcssa
  store i32 %i.g, ptr @al_len, align 4, !tbaa !4
  %i.h = load i32, ptr @last, align 4, !tbaa !4
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @sapp, align 8, !tbaa !21
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sub nsw i32 %i.l, %.tr313.lcssa          ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = sub nsw i32 0, %.tr313.lcssa             ; 2 uses
  %i.o = load ptr, ptr @sapp, align 8, !tbaa !21  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.p, ptr @sapp, align 8, !tbaa !21
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink501 = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  store i32 %.sink501, ptr @last, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %tailrecurse._crit_edge
  %i.q = load i32, ptr @q, align 4
  %i.r = load i32, ptr @r, align 4
  %i.s = mul nsw i32 %i.r, %.tr313.lcssa
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = select i1 %i.c, i32 %i.t, i32 0
  %i.v = sub nsw i32 0, %i.u
  br label %.thread303

bb.f:                                             ; preds = %.lr.ph405, %tailrecurse.backedge
  %ret.known.tr403 = phi i1 [ false, %.lr.ph405 ], [ true, %tailrecurse.backedge ] ; 7 uses
  %ret.tr402 = phi i32 [ poison, %.lr.ph405 ], [ %current.ret.tr, %tailrecurse.backedge ] ; 7 uses
  %.tr315401 = phi i32 [ %4, %.lr.ph405 ], [ %.tr315.be, %tailrecurse.backedge ] ; 4 uses
  %.tr314400 = phi i32 [ %3, %.lr.ph405 ], [ %.tr314.be, %tailrecurse.backedge ] ; 24 uses
  %.tr313399 = phi i32 [ %2, %.lr.ph405 ], [ %.tr313.be, %tailrecurse.backedge ] ; 6 uses
  %.tr312398 = phi ptr [ %1, %.lr.ph405 ], [ %.tr312.be, %tailrecurse.backedge ] ; 7 uses
  %.tr397 = phi ptr [ %0, %.lr.ph405 ], [ %.tr.be, %tailrecurse.backedge ] ; 7 uses
  %i.w = icmp slt i32 %.tr313399, 2
  br i1 %i.w, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %.not285 = icmp eq i32 %.tr313399, 1
  br i1 %.not285, label %.lr.ph414, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr @J, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, %.tr314400
  store i32 %i.y, ptr @J, align 4, !tbaa !4
  %i.z = load i32, ptr @al_len, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, %.tr314400
  store i32 %i.aa, ptr @al_len, align 4, !tbaa !4
  %i.ab = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = load ptr, ptr @sapp, align 8, !tbaa !21 ; 4 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  store i32 %.tr314400, ptr %i.ae, align 4, !tbaa !4
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %.tr314400, ptr %i.ad, align 4, !tbaa !4
  store i32 %.tr314400, ptr @last, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %.sink, ptr @sapp, align 8, !tbaa !21
  %i.af = load i32, ptr @q, align 4, !tbaa !4
  %i.ag = load i32, ptr @r, align 4, !tbaa !4
  %i.ah = mul nsw i32 %i.ag, %.tr314400
  %i.ai = add nsw i32 %i.af, %i.ah
  %i.aj = sub nsw i32 0, %i.ai
  br label %.thread303

.lr.ph414:                                        ; preds = %bb.g
  %i.ak = load i32, ptr @r, align 4, !tbaa !4     ; 4 uses
  %i.al = load i32, ptr @q, align 4, !tbaa !4     ; 3 uses
  %i.am = load ptr, ptr @v, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.tr397, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [1024 x i8], ptr %i.am, i64 %i.ap
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.tr315401, i32 %5)
  %i.ar = add nsw i32 %spec.select, %i.ak
  %i.as = mul nsw i32 %i.ak, %.tr314400
  %i.at = add nsw i32 %i.al, %i.as
  %i.au = add nsw i32 %i.ar, %i.at
  %i.av = sub nsw i32 0, %i.au
  %i.aw = load ptr, ptr @row, align 8, !tbaa !23
  %i.ax = load i32, ptr @I, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr @J, align 4
  %i.bb = zext nneg i32 %.tr314400 to i64
  %i.bc = add nuw i32 %.tr314400, 1
  %wide.trip.count471 = zext i32 %i.bc to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph414, %.thread
  %indvars.iv464 = phi i64 [ 1, %.lr.ph414 ], [ %indvars.iv.next465, %.thread ] ; 7 uses
  %.0228411 = phi i32 [ %i.av, %.lr.ph414 ], [ %.1229, %.thread ] ; 3 uses
  %.0238410 = phi i32 [ 0, %.lr.ph414 ], [ %.1239, %.thread ] ; 2 uses
  %i.bd = trunc i64 %indvars.iv464 to i32
  %i.be = add i32 %i.ba, %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn = phi ptr [ %i.az, %bb.l ], [ %storemerge287, %bb.n ]
  %storemerge287.in = getelementptr i8, ptr %.pn, i64 8
  %storemerge287 = load ptr, ptr %storemerge287.in, align 8, !tbaa !26 ; 4 uses
  store ptr %storemerge287, ptr @z, align 8, !tbaa !26
  %.not288 = icmp eq ptr %storemerge287, null
  br i1 %.not288, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %storemerge287, align 8, !tbaa !28
  %i.bg = icmp eq i32 %i.bf, %i.be
  br i1 %i.bg, label %.thread, label %bb.m, !llvm.loop !76

bb.o:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr312398, i64 %indvars.iv464
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = icmp samesign ult i64 %indvars.iv464, 2
  %i.bn = trunc i64 %indvars.iv464 to i32
  %i.bo = sub i32 1, %i.bn
  %.neg421 = mul i32 %i.bo, %i.ak
  %.neg422 = sub i32 %.neg421, %i.al
  %.neg423 = select i1 %i.bm, i32 0, i32 %.neg422
  %i.bp = sub nsw i64 %i.bb, %indvars.iv464       ; 2 uses
  %.inv = icmp sgt i64 %i.bp, 0
  %i.bq = trunc i64 %i.bp to i32
  %i.br = mul i32 %i.ak, %i.bq
  %i.bs = add i32 %i.br, %i.al
  %i.bt = select i1 %.inv, i32 %i.bs, i32 0
  %.neg320 = sub i32 %.neg423, %i.bt
  %i.bu = add i32 %.neg320, %i.bl                 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, %.0228411
  %i.bw = trunc nuw nsw i64 %indvars.iv464 to i32
  %spec.select294 = select i1 %i.bv, i32 %i.bw, i32 %.0238410
  %spec.select295 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %.0228411)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %.1239 = phi i32 [ %spec.select294, %bb.o ], [ %.0238410, %bb.n ] ; 7 uses
  %.1229 = phi i32 [ %spec.select295, %bb.o ], [ %.0228411, %bb.n ] ; 6 uses
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next465, %wide.trip.count471
  br i1 %exitcond472.not, label %bb.p, label %bb.l, !llvm.loop !77

bb.p:                                             ; preds = %.thread
  %i.bx = icmp eq i32 %.1239, 0
  br i1 %i.bx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = load i32, ptr @J, align 4, !tbaa !4
  %i.bz = add nsw i32 %i.by, %.tr314400
  store i32 %i.bz, ptr @J, align 4, !tbaa !4
  %i.ca = load i32, ptr @al_len, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, %.tr314400           ; 3 uses
  store i32 %i.cb, ptr @al_len, align 4, !tbaa !4
  %i.cc = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = load ptr, ptr @sapp, align 8, !tbaa !21 ; 6 uses
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %.tr314400, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cg, ptr @sapp, align 8, !tbaa !21
  %i.ch = load i32, ptr @I, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr @I, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.cb, 1
  store i32 %i.cj, ptr @al_len, align 4, !tbaa !4
  %i.ck = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !4
  store i32 %i.ck, ptr @last, align 4, !tbaa !4
  br label %.thread303

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %.tr314400, ptr %i.ce, align 4, !tbaa !4
  %i.cm = load i32, ptr @I, align 4, !tbaa !4
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr @I, align 4, !tbaa !4
  %i.co = add nsw i32 %i.cb, 1
  store i32 %i.co, ptr @al_len, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cp, ptr @sapp, align 8, !tbaa !21
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  store i32 -1, ptr @last, align 4, !tbaa !4
  br label %.thread303

bb.t:                                             ; preds = %bb.p
  %i.cq = icmp sgt i32 %.1239, 1
  br i1 %i.cq, label %bb.u, label %._crit_edge477

._crit_edge477:                                   ; preds = %bb.t
  %.pre478 = load ptr, ptr @sapp, align 8, !tbaa !21
  %.pre479 = load i32, ptr @al_len, align 4, !tbaa !4
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cr = add nsw i32 %.1239, -1                  ; 4 uses
  %i.cs = load i32, ptr @J, align 4, !tbaa !4
  %i.ct = add nsw i32 %i.cs, %i.cr
  store i32 %i.ct, ptr @J, align 4, !tbaa !4
  %i.cu = load i32, ptr @al_len, align 4, !tbaa !4
  %i.cv = add nsw i32 %i.cu, %i.cr                ; 2 uses
  %i.cw = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  %i.cy = load ptr, ptr @sapp, align 8, !tbaa !21 ; 5 uses
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4
  store i32 %i.cr, ptr %i.cz, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cw, ptr %i.cy, align 4, !tbaa !4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cr, ptr %i.cy, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge477, %bb.v, %bb.w
  %i.dc = phi i32 [ %.pre479, %._crit_edge477 ], [ %i.cv, %bb.v ], [ %i.cv, %bb.w ]
  %i.dd = phi ptr [ %.pre478, %._crit_edge477 ], [ %i.da, %bb.v ], [ %i.db, %bb.w ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 3 uses
  store ptr %i.de, ptr @sapp, align 8, !tbaa !21
  store i32 0, ptr %i.dd, align 4, !tbaa !4
  store i32 0, ptr @last, align 4, !tbaa !4
  %i.df = add nsw i32 %i.dc, 1
  store i32 %i.df, ptr @al_len, align 4, !tbaa !4
  %i.dg = load i8, ptr %i.an, align 1, !tbaa !14
  %i.dh = sext i32 %.1239 to i64
  %i.di = getelementptr inbounds i8, ptr %.tr312398, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = icmp eq i8 %i.dg, %i.dj
  %no_mat.no_mis = select i1 %i.dk, ptr @no_mat, ptr @no_mis ; 2 uses
  %i.dl = load i32, ptr %no_mat.no_mis, align 4, !tbaa !4
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %no_mat.no_mis, align 4, !tbaa !4
  %i.dn = load i32, ptr @I, align 4, !tbaa !4
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr @I, align 4, !tbaa !4
  %i.dp = load i32, ptr @J, align 4, !tbaa !4
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr @J, align 4, !tbaa !4
  %i.dr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  store ptr %i.dr, ptr @z, align 8, !tbaa !26
  %6 = load i32, ptr @J, align 4, !tbaa !4        ; 2 uses
  store i32 %6, ptr %i.dr, align 8, !tbaa !28
  %i.ds = load ptr, ptr @row, align 8, !tbaa !23
  %7 = load i32, ptr @I, align 4, !tbaa !4
  %i.dt = sext i32 %7 to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !30
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !26
  %i.dx = icmp slt i32 %.1239, %.tr314400
  br i1 %i.dx, label %bb.y, label %.thread303

bb.y:                                             ; preds = %bb.x
  %i.dy = sub nsw i32 %.tr314400, %.1239          ; 5 uses
  %i.dz = add nsw i32 %6, %i.dy
  store i32 %i.dz, ptr @J, align 4, !tbaa !4
  %8 = load i32, ptr @al_len, align 4, !tbaa !4
  %9 = add nsw i32 %8, %i.dy
  store i32 %9, ptr @al_len, align 4, !tbaa !4
  %10 = load i32, ptr @last, align 4, !tbaa !4    ; 2 uses
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %bb.y
  store i32 %i.dy, ptr %i.dd, align 4, !tbaa !4
  %13 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %13, ptr @sapp, align 8, !tbaa !21
  store i32 %10, ptr %i.de, align 4, !tbaa !4
  br label %.thread303

14:                                               ; preds = %bb.y
  %15 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %15, ptr @sapp, align 8, !tbaa !21
  store i32 %i.dy, ptr %i.de, align 4, !tbaa !4
  store i32 %i.dy, ptr @last, align 4, !tbaa !4
  br label %.thread303

.lr.ph:                                           ; preds = %bb.f
  %i.ea = lshr i32 %.tr313399, 1                  ; 8 uses
  %i.eb = load ptr, ptr @CC, align 8, !tbaa !21   ; 6 uses
  store i32 0, ptr %i.eb, align 4, !tbaa !4
  %i.ec = load i32, ptr @q, align 4, !tbaa !4     ; 11 uses
  %i.ed = sub nsw i32 0, %i.ec                    ; 4 uses
  %i.ee = load i32, ptr @r, align 4, !tbaa !4     ; 3 uses
  %i.ef = load ptr, ptr @DD, align 8, !tbaa !21   ; 6 uses
  %i.eg = add nuw i32 %.tr314400, 1
  %wide.trip.count = zext i32 %i.eg to i64
  %i.eh = zext nneg i32 %.tr314400 to i64         ; 2 uses
  %min.iters.check523 = icmp ult i32 %.tr314400, 8
  br i1 %min.iters.check523, label %scalar.ph522.preheader, label %vector.ph524

vector.ph524:                                     ; preds = %.lr.ph
  %i.ei = sub i32 0, %i.ee                        ; 2 uses
  %n.vec525 = and i64 %i.eh, 2147483640           ; 4 uses
  %broadcast.splatinsert526 = insertelement <4 x i32> poison, i32 %i.ei, i64 0
  %broadcast.splat527 = shufflevector <4 x i32> %broadcast.splatinsert526, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ej = or disjoint i64 %n.vec525, 1
  %i.ek = trunc nuw nsw i64 %n.vec525 to i32
  %i.el = mul i32 %i.ek, %i.ei
  %i.em = sub i32 %i.el, %i.ec
  %i.en = shl <4 x i32> %broadcast.splat527, splat (i32 2) ; 3 uses
  %broadcast.splatinsert528 = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat529 = shufflevector <4 x i32> %broadcast.splatinsert528, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert532 = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat533 = shufflevector <4 x i32> %broadcast.splatinsert532, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eo = mul nsw <4 x i32> %broadcast.splat527, <i32 0, i32 1, i32 2, i32 3>
  %induction534 = add nsw <4 x i32> %broadcast.splat533, %i.eo
  %invariant.op559.a = add <4 x i32> %i.en, %i.en
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph524
  %index536 = phi i64 [ 0, %vector.ph524 ], [ %index.next539, %vector.body535 ] ; 2 uses
  %vec.ind537 = phi <4 x i32> [ %induction534, %vector.ph524 ], [ %vec.ind.next540.reass, %vector.body535 ] ; 3 uses
  %step.add538 = add nsw <4 x i32> %vec.ind537, %i.en
  %i.ep = or disjoint i64 %index536, 1            ; 2 uses
  %i.eq = sub nsw <4 x i32> %vec.ind537, %broadcast.splat531 ; 2 uses
  %i.er = sub nsw <4 x i32> %step.add538, %broadcast.splat531 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ep ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %i.eq, ptr %i.es, align 4, !tbaa !4
  store <4 x i32> %i.er, ptr %i.et, align 4, !tbaa !4
  %i.eu = sub nsw <4 x i32> %i.eq, %broadcast.splat529
  %i.ev = sub nsw <4 x i32> %i.er, %broadcast.splat529
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ep ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <4 x i32> %i.eu, ptr %i.ew, align 4, !tbaa !4
  store <4 x i32> %i.ev, ptr %i.ex, align 4, !tbaa !4
  %index.next539 = add nuw i64 %index536, 8       ; 2 uses
  %vec.ind.next540.reass = add <4 x i32> %vec.ind537, %invariant.op559.a
  %i.ey = icmp eq i64 %index.next539, %n.vec525
  br i1 %i.ey, label %middle.block541, label %vector.body535, !llvm.loop !78

middle.block541:                                  ; preds = %vector.body535
  %cmp.n542 = icmp eq i64 %n.vec525, %i.eh
  br i1 %cmp.n542, label %.lr.ph352, label %scalar.ph522.preheader

scalar.ph522.preheader:                           ; preds = %.lr.ph, %middle.block541
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.ej, %middle.block541 ]
  %.0206332.ph = phi i32 [ %i.ed, %.lr.ph ], [ %i.em, %middle.block541 ]
  br label %scalar.ph522

scalar.ph522:                                     ; preds = %scalar.ph522.preheader, %scalar.ph522
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph522 ], [ %indvars.iv.ph, %scalar.ph522.preheader ] ; 3 uses
  %.0206332 = phi i32 [ %i.ez, %scalar.ph522 ], [ %.0206332.ph, %scalar.ph522.preheader ]
  %i.ez = sub nsw i32 %.0206332, %i.ee            ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !4
  %i.fb = sub nsw i32 %i.ez, %i.ec
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph352, label %scalar.ph522, !llvm.loop !79

.lr.ph352:                                        ; preds = %scalar.ph522, %middle.block541
  %i.fd = sub nsw i32 0, %.tr315401
  %i.fe = load i32, ptr @r, align 4, !tbaa !4     ; 3 uses
  %i.ff = load ptr, ptr @v, align 8, !tbaa !21
  %i.fg = load i32, ptr @qr, align 4              ; 2 uses
  %i.fh = load ptr, ptr @row, align 8
  %i.fi = load i32, ptr @I, align 4
  %i.fj = load i32, ptr @J, align 4
  %i.fk = add nuw i32 %.tr314400, 1
  %i.fl = sext i32 %i.fi to i64
  %i.fm = add nuw nsw i32 %i.ea, 1
  %wide.trip.count444 = zext nneg i32 %i.fm to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.fh, i64 %i.fl
  %wide.trip.count439 = zext i32 %i.fk to i64
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.ac, %.lr.ph352
  %indvars.iv441 = phi i64 [ 1, %.lr.ph352 ], [ %indvars.iv.next442, %bb.ac ] ; 3 uses
  %i.fn = phi i32 [ 0, %.lr.ph352 ], [ %i.fo, %bb.ac ]
  %.1350 = phi i32 [ %i.fd, %.lr.ph352 ], [ %i.fo, %bb.ac ]
  %i.fo = sub nsw i32 %.1350, %i.fe               ; 7 uses
  store i32 %i.fo, ptr %i.eb, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr397, i64 %indvars.iv441
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !14
  %i.fr = sext i8 %i.fq to i64
  %i.fs = getelementptr inbounds [1024 x i8], ptr %i.ff, i64 %i.fr
  %i.ft = sub nsw i32 %i.fo, %i.ec
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv441
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph346, %.thread298
  %indvars.iv435 = phi i64 [ 1, %.lr.ph346 ], [ %indvars.iv.next436, %.thread298 ] ; 5 uses
  %.0207344 = phi i32 [ %i.fn, %.lr.ph346 ], [ %i.fx, %.thread298 ]
  %.0211343 = phi i32 [ %i.ft, %.lr.ph346 ], [ %spec.select290, %.thread298 ]
  %.0215342 = phi i32 [ %i.fo, %.lr.ph346 ], [ %.3218, %.thread298 ]
  %i.fu = sub nsw i32 %.0215342, %i.fg
  %i.fv = sub nsw i32 %.0211343, %i.fe
  %spec.select290 = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 %i.fv) ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv435 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4  ; 2 uses
  %i.fy = sub nsw i32 %i.fx, %i.fg
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv435 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = sub nsw i32 %i.ga, %i.fe
  %.0209 = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.gb) ; 3 uses
  %storemerge283333 = load ptr, ptr %gep, align 8, !tbaa !26 ; 3 uses
  store ptr %storemerge283333, ptr @z, align 8, !tbaa !26
  %.not284334 = icmp eq ptr %storemerge283333, null
  br i1 %.not284334, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.z
  %i.gc = trunc i64 %indvars.iv435 to i32
  %i.gd = add i32 %i.fj, %i.gc
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge283335, i64 8
  %storemerge283 = load ptr, ptr %i.ge, align 8, !tbaa !26 ; 3 uses
  store ptr %storemerge283, ptr @z, align 8, !tbaa !26
  %.not284 = icmp eq ptr %storemerge283, null
  br i1 %.not284, label %._crit_edge338, label %bb.ab, !llvm.loop !80

bb.ab:                                            ; preds = %.lr.ph337, %bb.aa
  %storemerge283335 = phi ptr [ %storemerge283333, %.lr.ph337 ], [ %storemerge283, %bb.aa ] ; 2 uses
  %i.gf = load i32, ptr %storemerge283335, align 8, !tbaa !28
  %i.gg = icmp eq i32 %i.gf, %i.gd
  br i1 %i.gg, label %.thread298, label %bb.aa

._crit_edge338:                                   ; preds = %bb.aa, %bb.z
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr312398, i64 %indvars.iv435
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !14
  %i.gj = sext i8 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.gm = add nsw i32 %i.gl, %.0207344
  %i.gn = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 %.0209)
  br label %.thread298

.thread298:                                       ; preds = %bb.ab, %._crit_edge338
  %.1216 = phi i32 [ %i.gn, %._crit_edge338 ], [ %.0209, %bb.ab ]
  %.3218 = tail call i32 @llvm.smax.i32(i32 %.1216, i32 %spec.select290) ; 2 uses
  store i32 %.3218, ptr %i.fw, align 4, !tbaa !4
  store i32 %.0209, ptr %i.fz, align 4, !tbaa !4
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next436, %wide.trip.count439
  br i1 %exitcond440.not, label %bb.ac, label %bb.z, !llvm.loop !81

bb.ac:                                            ; preds = %.thread298
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next442, %wide.trip.count444
  br i1 %exitcond445.not, label %.lr.ph357, label %.lr.ph346, !llvm.loop !82

.lr.ph357:                                        ; preds = %bb.ac
  store i32 %i.fo, ptr %i.ef, align 4, !tbaa !4
  %i.go = load ptr, ptr @RR, align 8, !tbaa !21   ; 6 uses
  %i.gp = zext nneg i32 %.tr314400 to i64         ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gp ; 4 uses
  store i32 0, ptr %i.gq, align 4, !tbaa !4
  %i.gr = add nsw i32 %.tr314400, -1              ; 3 uses
  %i.gs = load i32, ptr @r, align 4, !tbaa !4     ; 3 uses
  %i.gt = load ptr, ptr @SS, align 8, !tbaa !21   ; 2 uses
  %i.gu = zext nneg i32 %i.gr to i64              ; 3 uses
  %i.gv = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 0)
  %i.gw = xor i32 %i.gv, -1
  %i.gx = add i32 %.tr314400, %i.gw               ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.gx, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph357
  %i.ha = sub i32 0, %i.gs                        ; 2 uses
  %n.vec = and i64 %i.gz, 8589934584              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hb = sub nsw i64 %i.gu, %n.vec
  %i.hc = trunc i64 %n.vec to i32
end_hunk_0
begin_hunk_1_@diff:bb.a
  %.3376 = phi i32 [ %i.b, %.lr.ph379 ], [ %i.il, %.loopexit ]
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, -1 ; 2 uses
  %i.ik = load i32, ptr %i.gq, align 4, !tbaa !4
  %i.il = sub nsw i32 %.3376, %i.hz               ; 4 uses
  store i32 %i.il, ptr %i.gq, align 4, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %.tr397, i64 %indvars.iv452
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = sext i8 %i.in to i64
  %i.ip = getelementptr inbounds [1024 x i8], ptr %i.ia, i64 %i.io
  %i.iq = sub nsw i32 %i.il, %i.ec
  %gep500 = getelementptr [8 x i8], ptr %invariant.gep499, i64 %indvars.iv452
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph371, %.thread301
  %indvars.iv449 = phi i64 [ %i.ig, %.lr.ph371 ], [ %indvars.iv.next450, %.thread301 ] ; 5 uses
  %.1208369 = phi i32 [ %i.ik, %.lr.ph371 ], [ %i.iu, %.thread301 ]
  %.2213368 = phi i32 [ %i.iq, %.lr.ph371 ], [ %spec.select292, %.thread301 ]
  %.4367 = phi i32 [ %i.il, %.lr.ph371 ], [ %.7, %.thread301 ]
  %indvars451 = trunc i64 %indvars.iv449 to i32   ; 2 uses
  %i.ir = sub nsw i32 %.4367, %i.ib
  %i.is = sub nsw i32 %.2213368, %i.hz
  %spec.select292 = tail call i32 @llvm.smax.i32(i32 %i.ir, i32 %i.is) ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv449 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4  ; 2 uses
  %i.iv = sub nsw i32 %i.iu, %i.ib
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv449 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = sub nsw i32 %i.ix, %i.hz
  %.1210 = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 %i.iy) ; 3 uses
  %storemerge359 = load ptr, ptr %gep500, align 8, !tbaa !26 ; 3 uses
  store ptr %storemerge359, ptr @z, align 8, !tbaa !26
  %.not281360 = icmp eq ptr %storemerge359, null
  br i1 %.not281360, label %._crit_edge364, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.ad
  %.reass = add i32 %invariant.op, %indvars451
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge361, i64 8
  %storemerge = load ptr, ptr %i.iz, align 8, !tbaa !26 ; 3 uses
  store ptr %storemerge, ptr @z, align 8, !tbaa !26
  %.not281 = icmp eq ptr %storemerge, null
  br i1 %.not281, label %._crit_edge364, label %bb.af, !llvm.loop !86

bb.af:                                            ; preds = %.lr.ph363, %bb.ae
  %storemerge361 = phi ptr [ %storemerge359, %.lr.ph363 ], [ %storemerge, %bb.ae ] ; 2 uses
  %i.ja = load i32, ptr %storemerge361, align 8, !tbaa !28
  %i.jb = icmp eq i32 %i.ja, %.reass
  br i1 %i.jb, label %.thread301, label %bb.ae

._crit_edge364:                                   ; preds = %bb.ae, %bb.ad
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr312398, i64 %indvars.iv449
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !14
  %i.jf = sext i8 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = add nsw i32 %i.jh, %.1208369
  %i.jj = tail call i32 @llvm.smax.i32(i32 %i.ji, i32 %.1210)
  br label %.thread301

.thread301:                                       ; preds = %bb.af, %._crit_edge364
  %.5 = phi i32 [ %i.jj, %._crit_edge364 ], [ %.1210, %bb.af ]
  %.7 = tail call i32 @llvm.smax.i32(i32 %.5, i32 %spec.select292) ; 2 uses
  store i32 %.7, ptr %i.it, align 4, !tbaa !4
  store i32 %.1210, ptr %i.iw, align 4, !tbaa !4
  %indvars.iv.next450 = add nsw i64 %indvars.iv449, -1
  %i.jk = icmp sgt i32 %indvars451, 0
  br i1 %i.jk, label %bb.ad, label %.loopexit, !llvm.loop !87

.lr.ph386.preheader:                              ; preds = %.loopexit
  %i.jl = load i32, ptr %i.gq, align 4, !tbaa !4
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.gp
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !4
  %i.jn = load i32, ptr %i.go, align 4, !tbaa !4
  %i.jo = add nsw i32 %i.jn, %i.fo
  %i.jp = add nuw i32 %.tr314400, 1
  %wide.trip.count459 = zext i32 %i.jp to i64
  br label %.lr.ph386

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %bb.ak
  %indvars.iv455 = phi i64 [ 0, %.lr.ph386.preheader ], [ %indvars.iv.next456, %bb.ak ] ; 6 uses
  %.2230383 = phi i32 [ %i.jo, %.lr.ph386.preheader ], [ %.3231, %bb.ak ] ; 5 uses
  %.2240382 = phi i32 [ 0, %.lr.ph386.preheader ], [ %.3241, %bb.ak ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv455
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4  ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv455
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !4  ; 2 uses
  %i.ju = add nsw i32 %i.jt, %i.jr                ; 3 uses
  %.not279 = icmp slt i32 %i.ju, %.2230383
  br i1 %.not279, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph386
  %i.jv = icmp sgt i32 %i.ju, %.2230383
  br i1 %i.jv, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv455
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %.not280 = icmp eq i32 %i.jr, %i.jx
  br i1 %.not280, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv455
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !4
  %i.ka = icmp eq i32 %i.jt, %i.jz
  br i1 %i.ka, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.kb = trunc nuw nsw i64 %indvars.iv455 to i32
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph386, %bb.aj, %bb.ai, %bb.ah
  %.3241 = phi i32 [ %i.kb, %bb.aj ], [ %.2240382, %bb.ai ], [ %.2240382, %bb.ah ], [ %.2240382, %.lr.ph386 ] ; 2 uses
  %.3231 = phi i32 [ %i.ju, %bb.aj ], [ %.2230383, %bb.ai ], [ %.2230383, %bb.ah ], [ %.2230383, %.lr.ph386 ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count459
  br i1 %exitcond460.not, label %.lr.ph392, label %.lr.ph386, !llvm.loop !88

.lr.ph392:                                        ; preds = %bb.ak, %.lr.ph392
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %.lr.ph392 ], [ %i.gp, %bb.ak ] ; 4 uses
  %.4232390 = phi i32 [ %.5233, %.lr.ph392 ], [ %.3231, %bb.ak ] ; 2 uses
  %.0235389 = phi i32 [ %.1236, %.lr.ph392 ], [ 1, %bb.ak ]
  %.4242388 = phi i32 [ %.5243, %.lr.ph392 ], [ %.3241, %bb.ak ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv461
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv461
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.kg = add i32 %i.kd, %i.ec
  %i.kh = add i32 %i.kg, %i.kf                    ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, %.4232390           ; 2 uses
  %i.kj = trunc nuw i64 %indvars.iv461 to i32     ; 2 uses
  %.5243 = select i1 %i.ki, i32 %i.kj, i32 %.4242388 ; 5 uses
  %.1236 = select i1 %i.ki, i32 2, i32 %.0235389  ; 2 uses
  %.5233 = tail call i32 @llvm.smax.i32(i32 %i.kh, i32 %.4232390) ; 2 uses
  %indvars.iv.next462 = add nsw i64 %indvars.iv461, -1
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph392, label %._crit_edge393, !llvm.loop !89

._crit_edge393:                                   ; preds = %.lr.ph392
  %i.kl = icmp eq i32 %.1236, 1
  br i1 %i.kl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge393
  %i.km = tail call i32 @diff(ptr noundef %.tr397, ptr noundef %.tr312398, i32 noundef %i.ea, i32 noundef %.5243, i32 noundef %.tr315401, i32 noundef %i.ec) ; 0 uses
  %i.kn = zext nneg i32 %i.ea to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %.tr397, i64 %i.kn
  %i.kp = sub nsw i32 %.tr313399, %i.ea
  %i.kq = load i32, ptr @q, align 4, !tbaa !4
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.al, %bb.ap
  %.tr.be = phi ptr [ %i.ko, %bb.al ], [ %i.lh, %bb.ap ]
  %.tr313.be = phi i32 [ %i.kp, %bb.al ], [ %i.lj, %bb.ap ] ; 2 uses
  %.tr315.be = phi i32 [ %i.kq, %bb.al ], [ 0, %bb.ap ]
  %current.ret.tr = select i1 %ret.known.tr403, i32 %ret.tr402, i32 %.5233 ; 2 uses
  %.tr314.be = sub nsw i32 %.tr314400, %.5243     ; 2 uses
  %.pn419 = sext i32 %.5243 to i64
  %.tr312.be = getelementptr inbounds i8, ptr %.tr312398, i64 %.pn419
  %i.kr = icmp slt i32 %.tr314.be, 1
  br i1 %i.kr, label %tailrecurse._crit_edge, label %bb.f

bb.am:                                            ; preds = %._crit_edge393
  %i.ks = add nsw i32 %i.ea, -1
  %i.kt = tail call i32 @diff(ptr noundef %.tr397, ptr noundef %.tr312398, i32 noundef %i.ks, i32 noundef %.5243, i32 noundef %.tr315401, i32 noundef 0) ; 0 uses
  %i.ku = load i32, ptr @I, align 4, !tbaa !4
  %i.kv = add nsw i32 %i.ku, 2
  store i32 %i.kv, ptr @I, align 4, !tbaa !4
  %i.kw = load i32, ptr @al_len, align 4, !tbaa !4
  %i.kx = add nsw i32 %i.kw, 2
  store i32 %i.kx, ptr @al_len, align 4, !tbaa !4
  %i.ky = load i32, ptr @last, align 4, !tbaa !4
  %i.kz = icmp slt i32 %i.ky, 0
  %i.la = load ptr, ptr @sapp, align 8, !tbaa !21 ; 3 uses
  br i1 %i.kz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -4 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !4
  %i.ld = add nsw i32 %i.lc, -2                   ; 2 uses
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store ptr %i.le, ptr @sapp, align 8, !tbaa !21
  store i32 -2, ptr %i.la, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge289 = phi i32 [ -2, %bb.ao ], [ %i.ld, %bb.an ]
  store i32 %storemerge289, ptr @last, align 4, !tbaa !4
  %i.lf = zext nneg i32 %i.ea to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %.tr397, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.li = xor i32 %i.ea, -1
  %i.lj = add nsw i32 %.tr313399, %i.li
  br label %tailrecurse.backedge

.thread303:                                       ; preds = %bb.s, %bb.r, %12, %14, %bb.x, %bb.k, %bb.e
  %ret.tr324 = phi i32 [ %ret.tr.lcssa, %bb.e ], [ %ret.tr402, %bb.k ], [ %ret.tr402, %bb.s ], [ %ret.tr402, %bb.r ], [ %ret.tr402, %12 ], [ %ret.tr402, %14 ], [ %ret.tr402, %bb.x ]
  %ret.known.tr322 = phi i1 [ %i.a, %bb.e ], [ %ret.known.tr403, %bb.k ], [ %ret.known.tr403, %bb.s ], [ %ret.known.tr403, %bb.r ], [ %ret.known.tr403, %12 ], [ %ret.known.tr403, %14 ], [ %ret.known.tr403, %bb.x ]
  %.1247 = phi i32 [ %i.v, %bb.e ], [ %i.aj, %bb.k ], [ %.1229, %bb.s ], [ %.1229, %bb.r ], [ %.1229, %12 ], [ %.1229, %14 ], [ %.1229, %bb.x ]
  %current.ret.tr318 = select i1 %ret.known.tr322, i32 %ret.tr324, i32 %.1247
  ret i32 %current.ret.tr318
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @display(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %3, 0
  %i.c = or i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.a, %bb.o
  %.094.ptr119 = phi ptr [ %.094.ptr, %bb.o ], [ @ALINE, %bb.a ] ; 4 uses
  %.074118 = phi i32 [ %.1, %bb.o ], [ %6, %bb.a ] ; 2 uses
  %.075117 = phi i32 [ %.176, %bb.o ], [ %5, %bb.a ] ; 2 uses
  %.077116 = phi i32 [ %.178, %bb.o ], [ 0, %bb.a ] ; 3 uses
  %.079115 = phi i32 [ %.3, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.081114 = phi i32 [ %.283, %bb.o ], [ 0, %bb.a ] ; 3 uses
  %.084113 = phi i32 [ %.286, %bb.o ], [ 0, %bb.a ] ; 3 uses
  %.087112 = phi ptr [ %.289, %bb.o ], [ @CLINE, %bb.a ] ; 2 uses
  %.090111 = phi ptr [ %.4, %bb.o ], [ @BLINE, %bb.a ] ; 4 uses
  %.094.idx110 = phi i64 [ %.397.idx, %bb.o ], [ 0, %bb.a ] ; 3 uses
  %.098109 = phi ptr [ %.2100, %bb.o ], [ %4, %bb.a ] ; 3 uses
  %i.d = icmp eq i32 %.079115, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph121
  %i.e = load i32, ptr %.098109, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.098109, i64 4 ; 3 uses
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.084113, 1                  ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  store i8 %i.k, ptr %.094.ptr119, align 1, !tbaa !14
  %i.l = add nsw i32 %.081114, 1                  ; 3 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14    ; 6 uses
  store i8 %i.o, ptr %.090111, align 1, !tbaa !14
  %i.p = load i8, ptr %.094.ptr119, align 1, !tbaa !14 ; 5 uses
  %i.q = icmp eq i8 %i.p, %i.o
  %spec.store.select = select i1 %i.q, i8 124, i8 32
  %i.r = icmp eq i8 %i.p, 65
  %i.s = icmp eq i8 %i.o, 71
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i8 %i.p, 67
  %i.u = icmp eq i8 %i.o, 84
  %or.cond5 = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i8 %i.p, 71
  %i.w = icmp eq i8 %i.o, 65
  %or.cond8 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 84
  %i.y = icmp eq i8 %i.o, 67
  %or.cond11 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond11, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  br label %bb.j

.critedge:                                        ; preds = %bb.b, %.lr.ph121
  %.199 = phi ptr [ %.098109, %.lr.ph121 ], [ %i.g, %bb.b ] ; 2 uses
  %.180 = phi i32 [ %.079115, %.lr.ph121 ], [ %i.e, %bb.b ] ; 3 uses
  %i.z = icmp sgt i32 %.180, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  store i8 32, ptr %.094.ptr119, align 1, !tbaa !14
  %i.aa = add nsw i32 %.081114, 1                 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  store i8 %i.ad, ptr %.090111, align 1, !tbaa !14
  %i.ae = add nsw i32 %.180, -1
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.af = add nsw i32 %.084113, 1                 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  store i8 %i.ai, ptr %.094.ptr119, align 1, !tbaa !14
  store i8 32, ptr %.090111, align 1, !tbaa !14
  %i.aj = add nsw i32 %.180, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %storemerge = phi i8 [ %spec.store.select, %bb.f ], [ 58, %bb.g ], [ 45, %bb.i ], [ 45, %bb.h ]
  %.2100 = phi ptr [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %.199, %bb.i ], [ %.199, %bb.h ]
  %.286 = phi i32 [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.af, %bb.i ], [ %.084113, %bb.h ] ; 4 uses
  %.283 = phi i32 [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %.081114, %bb.i ], [ %i.aa, %bb.h ] ; 4 uses
  %.3 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %.188 = getelementptr inbounds nuw i8, ptr %.087112, i64 1 ; 2 uses
  %.292 = getelementptr inbounds nuw i8, ptr %.090111, i64 1 ; 2 uses
  %.094.add = add nuw nsw i64 %.094.idx110, 1     ; 2 uses
  %.296.ptr = getelementptr inbounds nuw i8, ptr @ALINE, i64 %.094.add ; 3 uses
  store i8 %storemerge, ptr %.087112, align 1, !tbaa !14
  %.not = icmp slt i64 %.094.idx110, 49
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not102 = icmp slt i32 %.286, %2
  %.not103 = icmp slt i32 %.283, %3
  %or.cond106 = select i1 %.not102, i1 true, i1 %.not103
  br i1 %or.cond106, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i8 0, ptr %.188, align 1, !tbaa !14
  store i8 0, ptr %.292, align 1, !tbaa !14
  store i8 0, ptr %.296.ptr, align 1, !tbaa !14
  %i.ak = add nsw i32 %.077116, 1
  %i.al = mul nsw i32 %.077116, 50
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.al) ; 0 uses
  %.not104107 = icmp ult i64 %.094.idx110, 9
  br i1 %.not104107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.393108 = phi ptr [ %i.ao, %.lr.ph ], [ getelementptr inbounds nuw (i8, ptr @ALINE, i64 10), %bb.l ]
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.393108, i64 10 ; 3 uses
  %.not104 = icmp ugt ptr %i.ao, %.296.ptr
  br i1 %.not104, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.393.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @ALINE, i64 10), %bb.l ], [ %i.ao, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.296.ptr, i64 5
  %.not105 = icmp ugt ptr %.393.lcssa, %i.ap
  br i1 %.not105, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %.075117, ptr noundef nonnull @ALINE, ptr noundef nonnull @CLINE, i32 noundef %.074118, ptr noundef nonnull @BLINE) ; 0 uses
  %i.as = add nsw i32 %.286, %5
  %i.at = add nsw i32 %.283, %6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.397.idx = phi i64 [ 0, %bb.n ], [ %.094.add, %bb.k ] ; 2 uses
  %.4 = phi ptr [ @BLINE, %bb.n ], [ %.292, %bb.k ]
  %.289 = phi ptr [ @CLINE, %bb.n ], [ %.188, %bb.k ]
  %.178 = phi i32 [ %i.ak, %bb.n ], [ %.077116, %bb.k ]
  %.176 = phi i32 [ %i.as, %bb.n ], [ %.075117, %bb.k ]
  %.1 = phi i32 [ %i.at, %bb.n ], [ %.074118, %bb.k ]
  %.094.ptr = getelementptr inbounds nuw i8, ptr @ALINE, i64 %.397.idx
  %i.au = icmp slt i32 %.286, %2
  %i.av = icmp slt i32 %.283, %3
  %i.aw = select i1 %i.au, i1 true, i1 %i.av
  br i1 %i.aw, label %.lr.ph121, label %._crit_edge122, !llvm.loop !91

._crit_edge122:                                   ; preds = %bb.o, %bb.a
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @fatal(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.32, ptr noundef %0) #22 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @fatalf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #22 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.d = tail call i32 @putc(i32 noundef 10, ptr noundef %i.c) ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @ckopen(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1
