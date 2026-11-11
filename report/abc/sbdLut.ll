Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdLut?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Sbd_ProblemAddClausesInit:bb.a
  %.not38 = icmp eq i32 %.pr, 0
  br i1 %.not38, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %._crit_edge48
  %i.ar = phi i32 [ %i.aq, %._crit_edge48 ], [ %i.j, %bb.b ]
  %i.as = shl nuw i32 1, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge48, %.thread
  %i.at = phi i32 [ %i.as, %.thread ], [ %i.aq, %._crit_edge48 ]
  %i.au = add nsw i32 %i.at, %.03551
  %i.av = getelementptr inbounds nuw i8, ptr %.03649, i64 56 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.c
  br i1 %i.aw, label %bb.b, label %._crit_edge56, !llvm.loop !29

._crit_edge56:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Sbd_ProblemPrintSolution(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = sext i32 %0 to i64
  %.idx = mul nsw i64 %i.a, 56
  %i.b = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge32
  %.034 = phi i32 [ 0, %.lr.ph36 ], [ %.1.lcssa, %._crit_edge32 ] ; 2 uses
  %.02333 = phi ptr [ %1, %.lr.ph36 ], [ %i.ak, %._crit_edge32 ] ; 6 uses
  %i.f = load i32, ptr %.02333, align 8, !tbaa !11
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02333, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 2 uses
  %i.i = shl nuw i32 1, %i.h
  %i.j = select i1 %.not, ptr @.str.3, ptr @.str.2
  %i.k = select i1 %.not, i32 %i.h, i32 %i.i      ; 2 uses
  %i.l = ptrtoint ptr %.02333 to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 56
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.j, i32 noundef %i.o) ; 0 uses
  %i.q = icmp sgt i32 %i.k, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = sext i32 %.034 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02127 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %.val = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.s = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = and i32 %i.t, 1
  %i.v = xor i32 %i.u, 1
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.v) ; 0 uses
  %i.x = add nuw nsw i32 %.02127, 1               ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %i.k
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.034, %bb.b ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02333, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.02333, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph31, %bb.c
  %indvars.iv39 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next40, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv39
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.af) ; 0 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next40, %i.ai
  br i1 %i.aj, label %bb.c, label %._crit_edge32, !llvm.loop !31

._crit_edge32:                                    ; preds = %bb.c, %._crit_edge
  %puts25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02333, i64 56 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.b
  br i1 %i.al, label %bb.b, label %._crit_edge37, !llvm.loop !32

._crit_edge37:                                    ; preds = %._crit_edge32, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Sbd_ProblemCollectSolution(i32 noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %0 to i64
  %.idx = mul nsw i64 %i.a, 56
  %i.b = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %.loopexit
  %.044 = phi i32 [ 0, %.lr.ph46 ], [ %.3, %.loopexit ] ; 6 uses
  %.03243 = phi ptr [ %1, %.lr.ph46 ], [ %i.bq, %.loopexit ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03243, i64 48 ; 7 uses
  store i64 0, ptr %i.e, align 8, !tbaa !36
  %i.f = load i32, ptr %.03243, align 8, !tbaa !11
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.03243, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 13 uses
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph41, label %.loopexit

.lr.ph41:                                         ; preds = %.preheader
  %.val = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.03243, i64 8 ; 3 uses
  %i.k = sext i32 %.044 to i64                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %i.h, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph41.new

.lr.ph41.new:                                     ; preds = %.lr.ph41
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not48 = icmp eq i32 %i.h, 31
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = shl nuw nsw i32 1, %i.h                  ; 2 uses
  %.val35 = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.n = sext i32 %.044 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.03036 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.f ] ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %.val35, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = and i32 %i.p, 1
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %.03036, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = lshr i32 %.03036, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37
  %i.y = or i64 %i.x, %i.t
  store i64 %i.y, ptr %i.w, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.z = add nuw nsw i32 %.03036, 1               ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.z, %i.m
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.aa = add i32 %.044, %i.m
  %.pre = load i64, ptr %i.e, align 8, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ab = phi i64 [ 0, %bb.c ], [ %.pre, %._crit_edge.loopexit ] ; 7 uses
  %.1.lcssa = phi i32 [ %.044, %bb.c ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ac = icmp eq i32 %i.h, 0
  %i.ad = trunc i64 %i.ab to i1
  %i.ae = select i1 %i.ad, i64 3, i64 0
  %i.af = icmp samesign ult i32 %i.h, 2
  %i.ag = and i64 %i.ab, 3
  %i.ah = select i1 %i.ac, i64 %i.ae, i64 %i.ag
  %i.ai = mul nuw nsw i64 %i.ah, 5
  %.126.i = select i1 %i.af, i64 %i.ai, i64 %i.ab
  %i.aj = icmp samesign ult i32 %i.h, 3
  %i.ak = and i64 %.126.i, 15
  %i.al = mul nuw nsw i64 %i.ak, 17
  %.227.i = select i1 %i.aj, i64 %i.al, i64 %i.ab
  %i.am = icmp samesign ult i32 %i.h, 4
  %i.an = and i64 %.227.i, 255
  %i.ao = mul nuw nsw i64 %i.an, 257
  %.328.i = select i1 %i.am, i64 %i.ao, i64 %i.ab
  %i.ap = icmp samesign ult i32 %i.h, 5
  %i.aq = and i64 %.328.i, 65535
  %i.ar = mul nuw nsw i64 %i.aq, 65537
  %.429.i = select i1 %i.ap, i64 %i.ar, i64 %i.ab
  %i.as = icmp ult i32 %i.h, 6
  %i.at = and i64 %.429.i, 4294967295
  %i.au = mul nuw i64 %i.at, 4294967297
  %.5.i = select i1 %i.as, i64 %i.au, i64 %i.ab
  store i64 %.5.i, ptr %i.e, align 8, !tbaa !36
  br label %.loopexit

bb.g:                                             ; preds = %bb.k, %.lr.ph41.new
  %indvars.iv53 = phi i64 [ 0, %.lr.ph41.new ], [ %indvars.iv.next54.1, %bb.k ] ; 3 uses
  %indvars.iv51 = phi i64 [ %i.k, %.lr.ph41.new ], [ %indvars.iv.next52.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph41.new ], [ %niter.next.1, %bb.k ]
  %i.av = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv51
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %i.ax = and i32 %i.aw, 1
  %.not33 = icmp eq i32 %i.ax, 0
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv53
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14
  %i.ba = sext i32 %i.az to i64
  store i64 %i.ba, ptr %i.e, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bb = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv51
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = and i32 %i.bd, 1
  %.not33.1 = icmp eq i32 %i.be, 0
  br i1 %.not33.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = sext i32 %i.bh to i64
  store i64 %i.bi, ptr %i.e, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %indvars.iv.next52.1 = add nsw i64 %indvars.iv51, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !34

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph41
  %indvars.iv53.epil.init = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next54.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv51.epil.init = phi i64 [ %i.k, %.lr.ph41 ], [ %indvars.iv.next52.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv51.epil.init
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = and i32 %i.bk, 1
  %.not33.epil = icmp eq i32 %i.bl, 0
  br i1 %.not33.epil, label %bb.l, label %.loopexit.loopexit

bb.l:                                             ; preds = %.epil.preheader
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv53.epil.init
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = sext i32 %i.bn to i64
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !36
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.epil.preheader, %bb.l, %.loopexit.loopexit.unr-lcssa
  %i.bp = add i32 %.044, %i.h
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %._crit_edge
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.044, %.preheader ], [ %i.bp, %.loopexit.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.03243, i64 56 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.b
  br i1 %i.br, label %bb.b, label %._crit_edge47, !llvm.loop !35

._crit_edge47:                                    ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Sbd_ProblemSolve(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr nofree noundef captures(address) %9) local_unnamed_addr #2 {
Abc_Clock.exit:
  %10 = alloca %struct.timespec, align 8          ; 3 uses
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %i.b = alloca [256 x i32], align 16             ; 11 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.e = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 6 uses
  store i32 0, ptr %i.f, align 4, !tbaa !50
  store i32 100, ptr %i.e, align 8, !tbaa !51
  %i.g = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #15 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  %i.i = call ptr @Sbd_ManSatSolver(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 1) #14 ; 5 uses
  %i.j = call ptr @sat_solver_new() #14           ; 10 uses
  %i.k = getelementptr i8, ptr %7, i64 4          ; 3 uses
  %.val152 = load i32, ptr %i.k, align 4, !tbaa !50 ; 12 uses
  %11 = zext i32 %8 to i64                        ; 4 uses
  %.idx.i = mul nuw nsw i64 %11, 56
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i
  %i.m = icmp sgt i32 %8, 0                       ; 2 uses
  br i1 %i.m, label %.lr.ph.i, label %Sbd_ProblemCountParams.exit

.lr.ph.i:                                         ; preds = %Abc_Clock.exit, %.lr.ph.i
  %.011.i = phi i32 [ %i.s, %.lr.ph.i ], [ 0, %Abc_Clock.exit ]
  %.0910.i = phi ptr [ %i.t, %.lr.ph.i ], [ %9, %Abc_Clock.exit ] ; 3 uses
  %i.n = load i32, ptr %.0910.i, align 8, !tbaa !11
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 2 uses
  %i.q = shl nuw i32 1, %i.p
  %i.r = select i1 %.not.i, i32 %i.p, i32 %i.q
  %i.s = add nsw i32 %i.r, %.011.i                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i, i64 56 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.l
  br i1 %i.u, label %.lr.ph.i, label %Sbd_ProblemCountParams.exit, !llvm.loop !0

Sbd_ProblemCountParams.exit:                      ; preds = %.lr.ph.i, %Abc_Clock.exit
  %.0.lcssa.i = phi i32 [ 0, %Abc_Clock.exit ], [ %i.s, %.lr.ph.i ] ; 8 uses
  %i.v = getelementptr i8, ptr %3, i64 4
  %.val151 = load i32, ptr %i.v, align 4, !tbaa !50
  %i.w = getelementptr i8, ptr %5, i64 4
  %.val150 = load i32, ptr %i.w, align 4, !tbaa !50
  %i.x = add nsw i32 %.val150, %.val151
  %i.y = getelementptr i8, ptr %6, i64 4
  %.val149 = load i32, ptr %i.y, align 4, !tbaa !50
  %i.z = add nsw i32 %i.x, %.val149               ; 4 uses
  %i.aa = add nsw i32 %i.z, %8                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ab = icmp sgt i32 %.val152, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Sbd_ProblemCountParams.exit
  %i.ac = getelementptr i8, ptr %7, i64 8
  %.val145 = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ad = zext nneg i32 %.val152 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %.val145, i64 %i.ae, i1 false), !tbaa !14
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %Sbd_ProblemCountParams.exit
  br i1 %i.m, label %.critedge.preheader220, label %.preheader175

.critedge.preheader220:                           ; preds = %.critedge.preheader
  %i.af = sext i32 %.val152 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %min.iters.check = icmp ult i32 %8, 8
  br i1 %min.iters.check, label %.critedge.preheader329, label %vector.ph

vector.ph:                                        ; preds = %.critedge.preheader220
  %n.vec = and i64 %11, 2147483640                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  store <4 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !14
  store <4 x i32> %.reass, ptr %i.ai, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %11
  br i1 %cmp.n, label %.preheader175, label %.critedge.preheader329

.critedge.preheader329:                           ; preds = %.critedge.preheader220, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.critedge.preheader220 ], [ %n.vec, %middle.block ]
  br label %.critedge

.preheader175:                                    ; preds = %.critedge, %middle.block, %.critedge.preheader
  %i.ak = icmp sgt i32 %.0.lcssa.i, 0             ; 3 uses
  %i.al = add i32 %.val152, %8                    ; 6 uses
  br i1 %i.ak, label %.lr.ph181, label %.preheader174

.lr.ph181:                                        ; preds = %.preheader175
  %i.am = sext i32 %i.al to i64
  %wide.trip.count230 = zext nneg i32 %.0.lcssa.i to i64 ; 3 uses
  %invariant.gep276 = getelementptr [4 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %min.iters.check283 = icmp ult i32 %.0.lcssa.i, 8
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph181
  %n.vec285 = and i64 %wide.trip.count230, 2147483640 ; 3 uses
  %broadcast.splatinsert286 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat287 = shufflevector <4 x i32> %broadcast.splatinsert286, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op333 = add <4 x i32> splat (i32 4), %broadcast.splat287
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph284
  %index289 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body288 ] ; 2 uses
  %vec.ind290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph284 ], [ %vec.ind.next293, %vector.body288 ] ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %invariant.gep276, i64 %index289 ; 2 uses
  %i.ao = add <4 x i32> %broadcast.splat287, %vec.ind290
  %.reass334 = add <4 x i32> %vec.ind290, %invariant.op333
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  store <4 x i32> %i.ao, ptr %i.an, align 4, !tbaa !14
  store <4 x i32> %.reass334, ptr %i.ap, align 4, !tbaa !14
  %index.next292 = add nuw i64 %index289, 8       ; 2 uses
  %vec.ind.next293 = add <4 x i32> %vec.ind290, splat (i32 8)
  %i.aq = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.aq, label %middle.block294, label %vector.body288, !llvm.loop !39

middle.block294:                                  ; preds = %vector.body288
  %cmp.n295 = icmp eq i64 %n.vec285, %wide.trip.count230
  br i1 %cmp.n295, label %.preheader174, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %.lr.ph181, %middle.block294
  %indvars.iv227.ph = phi i64 [ 0, %.lr.ph181 ], [ %n.vec285, %middle.block294 ]
  br label %scalar.ph282

.critedge:                                        ; preds = %.critedge.preheader329, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ %indvars.iv.ph, %.critedge.preheader329 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ar = trunc i64 %indvars.iv to i32
  %i.as = add i32 %i.z, %i.ar
  store i32 %i.as, ptr %gep, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %11
  br i1 %exitcond.not, label %.preheader175, label %.critedge, !llvm.loop !40

.preheader174:                                    ; preds = %scalar.ph282, %middle.block294, %.preheader175
  %i.at = icmp sgt i32 %i.al, 0                   ; 2 uses
  br i1 %i.at, label %.lr.ph183.preheader, label %.preheader173

.lr.ph183.preheader:                              ; preds = %.preheader174
  %i.au = zext nneg i32 %i.al to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.av, i1 false), !tbaa !14
  br label %.preheader173

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %scalar.ph282 ], [ %indvars.iv227.ph, %scalar.ph282.preheader ] ; 3 uses
  %gep277 = getelementptr [4 x i8], ptr %invariant.gep276, i64 %indvars.iv227
  %i.aw = trunc i64 %indvars.iv227 to i32
  %i.ax = add i32 %i.aa, %i.aw
  store i32 %i.ax, ptr %gep277, align 4, !tbaa !14
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.preheader174, label %scalar.ph282, !llvm.loop !41

.preheader173:                                    ; preds = %.lr.ph183.preheader, %.preheader174
  br i1 %i.ak, label %.lr.ph185.preheader, label %.preheader172.critedge

.lr.ph185.preheader:                              ; preds = %.preheader173
  %i.ay = sext i32 %i.al to i64
  %wide.trip.count238 = zext nneg i32 %.0.lcssa.i to i64 ; 3 uses
  %invariant.gep278 = getelementptr [4 x i8], ptr %i.b, i64 %i.ay ; 2 uses
  %min.iters.check298 = icmp ult i32 %.0.lcssa.i, 8
  br i1 %min.iters.check298, label %.lr.ph185.preheader328, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph185.preheader
  %n.vec300 = and i64 %wide.trip.count238, 2147483640 ; 3 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 2 uses
  %vec.ind303 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph299 ], [ %vec.ind.next306, %vector.body301 ] ; 3 uses
  %step.add304 = add <4 x i32> %vec.ind303, splat (i32 4)
  %i.az = getelementptr [4 x i8], ptr %invariant.gep278, i64 %index302 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store <4 x i32> %vec.ind303, ptr %i.az, align 4, !tbaa !14
  store <4 x i32> %step.add304, ptr %i.ba, align 4, !tbaa !14
  %index.next305 = add nuw i64 %index302, 8       ; 2 uses
  %vec.ind.next306 = add <4 x i32> %vec.ind303, splat (i32 8)
  %i.bb = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.bb, label %middle.block307, label %vector.body301, !llvm.loop !42

middle.block307:                                  ; preds = %vector.body301
  %cmp.n308 = icmp eq i64 %n.vec300, %wide.trip.count238
  br i1 %cmp.n308, label %._crit_edge, label %.lr.ph185.preheader328

.lr.ph185.preheader328:                           ; preds = %.lr.ph185.preheader, %middle.block307
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph185.preheader ], [ %n.vec300, %middle.block307 ]
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader328, %.lr.ph185
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %.lr.ph185 ], [ %indvars.iv235.ph, %.lr.ph185.preheader328 ] ; 3 uses
  %gep279 = getelementptr [4 x i8], ptr %invariant.gep278, i64 %indvars.iv235
  %i.bc = trunc nuw nsw i64 %indvars.iv235 to i32
  store i32 %i.bc, ptr %gep279, align 4, !tbaa !14
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge, label %.lr.ph185, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph185, %middle.block307
  %i.bd = call i32 @Sbd_ProblemAddClauses(ptr noundef %i.i, i32 noundef %.val152, i32 noundef %8, ptr noundef nonnull %i.a, ptr noundef %9) ; 0 uses
  call void @sat_solver_setnvars(ptr noundef %i.j, i32 noundef 1000) #14
  call void @Sbd_ProblemAddClausesInit(ptr noundef %i.j, i32 noundef %.val152, i32 noundef %8, ptr noundef nonnull %i.b, ptr noundef %9)
  store i32 0, ptr %i.f, align 4, !tbaa !50
  br label %.lr.ph188

..preheader172_crit_edge:                         ; preds = %Vec_IntPush.exit
  %i.be = trunc nsw i64 %indvars.iv.next241 to i32 ; 2 uses
  store i32 %i.be, ptr %i.f, align 4, !tbaa !50
  store i32 %spec.select.sink.i191, ptr %i.e, align 8
  store ptr %storemerge170195, ptr %i.h, align 8
  br label %.preheader172

.preheader172.critedge:                           ; preds = %.preheader173
  %i.bf = call i32 @Sbd_ProblemAddClauses(ptr noundef %i.i, i32 noundef %.val152, i32 noundef %8, ptr noundef nonnull %i.a, ptr noundef %9) ; 0 uses
  call void @sat_solver_setnvars(ptr noundef %i.j, i32 noundef 1000) #14
  call void @Sbd_ProblemAddClausesInit(ptr noundef %i.j, i32 noundef %.val152, i32 noundef %8, ptr noundef nonnull %i.b, ptr noundef %9)
  store i32 0, ptr %i.f, align 4, !tbaa !50
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.critedge, %..preheader172_crit_edge
  %.val154267 = phi i32 [ %i.be, %..preheader172_crit_edge ], [ 0, %.preheader172.critedge ] ; 2 uses
  %.val153264 = phi ptr [ %storemerge170195, %..preheader172_crit_edge ], [ %i.g, %.preheader172.critedge ] ; 2 uses
  %.not219 = icmp eq i32 %.val152, 31
  br i1 %.not219, label %.thread, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader172
  %i.bg = shl nuw nsw i32 1, %.val152
  %i.bh = getelementptr i8, ptr %7, i64 8
  %i.bi = getelementptr i8, ptr %i.i, i64 328     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bk = sext i32 %.val152 to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  %i.bm = sext i32 %i.z to i64
  %i.bn = getelementptr i8, ptr %i.j, i64 328
  %wide.trip.count247 = zext i32 %i.al to i64     ; 3 uses
  %wide.trip.count259 = zext nneg i32 %.0.lcssa.i to i64
  %min.iters.check311 = icmp ult i32 %i.al, 8
  %n.vec313 = and i64 %wide.trip.count247, 2147483640 ; 4 uses
  %i.bo = trunc nuw nsw i64 %n.vec313 to i32
  %cmp.n323 = icmp eq i64 %n.vec313, %wide.trip.count247
  br label %bb.i

.lr.ph188:                                        ; preds = %._crit_edge, %Vec_IntPush.exit
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %Vec_IntPush.exit ], [ 0, %._crit_edge ] ; 7 uses
  %storemerge170194 = phi ptr [ %storemerge170195, %Vec_IntPush.exit ], [ %i.g, %._crit_edge ] ; 6 uses
  %spec.select.sink.i192 = phi i32 [ %spec.select.sink.i191, %Vec_IntPush.exit ], [ 100, %._crit_edge ] ; 3 uses
  %.5186 = phi i32 [ %i.cf, %Vec_IntPush.exit ], [ 0, %._crit_edge ] ; 2 uses
  %i.bp = add nsw i32 %.5186, %i.aa
  %i.bq = shl nsw i32 %i.bp, 1
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = trunc nsw i64 %indvars.iv240 to i32
  %i.bt = icmp eq i32 %spec.select.sink.i192, %i.bs
  br i1 %i.bt, label %bb.a, label %Vec_IntPush.exit

bb.a:                                             ; preds = %.lr.ph188
  %i.bu = icmp samesign ult i64 %indvars.iv240, 16
  br i1 %i.bu, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not9.i.i = icmp eq ptr %storemerge170194, null
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bv = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge170194, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.b
  %i.bw = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.a
  %i.bx = icmp samesign ult i64 %indvars.iv240, 1073741823
  %indvars.iv240.tr = trunc nsw i64 %indvars.iv240 to i32
  %i.by = shl nsw i32 %indvars.iv240.tr, 1
  %spec.select.i = select i1 %i.bx, i32 %i.by, i32 2147483647 ; 4 uses
  %i.bz = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv240, %i.bz
  br i1 %.not.i9.i, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %.not9.i10.i = icmp eq ptr %storemerge170194, null
  %i.ca = zext nneg i32 %spec.select.i to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = call ptr @realloc(ptr noundef nonnull %storemerge170194, i64 noundef %i.cb) #16
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.f
  %i.cd = call noalias ptr @malloc(i64 noundef %i.cb) #15
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.c, %bb.h, %bb.g, %.lr.ph188, %bb.e
  %storemerge170195 = phi ptr [ %storemerge170194, %.lr.ph188 ], [ %storemerge170194, %bb.e ], [ %i.bw, %bb.d ], [ %i.bv, %bb.c ], [ %i.cc, %bb.g ], [ %i.cd, %bb.h ] ; 4 uses
  %spec.select.sink.i191 = phi i32 [ %spec.select.sink.i192, %.lr.ph188 ], [ %spec.select.sink.i192, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ %spec.select.i, %bb.g ], [ %spec.select.i, %bb.h ] ; 2 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %storemerge170195, i64 %indvars.iv240
  store i32 %i.br, ptr %i.ce, align 4, !tbaa !14
  %i.cf = add nuw nsw i32 %.5186, 1               ; 2 uses
  %exitcond243.not = icmp eq i32 %i.cf, %.0.lcssa.i
  br i1 %exitcond243.not, label %..preheader172_crit_edge, label %.lr.ph188, !llvm.loop !44

bb.i:                                             ; preds = %.lr.ph217, %bb.u
  %.val154 = phi i32 [ %.val154267, %.lr.ph217 ], [ %.val154266, %bb.u ] ; 2 uses
  %.promoted212 = phi ptr [ %.val153264, %.lr.ph217 ], [ %.val153263, %bb.u ] ; 7 uses
  %.0135216 = phi i32 [ 0, %.lr.ph217 ], [ %i.el, %bb.u ]
  %.0137215 = phi i32 [ %.0.lcssa.i, %.lr.ph217 ], [ %.1138.lcssa, %bb.u ] ; 4 uses
  %i.cg = sext i32 %.val154 to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.promoted212, i64 %i.cg
  %i.ci = call i32 @sat_solver_solve(ptr noundef %i.i, ptr noundef %.promoted212, ptr noundef %i.ch, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.f, align 4, !tbaa !50
  br i1 %i.at, label %.lr.ph199.preheader, label %.preheader171

.lr.ph199.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check311, label %.lr.ph199.preheader326, label %vector.ph312

vector.ph312:                                     ; preds = %.lr.ph199.preheader
  %i.ck = add i32 %.0137215, %i.bo                ; 2 uses
  %broadcast.splatinsert314 = insertelement <4 x i32> poison, i32 %.0137215, i64 0
  %broadcast.splat315 = shufflevector <4 x i32> %broadcast.splatinsert314, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat315, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph312
  %index317 = phi i64 [ 0, %vector.ph312 ], [ %index.next320, %vector.body316 ] ; 2 uses
  %vec.ind318 = phi <4 x i32> [ %induction, %vector.ph312 ], [ %vec.ind.next321, %vector.body316 ] ; 3 uses
  %step.add319 = add nsw <4 x i32> %vec.ind318, splat (i32 4)
end_hunk_0
