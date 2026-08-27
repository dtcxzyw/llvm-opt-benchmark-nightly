Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa5_ManMarkup:bb.a
  %.sroa.8.3.lcssa = phi i32 [ %.sroa.8.280, %bb.aa ], [ %i.dr, %._crit_edge77.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ec = sext i32 %i.dz to i64
  %i.ed = icmp slt i64 %indvars.iv.next93, %i.ec
  br i1 %i.ed, label %bb.aa, label %._crit_edge82, !llvm.loop !472

._crit_edge82:                                    ; preds = %._crit_edge77, %.preheader
  %.sroa.8.2.lcssa = phi i32 [ %.sroa.8.0.lcssa, %.preheader ], [ %.sroa.8.3.lcssa, %._crit_edge77 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !473
  %.not = icmp eq i32 %i.ef, 0
  %.pre99 = add i32 %i.g, %i.d
  %.pre100 = add i32 %.pre99, %.sroa.8.2.lcssa    ; 2 uses
  br i1 %.not, label %._crit_edge82._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge82
  %i.eg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.d, i32 noundef %.sroa.8.2.lcssa, i32 noundef %i.g, i32 noundef %.pre100) ; 0 uses
  br label %._crit_edge82._crit_edge

._crit_edge82._crit_edge:                         ; preds = %._crit_edge82, %bb.ac
  ret i32 %.pre100
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Exa5_ManAlloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16448) ptr @calloc(i64 noundef 1, i64 noundef 16448) #40 ; 12 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !463
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !474
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %6, ptr %i.c, align 8, !tbaa !473
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %2, ptr %i.d, align 4, !tbaa !475
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.e, align 8, !tbaa !465
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %5, ptr %i.f, align 4, !tbaa !461
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %4, ptr %i.g, align 8, !tbaa !470
  %i.h = add i32 %4, %3
  %i.i = add i32 %i.h, %5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.i, ptr %i.j, align 4, !tbaa !466
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !45
  store i32 5000, ptr %i.k, align 8, !tbaa !48
  %i.m = tail call noalias dereferenceable_or_null(20000) ptr @malloc(i64 noundef 20000) #38
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16440
  store ptr %i.k, ptr %i.o, align 8, !tbaa !464
  %i.p = tail call i32 @Exa5_ManMarkup(ptr noundef nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16424
  store i32 %i.p, ptr %i.q, align 8, !tbaa !476
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Exa5_ManFree(ptr noundef captures(none) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !464  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #41
  tail call void @free(ptr noundef nonnull %0) #41
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Exa5_ManGenStart(ptr nofree noundef %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 9 uses
  %i.b = alloca [5 x i32], align 16               ; 28 uses
  %i.c = alloca [5 x i32], align 16               ; 9 uses
  %i.d = alloca [5 x i32], align 16               ; 9 uses
  %i.e = alloca [5 x i32], align 16               ; 9 uses
  %i.f = alloca [64 x i32], align 16              ; 11 uses
  %i.g = alloca [64 x i32], align 16              ; 14 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !45
  store i32 100, ptr %i.h, align 8, !tbaa !48
  %i.j = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #38 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !465  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !461  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph385, label %.preheader353.thread

.lr.ph385:                                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16432 ; 29 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16428 ; 22 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16424 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.not182 = icmp eq i32 %3, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16440 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %.not183 = icmp eq i32 %1, 0
  %i.ar = sext i32 %i.m to i64
  br label %bb.b

.preheader353:                                    ; preds = %bb.bz
  %i.as = icmp sgt i32 %i.ok, 0
  br i1 %i.as, label %.lr.ph395, label %.preheader353.thread

.lr.ph395:                                        ; preds = %.preheader353
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16440 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16432 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16428 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16424
  %.not179 = icmp eq i32 %4, 0
  %i.az = sext i32 %i.oj to i64
  br label %bb.ca

bb.b:                                             ; preds = %.lr.ph385, %bb.bz
  %indvars.iv449 = phi i64 [ %i.ar, %.lr.ph385 ], [ %indvars.iv.next450, %bb.bz ] ; 9 uses
  %i.ba = phi i32 [ %i.m, %.lr.ph385 ], [ %i.oj, %bb.bz ]
  %i.bb = trunc nsw i64 %indvars.iv449 to i32     ; 3 uses
  %i.bc = sub nsw i32 %i.bb, %i.ba                ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv449, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge.thread.i

.lr.ph:                                           ; preds = %bb.b
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %i.q, i64 %indvars.iv449
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 10 uses
  %.0363 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.u ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !38 ; 4 uses
  %.not187 = icmp eq i32 %i.bg, 0
  br i1 %.not187, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = add nsw i64 %indvars.iv, -1             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.bi = shl nsw i32 %i.bg, 1
  %i.bj = or disjoint i32 %i.bi, 1
  store i32 %i.bj, ptr %i.f, align 16, !tbaa !38
  %.not18.i = icmp samesign ult i64 %indvars.iv, 2
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader595, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bh, -8                      ; 3 uses
  %i.bk = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.bo = shl <4 x i32> %i.bn, splat (i32 1)
  %i.bp = shl <4 x i32> %.reass, splat (i32 1)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store <4 x i32> %i.bo, ptr %i.bm, align 4, !tbaa !38
  store <4 x i32> %i.bp, ptr %i.bq, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.preheader, label %.lr.ph.i.preheader595

.lr.ph.i.preheader595:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader595, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader595 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.bt = trunc i64 %indvars.iv.i to i32
  %.tr.i = add i32 %i.bg, %i.bt
  %i.bu = shl i32 %.tr.i, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i, !llvm.loop !478

._crit_edge.i:                                    ; preds = %bb.d
  %i.bv = icmp eq i64 %indvars.iv, 1
  br i1 %i.bv, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i, %middle.block, %._crit_edge.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.g
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %.034.i.i = phi i32 [ %.1.i.i, %bb.g ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !38 ; 3 uses
  switch i32 %i.bx, label %bb.e [
    i32 1, label %Exa5_ManAddClause.exit.i
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.by = load i32, ptr %i.u, align 8, !tbaa !476
  %i.bz = shl nsw i32 %i.by, 1
  %.not31.i.i = icmp sgt i32 %i.bx, %i.bz
  br i1 %.not31.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = add nsw i32 %.034.i.i, 1
  %i.cb = sext i32 %.034.i.i to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cb
  store i32 %i.bx, ptr %i.cc, align 4, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %.034.i.i, %.lr.ph.i.i ], [ %i.ca, %bb.f ], [ %.034.i.i, %bb.e ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !479

._crit_edge.i.i:                                  ; preds = %bb.g
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !480 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %Exa5_ManAddClause.exit.i, label %bb.h

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !480 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.ce, null
  br i1 %.not48.i.i, label %Exa5_ManAddClause.exit.thread.i, label %.thread.i.i

Exa5_ManAddClause.exit.thread.i:                  ; preds = %._crit_edge.thread.i.i
  %i.cf = trunc nsw i64 %i.bh to i32
  call fastcc void @Exa5_ManAddOneHot(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef range(i32 -2147483648, 2147483647) %i.cf)
  br label %Exa5_ManAddGroup.exit

.thread.i.i:                                      ; preds = %._crit_edge.thread.i.i
  %i.cg = load i32, ptr %i.s, align 4, !tbaa !481
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.s, align 4, !tbaa !481
  br label %._crit_edge38.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !481
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.s, align 4, !tbaa !481
  %i.ck = icmp sgt i32 %.1.i.i, 0
  br i1 %i.ck, label %.lr.ph37.preheader.i.i, label %._crit_edge38.i.i

.lr.ph37.preheader.i.i:                           ; preds = %bb.h
  %wide.trip.count43.i.i = zext nneg i32 %.1.i.i to i64
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.lr.ph37.i.i, %.lr.ph37.preheader.i.i
  %indvars.iv40.i.i = phi i64 [ 0, %.lr.ph37.preheader.i.i ], [ %indvars.iv.next41.i.i, %.lr.ph37.i.i ] ; 2 uses
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !480
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv40.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !38 ; 2 uses
  %i.co = and i32 %i.cn, 1
  %.not30.i.i = icmp eq i32 %i.co, 0
  %i.cp = select i1 %.not30.i.i, ptr @.str.57, ptr @.str.143
  %i.cq = ashr i32 %i.cn, 1
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.cp, i32 noundef %i.cq) #41 ; 0 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond44.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %wide.trip.count43.i.i
  br i1 %exitcond44.not.i.i, label %._crit_edge38.loopexit.i.i, label %.lr.ph37.i.i, !llvm.loop !482

._crit_edge38.loopexit.i.i:                       ; preds = %.lr.ph37.i.i
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !480
  br label %._crit_edge38.i.i

._crit_edge38.i.i:                                ; preds = %._crit_edge38.loopexit.i.i, %bb.h, %.thread.i.i
  %i.cs = phi ptr [ %.pre.i.i, %._crit_edge38.loopexit.i.i ], [ %i.cd, %bb.h ], [ %i.ce, %.thread.i.i ]
  %i.ct = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.cs) ; 0 uses
  br label %Exa5_ManAddClause.exit.i

Exa5_ManAddClause.exit.i:                         ; preds = %.lr.ph.i.i, %._crit_edge38.i.i, %._crit_edge.i.i
  %i.cu = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cu, label %.lr.ph15.i, label %Exa5_ManAddGroup.exit

.loopexit.i:                                      ; preds = %Exa5_ManAddClause4.exit.i343, %.lr.ph15.i
  %indvars.iv.next.i326 = add nuw nsw i64 %indvars.iv.i325, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %i.bh
  br i1 %exitcond23.not.i, label %Exa5_ManAddOneHot.exit, label %.lr.ph15.i, !llvm.loop !483

.lr.ph15.i:                                       ; preds = %Exa5_ManAddClause.exit.i, %.loopexit.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %.loopexit.i ], [ 0, %Exa5_ManAddClause.exit.i ] ; 2 uses
  %indvars.iv.i325 = phi i64 [ %indvars.iv.next.i326, %.loopexit.i ], [ 1, %Exa5_ManAddClause.exit.i ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.cv = icmp samesign ult i64 %indvars.iv.next20.i, %i.bh
  br i1 %i.cv, label %.lr.ph.i327, label %.loopexit.i

.lr.ph.i327:                                      ; preds = %.lr.ph15.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv19.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !38
  %i.cy = xor i32 %i.cx, 1                        ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %Exa5_ManAddClause4.exit.i343, %.lr.ph.i327
  %indvars.iv16.i = phi i64 [ %indvars.iv.i325, %.lr.ph.i327 ], [ %indvars.iv.next17.i, %Exa5_ManAddClause4.exit.i343 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv16.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !38
  %i.db = xor i32 %i.da, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i32 %i.cy, ptr %i.a, align 16, !tbaa !38
  store i32 %i.db, ptr %i.v, align 4, !tbaa !38
  store i32 0, ptr %i.w, align 8, !tbaa !38
  store i32 0, ptr %i.x, align 4, !tbaa !38
  store i32 0, ptr %i.y, align 16, !tbaa !38
  switch i32 %i.cy, label %bb.j [
    i32 1, label %Exa5_ManAddClause4.exit.i343
    i32 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.dc = load i32, ptr %i.u, align 8, !tbaa !476
  %i.dd = shl nsw i32 %i.dc, 1
  %.not31.i.i.i346 = icmp sle i32 %i.cy, %i.dd
  %spec.select.i.i347 = zext i1 %.not31.i.i.i346 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i.i.i328 = phi i32 [ %i.cy, %bb.i ], [ %spec.select.i.i347, %bb.j ] ; 4 uses
  switch i32 %i.db, label %bb.l [
    i32 1, label %Exa5_ManAddClause4.exit.i343
    i32 0, label %._crit_edge.i.i.i329
  ]

bb.l:                                             ; preds = %bb.k
  %i.de = load i32, ptr %i.u, align 8, !tbaa !476
  %i.df = shl nsw i32 %i.de, 1
  %.not31.i.1.i.i345 = icmp sgt i32 %i.db, %i.df
  br i1 %.not31.i.1.i.i345, label %._crit_edge.i.i.i329, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = add nuw nsw i32 %.1.i.i.i328, 1
  %i.dh = zext nneg i32 %.1.i.i.i328 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dh
  store i32 %i.db, ptr %i.di, align 4, !tbaa !38
  br label %._crit_edge.i.i.i329

._crit_edge.i.i.i329:                             ; preds = %bb.m, %bb.l, %bb.k
  %.1.i.1.i.i330 = phi i32 [ %.1.i.i.i328, %bb.k ], [ %i.dg, %bb.m ], [ %.1.i.i.i328, %bb.l ] ; 2 uses
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !480 ; 2 uses
  %.not.i.i.i331 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i331, label %Exa5_ManAddClause4.exit.i343, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i329
  %i.dk = load i32, ptr %i.s, align 4, !tbaa !481
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.s, align 4, !tbaa !481
  %.not.i.i332 = icmp eq i32 %.1.i.1.i.i330, 0
  br i1 %.not.i.i332, label %._crit_edge38.i.i.i342, label %.lr.ph37.preheader.i.i.i333

.lr.ph37.preheader.i.i.i333:                      ; preds = %bb.n
  %wide.trip.count43.i.i.i334 = zext nneg i32 %.1.i.1.i.i330 to i64
  br label %.lr.ph37.i.i.i335

.lr.ph37.i.i.i335:                                ; preds = %.lr.ph37.i.i.i335, %.lr.ph37.preheader.i.i.i333
  %indvars.iv40.i.i.i336 = phi i64 [ 0, %.lr.ph37.preheader.i.i.i333 ], [ %indvars.iv.next41.i.i.i338, %.lr.ph37.i.i.i335 ] ; 2 uses
  %i.dm = load ptr, ptr %i.r, align 8, !tbaa !480
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv40.i.i.i336
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !38 ; 2 uses
  %i.dp = and i32 %i.do, 1
  %.not30.i.i.i337 = icmp eq i32 %i.dp, 0
  %i.dq = select i1 %.not30.i.i.i337, ptr @.str.57, ptr @.str.143
  %i.dr = ashr i32 %i.do, 1
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.dq, i32 noundef %i.dr) #41 ; 0 uses
  %indvars.iv.next41.i.i.i338 = add nuw nsw i64 %indvars.iv40.i.i.i336, 1 ; 2 uses
  %exitcond44.not.i.i.i339 = icmp eq i64 %indvars.iv.next41.i.i.i338, %wide.trip.count43.i.i.i334
  br i1 %exitcond44.not.i.i.i339, label %._crit_edge38.loopexit.i.i.i340, label %.lr.ph37.i.i.i335, !llvm.loop !482

._crit_edge38.loopexit.i.i.i340:                  ; preds = %.lr.ph37.i.i.i335
  %.pre.i.i.i341 = load ptr, ptr %i.r, align 8, !tbaa !480
  br label %._crit_edge38.i.i.i342

._crit_edge38.i.i.i342:                           ; preds = %._crit_edge38.loopexit.i.i.i340, %bb.n
  %i.dt = phi ptr [ %.pre.i.i.i341, %._crit_edge38.loopexit.i.i.i340 ], [ %i.dj, %bb.n ]
  %i.du = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.dt) ; 0 uses
  br label %Exa5_ManAddClause4.exit.i343
end_hunk_0
begin_hunk_1_@Exa5_ManGenStart:bb.a
  %i.ni = load i32, ptr %i.u, align 8, !tbaa !476
  %i.nj = shl nsw i32 %i.ni, 1                    ; 2 uses
  %.not31.i.2.i.2.not = icmp slt i32 %i.hz, %i.nj
  br i1 %.not31.i.2.i.2.not, label %bb.bs, label %.thread.2

bb.bs:                                            ; preds = %bb.br
  %i.nk = add nuw nsw i32 %.1.i.1.i241.2, 1       ; 3 uses
  %i.nl = zext nneg i32 %.1.i.1.i241.2 to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nl
  store i32 %i.my, ptr %i.nm, align 4, !tbaa !38
  %.pre.i259.2 = load i32, ptr %i.ap, align 4, !tbaa !38 ; 3 uses
  switch i32 %.pre.i259.2, label %bb.bt [
    i32 1, label %Exa5_ManAddClause4.exit263.2
    i32 0, label %.thread.2
  ]

bb.bt:                                            ; preds = %bb.bs
  %.not31.i.3.i.2 = icmp sgt i32 %.pre.i259.2, %i.nj
  br i1 %.not31.i.3.i.2, label %.thread.2, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nn = add nuw nsw i32 %.1.i.1.i241.2, 2
  %i.no = zext nneg i32 %i.nk to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.no
  store i32 %.pre.i259.2, ptr %i.np, align 4, !tbaa !38
  br label %.thread.2

.thread.2:                                        ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.1.i.3.i.2 = phi i32 [ %i.nk, %bb.bs ], [ %i.nn, %bb.bu ], [ %i.nk, %bb.bt ], [ %.1.i.1.i241.2, %bb.br ] ; 4 uses
  %i.nq = load i32, ptr %i.aq, align 16, !tbaa !38 ; 3 uses
  switch i32 %i.nq, label %bb.bv [
    i32 1, label %Exa5_ManAddClause4.exit263.2
    i32 0, label %._crit_edge.i.i242.2
  ]

bb.bv:                                            ; preds = %.thread.2
  %i.nr = load i32, ptr %i.u, align 8, !tbaa !476
  %i.ns = shl nsw i32 %i.nr, 1
  %.not31.i.4.i258.2 = icmp sgt i32 %i.nq, %i.ns
  br i1 %.not31.i.4.i258.2, label %._crit_edge.i.i242.2, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nt = add nuw nsw i32 %.1.i.3.i.2, 1
  %i.nu = zext nneg i32 %.1.i.3.i.2 to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nu
  store i32 %i.nq, ptr %i.nv, align 4, !tbaa !38
  br label %._crit_edge.i.i242.2

._crit_edge.i.i242.2:                             ; preds = %bb.bw, %bb.bv, %.thread.2
  %.1.i.4.i243.2 = phi i32 [ %.1.i.3.i.2, %.thread.2 ], [ %i.nt, %bb.bw ], [ %.1.i.3.i.2, %bb.bv ] ; 2 uses
  %i.nw = load ptr, ptr %i.r, align 8, !tbaa !480 ; 2 uses
  %.not.i.i244.2 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i244.2, label %Exa5_ManAddClause4.exit263.2, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge.i.i242.2
  %i.nx = load i32, ptr %i.s, align 4, !tbaa !481
  %i.ny = add nsw i32 %i.nx, 1
  store i32 %i.ny, ptr %i.s, align 4, !tbaa !481
  %.not.i245.2 = icmp eq i32 %.1.i.4.i243.2, 0
  br i1 %.not.i245.2, label %._crit_edge38.i.i255.2, label %.lr.ph37.preheader.i.i246.2

.lr.ph37.preheader.i.i246.2:                      ; preds = %bb.bx
  %wide.trip.count43.i.i247.2 = zext nneg i32 %.1.i.4.i243.2 to i64
  br label %.lr.ph37.i.i248.2

.lr.ph37.i.i248.2:                                ; preds = %.lr.ph37.i.i248.2, %.lr.ph37.preheader.i.i246.2
  %indvars.iv40.i.i249.2 = phi i64 [ 0, %.lr.ph37.preheader.i.i246.2 ], [ %indvars.iv.next41.i.i251.2, %.lr.ph37.i.i248.2 ] ; 2 uses
  %i.nz = load ptr, ptr %i.r, align 8, !tbaa !480
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv40.i.i249.2
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !38 ; 2 uses
  %i.oc = and i32 %i.ob, 1
  %.not30.i.i250.2 = icmp eq i32 %i.oc, 0
  %i.od = select i1 %.not30.i.i250.2, ptr @.str.57, ptr @.str.143
  %i.oe = ashr i32 %i.ob, 1
  %i.of = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.od, i32 noundef %i.oe) #41 ; 0 uses
  %indvars.iv.next41.i.i251.2 = add nuw nsw i64 %indvars.iv40.i.i249.2, 1 ; 2 uses
  %exitcond44.not.i.i252.2 = icmp eq i64 %indvars.iv.next41.i.i251.2, %wide.trip.count43.i.i247.2
  br i1 %exitcond44.not.i.i252.2, label %._crit_edge38.loopexit.i.i253.2, label %.lr.ph37.i.i248.2, !llvm.loop !482

._crit_edge38.loopexit.i.i253.2:                  ; preds = %.lr.ph37.i.i248.2
  %.pre.i.i254.2 = load ptr, ptr %i.r, align 8, !tbaa !480
  br label %._crit_edge38.i.i255.2

._crit_edge38.i.i255.2:                           ; preds = %._crit_edge38.loopexit.i.i253.2, %bb.bx
  %i.og = phi ptr [ %.pre.i.i254.2, %._crit_edge38.loopexit.i.i253.2 ], [ %i.nw, %bb.bx ]
  %i.oh = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.og) ; 0 uses
  br label %Exa5_ManAddClause4.exit263.2

Exa5_ManAddClause4.exit263.2:                     ; preds = %bb.bq, %bb.bn, %._crit_edge38.i.i255.2, %._crit_edge.i.i242.2, %.thread.2, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %.not183, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %Exa5_ManAddClause4.exit263.2
  %i.oi = add i32 %i.hx, 5
  tail call fastcc void @Exa5_ManAddClause4(ptr noundef %0, i32 noundef %i.mz, i32 noundef %i.oi, i32 noundef %i.hz, i32 noundef 0, i32 noundef 0)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %Exa5_ManAddClause4.exit263.2
  %indvars.iv.next450 = add nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.oj = load i32, ptr %i.l, align 8, !tbaa !465 ; 5 uses
  %i.ok = load i32, ptr %i.n, align 4, !tbaa !461 ; 4 uses
  %i.ol = add nsw i32 %i.ok, %i.oj
  %i.om = sext i32 %i.ol to i64
  %i.on = icmp slt i64 %indvars.iv.next450, %i.om
  br i1 %i.on, label %bb.b, label %.preheader353, !llvm.loop !493

bb.ca:                                            ; preds = %.lr.ph395, %bb.de
  %i.oo = phi i32 [ %i.ok, %.lr.ph395 ], [ %i.rx, %bb.de ]
  %i.op = phi i32 [ %i.oj, %.lr.ph395 ], [ %i.rw, %bb.de ]
  %indvars.iv458 = phi i64 [ %i.az, %.lr.ph395 ], [ %indvars.iv.next459, %bb.de ] ; 3 uses
  %storemerge352411 = phi ptr [ %i.j, %.lr.ph395 ], [ %storemerge352403, %bb.de ] ; 2 uses
  %i.oq = load ptr, ptr %i.at, align 8, !tbaa !464 ; 3 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 4
  %.val191387 = load i32, ptr %i.or, align 4, !tbaa !45
  %i.os = icmp sgt i32 %.val191387, 0
  br i1 %i.os, label %.lr.ph390.preheader, label %.critedge

.lr.ph390.preheader:                              ; preds = %bb.ca
  %i.ot = trunc nsw i64 %indvars.iv458 to i32     ; 2 uses
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %.lr.ph390.preheader, %bb.cm
  %.pre477495 = phi ptr [ %i.oq, %.lr.ph390.preheader ], [ %.pre477496, %bb.cm ] ; 4 uses
  %i.ou = phi ptr [ %i.oq, %.lr.ph390.preheader ], [ %i.ps, %bb.cm ] ; 3 uses
  %indvars.iv452 = phi i64 [ 0, %.lr.ph390.preheader ], [ %indvars.iv.next453, %bb.cm ] ; 3 uses
  %storemerge352410 = phi ptr [ %storemerge352411, %.lr.ph390.preheader ], [ %storemerge352409, %bb.cm ] ; 8 uses
  %.val190402 = phi i32 [ 0, %.lr.ph390.preheader ], [ %.val190401, %bb.cm ] ; 9 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %.val192 = load ptr, ptr %i.ov, align 8, !tbaa !49
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.val192, i64 %indvars.iv452
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !38 ; 3 uses
  %.not181 = icmp eq i32 %i.ox, 0
  br i1 %.not181, label %bb.cm, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph390
  %i.oy = and i32 %i.ox, 255
  %i.oz = icmp eq i32 %i.oy, %i.ot
  br i1 %i.oz, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pa = lshr i32 %i.ox, 8
  %i.pb = and i32 %i.pa, 255
  %i.pc = icmp eq i32 %i.pb, %i.ot
  br i1 %i.pc, label %bb.cd, label %bb.cm

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.pd = load i32, ptr %i.h, align 8, !tbaa !48
  %i.pe = icmp eq i32 %.val190402, %i.pd
  br i1 %i.pe, label %bb.ce, label %Vec_IntPush.exit

bb.ce:                                            ; preds = %bb.cd
  %i.pf = icmp slt i32 %.val190402, 16
  br i1 %i.pf, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %.not9.i.i = icmp eq ptr %storemerge352410, null
  br i1 %.not9.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge352410, i64 noundef 64) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ch:                                            ; preds = %bb.cf
  %i.ph = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ci:                                            ; preds = %bb.ce
  %i.pi = icmp samesign ult i32 %.val190402, 1073741823
  %i.pj = shl nuw nsw i32 %.val190402, 1
  %spec.select.i264 = select i1 %i.pi, i32 %i.pj, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %.val190402, %spec.select.i264
  br i1 %.not.i9.i, label %bb.cj, label %Vec_IntPush.exit

bb.cj:                                            ; preds = %bb.ci
  %.not9.i10.i = icmp eq ptr %storemerge352410, null
  %i.pk = zext nneg i32 %spec.select.i264 to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pm = tail call ptr @realloc(ptr noundef nonnull %storemerge352410, i64 noundef %i.pl) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.cl:                                            ; preds = %bb.cj
  %i.pn = tail call noalias ptr @malloc(i64 noundef %i.pl) #38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ck, %bb.cl, %bb.cg, %bb.ch
  %storemerge352 = phi ptr [ %i.ph, %bb.ch ], [ %i.pg, %bb.cg ], [ %i.pm, %bb.ck ], [ %i.pn, %bb.cl ]
  %spec.select.sink.i = phi i32 [ 16, %bb.ch ], [ 16, %bb.cg ], [ %spec.select.i264, %bb.ck ], [ %spec.select.i264, %bb.cl ]
  store i32 %spec.select.sink.i, ptr %i.h, align 8, !tbaa !48
  %.pre477.pre = load ptr, ptr %i.at, align 8, !tbaa !464
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.cd, %bb.ci, %Vec_IntGrow.exit11.sink.split.i
  %.pre477 = phi ptr [ %.pre477495, %bb.cd ], [ %.pre477495, %bb.ci ], [ %.pre477.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %storemerge352408 = phi ptr [ %storemerge352410, %bb.cd ], [ %storemerge352410, %bb.ci ], [ %storemerge352, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.po = add nsw i32 %.val190402, 1
  %i.pp = sext i32 %.val190402 to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %storemerge352408, i64 %i.pp
  %indvars.iv452.tr = trunc i64 %indvars.iv452 to i32
  %i.pr = shl i32 %indvars.iv452.tr, 1
  store i32 %i.pr, ptr %i.pq, align 4, !tbaa !38
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph390, %bb.cc, %Vec_IntPush.exit
  %.pre477496 = phi ptr [ %.pre477495, %.lr.ph390 ], [ %.pre477495, %bb.cc ], [ %.pre477, %Vec_IntPush.exit ]
  %i.ps = phi ptr [ %i.ou, %.lr.ph390 ], [ %i.ou, %bb.cc ], [ %.pre477, %Vec_IntPush.exit ] ; 2 uses
  %storemerge352409 = phi ptr [ %storemerge352410, %.lr.ph390 ], [ %storemerge352410, %bb.cc ], [ %storemerge352408, %Vec_IntPush.exit ] ; 2 uses
  %.val190401 = phi i32 [ %.val190402, %.lr.ph390 ], [ %.val190402, %bb.cc ], [ %i.po, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 4
  %.val191 = load i32, ptr %i.pt, align 4, !tbaa !45
  %i.pu = sext i32 %.val191 to i64
  %i.pv = icmp slt i64 %indvars.iv.next453, %i.pu
  br i1 %i.pv, label %.lr.ph390, label %.critedge.loopexit, !llvm.loop !494

.critedge.loopexit:                               ; preds = %bb.cm
  %.pre478 = load i32, ptr %i.l, align 8, !tbaa !465
  %.pre479 = load i32, ptr %i.n, align 4, !tbaa !461
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.ca
  %i.pw = phi i32 [ %i.oo, %bb.ca ], [ %.pre479, %.critedge.loopexit ] ; 2 uses
  %i.px = phi i32 [ %i.op, %bb.ca ], [ %.pre478, %.critedge.loopexit ] ; 2 uses
  %storemerge352407 = phi ptr [ %storemerge352411, %bb.ca ], [ %storemerge352409, %.critedge.loopexit ] ; 2 uses
  %.val190400 = phi i32 [ 0, %bb.ca ], [ %.val190401, %.critedge.loopexit ] ; 2 uses
  %i.py = add nsw i32 %i.pw, %i.px
  %i.pz = load i32, ptr %i.au, align 4, !tbaa !466 ; 2 uses
  %i.qa = icmp slt i32 %i.py, %i.pz
  br i1 %i.qa, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %.critedge
  %invariant.gep = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv458
  %i.qb = sext i32 %i.px to i64
  %i.qc = sext i32 %i.pw to i64
  %i.qd = add nsw i64 %i.qb, %i.qc
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph392, %bb.cx
  %i.qe = phi i32 [ %i.pz, %.lr.ph392 ], [ %i.qv, %bb.cx ]
  %indvars.iv455 = phi i64 [ %i.qd, %.lr.ph392 ], [ %indvars.iv.next456, %bb.cx ] ; 2 uses
  %storemerge352406 = phi ptr [ %storemerge352407, %.lr.ph392 ], [ %storemerge352405, %bb.cx ] ; 7 uses
  %.val190399 = phi i32 [ %.val190400, %.lr.ph392 ], [ %.val190398, %bb.cx ] ; 8 uses
  %gep = getelementptr [256 x i8], ptr %invariant.gep, i64 %indvars.iv455
  %i.qf = load i32, ptr %gep, align 4, !tbaa !38  ; 2 uses
  %.not180 = icmp eq i32 %i.qf, 0
  br i1 %.not180, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qg = shl nsw i32 %i.qf, 1
  %i.qh = load i32, ptr %i.h, align 8, !tbaa !48
  %i.qi = icmp eq i32 %.val190399, %i.qh
  br i1 %i.qi, label %bb.cp, label %Vec_IntPush.exit272

bb.cp:                                            ; preds = %bb.co
  %i.qj = icmp slt i32 %.val190399, 16
  br i1 %i.qj, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %.not9.i.i270 = icmp eq ptr %storemerge352406, null
  br i1 %.not9.i.i270, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge352406, i64 noundef 64) #39
  br label %Vec_IntGrow.exit11.sink.split.i268

bb.cs:                                            ; preds = %bb.cq
  %i.ql = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit11.sink.split.i268

bb.ct:                                            ; preds = %bb.cp
  %i.qm = icmp samesign ult i32 %.val190399, 1073741823
  %i.qn = shl nuw nsw i32 %.val190399, 1
  %spec.select.i265 = select i1 %i.qm, i32 %i.qn, i32 2147483647 ; 4 uses
  %.not.i9.i266 = icmp samesign ult i32 %.val190399, %spec.select.i265
  br i1 %.not.i9.i266, label %bb.cu, label %Vec_IntPush.exit272

bb.cu:                                            ; preds = %bb.ct
  %.not9.i10.i267 = icmp eq ptr %storemerge352406, null
  %i.qo = zext nneg i32 %spec.select.i265 to i64
  %i.qp = shl nuw nsw i64 %i.qo, 2                ; 2 uses
  br i1 %.not9.i10.i267, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qq = tail call ptr @realloc(ptr noundef nonnull %storemerge352406, i64 noundef %i.qp) #39
  br label %Vec_IntGrow.exit11.sink.split.i268

bb.cw:                                            ; preds = %bb.cu
  %i.qr = tail call noalias ptr @malloc(i64 noundef %i.qp) #38
  br label %Vec_IntGrow.exit11.sink.split.i268

Vec_IntGrow.exit11.sink.split.i268:               ; preds = %bb.cv, %bb.cw, %bb.cr, %bb.cs
  %storemerge = phi ptr [ %i.ql, %bb.cs ], [ %i.qk, %bb.cr ], [ %i.qq, %bb.cv ], [ %i.qr, %bb.cw ]
  %spec.select.sink.i269 = phi i32 [ 16, %bb.cs ], [ 16, %bb.cr ], [ %spec.select.i265, %bb.cv ], [ %spec.select.i265, %bb.cw ]
  store i32 %spec.select.sink.i269, ptr %i.h, align 8, !tbaa !48
  br label %Vec_IntPush.exit272

Vec_IntPush.exit272:                              ; preds = %bb.co, %bb.ct, %Vec_IntGrow.exit11.sink.split.i268
  %storemerge352404 = phi ptr [ %storemerge352406, %bb.co ], [ %storemerge352406, %bb.ct ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i268 ] ; 2 uses
  %i.qs = add nsw i32 %.val190399, 1
  %i.qt = sext i32 %.val190399 to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %storemerge352404, i64 %i.qt
  store i32 %i.qg, ptr %i.qu, align 4, !tbaa !38
  %.pre480 = load i32, ptr %i.au, align 4, !tbaa !466
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cn, %Vec_IntPush.exit272
  %i.qv = phi i32 [ %i.qe, %bb.cn ], [ %.pre480, %Vec_IntPush.exit272 ] ; 2 uses
  %storemerge352405 = phi ptr [ %storemerge352406, %bb.cn ], [ %storemerge352404, %Vec_IntPush.exit272 ] ; 2 uses
  %.val190398 = phi i32 [ %.val190399, %bb.cn ], [ %i.qs, %Vec_IntPush.exit272 ] ; 2 uses
  %indvars.iv.next456 = add nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.qw = sext i32 %i.qv to i64
  %i.qx = icmp slt i64 %indvars.iv.next456, %i.qw
  br i1 %i.qx, label %bb.cn, label %._crit_edge393, !llvm.loop !495

._crit_edge393:                                   ; preds = %bb.cx, %.critedge
  %storemerge352403 = phi ptr [ %storemerge352407, %.critedge ], [ %storemerge352405, %bb.cx ] ; 7 uses
  %.val190397 = phi i32 [ %.val190400, %.critedge ], [ %.val190398, %bb.cx ] ; 4 uses
  %i.qy = icmp sgt i32 %.val190397, 0
  br i1 %i.qy, label %.lr.ph.i278, label %._crit_edge.thread.i273

.lr.ph.i278:                                      ; preds = %._crit_edge393
  %wide.trip.count.i279 = zext nneg i32 %.val190397 to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %.lr.ph.i278
  %indvars.iv.i280 = phi i64 [ 0, %.lr.ph.i278 ], [ %indvars.iv.next.i283, %bb.db ] ; 2 uses
  %.034.i281 = phi i32 [ 0, %.lr.ph.i278 ], [ %.1.i282, %bb.db ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %storemerge352403, i64 %indvars.iv.i280
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !38 ; 3 uses
  switch i32 %i.ra, label %bb.cz [
    i32 1, label %Exa5_ManAddClause.exit297
    i32 0, label %bb.db
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.rb = load i32, ptr %i.ay, align 8, !tbaa !476
  %i.rc = shl nsw i32 %i.rb, 1
  %.not31.i296 = icmp sgt i32 %i.ra, %i.rc
  br i1 %.not31.i296, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rd = add nsw i32 %.034.i281, 1
  %i.re = sext i32 %.034.i281 to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %storemerge352403, i64 %i.re
  store i32 %i.ra, ptr %i.rf, align 4, !tbaa !38
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %.1.i282 = phi i32 [ %.034.i281, %bb.cy ], [ %i.rd, %bb.da ], [ %.034.i281, %bb.cz ] ; 3 uses
  %indvars.iv.next.i283 = add nuw nsw i64 %indvars.iv.i280, 1 ; 2 uses
  %exitcond.not.i284 = icmp eq i64 %indvars.iv.next.i283, %wide.trip.count.i279
  br i1 %exitcond.not.i284, label %._crit_edge.i285, label %bb.cy, !llvm.loop !479

._crit_edge.i285:                                 ; preds = %bb.db
  %i.rg = load ptr, ptr %i.aw, align 8, !tbaa !480 ; 2 uses
  %.not.i286 = icmp eq ptr %i.rg, null
  br i1 %.not.i286, label %Exa5_ManAddClause.exit297, label %bb.dc

._crit_edge.thread.i273:                          ; preds = %._crit_edge393
  %i.rh = load ptr, ptr %i.aw, align 8, !tbaa !480 ; 2 uses
  %.not48.i274 = icmp eq ptr %i.rh, null
  br i1 %.not48.i274, label %Exa5_ManAddClause.exit297, label %.thread.i275

.thread.i275:                                     ; preds = %._crit_edge.thread.i273
  %i.ri = load i32, ptr %i.ax, align 4, !tbaa !481
  %i.rj = add nsw i32 %i.ri, 1
  store i32 %i.rj, ptr %i.ax, align 4, !tbaa !481
  br label %._crit_edge38.i276

bb.dc:                                            ; preds = %._crit_edge.i285
  %i.rk = load i32, ptr %i.ax, align 4, !tbaa !481
  %i.rl = add nsw i32 %i.rk, 1
  store i32 %i.rl, ptr %i.ax, align 4, !tbaa !481
  %i.rm = icmp sgt i32 %.1.i282, 0
  br i1 %i.rm, label %.lr.ph37.preheader.i287, label %._crit_edge38.i276

.lr.ph37.preheader.i287:                          ; preds = %bb.dc
  %wide.trip.count43.i288 = zext nneg i32 %.1.i282 to i64
  br label %.lr.ph37.i289

.lr.ph37.i289:                                    ; preds = %.lr.ph37.i289, %.lr.ph37.preheader.i287
  %indvars.iv40.i290 = phi i64 [ 0, %.lr.ph37.preheader.i287 ], [ %indvars.iv.next41.i292, %.lr.ph37.i289 ] ; 2 uses
  %i.rn = load ptr, ptr %i.aw, align 8, !tbaa !480
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %storemerge352403, i64 %indvars.iv40.i290
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !38 ; 2 uses
  %i.rq = and i32 %i.rp, 1
  %.not30.i291 = icmp eq i32 %i.rq, 0
  %i.rr = select i1 %.not30.i291, ptr @.str.57, ptr @.str.143
  %i.rs = ashr i32 %i.rp, 1
  %i.rt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rn, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.rr, i32 noundef %i.rs) #41 ; 0 uses
  %indvars.iv.next41.i292 = add nuw nsw i64 %indvars.iv40.i290, 1 ; 2 uses
  %exitcond44.not.i293 = icmp eq i64 %indvars.iv.next41.i292, %wide.trip.count43.i288
  br i1 %exitcond44.not.i293, label %._crit_edge38.loopexit.i294, label %.lr.ph37.i289, !llvm.loop !482

._crit_edge38.loopexit.i294:                      ; preds = %.lr.ph37.i289
  %.pre.i295 = load ptr, ptr %i.aw, align 8, !tbaa !480
  br label %._crit_edge38.i276

._crit_edge38.i276:                               ; preds = %._crit_edge38.loopexit.i294, %bb.dc, %.thread.i275
  %i.ru = phi ptr [ %.pre.i295, %._crit_edge38.loopexit.i294 ], [ %i.rg, %bb.dc ], [ %i.rh, %.thread.i275 ]
end_hunk_1
begin_hunk_2_@Exa5_ManAddClause4:bb.a
    i32 1, label %Exa5_ManAddClause.exit
    i32 0, label %._crit_edge.i
  ]

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.f, align 8, !tbaa !476
  %i.aa = shl nsw i32 %i.z, 1
  %.not31.i.4 = icmp sgt i32 %i.y, %i.aa
  br i1 %.not31.i.4, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = add nuw nsw i32 %.1.i.3, 1
  %i.ac = zext nneg i32 %.1.i.3 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac
  store i32 %i.y, ptr %i.ad, align 4, !tbaa !38
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.1.i.4 = phi i32 [ %.1.i.3, %bb.l ], [ %i.ab, %bb.n ], [ %.1.i.3, %bb.m ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16432 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !480 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %Exa5_ManAddClause.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16428 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !481
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !481
  %.not = icmp eq i32 %.1.i.4, 0
  br i1 %.not, label %._crit_edge38.i, label %.lr.ph37.preheader.i

.lr.ph37.preheader.i:                             ; preds = %bb.o
  %wide.trip.count43.i = zext nneg i32 %.1.i.4 to i64
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i, %.lr.ph37.preheader.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph37.preheader.i ], [ %indvars.iv.next41.i, %.lr.ph37.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !480
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv40.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38 ; 2 uses
  %i.am = and i32 %i.al, 1
  %.not30.i = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not30.i, ptr @.str.57, ptr @.str.143
  %i.ao = ashr i32 %i.al, 1
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.an, i32 noundef %i.ao) #41 ; 0 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %._crit_edge38.loopexit.i, label %.lr.ph37.i, !llvm.loop !482

._crit_edge38.loopexit.i:                         ; preds = %.lr.ph37.i
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !480
  br label %._crit_edge38.i

._crit_edge38.i:                                  ; preds = %._crit_edge38.loopexit.i, %bb.o
  %i.aq = phi ptr [ %.pre.i, %._crit_edge38.loopexit.i ], [ %i.af, %bb.o ]
  %i.ar = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.aq) ; 0 uses
  br label %Exa5_ManAddClause.exit

Exa5_ManAddClause.exit:                           ; preds = %bb.a, %bb.c, %bb.f, %bb.i, %bb.l, %._crit_edge.i, %._crit_edge38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Exa5_ManGenMint(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 %2, i32 %3) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 20 uses
  %i.b = alloca [5 x i32], align 16               ; 23 uses
  %i.c = alloca [64 x i32], align 16              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16424 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !476
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !461  ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !463    ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val82 = load i32, ptr %i.i, align 4, !tbaa !23
  %i.j = sub nsw i32 %1, %.val82
  %i.k = mul nsw i32 %i.j, %i.g
  %i.l = add nsw i32 %i.k, %i.e                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !474
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val84 = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.p = sext i32 %1 to i64                       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %.val84, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26   ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %Abc_Tt6FirstBit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = and i64 %i.r, 4294967295
  %i.u = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.v = lshr exact i64 %i.r, 32
  %spec.select.i = select i1 %i.u, i64 %i.v, i64 %i.r ; 3 uses
  %spec.select27.i = select i1 %i.u, i32 32, i32 0 ; 2 uses
  %i.w = and i64 %spec.select.i, 65535
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  %i.y = or disjoint i32 %spec.select27.i, 16
  %i.z = lshr exact i64 %spec.select.i, 16
  %.121.i = select i1 %i.x, i64 %i.z, i64 %spec.select.i ; 3 uses
  %.1.i = select i1 %i.x, i32 %i.y, i32 %spec.select27.i ; 2 uses
  %i.aa = and i64 %.121.i, 255
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  %i.ac = or disjoint i32 %.1.i, 8
  %i.ad = lshr exact i64 %.121.i, 8
  %.222.i = select i1 %i.ab, i64 %i.ad, i64 %.121.i ; 3 uses
  %.2.i = select i1 %i.ab, i32 %i.ac, i32 %.1.i   ; 2 uses
  %i.ae = and i64 %.222.i, 15
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  %i.ag = or disjoint i32 %.2.i, 4
  %i.ah = lshr exact i64 %.222.i, 4
  %.323.i = select i1 %i.af, i64 %i.ah, i64 %.222.i ; 3 uses
  %.3.i = select i1 %i.af, i32 %i.ag, i32 %.2.i   ; 2 uses
  %i.ai = and i64 %.323.i, 3
  %i.aj = icmp eq i64 %i.ai, 0                    ; 2 uses
  %i.ak = add nuw nsw i32 %.3.i, 2
  %i.al = lshr exact i64 %.323.i, 2
  %.424.i = select i1 %i.aj, i64 %i.al, i64 %.323.i
  %.4.i = select i1 %i.aj, i32 %i.ak, i32 %.3.i
  %i.am = trunc i64 %.424.i to i32
  %i.an = and i32 %i.am, 1
  %i.ao = xor i32 %i.an, 1
  %.5.i = add nuw nsw i32 %i.ao, %.4.i
  br label %Abc_Tt6FirstBit.exit

Abc_Tt6FirstBit.exit:                             ; preds = %bb.a, %bb.b
  %.025.i = phi i32 [ %.5.i, %bb.b ], [ -1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !465 ; 6 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.preheader120

.lr.ph:                                           ; preds = %Abc_Tt6FirstBit.exit
  %i.as = getelementptr i8, ptr %i.h, i64 8
  %.val83 = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.at = getelementptr inbounds [8 x i8], ptr %.val83, i64 %i.p
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.av = lshr <4 x i64> %broadcast.splat, %vec.ind
  %i.aw = lshr <4 x i64> %broadcast.splat, %step.add
  %i.ax = trunc <4 x i64> %i.av to <4 x i32>
  %i.ay = trunc <4 x i64> %i.aw to <4 x i32>
  %i.az = and <4 x i32> %i.ax, splat (i32 1)
  %i.ba = and <4 x i32> %i.ay, splat (i32 1)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %i.az, ptr %i.bb, align 16, !tbaa !38
  store <4 x i32> %i.ba, ptr %i.bc, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader120, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader120:                                    ; preds = %scalar.ph, %middle.block, %Abc_Tt6FirstBit.exit
  %i.be = icmp sgt i32 %i.g, 0
  br i1 %i.be, label %.lr.ph124.preheader, label %.preheader119

.lr.ph124.preheader:                              ; preds = %.preheader120
  %i.bf = sext i32 %i.aq to i64
  %wide.trip.count145 = zext nneg i32 %i.g to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.c, i64 %i.bf ; 2 uses
  %min.iters.check227 = icmp ult i32 %i.g, 8
  br i1 %min.iters.check227, label %.lr.ph124.preheader257, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph124.preheader
  %n.vec229 = and i64 %wide.trip.count145, 2147483640 ; 3 uses
  %broadcast.splatinsert230 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat231 = shufflevector <4 x i32> %broadcast.splatinsert230, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat231
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph228
  %index233 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body232 ] ; 2 uses
  %vec.ind234 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph228 ], [ %vec.ind.next237, %vector.body232 ] ; 3 uses
  %i.bg = getelementptr [4 x i8], ptr %invariant.gep, i64 %index233 ; 2 uses
  %i.bh = add <4 x i32> %broadcast.splat231, %vec.ind234
  %.reass = add <4 x i32> %vec.ind234, %invariant.op
  %i.bi = shl <4 x i32> %i.bh, splat (i32 1)
  %i.bj = shl <4 x i32> %.reass, splat (i32 1)
  %i.bk = getelementptr i8, ptr %i.bg, i64 16
  store <4 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !38
  store <4 x i32> %i.bj, ptr %i.bk, align 4, !tbaa !38
  %index.next236 = add nuw i64 %index233, 8       ; 2 uses
  %vec.ind.next237 = add <4 x i32> %vec.ind234, splat (i32 8)
  %i.bl = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.bl, label %middle.block238, label %vector.body232, !llvm.loop !500

middle.block238:                                  ; preds = %vector.body232
  %cmp.n239 = icmp eq i64 %n.vec229, %wide.trip.count145
  br i1 %cmp.n239, label %.preheader119, label %.lr.ph124.preheader257

.lr.ph124.preheader257:                           ; preds = %.lr.ph124.preheader, %middle.block238
  %indvars.iv142.ph = phi i64 [ 0, %.lr.ph124.preheader ], [ %n.vec229, %middle.block238 ]
  br label %.lr.ph124

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bm = lshr i64 %i.au, %indvars.iv
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader120, label %scalar.ph, !llvm.loop !501

.preheader119:                                    ; preds = %.lr.ph124, %middle.block238, %.preheader120
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !470 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph126, label %.preheader118

.lr.ph126:                                        ; preds = %.preheader119
  %i.bt = add nsw i32 %i.aq, %i.g
  %i.bu = sext i32 %i.bt to i64
  %wide.trip.count150 = zext nneg i32 %i.br to i64 ; 3 uses
  %invariant.gep223 = getelementptr [4 x i8], ptr %i.c, i64 %i.bu ; 2 uses
  %min.iters.check242 = icmp ult i32 %i.br, 8
  br i1 %min.iters.check242, label %scalar.ph241.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph126
  %n.vec244 = and i64 %wide.trip.count150, 2147483640 ; 3 uses
  %broadcast.splatinsert245 = insertelement <4 x i32> poison, i32 %.025.i, i64 0
  %broadcast.splat246 = shufflevector <4 x i32> %broadcast.splatinsert245, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph243
  %index248 = phi i64 [ 0, %vector.ph243 ], [ %index.next251, %vector.body247 ] ; 2 uses
  %vec.ind249 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph243 ], [ %vec.ind.next252, %vector.body247 ] ; 3 uses
  %step.add250 = add <4 x i32> %vec.ind249, splat (i32 4)
  %i.bv = lshr <4 x i32> %broadcast.splat246, %vec.ind249
  %i.bw = lshr <4 x i32> %broadcast.splat246, %step.add250
  %i.bx = and <4 x i32> %i.bv, splat (i32 1)
  %i.by = and <4 x i32> %i.bw, splat (i32 1)
  %i.bz = getelementptr [4 x i8], ptr %invariant.gep223, i64 %index248 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store <4 x i32> %i.bx, ptr %i.bz, align 4, !tbaa !38
  store <4 x i32> %i.by, ptr %i.ca, align 4, !tbaa !38
  %index.next251 = add nuw i64 %index248, 8       ; 2 uses
  %vec.ind.next252 = add <4 x i32> %vec.ind249, splat (i32 8)
  %i.cb = icmp eq i64 %index.next251, %n.vec244
  br i1 %i.cb, label %middle.block253, label %vector.body247, !llvm.loop !502

middle.block253:                                  ; preds = %vector.body247
  %cmp.n254 = icmp eq i64 %n.vec244, %wide.trip.count150
  br i1 %cmp.n254, label %.preheader118, label %scalar.ph241.preheader

scalar.ph241.preheader:                           ; preds = %.lr.ph126, %middle.block253
  %indvars.iv147.ph = phi i64 [ 0, %.lr.ph126 ], [ %n.vec244, %middle.block253 ]
  br label %scalar.ph241

.lr.ph124:                                        ; preds = %.lr.ph124.preheader257, %.lr.ph124
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.lr.ph124 ], [ %indvars.iv142.ph, %.lr.ph124.preheader257 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv142
  %i.cc = trunc i64 %indvars.iv142 to i32
  %.tr = add i32 %i.l, %i.cc
  %i.cd = shl i32 %.tr, 1
  store i32 %i.cd, ptr %gep, align 4, !tbaa !38
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %.preheader119, label %.lr.ph124, !llvm.loop !503

.preheader118:                                    ; preds = %scalar.ph241, %middle.block253, %.preheader119
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16440 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !464 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.val130 = load i32, ptr %i.cg, align 4, !tbaa !45
  %i.ch = icmp sgt i32 %.val130, 0
  br i1 %i.ch, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %.preheader118
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16432 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16428 ; 4 uses
  br label %bb.c

scalar.ph241:                                     ; preds = %scalar.ph241.preheader, %scalar.ph241
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %scalar.ph241 ], [ %indvars.iv147.ph, %scalar.ph241.preheader ] ; 3 uses
  %i.co = trunc nuw nsw i64 %indvars.iv147 to i32
  %i.cp = lshr i32 %.025.i, %i.co
  %i.cq = and i32 %i.cp, 1
  %gep224 = getelementptr [4 x i8], ptr %invariant.gep223, i64 %indvars.iv147
  store i32 %i.cq, ptr %gep224, align 4, !tbaa !38
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.preheader118, label %scalar.ph241, !llvm.loop !504

bb.c:                                             ; preds = %.lr.ph133, %.loopexit117
  %i.cr = phi ptr [ %i.cf, %.lr.ph133 ], [ %i.gh, %.loopexit117 ] ; 3 uses
  %indvars.iv154 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next155, %.loopexit117 ] ; 6 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val81 = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv154
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !38 ; 4 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit117, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cw = and i32 %i.cu, 255
  %i.cx = lshr i32 %i.cu, 8
  %i.cy = and i32 %i.cx, 255
  %i.cz = lshr i32 %i.cu, 16
  %i.da = and i32 %i.cz, 255                      ; 2 uses
  %i.db = load i32, ptr %i.ap, align 8, !tbaa !465
  %i.dc = sub nsw i32 %i.da, %i.db
  %i.dd = mul nsw i32 %i.dc, 3
  %i.de = zext nneg i32 %i.cy to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !38 ; 2 uses
  %i.dh = zext nneg i32 %i.cw to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !38
  %i.dk = zext nneg i32 %i.da to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !38 ; 5 uses
  %cond = icmp eq i64 %indvars.iv154, 0
  br i1 %cond, label %.loopexit117, label %.preheader116.preheader

.preheader116.preheader:                          ; preds = %bb.d
  %i.dn = xor i32 %i.dm, 1                        ; 3 uses
  %indvars.iv154.tr = trunc i64 %indvars.iv154 to i32
  %i.do = shl i32 %indvars.iv154.tr, 1
  %i.dp = or disjoint i32 %i.do, 1                ; 3 uses
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116.preheader, %Exa5_ManAddClause4.exit.1
  %.074128 = phi i32 [ %i.gg, %Exa5_ManAddClause4.exit.1 ], [ 0, %.preheader116.preheader ] ; 5 uses
  %i.dq = and i32 %.074128, 1                     ; 2 uses
  %i.dr = xor i32 %i.dg, %i.dq                    ; 8 uses
  %i.ds = icmp samesign ugt i32 %.074128, 1
  %i.dt = zext i1 %i.ds to i32
  %i.du = xor i32 %i.dj, %i.dt                    ; 9 uses
  %.not80 = icmp eq i32 %.074128, 0
  %i.dv = add i32 %.074128, %i.dd
  %i.dw = shl nsw i32 %i.dv, 1
  %i.dx = select i1 %.not80, i32 0, i32 %i.dw     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 %i.dp, ptr %i.b, align 16, !tbaa !38
  store i32 %i.dr, ptr %i.ci, align 4, !tbaa !38
  store i32 %i.du, ptr %i.cj, align 8, !tbaa !38
  store i32 %i.dn, ptr %i.ck, align 4, !tbaa !38
  store i32 %i.dx, ptr %i.cl, align 16, !tbaa !38
  %i.dy = load i32, ptr %i.d, align 8, !tbaa !476 ; 9 uses
  %i.dz = sext i32 %i.dy to i64                   ; 5 uses
  %.not31.i.i = icmp slt i64 %indvars.iv154, %i.dz ; 3 uses
  %spec.select.i85 = zext i1 %.not31.i.i to i32   ; 2 uses
  switch i32 %i.dr, label %bb.e [
    i32 1, label %Exa5_ManAddClause4.exit.thread
    i32 0, label %bb.g
  ]

Exa5_ManAddClause4.exit.thread:                   ; preds = %.preheader116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 %i.dp, ptr %i.b, align 16, !tbaa !38
  store i32 %i.dr, ptr %i.ci, align 4, !tbaa !38
  store i32 %i.du, ptr %i.cj, align 8, !tbaa !38
  store i32 %i.dm, ptr %i.ck, align 4, !tbaa !38
  br label %Exa5_ManAddClause4.exit.1

bb.e:                                             ; preds = %.preheader116
  %i.ea = shl nsw i32 %i.dy, 1
  %.not31.i.1.i = icmp sgt i32 %i.dr, %i.ea
  br i1 %.not31.i.1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eb = select i1 %.not31.i.i, i32 2, i32 1
  %.sroa.sel = select i1 %.not31.i.i, ptr %i.ci, ptr %i.b
  store i32 %i.dr, ptr %.sroa.sel, align 4, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader116
  %.1.i.1.i = phi i32 [ %spec.select.i85, %.preheader116 ], [ %i.eb, %bb.f ], [ %spec.select.i85, %bb.e ] ; 4 uses
  switch i32 %i.du, label %bb.h [
    i32 1, label %Exa5_ManAddClause4.exit
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ec = shl nsw i32 %i.dy, 1
  %.not31.i.2.i = icmp sgt i32 %i.du, %i.ec
  br i1 %.not31.i.2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = add nuw nsw i32 %.1.i.1.i, 1
  %i.ee = zext nneg i32 %.1.i.1.i to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ee
  store i32 %i.du, ptr %i.ef, align 4, !tbaa !38
  %.pre.i = load i32, ptr %i.ck, align 4, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.eg = phi i32 [ %i.dn, %bb.g ], [ %.pre.i, %bb.i ], [ %i.dn, %bb.h ] ; 3 uses
  %.1.i.2.i = phi i32 [ %.1.i.1.i, %bb.g ], [ %i.ed, %bb.i ], [ %.1.i.1.i, %bb.h ] ; 4 uses
  switch i32 %i.eg, label %bb.k [
    i32 1, label %Exa5_ManAddClause4.exit
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.eh = shl nsw i32 %i.dy, 1
  %.not31.i.3.i = icmp sgt i32 %i.eg, %i.eh
  br i1 %.not31.i.3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ei = add nuw nsw i32 %.1.i.2.i, 1
  %i.ej = zext nneg i32 %.1.i.2.i to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ej
  store i32 %i.eg, ptr %i.ek, align 4, !tbaa !38
  %.pre = load i32, ptr %i.cl, align 16, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.el = phi i32 [ %i.dx, %bb.j ], [ %.pre, %bb.l ], [ %i.dx, %bb.k ] ; 3 uses
  %.1.i.3.i = phi i32 [ %.1.i.2.i, %bb.j ], [ %i.ei, %bb.l ], [ %.1.i.2.i, %bb.k ] ; 4 uses
  switch i32 %i.el, label %bb.n [
    i32 1, label %Exa5_ManAddClause4.exit
    i32 0, label %._crit_edge.i.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.em = shl nsw i32 %i.dy, 1
  %.not31.i.4.i = icmp sgt i32 %i.el, %i.em
  br i1 %.not31.i.4.i, label %._crit_edge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = add nuw nsw i32 %.1.i.3.i, 1
  %i.eo = zext nneg i32 %.1.i.3.i to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eo
  store i32 %i.el, ptr %i.ep, align 4, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.n, %bb.m
  %.1.i.4.i = phi i32 [ %.1.i.3.i, %bb.m ], [ %i.en, %bb.o ], [ %.1.i.3.i, %bb.n ] ; 2 uses
  %i.eq = load ptr, ptr %i.cm, align 8, !tbaa !480 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i, label %Exa5_ManAddClause4.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.er = load i32, ptr %i.cn, align 4, !tbaa !481
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.cn, align 4, !tbaa !481
  %.not.i = icmp eq i32 %.1.i.4.i, 0
  br i1 %.not.i, label %._crit_edge38.i.i, label %.lr.ph37.preheader.i.i

.lr.ph37.preheader.i.i:                           ; preds = %bb.p
  %wide.trip.count43.i.i = zext nneg i32 %.1.i.4.i to i64
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.lr.ph37.i.i, %.lr.ph37.preheader.i.i
  %indvars.iv40.i.i = phi i64 [ 0, %.lr.ph37.preheader.i.i ], [ %indvars.iv.next41.i.i, %.lr.ph37.i.i ] ; 2 uses
  %i.et = load ptr, ptr %i.cm, align 8, !tbaa !480
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv40.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !38 ; 2 uses
end_hunk_2
begin_hunk_3_@Exa6_ManGenMint:bb.a
  store <4 x i32> %i.bo, ptr %i.bq, align 16, !tbaa !38
  store <4 x i32> %i.bp, ptr %i.br, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !635

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader238, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader238:                                    ; preds = %scalar.ph, %middle.block, %.preheader239
  %i.bt = icmp sgt i32 %i.k, 0
  br i1 %i.bt, label %.lr.ph244.preheader, label %._crit_edge

.lr.ph244.preheader:                              ; preds = %.preheader238
  %i.bu = sext i32 %i.bf to i64
  %wide.trip.count280 = zext nneg i32 %i.k to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.bu ; 2 uses
  %min.iters.check404 = icmp ult i32 %i.k, 8
  br i1 %min.iters.check404, label %.lr.ph244.preheader453, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph244.preheader
  %n.vec406 = and i64 %wide.trip.count280, 2147483640 ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat408 = shufflevector <4 x i32> %broadcast.splatinsert407, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 12), %broadcast.splat408
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph405
  %index410 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body409 ] ; 2 uses
  %vec.ind411 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph405 ], [ %vec.ind.next414, %vector.body409 ] ; 3 uses
  %i.bv = mul <4 x i32> %vec.ind411, splat (i32 3)
  %i.bw = mul <4 x i32> %vec.ind411, splat (i32 3)
  %i.bx = add <4 x i32> %i.bv, %broadcast.splat408
  %.reass = add <4 x i32> %i.bw, %invariant.op
  %i.by = shl <4 x i32> %i.bx, splat (i32 1)
  %i.bz = shl <4 x i32> %.reass, splat (i32 1)
  %i.ca = add <4 x i32> %i.by, splat (i32 4)
  %i.cb = add <4 x i32> %i.bz, splat (i32 4)
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep, i64 %index410 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store <4 x i32> %i.ca, ptr %i.cc, align 4, !tbaa !38
  store <4 x i32> %i.cb, ptr %i.cd, align 4, !tbaa !38
  %index.next413 = add nuw i64 %index410, 8       ; 2 uses
  %vec.ind.next414 = add <4 x i32> %vec.ind411, splat (i32 8)
  %i.ce = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.ce, label %middle.block415, label %vector.body409, !llvm.loop !636

middle.block415:                                  ; preds = %vector.body409
  %cmp.n416 = icmp eq i64 %n.vec406, %wide.trip.count280
  br i1 %cmp.n416, label %._crit_edge, label %.lr.ph244.preheader453

.lr.ph244.preheader453:                           ; preds = %.lr.ph244.preheader, %middle.block415
  %indvars.iv277.ph = phi i64 [ 0, %.lr.ph244.preheader ], [ %n.vec406, %middle.block415 ]
  br label %.lr.ph244

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cf = lshr i64 %i.bj, %indvars.iv
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader238, label %scalar.ph, !llvm.loop !637

.lr.ph244:                                        ; preds = %.lr.ph244.preheader453, %.lr.ph244
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph244 ], [ %indvars.iv277.ph, %.lr.ph244.preheader453 ] ; 3 uses
  %i.cj = trunc i64 %indvars.iv277 to i32
  %i.ck = mul i32 %i.cj, 3
  %i.cl = add i32 %i.ck, %i.q
  %i.cm = shl i32 %i.cl, 1
  %i.cn = add i32 %i.cm, 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv277
  store i32 %i.cn, ptr %gep, align 4, !tbaa !38
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._crit_edge, label %.lr.ph244, !llvm.loop !638

._crit_edge:                                      ; preds = %.lr.ph244, %middle.block415, %.preheader238
  br i1 %.0.i, label %bb.c, label %.preheader236

.preheader236:                                    ; preds = %._crit_edge
  %i.co = icmp sgt i32 %i.bb, 0
  br i1 %i.co, label %.lr.ph246, label %.loopexit237

.lr.ph246:                                        ; preds = %.preheader236
  %i.cp = add nsw i32 %i.bf, %i.k
  %i.cq = sext i32 %i.cp to i64
  %wide.trip.count285 = zext nneg i32 %i.bb to i64 ; 3 uses
  %invariant.gep392 = getelementptr [4 x i8], ptr %i.d, i64 %i.cq ; 2 uses
  %min.iters.check419 = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph246
  %n.vec421 = and i64 %wide.trip.count285, 2147483640 ; 3 uses
  %broadcast.splatinsert422 = insertelement <4 x i32> poison, i32 %.025.i220, i64 0
  %broadcast.splat423 = shufflevector <4 x i32> %broadcast.splatinsert422, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph420
  %index425 = phi i64 [ 0, %vector.ph420 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %vec.ind426 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph420 ], [ %vec.ind.next429, %vector.body424 ] ; 3 uses
  %step.add427 = add <4 x i32> %vec.ind426, splat (i32 4)
  %i.cr = lshr <4 x i32> %broadcast.splat423, %vec.ind426
  %i.cs = lshr <4 x i32> %broadcast.splat423, %step.add427
  %i.ct = and <4 x i32> %i.cr, splat (i32 1)
  %i.cu = and <4 x i32> %i.cs, splat (i32 1)
  %i.cv = getelementptr [4 x i8], ptr %invariant.gep392, i64 %index425 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store <4 x i32> %i.ct, ptr %i.cv, align 4, !tbaa !38
  store <4 x i32> %i.cu, ptr %i.cw, align 4, !tbaa !38
  %index.next428 = add nuw i64 %index425, 8       ; 2 uses
  %vec.ind.next429 = add <4 x i32> %vec.ind426, splat (i32 8)
  %i.cx = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.cx, label %middle.block430, label %vector.body424, !llvm.loop !639

middle.block430:                                  ; preds = %vector.body424
  %cmp.n431 = icmp eq i64 %n.vec421, %wide.trip.count285
  br i1 %cmp.n431, label %.loopexit237, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %.lr.ph246, %middle.block430
  %indvars.iv282.ph = phi i64 [ 0, %.lr.ph246 ], [ %n.vec421, %middle.block430 ]
  br label %scalar.ph418

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %scalar.ph418 ], [ %indvars.iv282.ph, %scalar.ph418.preheader ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv282 to i32
  %i.cz = lshr i32 %.025.i220, %i.cy
  %i.da = and i32 %i.cz, 1
  %gep393 = getelementptr [4 x i8], ptr %invariant.gep392, i64 %indvars.iv282
  store i32 %i.da, ptr %gep393, align 4, !tbaa !38
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count285
  br i1 %exitcond286.not, label %.loopexit237, label %scalar.ph418, !llvm.loop !640

bb.c:                                             ; preds = %._crit_edge
  %i.db = icmp eq i32 %i.bb, 0
  %i.dc = trunc i64 %i.w to i1
  %i.dd = select i1 %i.dc, i64 3, i64 0
  %i.de = icmp ult i32 %i.bb, 2
  %i.df = and i64 %i.w, 3
  %i.dg = select i1 %i.db, i64 %i.dd, i64 %i.df
  %i.dh = mul nuw nsw i64 %i.dg, 5
  %.126.i = select i1 %i.de, i64 %i.dh, i64 %i.w
  %i.di = icmp ult i32 %i.bb, 3
  %i.dj = and i64 %.126.i, 15
  %i.dk = mul nuw nsw i64 %i.dj, 17
  %.227.i = select i1 %i.di, i64 %i.dk, i64 %i.w
  %i.dl = icmp ult i32 %i.bb, 4
  %i.dm = and i64 %.227.i, 255
  %i.dn = mul nuw nsw i64 %i.dm, 257
  %.328.i = select i1 %i.dl, i64 %i.dn, i64 %i.w
  %i.do = icmp ult i32 %i.bb, 5
  %i.dp = and i64 %.328.i, 65535
  %i.dq = mul nuw nsw i64 %i.dp, 65537
  %.429.i = select i1 %i.do, i64 %i.dq, i64 %i.w
  %i.dr = icmp ult i32 %i.bb, 6
  %i.ds = and i64 %.429.i, 4294967295
  %i.dt = mul nuw i64 %i.ds, 4294967297
  %.5.i164 = select i1 %i.dr, i64 %i.dt, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i32 0, ptr %i.e, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !605 ; 2 uses
  %i.dw = add nsw i32 %i.dv, %i.i                 ; 3 uses
  %i.dx = add nsw i32 %i.dv, %i.bb
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !605
  %i.dy = icmp sgt i32 %i.bb, 0
  br i1 %i.dy, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %bb.c
  %i.dz = add nsw i32 %i.bf, %i.k
  %i.ea = sext i32 %i.dz to i64
  %wide.trip.count290 = zext nneg i32 %i.bb to i64 ; 3 uses
  %invariant.gep394 = getelementptr [4 x i8], ptr %i.d, i64 %i.ea ; 2 uses
  %min.iters.check434 = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check434, label %scalar.ph433.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %.lr.ph249
  %n.vec436 = and i64 %wide.trip.count290, 2147483640 ; 3 uses
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op459 = add <4 x i32> splat (i32 4), %broadcast.splat438
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph435
  %index440 = phi i64 [ 0, %vector.ph435 ], [ %index.next443, %vector.body439 ] ; 2 uses
  %vec.ind441 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph435 ], [ %vec.ind.next444, %vector.body439 ] ; 3 uses
  %i.eb = getelementptr [4 x i8], ptr %invariant.gep394, i64 %index440 ; 2 uses
  %i.ec = add <4 x i32> %broadcast.splat438, %vec.ind441
  %.reass460 = add <4 x i32> %vec.ind441, %invariant.op459
  %i.ed = shl <4 x i32> %i.ec, splat (i32 1)
  %i.ee = shl <4 x i32> %.reass460, splat (i32 1)
  %i.ef = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> %i.ed, ptr %i.eb, align 4, !tbaa !38
  store <4 x i32> %i.ee, ptr %i.ef, align 4, !tbaa !38
  %index.next443 = add nuw i64 %index440, 8       ; 2 uses
  %vec.ind.next444 = add <4 x i32> %vec.ind441, splat (i32 8)
  %i.eg = icmp eq i64 %index.next443, %n.vec436
  br i1 %i.eg, label %middle.block445, label %vector.body439, !llvm.loop !641

middle.block445:                                  ; preds = %vector.body439
  %cmp.n446 = icmp eq i64 %n.vec436, %wide.trip.count290
  br i1 %cmp.n446, label %._crit_edge250, label %scalar.ph433.preheader

scalar.ph433.preheader:                           ; preds = %.lr.ph249, %middle.block445
  %indvars.iv287.ph = phi i64 [ 0, %.lr.ph249 ], [ %n.vec436, %middle.block445 ]
  br label %scalar.ph433

scalar.ph433:                                     ; preds = %scalar.ph433.preheader, %scalar.ph433
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %scalar.ph433 ], [ %indvars.iv287.ph, %scalar.ph433.preheader ] ; 3 uses
  %gep395 = getelementptr [4 x i8], ptr %invariant.gep394, i64 %indvars.iv287
  %i.eh = trunc i64 %indvars.iv287 to i32
  %.tr = add i32 %i.dw, %i.eh
  %i.ei = shl i32 %.tr, 1
  store i32 %i.ei, ptr %gep395, align 4, !tbaa !38
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %._crit_edge250, label %scalar.ph433, !llvm.loop !642

._crit_edge250:                                   ; preds = %scalar.ph433, %middle.block445, %bb.c
  %.not152 = icmp eq i64 %.5.i164, -1
  br i1 %.not152, label %.loopexit235, label %bb.d

bb.d:                                             ; preds = %._crit_edge250
  %i.ej = xor i64 %.5.i164, -1                    ; 2 uses
  %i.ek = call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.ej, i64 noundef %i.ej, i32 noundef %i.bb, ptr noundef %i.f, ptr noundef %i.e) ; 0 uses
  %i.el = load i32, ptr %i.e, align 4, !tbaa !38  ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.preheader234.lr.ph, label %.loopexit235

.preheader234.lr.ph:                              ; preds = %bb.d
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32824 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 4 uses
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.lr.ph, %Exa6_ManAddClause.exit
  %i.ep = phi i32 [ %i.el, %.preheader234.lr.ph ], [ %i.gh, %Exa6_ManAddClause.exit ] ; 3 uses
  %indvars.iv293 = phi i64 [ 0, %.preheader234.lr.ph ], [ %indvars.iv.next294, %Exa6_ManAddClause.exit ] ; 2 uses
  %i.eq = load i32, ptr %i.ba, align 8, !tbaa !603 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph253, label %._crit_edge.thread.i

.lr.ph253:                                        ; preds = %.preheader234
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv293
  %i.et = load i32, ptr %i.es, align 4, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph253, %bb.g
  %.0252 = phi i32 [ 0, %.lr.ph253 ], [ %.1, %bb.g ] ; 3 uses
  %.1139251 = phi i32 [ 0, %.lr.ph253 ], [ %i.fg, %bb.g ] ; 3 uses
  %i.eu = shl nuw nsw i32 %.1139251, 1
  %i.ev = ashr i32 %i.et, %i.eu
  %i.ew = and i32 %i.ev, 3                        ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1
  %or.cond = icmp ult i32 %i.ex, 2
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ey = add nsw i32 %.1139251, %i.dw
  %i.ez = icmp ne i32 %i.ew, 1
  %i.fa = zext i1 %i.ez to i32
  %i.fb = shl nsw i32 %i.ey, 1
  %i.fc = or disjoint i32 %i.fb, %i.fa
  %i.fd = add nsw i32 %.0252, 1
  %i.fe = sext i32 %.0252 to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fe
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %i.fd, %bb.f ], [ %.0252, %bb.e ] ; 3 uses
  %i.fg = add nuw nsw i32 %.1139251, 1            ; 2 uses
  %exitcond292.not = icmp eq i32 %i.fg, %i.eq
  br i1 %exitcond292.not, label %._crit_edge254, label %bb.e, !llvm.loop !643

._crit_edge254:                                   ; preds = %bb.g
  %i.fh = icmp sgt i32 %.1, 0
  br i1 %i.fh, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %._crit_edge254
  %wide.trip.count.i = zext nneg i32 %.1 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.035.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i165, %bb.k ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !38 ; 3 uses
  switch i32 %i.fj, label %bb.i [
    i32 1, label %Exa6_ManAddClause.exit
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !604
  %i.fl = load i32, ptr %i.du, align 4, !tbaa !605
  %i.fm = add nsw i32 %i.fl, %i.fk
  %i.fn = shl nsw i32 %i.fm, 1
  %.not32.i = icmp sgt i32 %i.fj, %i.fn
  br i1 %.not32.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fo = add nsw i32 %.035.i, 1
  %i.fp = sext i32 %.035.i to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fp
  store i32 %i.fj, ptr %i.fq, align 4, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1.i165 = phi i32 [ %.035.i, %bb.h ], [ %i.fo, %bb.j ], [ %.035.i, %bb.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !610

._crit_edge.i:                                    ; preds = %bb.k
  %i.fr = load ptr, ptr %i.en, align 8, !tbaa !611 ; 2 uses
  %.not.i = icmp eq ptr %i.fr, null
  br i1 %.not.i, label %Exa6_ManAddClause.exit, label %bb.l

._crit_edge.thread.i:                             ; preds = %.preheader234, %._crit_edge254
  %i.fs = load ptr, ptr %i.en, align 8, !tbaa !611 ; 2 uses
  %.not49.i = icmp eq ptr %i.fs, null
  br i1 %.not49.i, label %Exa6_ManAddClause.exit, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.ft = load i32, ptr %i.eo, align 8, !tbaa !612
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.eo, align 8, !tbaa !612
  br label %._crit_edge39.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.fv = load i32, ptr %i.eo, align 8, !tbaa !612
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.eo, align 8, !tbaa !612
  %i.fx = icmp sgt i32 %.1.i165, 0
  br i1 %i.fx, label %.lr.ph38.preheader.i, label %._crit_edge39.i

.lr.ph38.preheader.i:                             ; preds = %bb.l
  %wide.trip.count44.i = zext nneg i32 %.1.i165 to i64
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph38.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph38.i ] ; 2 uses
  %i.fy = load ptr, ptr %i.en, align 8, !tbaa !611
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv41.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !38 ; 2 uses
  %i.gb = and i32 %i.ga, 1
  %.not31.i = icmp eq i32 %i.gb, 0
  %i.gc = select i1 %.not31.i, ptr @.str.57, ptr @.str.143
  %i.gd = ashr i32 %i.ga, 1
  %i.ge = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.gc, i32 noundef %i.gd) #41 ; 0 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %._crit_edge39.loopexit.i, label %.lr.ph38.i, !llvm.loop !613

._crit_edge39.loopexit.i:                         ; preds = %.lr.ph38.i
  %.pre.i = load ptr, ptr %i.en, align 8, !tbaa !611
  br label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %._crit_edge39.loopexit.i, %bb.l, %.thread.i
  %i.gf = phi ptr [ %.pre.i, %._crit_edge39.loopexit.i ], [ %i.fr, %bb.l ], [ %i.fs, %.thread.i ]
  %i.gg = call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.gf) ; 0 uses
  %.pre = load i32, ptr %i.e, align 4, !tbaa !38
  br label %Exa6_ManAddClause.exit

Exa6_ManAddClause.exit:                           ; preds = %bb.h, %._crit_edge.i, %._crit_edge.thread.i, %._crit_edge39.i
  %i.gh = phi i32 [ %.pre, %._crit_edge39.i ], [ %i.ep, %._crit_edge.i ], [ %i.ep, %._crit_edge.thread.i ], [ %i.ep, %bb.h ] ; 2 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next294, %i.gi
  br i1 %i.gj, label %.preheader234, label %.loopexit235.loopexit, !llvm.loop !644

.loopexit235.loopexit:                            ; preds = %Exa6_ManAddClause.exit
  %.pre324.pre = load i32, ptr %i.be, align 8, !tbaa !591
  %.pre325.pre = load i32, ptr %i.j, align 4, !tbaa !588
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.d, %._crit_edge250
  %.pre325 = phi i32 [ %.pre325.pre, %.loopexit235.loopexit ], [ %i.k, %bb.d ], [ %i.k, %._crit_edge250 ]
  %.pre324 = phi i32 [ %.pre324.pre, %.loopexit235.loopexit ], [ %i.bf, %bb.d ], [ %i.bf, %._crit_edge250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %.loopexit237

.loopexit237:                                     ; preds = %scalar.ph418, %middle.block430, %.preheader236, %.loopexit235
  %i.gk = phi i32 [ %.pre325, %.loopexit235 ], [ %i.k, %.preheader236 ], [ %i.k, %middle.block430 ], [ %i.k, %scalar.ph418 ] ; 3 uses
  %i.gl = phi i32 [ %.pre324, %.loopexit235 ], [ %i.bf, %.preheader236 ], [ %i.bf, %middle.block430 ], [ %i.bf, %scalar.ph418 ] ; 4 uses
  %i.gm = add nsw i32 %i.gk, %i.gl
  %i.gn = icmp sgt i32 %i.gk, 0
  br i1 %i.gn, label %.lr.ph266, label %.preheader227

.lr.ph266:                                        ; preds = %.loopexit237
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 10 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 32824 ; 12 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 8 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.gy = sext i32 %i.gl to i64
  br label %bb.m

.preheader227:                                    ; preds = %bb.bc, %.loopexit237
  %i.gz = phi i32 [ %i.gk, %.loopexit237 ], [ %i.nx, %bb.bc ] ; 2 uses
  %i.ha = phi i32 [ %i.gl, %.loopexit237 ], [ %i.nw, %bb.bc ] ; 2 uses
  %.lcssa = phi i32 [ %i.gm, %.loopexit237 ], [ %i.ny, %bb.bc ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !593 ; 2 uses
  %i.hd = icmp slt i32 %.lcssa, %i.hc
  br i1 %i.hd, label %.preheader226.lr.ph, label %.loopexit228
end_hunk_3
begin_hunk_4_@Exa6_ManFindPolar:bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod20 = icmp eq i32 %1, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Exa6_ManPolarMinterm.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Exa6_ManPolarMinterm.exit.thread ] ; 5 uses
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %.01011.i = phi i64 [ %.1.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.c = shl nuw i64 1, %indvars.iv.i
  %i.d = and i64 %i.c, %0
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = xor i64 %indvars.iv.i, %indvars.iv
  %i.f = shl nuw i64 1, %i.e
  %i.g = select i1 %.not.i, i64 0, i64 %i.f
  %.1.i = or i64 %i.g, %.01011.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.h = shl nuw i64 2, %indvars.iv.i
  %i.i = and i64 %i.h, %0
  %.not.i.1 = icmp eq i64 %i.i, 0
  %i.j = xor i64 %indvars.iv.next.i, %indvars.iv
  %i.k = shl nuw i64 1, %i.j
  %i.l = select i1 %.not.i.1, i64 0, i64 %i.k
  %.1.i.1 = or i64 %i.l, %.1.i                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Exa6_ManPolarMinterm.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !673

Exa6_ManPolarMinterm.exit.unr-lcssa:              ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %Exa6_ManPolarMinterm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Exa6_ManPolarMinterm.exit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %Exa6_ManPolarMinterm.exit.unr-lcssa ] ; 2 uses
  %.01011.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %Exa6_ManPolarMinterm.exit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.m = shl nuw i64 1, %indvars.iv.i.epil.init
  %i.n = and i64 %i.m, %0
  %.not.i.epil = icmp eq i64 %i.n, 0
  %i.o = xor i64 %indvars.iv.i.epil.init, %indvars.iv
  %i.p = shl nuw i64 1, %i.o
  %i.q = select i1 %.not.i.epil, i64 0, i64 %i.p
  %.1.i.epil = or i64 %i.q, %.01011.i.epil.init
  br label %Exa6_ManPolarMinterm.exit

Exa6_ManPolarMinterm.exit:                        ; preds = %Exa6_ManPolarMinterm.exit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %Exa6_ManPolarMinterm.exit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ]
  %i.r = and i64 %.1.i.lcssa, 1
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %Exa6_ManPolarMinterm.exit.thread, label %._crit_edge.split.loopexit.split.loop.exit15

Exa6_ManPolarMinterm.exit.thread:                 ; preds = %Exa6_ManPolarMinterm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !674

._crit_edge.split.loopexit.split.loop.exit15:     ; preds = %Exa6_ManPolarMinterm.exit
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %Exa6_ManPolarMinterm.exit.thread, %._crit_edge.split.loopexit.split.loop.exit15, %bb.a
  %.08 = phi i32 [ -1, %bb.a ], [ %i.s, %._crit_edge.split.loopexit.split.loop.exit15 ], [ -1, %Exa6_ManPolarMinterm.exit.thread ]
  ret i32 %.08
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Exa6_ManTransformOutputs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val12 = load i32, ptr %i.a, align 4, !tbaa !23 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.c = add i32 %.val12, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !23
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !19
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #38
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted27 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted27, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.j = load i64, ptr %.val14, align 8, !tbaa !26 ; 3 uses
  %.not13.i = icmp eq i32 %1, 31
  br i1 %.not13.i, label %Exa6_ManFindPolar.exit.thread, label %.lr.ph.preheader.i.preheader.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %Vec_WrdAlloc.exit
  %i.k = shl nuw nsw i32 1, %1
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.l = icmp eq i32 %1, 0
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod51 = icmp eq i32 %1, 0
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Exa6_ManPolarMinterm.exit.thread.i, %.lr.ph.preheader.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next.i, %Exa6_ManPolarMinterm.exit.thread.i ] ; 5 uses
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 5 uses
  %.01011.i.i = phi i64 [ %.1.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %i.m = shl nuw i64 1, %indvars.iv.i.i
  %i.n = and i64 %i.m, %i.j
  %.not.i.i = icmp eq i64 %i.n, 0
  %i.o = xor i64 %indvars.iv.i.i, %indvars.iv.i
  %i.p = shl nuw i64 1, %i.o
  %i.q = select i1 %.not.i.i, i64 0, i64 %i.p
  %.1.i.i = or i64 %i.q, %.01011.i.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %i.r = shl nuw i64 2, %indvars.iv.i.i
  %i.s = and i64 %i.r, %i.j
  %.not.i.i.1 = icmp eq i64 %i.s, 0
  %i.t = xor i64 %indvars.iv.next.i.i, %indvars.iv.i
  %i.u = shl nuw i64 1, %i.t
  %i.v = select i1 %.not.i.i.1, i64 0, i64 %i.u
  %.1.i.i.1 = or i64 %i.v, %.1.i.i                ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Exa6_ManPolarMinterm.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !673

Exa6_ManPolarMinterm.exit.i.unr-lcssa:            ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %Exa6_ManPolarMinterm.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %Exa6_ManPolarMinterm.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %Exa6_ManPolarMinterm.exit.i.unr-lcssa ] ; 2 uses
  %.01011.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %Exa6_ManPolarMinterm.exit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.w = shl nuw i64 1, %indvars.iv.i.i.epil.init
  %i.x = and i64 %i.w, %i.j
  %.not.i.i.epil = icmp eq i64 %i.x, 0
  %i.y = xor i64 %indvars.iv.i.i.epil.init, %indvars.iv.i
  %i.z = shl nuw i64 1, %i.y
  %i.aa = select i1 %.not.i.i.epil, i64 0, i64 %i.z
  %.1.i.i.epil = or i64 %i.aa, %.01011.i.i.epil.init
  br label %Exa6_ManPolarMinterm.exit.i

Exa6_ManPolarMinterm.exit.i:                      ; preds = %Exa6_ManPolarMinterm.exit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.1.i.i.lcssa = phi i64 [ %.1.i.i.1, %Exa6_ManPolarMinterm.exit.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.ab = and i64 %.1.i.i.lcssa, 1
  %.not.i15 = icmp eq i64 %i.ab, 0
  br i1 %.not.i15, label %Exa6_ManPolarMinterm.exit.thread.i, label %Exa6_ManFindPolar.exit

Exa6_ManPolarMinterm.exit.thread.i:               ; preds = %Exa6_ManPolarMinterm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %Exa6_ManFindPolar.exit, label %.lr.ph.preheader.i.i, !llvm.loop !674

Exa6_ManFindPolar.exit:                           ; preds = %Exa6_ManPolarMinterm.exit.i, %Exa6_ManPolarMinterm.exit.thread.i
  %.08.i = phi i64 [ %indvars.iv.i, %Exa6_ManPolarMinterm.exit.i ], [ 4294967295, %Exa6_ManPolarMinterm.exit.thread.i ] ; 3 uses
  %i.ac = icmp sgt i32 %.val12, 0
  br i1 %i.ac, label %.lr.ph, label %.critedge

Exa6_ManFindPolar.exit.thread:                    ; preds = %Vec_WrdAlloc.exit
  %i.ad = icmp sgt i32 %.val12, 0
  br i1 %i.ad, label %Exa6_ManPolarMinterm.exit.us, label %.critedge

.lr.ph:                                           ; preds = %Exa6_ManFindPolar.exit
  %i.ae = shl nuw nsw i32 1, %1
  %wide.trip.count.i17 = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count.i17, 1
  %i.af = icmp eq i32 %1, 0
  %unroll_iter56 = and i64 %wide.trip.count.i17, 2147483646
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  %lcmp.mod55 = icmp eq i32 %1, 0
  br label %.lr.ph.preheader.i

Exa6_ManPolarMinterm.exit.us:                     ; preds = %Exa6_ManFindPolar.exit.thread, %Vec_WrdPush.exit.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %Vec_WrdPush.exit.us ], [ 0, %Exa6_ManFindPolar.exit.thread ] ; 7 uses
  %storemerge28.us = phi ptr [ %storemerge29.us, %Vec_WrdPush.exit.us ], [ %.promoted27, %Exa6_ManFindPolar.exit.thread ] ; 6 uses
  %spec.select.sink.i26.us = phi i32 [ %spec.select.sink.i25.us, %Vec_WrdPush.exit.us ], [ %spec.store.select.i, %Exa6_ManFindPolar.exit.thread ] ; 3 uses
  %.023.us = phi i32 [ %i.at, %Vec_WrdPush.exit.us ], [ 0, %Exa6_ManFindPolar.exit.thread ]
  %i.ag = trunc nsw i64 %indvars.iv39 to i32
  %i.ah = icmp eq i32 %spec.select.sink.i26.us, %i.ag
  br i1 %i.ah, label %bb.c, label %Vec_WrdPush.exit.us

bb.c:                                             ; preds = %Exa6_ManPolarMinterm.exit.us
  %i.ai = icmp samesign ult i64 %indvars.iv39, 16
  br i1 %i.ai, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp samesign ult i64 %indvars.iv39, 1073741823
  %indvars.iv39.tr = trunc i64 %indvars.iv39 to i32
  %i.ak = shl i32 %indvars.iv39.tr, 1
  %spec.select.i.us = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 4 uses
  %i.al = sext i32 %spec.select.i.us to i64
  %.not.i9.i.us = icmp samesign ult i64 %indvars.iv39, %i.al
  br i1 %.not.i9.i.us, label %bb.e, label %Vec_WrdPush.exit.us

bb.e:                                             ; preds = %bb.d
  %.not9.i10.i.us = icmp eq ptr %storemerge28.us, null
  %i.am = zext nneg i32 %spec.select.i.us to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  br i1 %.not9.i10.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %storemerge28.us, i64 noundef %i.an) #39
  br label %Vec_WrdPush.exit.us

bb.g:                                             ; preds = %bb.e
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #38
  br label %Vec_WrdPush.exit.us

bb.h:                                             ; preds = %bb.c
  %.not9.i.i.us = icmp eq ptr %storemerge28.us, null
  br i1 %.not9.i.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge28.us, i64 noundef 128) #39
  br label %Vec_WrdPush.exit.us

bb.j:                                             ; preds = %bb.h
  %i.ar = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdPush.exit.us

Vec_WrdPush.exit.us:                              ; preds = %bb.f, %bb.g, %bb.i, %bb.j, %bb.d, %Exa6_ManPolarMinterm.exit.us
  %storemerge29.us = phi ptr [ %storemerge28.us, %Exa6_ManPolarMinterm.exit.us ], [ %storemerge28.us, %bb.d ], [ %i.ar, %bb.j ], [ %i.aq, %bb.i ], [ %i.ao, %bb.f ], [ %i.ap, %bb.g ] ; 3 uses
  %spec.select.sink.i25.us = phi i32 [ %spec.select.sink.i26.us, %Exa6_ManPolarMinterm.exit.us ], [ %spec.select.sink.i26.us, %bb.d ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i.us, %bb.f ], [ %spec.select.i.us, %bb.g ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %storemerge29.us, i64 %indvars.iv39
  store i64 0, ptr %i.as, align 8, !tbaa !26
  %i.at = add nuw nsw i32 %.023.us, 1             ; 2 uses
  %.val.us = load i32, ptr %i.a, align 4, !tbaa !23
  %i.au = icmp slt i32 %i.at, %.val.us
  br i1 %i.au, label %Exa6_ManPolarMinterm.exit.us, label %..critedge_crit_edge, !llvm.loop !675

.lr.ph.preheader.i:                               ; preds = %.lr.ph, %Vec_WrdPush.exit
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %Vec_WrdPush.exit ], [ 0, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_WrdPush.exit ], [ 0, %.lr.ph ] ; 7 uses
  %storemerge28 = phi ptr [ %storemerge29, %Vec_WrdPush.exit ], [ %.promoted27, %.lr.ph ] ; 6 uses
  %spec.select.sink.i26 = phi i32 [ %spec.select.sink.i25, %Vec_WrdPush.exit ], [ %spec.store.select.i, %.lr.ph ] ; 3 uses
  %.val13 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val13, i64 %indvars.iv34
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26 ; 3 uses
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %.01011.i = phi i64 [ %.1.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter57 = phi i64 [ %niter57.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ax = shl nuw i64 1, %indvars.iv.i18
  %i.ay = and i64 %i.ax, %i.aw
  %.not.i19 = icmp eq i64 %i.ay, 0
  %i.az = xor i64 %indvars.iv.i18, %.08.i
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = select i1 %.not.i19, i64 0, i64 %i.ba
  %.1.i = or i64 %i.bb, %.01011.i
  %indvars.iv.next.i20 = or disjoint i64 %indvars.iv.i18, 1
  %i.bc = shl nuw i64 2, %indvars.iv.i18
  %i.bd = and i64 %i.bc, %i.aw
  %.not.i19.1 = icmp eq i64 %i.bd, 0
  %i.be = xor i64 %indvars.iv.next.i20, %.08.i
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = select i1 %.not.i19.1, i64 0, i64 %i.bf
  %.1.i.1 = or i64 %i.bg, %.1.i                   ; 3 uses
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter57.next.1 = add i64 %niter57, 2           ; 2 uses
  %niter57.ncmp.1 = icmp eq i64 %niter57.next.1, %unroll_iter56
  br i1 %niter57.ncmp.1, label %Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !673

Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  br i1 %lcmp.mod53.not, label %Exa6_ManPolarMinterm.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i20.1, %Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01011.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.bh = shl nuw i64 1, %indvars.iv.i18.epil.init
  %i.bi = and i64 %i.bh, %i.aw
  %.not.i19.epil = icmp eq i64 %i.bi, 0
  %i.bj = xor i64 %indvars.iv.i18.epil.init, %.08.i
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = select i1 %.not.i19.epil, i64 0, i64 %i.bk
  %.1.i.epil = or i64 %i.bl, %.01011.i.epil.init
  br label %Exa6_ManPolarMinterm.exit.loopexit

Exa6_ManPolarMinterm.exit.loopexit:               ; preds = %Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %Exa6_ManPolarMinterm.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ]
  %i.bm = trunc nsw i64 %indvars.iv to i32
  %i.bn = icmp eq i32 %spec.select.sink.i26, %i.bm
  br i1 %i.bn, label %bb.k, label %Vec_WrdPush.exit

bb.k:                                             ; preds = %Exa6_ManPolarMinterm.exit.loopexit
  %i.bo = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bo, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not9.i.i = icmp eq ptr %storemerge28, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge28, i64 noundef 128) #39
  br label %Vec_WrdPush.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdPush.exit

bb.o:                                             ; preds = %bb.k
  %i.br = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bs = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 4 uses
  %i.bt = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bt
  br i1 %.not.i9.i, label %bb.p, label %Vec_WrdPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i = icmp eq ptr %storemerge28, null
  %i.bu = zext nneg i32 %spec.select.i to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %storemerge28, i64 noundef %i.bv) #39
  br label %Vec_WrdPush.exit

bb.r:                                             ; preds = %bb.p
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bv) #38
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.n, %bb.m, %bb.r, %bb.q, %Exa6_ManPolarMinterm.exit.loopexit, %bb.o
  %storemerge29 = phi ptr [ %storemerge28, %Exa6_ManPolarMinterm.exit.loopexit ], [ %storemerge28, %bb.o ], [ %i.bq, %bb.n ], [ %i.bp, %bb.m ], [ %i.bw, %bb.q ], [ %i.bx, %bb.r ] ; 3 uses
  %spec.select.sink.i25 = phi i32 [ %spec.select.sink.i26, %Exa6_ManPolarMinterm.exit.loopexit ], [ %spec.select.sink.i26, %bb.o ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %storemerge29, i64 %indvars.iv
  store i64 %.1.i.lcssa, ptr %i.by, align 8, !tbaa !26
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !23
  %i.bz = sext i32 %.val to i64
  %i.ca = icmp slt i64 %indvars.iv.next35, %i.bz
  br i1 %i.ca, label %.lr.ph.preheader.i, label %..critedge_crit_edge, !llvm.loop !675

..critedge_crit_edge:                             ; preds = %Vec_WrdPush.exit, %Vec_WrdPush.exit.us
  %.us-phi = phi ptr [ %storemerge29.us, %Vec_WrdPush.exit.us ], [ %storemerge29, %Vec_WrdPush.exit ]
  %.us-phi30 = phi i32 [ %spec.select.sink.i25.us, %Vec_WrdPush.exit.us ], [ %spec.select.sink.i25, %Vec_WrdPush.exit ]
  %.us-phi31.in = phi i64 [ %indvars.iv.next40, %Vec_WrdPush.exit.us ], [ %indvars.iv.next, %Vec_WrdPush.exit ]
  %.us-phi31 = trunc i64 %.us-phi31.in to i32
  store i32 %.us-phi31, ptr %i.d, align 4, !tbaa !23
  store i32 %.us-phi30, ptr %i.b, align 8
  store ptr %.us-phi, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %Exa6_ManFindPolar.exit.thread, %..critedge_crit_edge, %Exa6_ManFindPolar.exit
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Exa6_ManTransformInputs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val10 = load i32, ptr %i.a, align 4, !tbaa !23 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.c = add i32 %.val10, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !23
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !19
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #38
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted18 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted18, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val12 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.j = load i64, ptr %.val12, align 8, !tbaa !26
  %i.k = icmp sgt i32 %.val10, 0
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_WrdAlloc.exit, %Vec_WrdPush.exit
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %Vec_WrdPush.exit ], [ 0, %Vec_WrdAlloc.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_WrdPush.exit ], [ 0, %Vec_WrdAlloc.exit ] ; 7 uses
  %storemerge19 = phi ptr [ %storemerge20, %Vec_WrdPush.exit ], [ %.promoted18, %Vec_WrdAlloc.exit ] ; 6 uses
  %spec.select.sink.i17 = phi i32 [ %spec.select.sink.i16, %Vec_WrdPush.exit ], [ %spec.store.select.i, %Vec_WrdAlloc.exit ] ; 3 uses
  %.val11 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val11, i64 %indvars.iv21
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %i.n = xor i64 %i.m, %i.j
  %i.o = trunc nsw i64 %indvars.iv to i32
  %i.p = icmp eq i32 %spec.select.sink.i17, %i.o
  br i1 %i.p, label %bb.c, label %Vec_WrdPush.exit

bb.c:                                             ; preds = %.lr.ph
  %i.q = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge19, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge19, i64 noundef 128) #39
  br label %Vec_WrdPush.exit

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdPush.exit

bb.g:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %i.v = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.v
  br i1 %.not.i9.i, label %bb.h, label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge19, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @realloc(ptr noundef nonnull %storemerge19, i64 noundef %i.x) #39
  br label %Vec_WrdPush.exit

bb.j:                                             ; preds = %bb.h
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #38
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %.lr.ph, %bb.g
  %storemerge20 = phi ptr [ %storemerge19, %.lr.ph ], [ %storemerge19, %bb.g ], [ %i.s, %bb.f ], [ %i.r, %bb.e ], [ %i.y, %bb.i ], [ %i.z, %bb.j ] ; 3 uses
  %spec.select.sink.i16 = phi i32 [ %spec.select.sink.i17, %.lr.ph ], [ %spec.select.sink.i17, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %storemerge20, i64 %indvars.iv
  store i64 %i.n, ptr %i.aa, align 8, !tbaa !26
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !23
  %i.ab = sext i32 %.val to i64
  %i.ac = icmp slt i64 %indvars.iv.next22, %i.ab
  br i1 %i.ac, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !676

..critedge_crit_edge:                             ; preds = %Vec_WrdPush.exit
  %i.ad = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !23
  store i32 %spec.select.sink.i16, ptr %i.b, align 8
  store ptr %storemerge20, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_WrdAlloc.exit
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define void @Exa_ManExactPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val1422 = load i32, ptr %i.b, align 4, !tbaa !23
  %i.c = icmp sgt i32 %.val1422, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.i.preheader.us, label %Abc_TtPrintBits.exit

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph, %Abc_TtPrintBits.exit.loopexit.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %Abc_TtPrintBits.exit.loopexit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.val16.us = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val16.us, i64 %indvars.iv30
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.g, ptr %i.a, align 8, !tbaa !26
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.04.i.us = phi i32 [ %i.p, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %i.h = lshr i32 %.04.i.us, 5
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  %i.l = and i32 %.04.i.us, 31
  %i.m = lshr i32 %i.k, %i.l
  %i.n = and i32 %i.m, 1
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %i.n) ; 0 uses
  %i.p = add nuw nsw i32 %.04.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.p, %2
  br i1 %exitcond.not.i.us, label %Abc_TtPrintBits.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !552

Abc_TtPrintBits.exit.loopexit.us:                 ; preds = %.lr.ph.i.us
  %putchar.i.us = tail call i32 @putchar(i32 10)  ; 0 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %.val14.us = load i32, ptr %i.b, align 4, !tbaa !23
  %i.q = sext i32 %.val14.us to i64
  %i.r = icmp slt i64 %indvars.iv.next31, %i.q
  br i1 %i.r, label %.lr.ph.i.preheader.us, label %.critedge, !llvm.loop !677

Abc_TtPrintBits.exit:                             ; preds = %.lr.ph, %Abc_TtPrintBits.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtPrintBits.exit ], [ 0, %.lr.ph ]
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val14 = load i32, ptr %i.b, align 4, !tbaa !23
  %i.s = sext i32 %.val14 to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %Abc_TtPrintBits.exit, label %.critedge, !llvm.loop !677

.critedge:                                        ; preds = %Abc_TtPrintBits.exit, %Abc_TtPrintBits.exit.loopexit.us, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.u = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val24 = load i32, ptr %i.u, align 4, !tbaa !23
  %i.v = icmp sgt i32 %.val24, 0
  br i1 %i.v, label %.lr.ph26, label %.critedge2

.lr.ph26:                                         ; preds = %.critedge
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = shl nuw i32 1, %3
  %.not = icmp eq i32 %3, 31
  br i1 %.not, label %Abc_TtPrintBits.exit21.us, label %.lr.ph.i18.preheader

Abc_TtPrintBits.exit21.us:                        ; preds = %.lr.ph26, %Abc_TtPrintBits.exit21.us
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %Abc_TtPrintBits.exit21.us ], [ 0, %.lr.ph26 ]
  %putchar.i17.us = tail call i32 @putchar(i32 10) ; 0 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %.val.us = load i32, ptr %i.u, align 4, !tbaa !23
  %i.y = sext i32 %.val.us to i64
  %i.z = icmp slt i64 %indvars.iv.next37, %i.y
  br i1 %i.z, label %Abc_TtPrintBits.exit21.us, label %.critedge2, !llvm.loop !678

.lr.ph.i18.preheader:                             ; preds = %.lr.ph26, %Abc_TtPrintBits.exit21.loopexit
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %Abc_TtPrintBits.exit21.loopexit ], [ 0, %.lr.ph26 ] ; 2 uses
  %.val15 = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val15, i64 %indvars.iv33
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !26
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %.04.i19 = phi i32 [ %i.ak, %.lr.ph.i18 ], [ 0, %.lr.ph.i18.preheader ] ; 3 uses
  %i.ac = lshr i32 %.04.i19, 5
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !38
  %i.ag = and i32 %.04.i19, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = and i32 %i.ah, 1
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %i.ai) ; 0 uses
  %i.ak = add nuw nsw i32 %.04.i19, 1             ; 2 uses
  %exitcond.not.i20 = icmp eq i32 %i.ak, %i.x
  br i1 %exitcond.not.i20, label %Abc_TtPrintBits.exit21.loopexit, label %.lr.ph.i18, !llvm.loop !552

Abc_TtPrintBits.exit21.loopexit:                  ; preds = %.lr.ph.i18
  %putchar.i17 = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %.val = load i32, ptr %i.u, align 4, !tbaa !23
  %i.al = sext i32 %.val to i64
  %i.am = icmp slt i64 %indvars.iv.next34, %i.al
  br i1 %i.am, label %.lr.ph.i18.preheader, label %.critedge2, !llvm.loop !678

.critedge2:                                       ; preds = %Abc_TtPrintBits.exit21.loopexit, %Abc_TtPrintBits.exit21.us, %.critedge
  %putchar13 = tail call i32 @putchar(i32 10)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Exa_ManExactSynthesis6Int(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %Vec_WrdFreeP.exit54, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val39 = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.c = load i64, ptr %.val39, align 8, !tbaa !26
  %i.d = trunc i64 %i.c to i32
  %i.e = ashr i32 %i.d, 1                         ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.g = load i64, ptr %.val, align 8, !tbaa !26  ; 3 uses
  %.not13.i = icmp eq i32 %4, 31
  br i1 %.not13.i, label %Exa6_ManFindPolar.exit, label %.lr.ph.preheader.i.preheader.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %bb.b
  %i.h = shl nuw nsw i32 1, %4
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.i = icmp eq i32 %4, 0
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod86 = icmp eq i32 %4, 0
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Exa6_ManPolarMinterm.exit.thread.i, %.lr.ph.preheader.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next.i, %Exa6_ManPolarMinterm.exit.thread.i ] ; 5 uses
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 5 uses
  %.01011.i.i = phi i64 [ %.1.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %i.j = shl nuw i64 1, %indvars.iv.i.i
  %i.k = and i64 %i.j, %i.g
  %.not.i.i = icmp eq i64 %i.k, 0
  %i.l = xor i64 %indvars.iv.i.i, %indvars.iv.i
  %i.m = shl nuw i64 1, %i.l
  %i.n = select i1 %.not.i.i, i64 0, i64 %i.m
  %.1.i.i = or i64 %i.n, %.01011.i.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %i.o = shl nuw i64 2, %indvars.iv.i.i
  %i.p = and i64 %i.o, %i.g
end_hunk_4
