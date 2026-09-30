Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMan?download=true
inline.NumInlined: 920
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Gia_ManCountSymbsAll:bb.a
Vec_IntGrow.exit11.sink.split.i:                  ; preds = %Gia_ManCountSymbs.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !42
  store i32 16, ptr %i.h, align 8, !tbaa !41
  br label %Vec_IntPush.exit36

Vec_IntPush.exit36:                               ; preds = %Vec_IntGrow.exit11.sink.split.i, %Vec_IntAlloc.exit
  %i.q = phi i32 [ %spec.store.select.i, %Vec_IntAlloc.exit ], [ 16, %Vec_IntGrow.exit11.sink.split.i ]
  %i.r = phi ptr [ %i.m, %Vec_IntAlloc.exit ], [ %i.p, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.s = phi ptr [ %i.n, %Vec_IntAlloc.exit ], [ %i.o, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !75
  store i32 2, ptr %i.j, align 4, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.e, ptr %i.t, align 4, !tbaa !75
  %i.u = icmp sgt i32 %.val26, 1
  br i1 %i.u, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntPush.exit36, %bb.s
  %.val62 = phi i32 [ %.val, %bb.s ], [ %.val26, %Vec_IntPush.exit36 ]
  %i.v = phi ptr [ %i.bk, %bb.s ], [ %i.r, %Vec_IntPush.exit36 ] ; 3 uses
  %i.w = phi ptr [ %i.bl, %bb.s ], [ %i.r, %Vec_IntPush.exit36 ] ; 7 uses
  %i.x = phi i32 [ %i.bm, %bb.s ], [ %i.q, %Vec_IntPush.exit36 ] ; 6 uses
  %i.y = phi i32 [ %i.bn, %bb.s ], [ 2, %Vec_IntPush.exit36 ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 1, %Vec_IntPush.exit36 ] ; 3 uses
  %.060 = phi i32 [ %.1, %bb.s ], [ %i.e, %Vec_IntPush.exit36 ] ; 3 uses
  %.02458 = phi ptr [ %.125, %bb.s ], [ %i.b, %Vec_IntPush.exit36 ] ; 2 uses
  %.val27 = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val27, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i37
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !88
  switch i8 %i.ac, label %bb.e [
    i8 0, label %Gia_ManCountSymbs.exit39
    i8 91, label %Gia_ManCountSymbs.exit39
  ]

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1
  br label %bb.d, !llvm.loop !5

Gia_ManCountSymbs.exit39:                         ; preds = %bb.d, %bb.d
  %i.ad = trunc nuw nsw i64 %indvars.iv.i37 to i32 ; 3 uses
  %i.ae = icmp eq i32 %.060, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Gia_ManCountSymbs.exit39
  %i.af = sext i32 %.060 to i64
  %i.ag = tail call i32 @strncmp(ptr noundef nonnull %i.aa, ptr noundef %.02458, i64 noundef %i.af) #30
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %Gia_ManCountSymbs.exit39
  %i.ah = icmp eq i32 %i.y, %i.x
  br i1 %i.ah, label %bb.h, label %Vec_IntPush.exit47

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp slt i32 %i.x, 16
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i45 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.w, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i43

bb.k:                                             ; preds = %bb.i
  %i.ak = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i43

bb.l:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i32 %i.x, 1073741823
  %i.am = shl nuw nsw i32 %i.x, 1
  %spec.select.i40 = select i1 %i.al, i32 %i.am, i32 2147483647 ; 4 uses
  %.not.i9.i41 = icmp samesign ult i32 %i.x, %spec.select.i40
  br i1 %.not.i9.i41, label %bb.m, label %Vec_IntPush.exit47

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i42 = icmp eq ptr %i.w, null
  %i.an = zext nneg i32 %spec.select.i40 to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %i.w, i64 noundef %i.ao) #31
  br label %Vec_IntGrow.exit11.sink.split.i43

bb.o:                                             ; preds = %bb.m
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #28
  br label %Vec_IntGrow.exit11.sink.split.i43

Vec_IntGrow.exit11.sink.split.i43:                ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.ak, %bb.k ], [ %i.aj, %bb.j ], [ %i.ap, %bb.n ], [ %i.aq, %bb.o ] ; 3 uses
  %spec.select.sink.i44 = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i40, %bb.n ], [ %spec.select.i40, %bb.o ]
  store ptr %storemerge, ptr %i.s, align 8, !tbaa !42
  store i32 %spec.select.sink.i44, ptr %i.h, align 8, !tbaa !41
  br label %Vec_IntPush.exit47

Vec_IntPush.exit47:                               ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i43
  %i.ar = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.l ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i43 ] ; 2 uses
  %i.as = phi ptr [ %i.w, %bb.g ], [ %i.w, %bb.l ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i43 ] ; 2 uses
  %i.at = add nsw i32 %i.y, 1                     ; 6 uses
  store i32 %i.at, ptr %i.j, align 4, !tbaa !40
  %i.au = sext i32 %i.y to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !75
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !41  ; 2 uses
  %i.ay = icmp eq i32 %i.at, %i.ax
  br i1 %i.ay, label %bb.p, label %Vec_IntPush.exit55

bb.p:                                             ; preds = %Vec_IntPush.exit47
  %i.az = icmp slt i32 %i.y, 15
  br i1 %i.az, label %Vec_IntGrow.exit11.sink.split.i51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp samesign ult i32 %i.y, 1073741822
  %i.bb = shl nuw nsw i32 %i.at, 1
  %spec.select.i48 = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 3 uses
  %.not.i9.i49 = icmp samesign ult i32 %i.at, %spec.select.i48
  br i1 %.not.i9.i49, label %bb.r, label %Vec_IntPush.exit55

bb.r:                                             ; preds = %bb.q
  %i.bc = zext nneg i32 %spec.select.i48 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  br label %Vec_IntGrow.exit11.sink.split.i51

Vec_IntGrow.exit11.sink.split.i51:                ; preds = %bb.p, %bb.r
  %.sink = phi i64 [ %i.bd, %bb.r ], [ 64, %bb.p ]
  %spec.select.sink.i52 = phi i32 [ %spec.select.i48, %bb.r ], [ 16, %bb.p ] ; 2 uses
  %i.be = tail call ptr @realloc(ptr noundef nonnull %i.as, i64 noundef %.sink) #31 ; 2 uses
  store ptr %i.be, ptr %i.s, align 8, !tbaa !42
  store i32 %spec.select.sink.i52, ptr %i.h, align 8, !tbaa !41
  br label %Vec_IntPush.exit55

Vec_IntPush.exit55:                               ; preds = %Vec_IntPush.exit47, %bb.q, %Vec_IntGrow.exit11.sink.split.i51
  %i.bf = phi ptr [ %i.ar, %Vec_IntPush.exit47 ], [ %i.ar, %bb.q ], [ %i.be, %Vec_IntGrow.exit11.sink.split.i51 ] ; 3 uses
  %i.bg = phi i32 [ %i.ax, %Vec_IntPush.exit47 ], [ %i.at, %bb.q ], [ %spec.select.sink.i52, %Vec_IntGrow.exit11.sink.split.i51 ]
  %i.bh = add nsw i32 %i.y, 2                     ; 2 uses
  store i32 %i.bh, ptr %i.j, align 4, !tbaa !40
  %i.bi = sext i32 %i.at to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bi
  store i32 %i.ad, ptr %i.bj, align 4, !tbaa !75
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %Vec_IntPush.exit55
  %.val = phi i32 [ %.val.pre, %Vec_IntPush.exit55 ], [ %.val62, %bb.f ] ; 2 uses
  %i.bk = phi ptr [ %i.bf, %Vec_IntPush.exit55 ], [ %i.v, %bb.f ]
  %i.bl = phi ptr [ %i.bf, %Vec_IntPush.exit55 ], [ %i.w, %bb.f ]
  %i.bm = phi i32 [ %i.bg, %Vec_IntPush.exit55 ], [ %i.x, %bb.f ]
  %i.bn = phi i32 [ %i.bh, %Vec_IntPush.exit55 ], [ %i.y, %bb.f ]
  %.125 = phi ptr [ %i.aa, %Vec_IntPush.exit55 ], [ %.02458, %bb.f ]
  %.1 = phi i32 [ %i.ad, %Vec_IntPush.exit55 ], [ %.060, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = sext i32 %.val to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %.lr.ph, label %.critedge, !llvm.loop !290

.critedge:                                        ; preds = %bb.s, %Vec_IntPush.exit36
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @Gia_ManDumpIoList(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %.in.v = select i1 %.not, i64 640, i64 648
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load ptr, ptr %.in, align 8, !tbaa !60   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %.not, i32 105, i32 111
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.137, i32 noundef %i.c) #29 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @Gia_ManCountSymbsAll(ptr noundef nonnull %i.a) ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val35 = load i32, ptr %i.f, align 4, !tbaa !40 ; 5 uses
  %invariant.op = add i32 %.val35, -2
  %i.g = icmp sgt i32 %.val35, 1
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val39 = load ptr, ptr %i.h, align 8, !tbaa !42 ; 5 uses
  br i1 %i.g, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.c
  %.not31 = icmp eq i32 %3, 0
  %i.i = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br i1 %.not31, label %.critedge.us, label %.critedge

.critedge.us:                                     ; preds = %.critedge.lr.ph, %Gia_ManPrintOneName.exit.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %Gia_ManPrintOneName.exit.us ], [ 0, %.critedge.lr.ph ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val39, i64 %indvars.iv44 ; 2 uses
  %.027.in.us = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.027.us = load i32, ptr %.027.in.us, align 4, !tbaa !75 ; 2 uses
  %.028.us = load i32, ptr %i.j, align 4, !tbaa !75
  %.not32.us = icmp eq i64 %indvars.iv44, 0
  br i1 %.not32.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.us
  %fwrite.us = tail call i64 @fwrite(ptr nonnull @.str.88, i64 2, i64 1, ptr %1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.us
  %.val.us = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = sext i32 %.028.us to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val.us, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = icmp sgt i32 %.027.us, 0
  br i1 %i.n, label %.lr.ph.preheader.i.us, label %Gia_ManPrintOneName.exit.us

.lr.ph.preheader.i.us:                            ; preds = %bb.e
  %wide.trip.count.i.us = zext nneg i32 %.027.us to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph.i.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.us
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88
  %i.q = sext i8 %i.p to i32
  %fputc.i.us = tail call i32 @fputc(i32 %i.q, ptr %1) ; 0 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %Gia_ManPrintOneName.exit.us, label %.lr.ph.i.us, !llvm.loop !4

Gia_ManPrintOneName.exit.us:                      ; preds = %.lr.ph.i.us, %bb.e
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 2
  %i.r = trunc i64 %indvars.iv44 to i32
  %4 = add i32 %i.r, 3
  %i.s = icmp slt i32 %4, %.val35
  br i1 %i.s, label %.critedge.us, label %._crit_edge.thread, !llvm.loop !291

.critedge:                                        ; preds = %.critedge.lr.ph, %Gia_ManPrintOneName.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_ManPrintOneName.exit ], [ 0, %.critedge.lr.ph ] ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %.reass = sub i32 %invariant.op, %i.t
  %i.u = sext i32 %.reass to i64
  %i.v = xor i32 %i.t, -1
  %i.w = add nsw i32 %.val35, %i.v
  %i.x = sext i32 %i.w to i64
  %.027.in = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.x
  %.027 = load i32, ptr %.027.in, align 4, !tbaa !75 ; 2 uses
  %.028.in = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.u
  %.028 = load i32, ptr %.028.in, align 4, !tbaa !75
  %.not32 = icmp eq i64 %indvars.iv, 0
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.88, i64 2, i64 1, ptr %1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %.val = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.y = sext i32 %.028 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = icmp sgt i32 %.027, 0
  br i1 %i.ab, label %.lr.ph.preheader.i, label %Gia_ManPrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %.027 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !88
  %i.ae = sext i8 %i.ad to i32
  %fputc.i = tail call i32 @fputc(i32 %i.ae, ptr %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManPrintOneName.exit, label %.lr.ph.i, !llvm.loop !4

Gia_ManPrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %5 = trunc i64 %indvars.iv to i32
  %6 = add i32 %5, 3
  %7 = icmp slt i32 %6, %.val35
  br i1 %7, label %.critedge, label %._crit_edge.thread, !llvm.loop !291

._crit_edge:                                      ; preds = %bb.c
  %.not.i = icmp eq ptr %.val39, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %Gia_ManPrintOneName.exit, %Gia_ManPrintOneName.exit.us, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val39) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.e) #29
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntFree.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManDumpIoRanges(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.in = select i1 %.not, ptr %i.b, ptr %i.a
  %i.c = load ptr, ptr %.in, align 8, !tbaa !60   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = select i1 %.not, ptr @.str.140, ptr @.str.139
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val52 = load i32, ptr %i.g, align 8, !tbaa !74
  %. = select i1 %.not, i64 64, i64 72
  %.67 = select i1 %.not, i32 105, i32 111
  %i.h = getelementptr i8, ptr %0, i64 %.
  %.val53 = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr i8, ptr %.val53, i64 4
  %.val53.val = load i32, ptr %i.i, align 4, !tbaa !40
  %i.j = xor i32 %.val52, -1
  %i.k = add i32 %.val53.val, %i.j
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.f, i32 noundef %i.k, i32 noundef %.67) #29 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @Gia_ManCountSymbsAll(ptr noundef %i.c) ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val51 = load i32, ptr %i.n, align 4, !tbaa !40 ; 2 uses
  %i.o = icmp sgt i32 %.val51, 1
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %.val56 = load ptr, ptr %i.p, align 8, !tbaa !42 ; 4 uses
  br i1 %i.o, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.c, i64 4
  %i.r = getelementptr i8, ptr %i.c, i64 8
  %i.s = select i1 %.not, ptr @.str.140, ptr @.str.139
  %i.t = zext nneg i32 %.val51 to i64             ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %Gia_ManPrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %Gia_ManPrintOneName.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %indvars.iv.next
  %.in61 = select i1 %i.y, ptr %i.z, ptr %i.q
  %i.aa = load i32, ptr %.in61, align 4, !tbaa !75
  %.val49 = load ptr, ptr %i.r, align 8, !tbaa !48 ; 2 uses
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = sext i32 %i.x to i64                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !88
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %Gia_ManReadRangeNum.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.am, ptr noundef null, i32 noundef 10) #29, !inline_history !6
  %i.ao = trunc i64 %i.an to i32
  br label %Gia_ManReadRangeNum.exit

Gia_ManReadRangeNum.exit:                         ; preds = %.critedge, %bb.d
  %.0.i = phi i32 [ %i.ao, %bb.d ], [ -1, %.critedge ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !88
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %Gia_ManReadRangeNum.exit60, label %bb.e

bb.e:                                             ; preds = %Gia_ManReadRangeNum.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.at = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.as, ptr noundef null, i32 noundef 10) #29, !inline_history !6
  %i.au = trunc i64 %i.at to i32
  br label %Gia_ManReadRangeNum.exit60

Gia_ManReadRangeNum.exit60:                       ; preds = %Gia_ManReadRangeNum.exit, %bb.e
  %.0.i59 = phi i32 [ %i.au, %bb.e ], [ -1, %Gia_ManReadRangeNum.exit ]
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.141, ptr noundef nonnull %i.s) #29 ; 0 uses
  %.not46 = icmp ne i32 %.0.i, -1
  %i.aw = icmp slt i32 %i.v, %i.ae
  %or.cond = and i1 %.not46, %i.aw
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Gia_ManReadRangeNum.exit60
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.142, i32 noundef %.0.i59, i32 noundef %.0.i) #29 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Gia_ManReadRangeNum.exit60
  %i.ay = icmp sgt i32 %i.x, 0
  br i1 %i.ay, label %.lr.ph.preheader.i, label %Gia_ManPrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.x to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !88
  %i.bb = sext i8 %i.ba to i32
  %fputc.i = tail call i32 @fputc(i32 %i.bb, ptr %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManPrintOneName.exit, label %.lr.ph.i, !llvm.loop !4

Gia_ManPrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.g
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.143, i64 2, i64 1, ptr %1) ; 0 uses
  %3 = add nuw nsw i64 %indvars.iv, 3
  %i.bc = icmp samesign ult i64 %3, %i.t
  br i1 %i.bc, label %.critedge, label %._crit_edge.thread, !llvm.loop !292

._crit_edge:                                      ; preds = %bb.c
  %.not.i = icmp eq ptr %.val56, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %Gia_ManPrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val56) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.m) #29
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntFree.exit, %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Gia_ManCollectMultiBits(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = ashr i32 %1, 5
  %i.b = and i32 %1, 31
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = add nsw i32 %i.a, %i.d                   ; 3 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.g = shl nsw i32 %i.e, 5                      ; 2 uses
  store i32 %i.g, ptr %i.f, align 8, !tbaa !91
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.e to i64
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #28
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !56
  store i32 %i.g, ptr %i.l, align 4, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %Vec_BitStart.exit
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %1, 1
  br i1 %i.p, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.d
  %xtraiter61 = and i32 %1, 1
  %unroll_iter = and i32 %1, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.03853 = phi i32 [ 0, %.preheader.preheader ], [ %i.ae, %.preheader ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader ], [ %niter.next.1, %.preheader ]
  %i.q = and i32 %.03853, 30
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = lshr i32 %.03853, 5
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75
  %i.w = or i32 %i.v, %i.r
  store i32 %i.w, ptr %i.u, align 4, !tbaa !75
  %i.x = and i32 %.03853, 30
  %i.y = shl nuw i32 2, %i.x
  %i.z = lshr i32 %.03853, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.ad = or i32 %i.ac, %i.y
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !75
  %i.ae = add nuw nsw i32 %.03853, 2              ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !293

bb.e:                                             ; preds = %bb.c
  %i.af = tail call ptr @Gia_ManCountSymbsAll(ptr noundef nonnull %0) ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %.val45 = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  %i.ai = icmp sgt i32 %.val45, 1
  %i.aj = getelementptr i8, ptr %i.af, i64 8
  %.val48 = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 4 uses
  br i1 %i.ai, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.e
  %i.ak = zext nneg i32 %.val45 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.loopexit50
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.loopexit50 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75 ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %i.aq = phi i32 [ %i.ap, %bb.f ], [ %.val, %.critedge ] ; 2 uses
  %i.ar = sub nsw i32 %i.aq, %i.am
  %i.as = icmp slt i32 %i.ar, 2
  br i1 %i.as, label %.loopexit50, label %.preheader49

.preheader49:                                     ; preds = %bb.g
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %1) ; 4 uses
  %i.at = icmp slt i32 %i.am, %invariant.smin
  br i1 %i.at, label %.lr.ph.preheader, label %.loopexit50

.lr.ph.preheader:                                 ; preds = %.preheader49
  %i.au = sub i32 %invariant.smin, %i.am
  %.neg = add i32 %i.am, 1
  %xtraiter = and i32 %i.au, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.av = and i32 %i.am, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = ashr i32 %i.am, 5
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !75
  %i.bb = or i32 %i.ba, %i.aw
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !75
  %i.bc = add nsw i32 %i.am, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.051.unr = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %i.bd = icmp eq i32 %invariant.smin, %.neg
  br i1 %i.bd, label %.loopexit50, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.051 = phi i32 [ %i.bt, %.lr.ph ], [ %.051.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.be = and i32 %.051, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = ashr i32 %.051, 5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75
  %i.bk = or i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !75
  %i.bl = add nsw i32 %.051, 1                    ; 2 uses
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = ashr i32 %i.bl, 5
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !75
  %i.bs = or i32 %i.br, %i.bn
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !75
  %i.bt = add nsw i32 %.051, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bt, %invariant.smin
  br i1 %exitcond.not.1, label %.loopexit50, label %.lr.ph, !llvm.loop !294

.loopexit50:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader49, %bb.g
  %2 = add nuw nsw i64 %indvars.iv, 3
  %i.bu = icmp samesign ult i64 %2, %i.ak
  br i1 %i.bu, label %.critedge, label %._crit_edge.thread, !llvm.loop !295

._crit_edge:                                      ; preds = %bb.e
  %.not.i = icmp eq ptr %.val48, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.loopexit50, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val48) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.af) #29
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod62.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod63 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bv = and i32 %i.ae, 31
  %i.bw = shl nuw i32 1, %i.bv
  %i.bx = lshr i32 %i.ae, 5
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !75
  %i.cb = or i32 %i.ca, %i.bw
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %Vec_BitStart.exit, %Vec_IntFree.exit
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Gia_ManDumpIoListMulti(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.in.v = select i1 %.not, i64 640, i64 648
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load ptr, ptr %.in, align 8, !tbaa !60   ; 4 uses
  %.not46 = icmp eq ptr %i.a, null
  br i1 %.not46, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val51.pn.in.v = select i1 %.not, i64 64, i64 72
  %.val51.pn.in = getelementptr i8, ptr %0, i64 %.val51.pn.in.v
  %.val51.pn = load ptr, ptr %.val51.pn.in, align 8, !tbaa !54
  %.ph.in = getelementptr i8, ptr %.val51.pn, i64 4
  %.ph = load i32, ptr %.ph.in, align 4, !tbaa !40
  %i.b = icmp sgt i32 %.ph, 1
  br i1 %i.b, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = select i1 %.not, i32 105, i32 111
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.137, i32 noundef %i.c) #29 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !47
  %i.f = tail call ptr @Gia_ManCountSymbsAll(ptr noundef nonnull %i.a) ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val50 = load i32, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %i.h = icmp sgt i32 %.val50, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.i = lshr i32 %.val50, 1                      ; 2 uses
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %.val55 = load ptr, ptr %i.j, align 8, !tbaa !42 ; 3 uses
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Gia_ManPrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Gia_ManPrintOneName.exit ] ; 4 uses
  %.057 = phi i32 [ 1, %.lr.ph ], [ %.1, %Gia_ManPrintOneName.exit ] ; 2 uses
  %i.m = xor i64 %indvars.iv, -1
  %i.n = add nsw i64 %i.l, %i.m
  %.idx = shl i64 %i.n, 3
  %i.o = getelementptr i8, ptr %.val55, i64 %.idx ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not58 = icmp eq i64 %indvars.iv, 0
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sub nuw nsw i64 %i.l, %indvars.iv
  %.idx62 = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.val55, i64 %.idx62
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi i32 [ %i.u, %bb.f ], [ %.val, %bb.e ]
  %i.w = sub nsw i32 %i.v, %i.p
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %Gia_ManPrintOneName.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp eq i32 %.057, 0
  br i1 %.not48, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.88, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val49 = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.y = sext i32 %i.p to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = icmp sgt i32 %i.r, 0
  br i1 %i.ab, label %.lr.ph.preheader.i, label %Gia_ManPrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !88
  %i.ae = sext i8 %i.ad to i32
  %fputc.i = tail call i32 @fputc(i32 %i.ae, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManPrintOneName.exit, label %.lr.ph.i, !llvm.loop !4

Gia_ManPrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.j, %bb.g
  %.1 = phi i32 [ %.057, %bb.g ], [ 0, %bb.j ], [ 0, %.lr.ph.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %Gia_ManPrintOneName.exit, %._crit_edge
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ %.val55, %Gia_ManPrintOneName.exit ]
  tail call void @free(ptr noundef nonnull %i.af) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.f) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %Vec_IntFree.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManDumpNandLit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %fwrite15 = tail call i64 @fwrite(ptr nonnull @.str.149, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.150, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.a = ashr i32 %2, 1                           ; 3 uses
  %.not = icmp sgt i32 %i.a, %1
  %i.b = and i32 %2, 1
  %.not13 = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = select i1 %.not13, i32 32, i32 126
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.a) #29 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = select i1 %.not13, i32 126, i32 32
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %i.e, i32 noundef %3, i32 noundef %i.a) #29 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManDumpVerilogNand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 16 uses
end_hunk_0
