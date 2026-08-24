Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/verify?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@verify:bb.a
  %.not42 = icmp eq i32 %i.ac, 0
  br i1 %.not42, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph55
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ad = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not44 = icmp eq i32 %i.ad, 0
  br i1 %.not44, label %._crit_edge56, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr (ptr, ...) @pc1(ptr noundef %.13752) #9
  %puts46 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.ae) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph55, %bb.h
  %.4 = phi i32 [ %.353, %.lr.ph55 ], [ 1, %bb.h ] ; 2 uses
  %i.af = load i32, ptr %1, align 8, !tbaa !14
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.13752, i64 %i.ag ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.aa
  br i1 %i.ai, label %.lr.ph55, label %._crit_edge56

._crit_edge56:                                    ; preds = %bb.i, %bb.g, %bb.f
  %.5 = phi i32 [ %.2, %bb.f ], [ 1, %bb.g ], [ %.4, %bb.i ]
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !15  ; 2 uses
  %.not45 = icmp eq ptr %i.aj, null
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge56
  tail call void @free(ptr noundef nonnull %i.aj) #9
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge56, %bb.j
  tail call void @free(ptr noundef nonnull %i.s) #9
  ret i32 %.5
}

declare ptr @cube2list(...) local_unnamed_addr #1

declare i32 @cube_is_covered(...) local_unnamed_addr #1

declare ptr @pc1(...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PLA_verify(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @PLA_permute(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %.not16 = icmp eq i32 %i.j, %i.m
  br i1 %.not16, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.3, i64 46, i64 1, ptr %i.n) #10 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %i.p) #10 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = tail call i32 @verify(ptr noundef nonnull %i.k, ptr noundef nonnull %i.h, ptr noundef %i.s)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ 1, %bb.g ], [ %i.t, %bb.h ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PLA_permute(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #11 ; 11 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !25   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  br i1 %i.h, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph66.split.preheader, label %._crit_edge.thread

.lr.ph66.split.preheader:                         ; preds = %.lr.ph66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %wide.trip.count = zext nneg i32 %i.l to i64
  %i.p = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph66.split.preheader
  %indvars.iv76 = phi i64 [ 0, %.lr.ph66.split.preheader ], [ %indvars.iv.next77, %.loopexit ] ; 2 uses
  %.065 = phi i32 [ 0, %.lr.ph66.split.preheader ], [ %.1, %.loopexit ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv76
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.t) #12
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = add nsw i32 %.065, 1
  %i.y = sext i32 %.065 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4, !tbaa !4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.x, %bb.c ], [ %.065, %bb.d ] ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next77, %i.p
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.pre, null
  br i1 %.not, label %bb.e, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph66, %._crit_edge
  %.0.lcssa95 = phi i32 [ %.0.lcssa, %._crit_edge ], [ 0, %.lr.ph66 ] ; 2 uses
  %i.ab = tail call ptr (ptr, ptr, i32, ...) @sf_permute(ptr noundef nonnull %.pre, ptr noundef %i.f, i32 noundef %.0.lcssa95) #9
  store ptr %i.ab, ptr %0, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa96 = phi i32 [ %.0.lcssa95, %._crit_edge.thread ], [ %.0.lcssa, %._crit_edge ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not58 = icmp eq ptr %i.ad, null
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call ptr (ptr, ptr, i32, ...) @sf_permute(ptr noundef nonnull %i.ad, ptr noundef %i.f, i32 noundef %.0.lcssa96) #9
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not59 = icmp eq ptr %i.ag, null
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr (ptr, ptr, i32, ...) @sf_permute(ptr noundef nonnull %i.ag, ptr noundef %i.f, i32 noundef %.0.lcssa96) #9
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load i32, ptr @cube, align 8, !tbaa !32
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #11 ; 7 uses
  %i.am = icmp sgt i32 %.0.lcssa96, 0
  br i1 %i.am, label %.lr.ph69, label %.preheader

.lr.ph69:                                         ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16 ; 5 uses
  %wide.trip.count82 = zext nneg i32 %.0.lcssa96 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count82, 3       ; 3 uses
  %i.ap = icmp ult i32 %.0.lcssa96, 4
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph69.new

.lr.ph69.new:                                     ; preds = %.lr.ph69
  %unroll_iter = and i64 %wide.trip.count82, 2147483644
  br label %bb.k

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69
  %indvars.iv79.epil.init = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next80.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv79.epil = phi i64 [ %indvars.iv79.epil.init, %.epil.preheader ], [ %indvars.iv.next80.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv79.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv79.epil
  store ptr %i.au, ptr %i.av, align 8, !tbaa !23
  %indvars.iv.next80.epil = add nuw nsw i64 %indvars.iv79.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.j, !llvm.loop !35

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.j, %bb.i
  %2 = load i32, ptr @cube, align 8, !tbaa !32    ; 2 uses
  %i.aw = icmp slt i32 %.0.lcssa96, %2
  br i1 %i.aw, label %.lr.ph71.preheader, label %._crit_edge72

.lr.ph71.preheader:                               ; preds = %.preheader
  %i.ax = sext i32 %.0.lcssa96 to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.az = xor i32 %.0.lcssa96, -1
  %i.ba = add i32 %2, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !23
  br label %._crit_edge72

bb.k:                                             ; preds = %bb.k, %.lr.ph69.new
  %indvars.iv79 = phi i64 [ 0, %.lr.ph69.new ], [ %indvars.iv.next80.3, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph69.new ], [ %niter.next.3, %bb.k ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv79
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv79
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !23
  %indvars.iv.next80 = or disjoint i64 %indvars.iv79, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next80
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next80
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !23
  %indvars.iv.next80.1 = or disjoint i64 %indvars.iv79, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next80.1
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next80.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !23
  %indvars.iv.next80.2 = or disjoint i64 %indvars.iv79, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next80.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next80.2
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !23
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.k

._crit_edge72:                                    ; preds = %.lr.ph71.preheader, %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %.not60 = icmp eq ptr %i.cd, null
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge72
  tail call void @free(ptr noundef nonnull %i.cd) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge72
  store ptr %i.al, ptr %i.cc, align 8, !tbaa !16
  %.not61 = icmp eq ptr %i.f, null
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.f) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret i32 undef
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @sf_permute(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_consistency(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %i.a, ptr noundef %i.c) #9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.h = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cprint(ptr noundef nonnull %i.d) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.d) #9
  %i.k = load ptr, ptr %0, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %i.k, ptr noundef %i.m) #9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %puts24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.r = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cprint(ptr noundef nonnull %i.n) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ 1, %bb.h ], [ 1, %bb.g ]
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.t = tail call i32 @fflush(ptr noundef %i.s)  ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.n) #9
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.w = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %i.u, ptr noundef %i.v) #9 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !13
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.aa = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not28 = icmp eq i32 %i.aa, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cprint(ptr noundef nonnull %i.w) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.2 = phi i32 [ %.1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.k ]
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.w) #9
  %i.ad = load ptr, ptr %0, align 8, !tbaa !24
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.ag = tail call ptr (ptr, ptr, ptr, ...) @cube3list(ptr noundef %i.ad, ptr noundef %i.ae, ptr noundef %i.af) #9
  %i.ah = tail call i32 (ptr, ...) @tautology(ptr noundef %i.ag) #9
  %.not30 = icmp eq i32 %i.ah, 0
  br i1 %.not30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %0, align 8, !tbaa !24
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.al = tail call ptr (ptr, ptr, ptr, ...) @cube3list(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.ak) #9
  %i.am = tail call ptr (ptr, ...) @complement(ptr noundef %i.al) #9 ; 2 uses
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.an = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not32 = icmp eq i32 %i.an, 0
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @cprint(ptr noundef %i.am) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ...) @sf_free(ptr noundef %i.am) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.3 = phi i32 [ %.2, %bb.n ], [ 1, %bb.q ]
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.ap = tail call i32 @fflush(ptr noundef %i.ao) ; 0 uses
  ret i32 %.3
}

end_hunk_0
