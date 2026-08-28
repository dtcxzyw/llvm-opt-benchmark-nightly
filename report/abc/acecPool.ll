Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecPool?download=true
inline.NumInlined: 268
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Acec_ManCollectCarryRoots:bb.a
  %i.bc = phi i32 [ 0, %.lr.ph36 ], [ %i.cg, %bb.m ] ; 4 uses
  %indvars.iv38 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next39, %bb.m ]
  %i.bd = phi i64 [ 0, %.lr.ph36 ], [ %i.ch, %bb.m ]
  %.val28 = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33 ; 3 uses
  %i.bh = ashr i32 %i.bg, 5
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33
  %i.bl = and i32 %i.bg, 31
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bk
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.bo = icmp eq i32 %i.bc, %i.bb
  br i1 %i.bo, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bp = icmp slt i32 %i.bb, 16
  br i1 %i.bp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.br = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.bs = icmp samesign ult i32 %i.bb, 1073741823
  %i.bt = shl nuw nsw i32 %i.bb, 1
  %spec.select.i = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bb, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %i.ba, null
  %i.bu = zext nneg i32 %spec.select.i to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef %i.bv) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bv) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.br, %bb.h ], [ %i.bq, %bb.g ], [ %i.bw, %bb.k ], [ %i.bx, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.by = phi ptr [ %i.az, %bb.d ], [ %i.az, %bb.i ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.bz = phi i32 [ %i.bb, %bb.d ], [ %i.bb, %bb.i ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ca = add nsw i32 %i.bc, 1                    ; 2 uses
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !32
  %i.cb = sext i32 %i.bc to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cb
  store i32 %i.bg, ptr %i.cc, align 4, !tbaa !33
  %.val25.pre = load i32, ptr %i.q, align 4, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %.val25 = phi i32 [ %.val2541, %bb.c ], [ %.val25.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.cd = phi ptr [ %i.az, %bb.c ], [ %i.by, %Vec_IntPush.exit ]
  %i.ce = phi ptr [ %i.ba, %bb.c ], [ %i.by, %Vec_IntPush.exit ]
  %i.cf = phi i32 [ %i.bb, %bb.c ], [ %i.bz, %Vec_IntPush.exit ]
  %i.cg = phi i32 [ %i.bc, %bb.c ], [ %i.ca, %Vec_IntPush.exit ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv.next39, 6   ; 2 uses
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = icmp sgt i32 %.val25, %i.ci
  br i1 %i.cj, label %bb.c, label %._crit_edge.thread, !llvm.loop !39

._crit_edge:                                      ; preds = %Vec_BitStart.exit
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.ck = phi ptr [ %calloc, %._crit_edge ], [ %i.r, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.ck) #24
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %Vec_BitStart.exit.thread, %._crit_edge, %._crit_edge.thread
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_ManCollectXorRoots(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !32
  store i32 100, ptr %i.a, align 8, !tbaa !30
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %i.f = ashr i32 %.val, 5
  %i.g = and i32 %.val, 31
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = add nsw i32 %i.f, %i.i                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit.thread, label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.l) ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val26 = load i32, ptr %i.m, align 4, !tbaa !32 ; 2 uses
  %i.n = icmp sgt i32 %.val26, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

Vec_BitStart.exit.thread:                         ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val2653 = load i32, ptr %i.o, align 4, !tbaa !32 ; 2 uses
  %i.p = icmp sgt i32 %.val2653, 0
  br i1 %i.p, label %.lr.ph, label %Vec_BitFree.exit

.lr.ph:                                           ; preds = %Vec_BitStart.exit.thread, %Vec_BitStart.exit
  %.val2654 = phi i32 [ %.val2653, %Vec_BitStart.exit.thread ], [ %.val26, %Vec_BitStart.exit ] ; 2 uses
  %i.q = phi ptr [ %i.o, %Vec_BitStart.exit.thread ], [ %i.m, %Vec_BitStart.exit ]
  %i.r = phi ptr [ null, %Vec_BitStart.exit.thread ], [ %calloc, %Vec_BitStart.exit ] ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.t = add nsw i32 %.val2654, -1
  %i.u = lshr i32 %i.t, 2
  %i.v = add nuw nsw i32 %i.u, 1
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %bb.b

.lr.ph36:                                         ; preds = %bb.b
  %i.w = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val31, i64 %indvars.iv ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 2 uses
  %i.aa = and i32 %i.z, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = ashr i32 %i.z, 5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = or i32 %i.ab, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33 ; 2 uses
  %i.aj = and i32 %i.ai, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = ashr i32 %i.ai, 5
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  %i.ap = or i32 %i.ak, %i.ao
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33 ; 2 uses
  %i.as = and i32 %i.ar, 31
  %i.at = shl nuw i32 1, %i.as
  %i.au = ashr i32 %i.ar, 5
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33
  %i.ay = or i32 %i.at, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !33
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph36, label %bb.b, !llvm.loop !40

bb.c:                                             ; preds = %.lr.ph36, %bb.m
  %.val2545 = phi i32 [ %.val2654, %.lr.ph36 ], [ %.val25, %bb.m ]
  %i.az = phi ptr [ %i.c, %.lr.ph36 ], [ %i.cc, %bb.m ] ; 3 uses
  %i.ba = phi ptr [ %i.c, %.lr.ph36 ], [ %i.cd, %bb.m ] ; 5 uses
  %i.bb = phi i32 [ 100, %.lr.ph36 ], [ %i.ce, %bb.m ] ; 8 uses
  %i.bc = phi i32 [ 0, %.lr.ph36 ], [ %i.cf, %bb.m ] ; 4 uses
  %indvars.iv42 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next43, %bb.m ]
  %i.bd = phi i64 [ 0, %.lr.ph36 ], [ %i.cg, %bb.m ]
  %.val28 = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33 ; 3 uses
  %i.bg = ashr i32 %i.bf, 5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33
  %i.bk = and i32 %i.bf, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bj
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.bn = icmp eq i32 %i.bc, %i.bb
  br i1 %i.bn, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bo = icmp slt i32 %i.bb, 16
  br i1 %i.bo, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.bq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.br = icmp samesign ult i32 %i.bb, 1073741823
  %i.bs = shl nuw nsw i32 %i.bb, 1
  %spec.select.i = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bb, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %i.ba, null
  %i.bt = zext nneg i32 %spec.select.i to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef %i.bu) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.bq, %bb.h ], [ %i.bp, %bb.g ], [ %i.bv, %bb.k ], [ %i.bw, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.bx = phi ptr [ %i.az, %bb.d ], [ %i.az, %bb.i ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.by = phi i32 [ %i.bb, %bb.d ], [ %i.bb, %bb.i ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bz = add nsw i32 %i.bc, 1                    ; 2 uses
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !32
  %i.ca = sext i32 %i.bc to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ca
  store i32 %i.bf, ptr %i.cb, align 4, !tbaa !33
  %.val25.pre = load i32, ptr %i.q, align 4, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %.val25 = phi i32 [ %.val2545, %bb.c ], [ %.val25.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.cc = phi ptr [ %i.az, %bb.c ], [ %i.bx, %Vec_IntPush.exit ]
  %i.cd = phi ptr [ %i.ba, %bb.c ], [ %i.bx, %Vec_IntPush.exit ]
  %i.ce = phi i32 [ %i.bb, %bb.c ], [ %i.by, %Vec_IntPush.exit ]
  %i.cf = phi i32 [ %i.bc, %bb.c ], [ %i.bz, %Vec_IntPush.exit ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.cg = shl nuw nsw i64 %indvars.iv.next43, 2   ; 2 uses
  %2 = trunc nuw i64 %i.cg to i32
  %3 = icmp sgt i32 %.val25, %2
  br i1 %3, label %bb.c, label %._crit_edge.thread, !llvm.loop !41

._crit_edge:                                      ; preds = %Vec_BitStart.exit
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.ch = phi ptr [ %calloc, %._crit_edge ], [ %i.r, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.ch) #24
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %Vec_BitStart.exit.thread, %._crit_edge, %._crit_edge.thread
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Acec_ManCountXorTreeInputs_rec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 176
  %.val31 = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 624
  %.val32 = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %.not = icmp eq i32 %i.f, %.val31
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.val31, ptr %i.e, align 4, !tbaa !33
  %i.g = getelementptr i8, ptr %3, i64 8
  %.val29 = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.d
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = shl nsw i32 %i.i, 2
  %i.l = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.m = sext i32 %i.k to i64                     ; 4 uses
  %.val28 = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr [4 x i8], ptr %.val28, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  tail call void @Acec_ManCountXorTreeInputs_rec(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.val28.1 = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.q = getelementptr [4 x i8], ptr %.val28.1, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  tail call void @Acec_ManCountXorTreeInputs_rec(ptr noundef nonnull %0, i32 noundef %i.s, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.val28.2 = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.t = getelementptr [4 x i8], ptr %.val28.2, i64 %i.m
  %i.u = getelementptr i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  tail call void @Acec_ManCountXorTreeInputs_rec(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.val = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.w = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.m
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32   ; 7 uses
  %i.aa = load i32, ptr %6, align 8, !tbaa !30
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.o, label %Vec_IntPush.exit42

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %4, i64 8
  %.val30 = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ad = ashr i32 %1, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val30, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = and i32 %1, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ag, %i.ai
  %.not27 = icmp eq i32 %i.aj, 0
  br i1 %.not27, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 7 uses
  %i.am = load i32, ptr %5, align 8, !tbaa !30
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp slt i32 %i.al, 16
  br i1 %i.ao, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aq, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.at = phi ptr [ %i.ar, %bb.h ], [ %i.as, %bb.i ]
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.au = icmp samesign ult i32 %i.al, 1073741823
  %i.av = shl nuw nsw i32 %i.al, 1
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.al, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ax, null
  %i.ay = zext nneg i32 %spec.select.i to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef %i.az) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bc = phi ptr [ %i.ba, %bb.l ], [ %i.bb, %bb.m ]
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !30
  %.pre45 = load i32, ptr %i.ak, align 4, !tbaa !32
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.bd = phi i32 [ %i.al, %bb.e ], [ %i.al, %bb.j ], [ %.pre45, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = add nsw i32 %i.bd, 1
  store i32 %i.bg, ptr %i.ak, align 4, !tbaa !32
  br label %.sink.split

bb.o:                                             ; preds = %.preheader
  %i.bh = icmp slt i32 %i.z, 16
  br i1 %i.bh, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i40 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i41

bb.r:                                             ; preds = %bb.p
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i41

Vec_IntGrow.exit.i41:                             ; preds = %bb.r, %bb.q
  %i.bm = phi ptr [ %i.bk, %bb.q ], [ %i.bl, %bb.r ]
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i38

bb.s:                                             ; preds = %bb.o
  %i.bn = icmp samesign ult i32 %i.z, 1073741823
  %i.bo = shl nuw nsw i32 %i.z, 1
  %spec.select.i35 = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 3 uses
  %.not.i9.i36 = icmp samesign ult i32 %i.z, %spec.select.i35
  br i1 %.not.i9.i36, label %bb.t, label %Vec_IntPush.exit42

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i37 = icmp eq ptr %i.bq, null
  %i.br = zext nneg i32 %spec.select.i35 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 2 uses
  br i1 %.not9.i10.i37, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef %i.bs) #23
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
end_hunk_0
begin_hunk_1_@Acec_ManCollectBoxSets:bb.a

bb.j:                                             ; preds = %.lr.ph81, %.critedge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next84, %.critedge ]
  %i.co = phi i64 [ 0, %.lr.ph81 ], [ %i.da, %.critedge ]
  %.val61 = load ptr, ptr %i.cn, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.val61, i64 %i.co ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.ct = getelementptr i8, ptr %i.cp, i64 20     ; 2 uses
  %.val5477 = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cu = icmp sgt i32 %.val5477, 0
  br i1 %i.cu, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j
  %i.cv = getelementptr i8, ptr %i.cp, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.val56 = load ptr, ptr %i.cv, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !33
  tail call void @Acec_ManCollectBoxSets_rec(ptr noundef nonnull %0, i32 noundef %i.cx, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.bc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val54 = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cy = sext i32 %.val54 to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %bb.k, label %.critedge, !llvm.loop !72

.critedge:                                        ; preds = %bb.k, %bb.j
  tail call void @Acec_ManCollectInsOuts(ptr nonnull poison, ptr noundef nonnull %1, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.da = mul nuw nsw i64 %indvars.iv.next84, 5   ; 2 uses
  %.val57 = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = icmp sgt i32 %.val57, %i.db
  br i1 %i.dc, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !73

._crit_edge.loopexit:                             ; preds = %.critedge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_IntFree.exit69
  %i.dd = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bm, %Vec_IntFree.exit69 ] ; 2 uses
  %.not.i70 = icmp eq ptr %i.dd, null
  br i1 %.not.i70, label %Vec_IntFree.exit71, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.dd) #24
  br label %Vec_IntFree.exit71

Vec_IntFree.exit71:                               ; preds = %._crit_edge, %bb.l
  tail call void @free(ptr noundef nonnull %i.bc) #24
  %.not.i72 = icmp eq ptr %i.bx, null
  br i1 %.not.i72, label %Vec_BitFree.exit, label %bb.m

bb.m:                                             ; preds = %Vec_IntFree.exit71
  tail call void @free(ptr noundef nonnull %i.bx) #24
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %Vec_IntFree.exit71, %bb.m
  tail call void @free(ptr noundef nonnull %i.bs) #24
  %.not.i73 = icmp eq ptr %i.ce, null
  br i1 %.not.i73, label %Vec_BitFree.exit74, label %bb.n

bb.n:                                             ; preds = %Vec_BitFree.exit
  tail call void @free(ptr noundef nonnull %i.ce) #24
  br label %Vec_BitFree.exit74

Vec_BitFree.exit74:                               ; preds = %Vec_BitFree.exit, %bb.n
  tail call void @free(ptr noundef nonnull %i.ca) #24
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !31 ; 2 uses
  %.not.i75 = icmp eq ptr %i.df, null
  br i1 %.not.i75, label %Vec_IntFree.exit76, label %bb.o

bb.o:                                             ; preds = %Vec_BitFree.exit74
  tail call void @free(ptr noundef nonnull %i.df) #24
  br label %Vec_IntFree.exit76

Vec_IntFree.exit76:                               ; preds = %Vec_BitFree.exit74, %bb.o
  tail call void @free(ptr noundef nonnull %i.b) #24
  ret ptr %i.ba
}

; Function Attrs: nofree nounwind uwtable
define void @Acec_ManPrintRanks2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val10 = load i32, ptr %i.a, align 4, !tbaa !32
  %i.b = icmp sgt i32 %.val10, 1
  br i1 %i.b, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !32
  %i.h = trunc i64 %indvars.iv.next to i32
  %i.i = or disjoint i32 %i.h, 1
  %i.j = icmp slt i32 %i.i, %.val
  br i1 %i.j, label %.critedge, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @Acec_ManPrintRanks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
Vec_IntStart.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 100, ptr %i.a, align 8, !tbaa !30
  %calloc = tail call dereferenceable_or_null(400) ptr @calloc(i64 1, i64 400) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %calloc, ptr %i.c, align 8, !tbaa !31
  store i32 100, ptr %i.b, align 4, !tbaa !32
  %i.d = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val32 = load i32, ptr %i.d, align 4, !tbaa !32
  %i.e = icmp sgt i32 %.val32, 1
  br i1 %i.e, label %.critedge.lr.ph, label %.critedge2

.critedge.lr.ph:                                  ; preds = %Vec_IntStart.exit
  %i.f = getelementptr i8, ptr %0, i64 8
  br label %.critedge

.preheader:                                       ; preds = %Vec_IntFillExtra.exit
  store i32 %i.ad, ptr %i.b, align 4
  store ptr %storemerge37, ptr %i.c, align 8
  %.not39 = icmp slt i32 %i.ai, 1
  br i1 %.not39, label %.critedge2.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = add nuw i32 %i.ai, 1
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.k

.critedge:                                        ; preds = %.critedge.lr.ph, %Vec_IntFillExtra.exit
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %Vec_IntFillExtra.exit ] ; 2 uses
  %storemerge36 = phi ptr [ %calloc, %.critedge.lr.ph ], [ %storemerge37, %Vec_IntFillExtra.exit ] ; 8 uses
  %i.h = phi i32 [ 100, %.critedge.lr.ph ], [ %i.ad, %Vec_IntFillExtra.exit ] ; 4 uses
  %.034 = phi i32 [ 0, %.critedge.lr.ph ], [ %i.ai, %Vec_IntFillExtra.exit ]
  %.val27 = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33   ; 7 uses
  %i.l = add nsw i32 %i.k, 1                      ; 4 uses
  %.not.i29.not = icmp slt i32 %i.k, %i.h
  br i1 %.not.i29.not, label %Vec_IntFillExtra.exit, label %bb.a

bb.a:                                             ; preds = %.critedge
  %i.m = load i32, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.n = shl nsw i32 %i.m, 1                      ; 2 uses
  %.not31 = icmp slt i32 %i.k, %i.n
  %.not.i.i.not = icmp sgt i32 %i.m, %i.k         ; 2 uses
  br i1 %.not31, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.not, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %storemerge36, null
  %i.o = sext i32 %i.l to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @realloc(ptr noundef nonnull %storemerge36, i64 noundef %i.p) #23
  br label %Vec_IntGrow.exit.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #22
  br label %Vec_IntGrow.exit.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i.not, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp slt i32 %i.m, 1073741823
  %spec.select.i = select i1 %i.s, i32 %i.n, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.m, %spec.select.i
  br i1 %.not.i22.i, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %.not9.i23.i = icmp eq ptr %storemerge36, null
  %i.t = sext i32 %spec.select.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  br i1 %.not9.i23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @realloc(ptr noundef nonnull %storemerge36, i64 noundef %i.u) #23
  br label %Vec_IntGrow.exit.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #22
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.i, %bb.j, %bb.d, %bb.e
  %storemerge = phi ptr [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  %spec.select.sink.i = phi i32 [ %i.l, %bb.e ], [ %i.l, %bb.d ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.g, %bb.f, %bb.b
  %storemerge38 = phi ptr [ %storemerge, %Vec_IntGrow.exit.sink.split.i ], [ %storemerge36, %bb.g ], [ %storemerge36, %bb.f ], [ %storemerge36, %bb.b ] ; 2 uses
  %i.x = sext i32 %i.h to i64
  %i.y = shl nsw i64 %i.x, 2
  %scevgep.i = getelementptr i8, ptr %storemerge38, i64 %i.y
  %i.z = sub i32 %i.k, %i.h
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ac, i1 false), !tbaa !33
  br label %Vec_IntFillExtra.exit

Vec_IntFillExtra.exit:                            ; preds = %.critedge, %._crit_edge.i
  %storemerge37 = phi ptr [ %storemerge36, %.critedge ], [ %storemerge38, %._crit_edge.i ] ; 5 uses
  %i.ad = phi i32 [ %i.h, %.critedge ], [ %i.l, %._crit_edge.i ] ; 2 uses
  %i.ae = sext i32 %i.k to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %storemerge37, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !33
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %.034, i32 %i.k) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = or disjoint i64 %indvars.iv.next, 1
  %.val = load i32, ptr %i.d, align 4, !tbaa !32
  %i.ak = sext i32 %.val to i64
  %i.al = icmp slt i64 %i.aj, %i.ak
  br i1 %i.al, label %.critedge, label %.preheader, !llvm.loop !75

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv43 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next44, %bb.k ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %storemerge37, i64 %indvars.iv43
  %i.an = load i32, ptr %i.am, align 4, !tbaa !33
  %i.ao = trunc nuw nsw i64 %indvars.iv43 to i32
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ao, i32 noundef %i.an) ; 0 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2.thread, label %bb.k, !llvm.loop !76

.critedge2.thread:                                ; preds = %bb.k, %.preheader
  %putchar54 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.l

.critedge2:                                       ; preds = %Vec_IntStart.exit
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.i30 = icmp eq ptr %calloc, null
  br i1 %.not.i30, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %.critedge2.thread, %.critedge2
  %i.aq = phi ptr [ %storemerge37, %.critedge2.thread ], [ %calloc, %.critedge2 ]
  tail call void @free(ptr noundef nonnull %i.aq) #24
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.l
  tail call void @free(ptr noundef nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @Acec_ManProfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #24
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !77
  %.neg56 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %.neg = sdiv i64 %i.f, -1000
  %.neg57 = add i64 %.neg, %.neg56
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg57, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.g = call ptr @Ree_ManComputeCuts(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %1) #24 ; 6 uses
  %i.h = call i32 @Ree_ManCountFadds(ptr noundef %i.g) #24
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %.val37 = load i32, ptr %i.i, align 4, !tbaa !32
  %i.j = sdiv i32 %.val37, 6
  %i.k = call i32 @Ree_ManCountFadds(ptr noundef %i.g) #24
  %i.l = sub nsw i32 %i.j, %i.k
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val36 = load i32, ptr %i.n, align 4, !tbaa !32
  %i.o = sdiv i32 %.val36, 4
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.h, i32 noundef %i.l, i32 noundef %i.o) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.q = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %Abc_Clock.exit49, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.s = load i64, ptr %4, align 8, !tbaa !77
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !79
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.t
  br label %Abc_Clock.exit49

Abc_Clock.exit49:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i48 = phi i64 [ %i.x, %bb.c ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.y = add i64 %.0.i48, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4)
  %i.z = sitofp i64 %i.y to double
  %i.aa = fdiv double %i.z, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, double noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ab = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %Abc_Clock.exit51, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit49
  %i.ad = load i64, ptr %3, align 8, !tbaa !77
  %.neg59 = mul i64 %i.ad, -1000000
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !79
  %.neg58 = sdiv i64 %i.af, -1000
  %.neg60 = add i64 %.neg58, %.neg59
  br label %Abc_Clock.exit51

Abc_Clock.exit51:                                 ; preds = %Abc_Clock.exit49, %bb.d
  %.0.i50.neg = phi i64 [ %.neg60, %bb.d ], [ 1, %Abc_Clock.exit49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.ah = call ptr @Acec_ManCollectBoxSets(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %i.ag) ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4      ; 3 uses
  %.val40 = load i32, ptr %i.ai, align 4, !tbaa !46 ; 2 uses
  %i.aj = sdiv i32 %.val40, 5
  %i.ak = icmp sgt i32 %.val40, 9
  %i.al = select i1 %i.ak, ptr @.str.6, ptr @.str.7
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.aj, ptr noundef nonnull %i.al) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.an = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #24
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %Abc_Clock.exit53, label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit51
  %i.ap = load i64, ptr %2, align 8, !tbaa !77
  %i.aq = mul nsw i64 %i.ap, 1000000
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !79
  %i.at = sdiv i64 %i.as, 1000
  %i.au = add nsw i64 %i.at, %i.aq
  br label %Abc_Clock.exit53

Abc_Clock.exit53:                                 ; preds = %Abc_Clock.exit51, %bb.e
  %.0.i52 = phi i64 [ %i.au, %bb.e ], [ -1, %Abc_Clock.exit51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.av = add i64 %.0.i52, %.0.i50.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4)
  %i.aw = sitofp i64 %i.av to double
  %i.ax = fdiv double %i.aw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, double noundef %i.ax)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %Abc_Clock.exit53
  %.val3861 = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.ay = icmp sgt i32 %.val3861, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr i8, ptr %i.ah, i64 8      ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ba = phi i32 [ 0, %.lr.ph ], [ %i.ce, %bb.f ] ; 3 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.bb) ; 0 uses
  %.val47 = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bd = zext nneg i32 %i.ba to i64              ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.val47, i64 %i.bd
end_hunk_1
