Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCut2?download=true
inline.NumInlined: 130
inline.NumDeleted: 23
begin_hunk_0_@Sbd_ManCutServerStart:bb.a
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !27
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Sbd_ManCutServerStop(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i6 = icmp eq ptr %i.h, null
  br i1 %.not.i6, label %Vec_IntFree.exit7, label %bb.c

bb.c:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.h) #18
  br label %Vec_IntFree.exit7

Vec_IntFree.exit7:                                ; preds = %Vec_IntFree.exit, %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i8, label %Vec_IntFree.exit9, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit7
  tail call void @free(ptr noundef nonnull %i.l) #18
  br label %Vec_IntFree.exit9

Vec_IntFree.exit9:                                ; preds = %Vec_IntFree.exit7, %bb.d
  tail call void @free(ptr noundef nonnull %i.j) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %.not.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Vec_IntFree.exit9
  tail call void @free(ptr noundef nonnull %i.p) #18
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit9, %bb.e
  tail call void @free(ptr noundef nonnull %i.n) #18
  tail call void @free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Sbd_ManCutIsTopo_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val25, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = icmp slt i32 %i.d, 0
  %spec.select = select i1 %i.f, i32 %2, i32 %i.e ; 4 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %common.ret35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 176
  %.val26 = load i32, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 624
  %.val27 = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.i = sext i32 %spec.select to i64             ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %.not34 = icmp eq i32 %i.k, %.val26
  br i1 %.not34, label %common.ret35, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.val26, ptr %i.j, align 4, !tbaa !28
  %i.l = getelementptr i8, ptr %0, i64 32
  %.val30 = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr inbounds [12 x i8], ptr %.val30, i64 %i.i ; 2 uses
  %.val31 = load i64, ptr %i.m, align 4           ; 2 uses
  %i.n = and i64 %.val31, 2684354559
  %narrow.i.not = icmp eq i64 %i.n, 2684354559
  br i1 %narrow.i.not, label %common.ret35, label %bb.d

common.ret35:                                     ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %common.ret35.op = phi i32 [ %i.aa, %bb.d ], [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.a ]
  ret i32 %common.ret35.op

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %.val31 to i32
  %i.p = and i32 %i.o, 536870911
  %i.q = sub nsw i32 %spec.select, %i.p
  %i.r = tail call i32 @Sbd_ManCutIsTopo_rec(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.q)
  %.val33 = load i64, ptr %i.m, align 4
  %i.s = lshr i64 %.val33, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 536870911
  %i.v = sub nsw i32 %spec.select, %i.u
  %i.w = tail call i32 @Sbd_ManCutIsTopo_rec(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.v)
  %i.x = icmp ne i32 %i.r, 0
  %i.y = icmp ne i32 %i.w, 0
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %i.aa = zext i1 %i.z to i32
  br label %common.ret35
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Sbd_ManCutIsTopo(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #18
  %i.a = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val1516 = load i32, ptr %i.a, align 4, !tbaa !21
  %i.b = icmp sgt i32 %.val1516, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = getelementptr i8, ptr %0, i64 624
  %.val14 = load ptr, ptr %i.e, align 8, !tbaa !45
  %.val13.pre = load i32, ptr %i.d, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %.val14, i64 %i.h
  store i32 %.val13.pre, ptr %i.i, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val15 = load i32, ptr %i.a, align 4, !tbaa !21
  %i.j = sext i32 %.val15 to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.l = tail call i32 @Sbd_ManCutIsTopo_rec(ptr noundef %0, ptr noundef %1, i32 noundef %3) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %3) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  ret i32 %i.l
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @Vec_IntOrdered(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
.critedge:
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Sbd_ManCutExpand(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 4          ; 11 uses
  %i.b = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.split, label %.split34.us

.split:                                           ; preds = %bb.a, %.critedge
  %.val1248 = phi i32 [ %.val12, %.critedge ], [ %i.f, %bb.a ] ; 4 uses
  %i.h = icmp sgt i32 %.val1248, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %.val = load ptr, ptr %i.b, align 8, !tbaa !23  ; 9 uses
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !46
  %.val15 = load ptr, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %.val1248 to i64 ; 3 uses
  %i.i = add nsw i32 %.val1248, -1                ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds [12 x i8], ptr %.val14, i64 %i.l
  %.val56.i = load i64, ptr %i.o, align 4         ; 3 uses
  %i.p = and i64 %.val56.i, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.p, 2684354559
  br i1 %narrow.i.not.i, label %bb.y, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.q = trunc i64 %.val56.i to i32
  %i.r = and i32 %i.q, 536870911
  %i.s = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %.val53.i = load ptr, ptr %i.e, align 8, !tbaa !23 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val53.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28   ; 2 uses
  %i.w = lshr i64 %.val56.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = and i32 %i.x, 536870911
  %i.z = sub nsw i32 %i.k, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val53.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28 ; 2 uses
  %i.ad = lshr i32 %i.v, 1
  %i.ae = icmp slt i32 %i.v, 0
  %spec.select.i = select i1 %i.ae, i32 %i.s, i32 %i.ad ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ah = icmp ne i32 %i.ag, %spec.select.i       ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not.i = select i1 %i.ah, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i, label %bb.c, label %.lr.ph.i62.i.preheader, !llvm.loop !57

.lr.ph.i62.i.preheader:                           ; preds = %bb.c
  %i.ai = lshr i32 %i.ac, 1
  %i.aj = icmp slt i32 %i.ac, 0
  %i.ak = select i1 %i.aj, i32 %i.z, i32 %i.ai    ; 5 uses
  br label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i.preheader, %bb.d
  %indvars.iv.i64.i = phi i64 [ %indvars.iv.next.i65.i, %bb.d ], [ 0, %.lr.ph.i62.i.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i64.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !28
  %.not.i.not.not.not.not.not = icmp ne i32 %i.am, %i.ak ; 2 uses
  br i1 %.not.i.not.not.not.not.not, label %bb.d, label %Vec_IntFind.exit68.thread.i

bb.d:                                             ; preds = %.lr.ph.i62.i
  %indvars.iv.next.i65.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %exitcond.not.i66.i = icmp eq i64 %indvars.iv.next.i65.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i66.i, label %Vec_IntFind.exit68.i, label %.lr.ph.i62.i, !llvm.loop !57

Vec_IntFind.exit68.i:                             ; preds = %bb.d
  br i1 %i.ah, label %bb.y, label %Vec_IntFind.exit68.thread.i

Vec_IntFind.exit68.thread.i:                      ; preds = %.lr.ph.i62.i, %Vec_IntFind.exit68.i
  %i.an = sext i32 %spec.select.i to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28
  %i.aq = icmp sgt i32 %i.ap, %i.n
  br i1 %i.aq, label %bb.y, label %bb.e

bb.e:                                             ; preds = %Vec_IntFind.exit68.thread.i
  %i.ar = sext i32 %i.ak to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !28
  %i.au = icmp sgt i32 %i.at, %i.n
  br i1 %i.au, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !21
  %i.aw = icmp sgt i32 %i.i, %i.av
  br i1 %i.aw, label %.lr.ph.i69.i, label %Vec_IntDrop.exit.i

.lr.ph.i69.i:                                     ; preds = %bb.f, %.lr.ph.i69.i
  %indvars.iv.i70.i = phi i64 [ %indvars.iv.next.i71.i, %.lr.ph.i69.i ], [ %indvars.iv, %bb.f ] ; 2 uses
  %indvars.iv.next.i71.i = add nuw nsw i64 %indvars.iv.i70.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next.i71.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i70.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !28
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i71.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i69.i, label %Vec_IntDrop.exit.i, !llvm.loop !58

Vec_IntDrop.exit.i:                               ; preds = %.lr.ph.i69.i, %bb.f
  %i.bd = phi i32 [ %i.i, %bb.f ], [ %i.ba, %.lr.ph.i69.i ] ; 9 uses
  %i.be = icmp ne i32 %spec.select.i, 0
  %or.cond3.i = and i1 %i.be, %i.ah
  br i1 %or.cond3.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %Vec_IntDrop.exit.i
  %i.bf = load i32, ptr %3, align 8, !tbaa !22
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.h, label %Vec_IntGrow.exit24.i.i

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp slt i32 %i.bd, 16
  br i1 %i.bh, label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp samesign ult i32 %i.bd, 1073741823
  %i.bj = shl nuw nsw i32 %i.bd, 1
  %spec.select.i.i = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 3 uses
  %.not.i22.i.i = icmp samesign ult i32 %i.bd, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.j, label %Vec_IntGrow.exit24.i.thread.i

Vec_IntGrow.exit24.i.thread.i:                    ; preds = %bb.i
  %i.bk = add nuw nsw i32 %i.bd, 1
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !21
  br label %.lr.ph.i72.i

bb.j:                                             ; preds = %bb.i
  %i.bl = zext nneg i32 %spec.select.i.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i.i: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.bm, %bb.j ], [ 64, %bb.h ]
  %.sink.i.i = phi i32 [ %spec.select.i.i, %bb.j ], [ 16, %bb.h ]
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %.val, i64 noundef %.sink) #20 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !23
  store i32 %.sink.i.i, ptr %3, align 8, !tbaa !22
  %.pr.i.pre.i = load i32, ptr %i.a, align 4, !tbaa !21
  br label %Vec_IntGrow.exit24.i.i

Vec_IntGrow.exit24.i.i:                           ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i, %bb.g
  %i.bo = phi ptr [ %.val, %bb.g ], [ %i.bn, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i ] ; 2 uses
  %i.bp = phi i32 [ %i.bd, %bb.g ], [ %.pr.i.pre.i, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i ] ; 4 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !21
  %i.br = icmp sgt i32 %i.bp, 0
  br i1 %i.br, label %.lr.ph.i72.i, label %Vec_IntPushOrder.exit.i

.lr.ph.i72.i:                                     ; preds = %Vec_IntGrow.exit24.i.i, %Vec_IntGrow.exit24.i.thread.i
  %i.bs = phi ptr [ %.val, %Vec_IntGrow.exit24.i.thread.i ], [ %i.bo, %Vec_IntGrow.exit24.i.i ] ; 4 uses
  %i.bt = phi i32 [ %i.bd, %Vec_IntGrow.exit24.i.thread.i ], [ %i.bp, %Vec_IntGrow.exit24.i.i ]
  %i.bu = zext nneg i32 %i.bt to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i72.i
  %indvars.iv.i73.i = phi i64 [ %i.bu, %.lr.ph.i72.i ], [ %indvars.iv.next.i74.i, %bb.l ] ; 4 uses
  %indvars.iv.next.i74.i = add nsw i64 %indvars.iv.i73.i, -1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i74.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, %spec.select.i
  br i1 %i.bx, label %bb.l, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i73.i
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !28
  %i.bz = icmp samesign ugt i64 %indvars.iv.i73.i, 1
  br i1 %i.bz, label %bb.k, label %Vec_IntPushOrder.exit.i, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.k
  %i.ca = trunc nuw nsw i64 %indvars.iv.i73.i to i32
  br label %Vec_IntPushOrder.exit.i

Vec_IntPushOrder.exit.i:                          ; preds = %bb.l, %._crit_edge.loopexit.split.loop.exit.i.i, %Vec_IntGrow.exit24.i.i
  %i.cb = phi ptr [ %i.bo, %Vec_IntGrow.exit24.i.i ], [ %i.bs, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %.0.in.lcssa.i.i = phi i32 [ %i.bp, %Vec_IntGrow.exit24.i.i ], [ %i.ca, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 0, %bb.l ]
  %i.cc = sext i32 %.0.in.lcssa.i.i to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cc
  store i32 %spec.select.i, ptr %i.cd, align 4, !tbaa !28
  %.val12.pre47.pre = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %Vec_IntPushOrder.exit.i, %Vec_IntDrop.exit.i
  %.val12.pre47 = phi i32 [ %.val12.pre47.pre, %Vec_IntPushOrder.exit.i ], [ %i.bd, %Vec_IntDrop.exit.i ] ; 9 uses
  %i.ce = phi ptr [ %i.cb, %Vec_IntPushOrder.exit.i ], [ %.val, %Vec_IntDrop.exit.i ] ; 6 uses
  %i.cf = icmp ne i32 %i.ak, 0
  %or.cond5.i = and i1 %i.cf, %.not.i.not.not.not.not.not
  br i1 %or.cond5.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cg = load i32, ptr %3, align 8, !tbaa !22
  %i.ch = icmp eq i32 %.val12.pre47, %i.cg
  br i1 %i.ch, label %bb.o, label %Vec_IntGrow.exit24.i75.i

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp slt i32 %.val12.pre47, 16
  br i1 %i.ci, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i88.i = icmp eq ptr %i.ce, null
  br i1 %.not9.i.i88.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ce, i64 noundef 64) #20
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i

bb.r:                                             ; preds = %bb.p
  %i.ck = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i

bb.s:                                             ; preds = %bb.o
  %i.cl = icmp samesign ult i32 %.val12.pre47, 1073741823
  %i.cm = shl nuw nsw i32 %.val12.pre47, 1
  %spec.select.i81.i = select i1 %i.cl, i32 %i.cm, i32 2147483647 ; 4 uses
  %.not.i22.i82.i = icmp samesign ult i32 %.val12.pre47, %spec.select.i81.i
  br i1 %.not.i22.i82.i, label %bb.t, label %Vec_IntGrow.exit24.i75.thread.i

Vec_IntGrow.exit24.i75.thread.i:                  ; preds = %bb.s
  %i.cn = add nuw nsw i32 %.val12.pre47, 1
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !21
  br label %.lr.ph.i77.i

bb.t:                                             ; preds = %bb.s
  %.not9.i23.i85.i = icmp eq ptr %i.ce, null
  %i.co = zext nneg i32 %spec.select.i81.i to i64
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 2 uses
  br i1 %.not9.i23.i85.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = tail call ptr @realloc(ptr noundef nonnull %i.ce, i64 noundef %i.cp) #20
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i

bb.v:                                             ; preds = %bb.t
  %i.cr = tail call noalias ptr @malloc(i64 noundef %i.cp) #19
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i: ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge18 = phi ptr [ %i.ck, %bb.r ], [ %i.cj, %bb.q ], [ %i.cq, %bb.u ], [ %i.cr, %bb.v ] ; 2 uses
  %.sink.i87.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i81.i, %bb.u ], [ %spec.select.i81.i, %bb.v ]
  store ptr %storemerge18, ptr %i.b, align 8, !tbaa !23
  store i32 %.sink.i87.i, ptr %3, align 8, !tbaa !22
  %.pr.i84.pre.i = load i32, ptr %i.a, align 4, !tbaa !21
  br label %Vec_IntGrow.exit24.i75.i

Vec_IntGrow.exit24.i75.i:                         ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i, %bb.n
  %i.cs = phi ptr [ %i.ce, %bb.n ], [ %storemerge18, %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i ] ; 2 uses
  %i.ct = phi i32 [ %.val12.pre47, %bb.n ], [ %.pr.i84.pre.i, %Vec_IntGrow.exit24thread-pre-split.sink.split.i86.i ] ; 4 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !21
  %i.cv = icmp sgt i32 %i.ct, 0
  br i1 %i.cv, label %.lr.ph.i77.i, label %Vec_IntPushOrder.exit90.i

.lr.ph.i77.i:                                     ; preds = %Vec_IntGrow.exit24.i75.i, %Vec_IntGrow.exit24.i75.thread.i
  %i.cw = phi ptr [ %i.ce, %Vec_IntGrow.exit24.i75.thread.i ], [ %i.cs, %Vec_IntGrow.exit24.i75.i ] ; 4 uses
  %i.cx = phi i32 [ %.val12.pre47, %Vec_IntGrow.exit24.i75.thread.i ], [ %i.ct, %Vec_IntGrow.exit24.i75.i ]
  %i.cy = zext nneg i32 %i.cx to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i77.i
  %indvars.iv.i78.i = phi i64 [ %i.cy, %.lr.ph.i77.i ], [ %indvars.iv.next.i79.i, %bb.x ] ; 4 uses
  %indvars.iv.next.i79.i = add nsw i64 %indvars.iv.i78.i, -1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next.i79.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !28 ; 2 uses
  %i.db = icmp sgt i32 %i.da, %i.ak
  br i1 %i.db, label %bb.x, label %._crit_edge.loopexit.split.loop.exit.i80.i

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i78.i
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !28
  %i.dd = icmp samesign ugt i64 %indvars.iv.i78.i, 1
  br i1 %i.dd, label %bb.w, label %Vec_IntPushOrder.exit90.i, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit.i80.i:       ; preds = %bb.w
  %i.de = trunc nuw nsw i64 %indvars.iv.i78.i to i32
  br label %Vec_IntPushOrder.exit90.i

Vec_IntPushOrder.exit90.i:                        ; preds = %bb.x, %._crit_edge.loopexit.split.loop.exit.i80.i, %Vec_IntGrow.exit24.i75.i
  %i.df = phi ptr [ %i.cs, %Vec_IntGrow.exit24.i75.i ], [ %i.cw, %._crit_edge.loopexit.split.loop.exit.i80.i ], [ %i.cw, %bb.x ]
  %.0.in.lcssa.i76.i = phi i32 [ %i.ct, %Vec_IntGrow.exit24.i75.i ], [ %i.de, %._crit_edge.loopexit.split.loop.exit.i80.i ], [ 0, %bb.x ]
  %i.dg = sext i32 %.0.in.lcssa.i76.i to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dg
  store i32 %i.ak, ptr %i.dh, align 4, !tbaa !28
  %.val12.pre = load i32, ptr %i.a, align 4, !tbaa !21
  br label %.critedge

bb.y:                                             ; preds = %Vec_IntFind.exit68.thread.i, %bb.b, %Vec_IntFind.exit68.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i.i
  br i1 %exitcond.not, label %.split34.us, label %bb.b, !llvm.loop !59

.critedge:                                        ; preds = %.split, %Vec_IntPushOrder.exit90.i, %bb.m
  %.val12 = phi i32 [ %.val12.pre47, %bb.m ], [ %.val12.pre, %Vec_IntPushOrder.exit90.i ], [ %.val1248, %.split ] ; 2 uses
  %.025 = phi i32 [ %i.av, %bb.m ], [ %i.av, %Vec_IntPushOrder.exit90.i ], [ 0, %.split ]
  %4 = icmp slt i32 %.025, %.val12
  br i1 %4, label %.split, label %.split34.us, !llvm.loop !60

.split34.us:                                      ; preds = %.critedge, %bb.y, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Sbd_ManCutReload(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) initializes((4, 8)) %4, ptr nofree noundef captures(none) initializes((4, 8)) %5) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr i8, ptr %3, i64 4          ; 2 uses
  %.val1524 = load i32, ptr %i.c, align 4, !tbaa !21
  %i.d = icmp sgt i32 %.val1524, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %.val14 = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = icmp eq i32 %i.m, %2
  br i1 %i.n, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 4, !tbaa !21   ; 7 uses
  %i.p = load i32, ptr %4, align 8, !tbaa !22
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.c
  %.pre29 = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %i.o, 1073741823
  %i.w = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  %.pre30 = load ptr, ptr %i.h, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.pre30, null
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @realloc(ptr noundef nonnull %.pre30, i64 noundef %i.y) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.ab = phi ptr [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !23
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !22
  %.pre31 = load i32, ptr %i.a, align 4, !tbaa !21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ac = phi i32 [ %i.o, %.Vec_IntPush.exit_crit_edge ], [ %i.o, %bb.h ], [ %.pre31, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre29, %.Vec_IntPush.exit_crit_edge ], [ %.pre30, %bb.h ], [ %i.ab, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !21
  br label %bb.u

bb.l:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.b, align 4, !tbaa !21  ; 7 uses
  %i.ag = load i32, ptr %5, align 8, !tbaa !22
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.m, label %.Vec_IntPush.exit23_crit_edge

.Vec_IntPush.exit23_crit_edge:                    ; preds = %bb.l
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !23
  br label %Vec_IntPush.exit23

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp slt i32 %i.af, 16
  br i1 %i.ai, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %.not9.i.i21 = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i19

bb.p:                                             ; preds = %bb.n
  %i.al = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i19

bb.q:                                             ; preds = %bb.m
  %i.am = icmp samesign ult i32 %i.af, 1073741823
  %i.an = shl nuw nsw i32 %i.af, 1
  %spec.select.i16 = select i1 %i.am, i32 %i.an, i32 2147483647 ; 4 uses
  %.not.i9.i17 = icmp samesign ult i32 %i.af, %spec.select.i16
  %.pre27 = load ptr, ptr %i.g, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i17, label %bb.r, label %Vec_IntPush.exit23

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i18 = icmp eq ptr %.pre27, null
  %i.ao = zext nneg i32 %spec.select.i16 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  br i1 %.not9.i10.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %.pre27, i64 noundef %i.ap) #20
  br label %Vec_IntGrow.exit11.sink.split.i19

bb.t:                                             ; preds = %bb.r
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #19
  br label %Vec_IntGrow.exit11.sink.split.i19

Vec_IntGrow.exit11.sink.split.i19:                ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %i.as = phi ptr [ %i.al, %bb.p ], [ %i.ak, %bb.o ], [ %i.aq, %bb.s ], [ %i.ar, %bb.t ] ; 2 uses
  %spec.select.sink.i20 = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i16, %bb.s ], [ %spec.select.i16, %bb.t ]
  store ptr %i.as, ptr %i.g, align 8, !tbaa !23
  store i32 %spec.select.sink.i20, ptr %5, align 8, !tbaa !22
  %.pre28 = load i32, ptr %i.b, align 4, !tbaa !21
  br label %Vec_IntPush.exit23

Vec_IntPush.exit23:                               ; preds = %.Vec_IntPush.exit23_crit_edge, %bb.q, %Vec_IntGrow.exit11.sink.split.i19
  %i.at = phi i32 [ %i.af, %.Vec_IntPush.exit23_crit_edge ], [ %i.af, %bb.q ], [ %.pre28, %Vec_IntGrow.exit11.sink.split.i19 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.Vec_IntPush.exit23_crit_edge ], [ %.pre27, %bb.q ], [ %i.as, %Vec_IntGrow.exit11.sink.split.i19 ]
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.b, align 4, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit23
  %.sink = phi i32 [ %i.ac, %Vec_IntPush.exit ], [ %i.at, %Vec_IntPush.exit23 ]
  %.sink36 = phi ptr [ %i.ad, %Vec_IntPush.exit ], [ %i.au, %Vec_IntPush.exit23 ]
  %i.aw = sext i32 %.sink to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.sink36, i64 %i.aw
  store i32 %i.j, ptr %i.ax, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val15 = load i32, ptr %i.c, align 4, !tbaa !21
  %i.ay = sext i32 %.val15 to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.b, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %bb.u, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @Sbd_ManCutCollect_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val43 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = icmp slt i32 %i.d, 0
  %spec.select = select i1 %i.f, i32 %2, i32 %i.e ; 5 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 176
  %.val44 = load i32, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 624
  %.val45 = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.i = sext i32 %spec.select to i64             ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.val45, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
end_hunk_0
