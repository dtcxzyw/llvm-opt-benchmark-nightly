Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioUtil?download=true
inline.NumInlined: 115
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Io_FileOpen:bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %2)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @Abc_FrameReadFlag(ptr noundef nonnull %1) #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = tail call ptr @Extra_UtilStrsav(ptr noundef nonnull %i.d) #17 ; 5 uses
  %i.f = tail call ptr @strtok(ptr noundef %i.e, ptr noundef nonnull @.str.51) #17 ; 2 uses
  %.not2429 = icmp eq ptr %i.f, null
  br i1 %.not2429, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.030 = phi ptr [ %i.k, %bb.i ], [ %i.f, %bb.d ]
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.52, ptr noundef nonnull %.030, ptr noundef %0) #17 ; 0 uses
  %i.h = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef %2) ; 3 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.not27 = icmp eq i32 %3, 0
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not28 = icmp eq ptr %i.e, null
  br i1 %.not28, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.e) #17
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.k = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.51) #17 ; 2 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.e) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.h, %bb.g
  %.018 = phi ptr [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ null, %._crit_edge ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.018, %bb.k ], [ %i.l, %bb.l ]
  ret ptr %.1
}

declare ptr @Abc_FrameReadFlag(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_UtilStrsav(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @Io_TransformSF2PLA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.54) ; 6 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.55) ; 9 uses
  %i.c = icmp eq ptr %i.a, null
  %.not49 = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef %0) ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  br i1 %.not49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef %1) ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.h = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #20 ; 9 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.58, i64 9, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.i = tail call ptr @fgets(ptr noundef %i.h, i32 noundef 1000000, ptr noundef nonnull %i.a)
  %.not50 = icmp eq ptr %i.i, null
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.q
  %.051 = phi i32 [ %.1, %bb.q ], [ 0, %bb.g ]
  %i.j = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.59) #18
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.k = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.60) #18
  %.not42 = icmp eq ptr %i.k, null
  br i1 %.not42, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call ptr @fgets(ptr noundef nonnull %i.h, i32 noundef 1000000, ptr noundef nonnull %i.a) ; 0 uses
  %i.m = tail call ptr @strtok(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.61) #17 ; 2 uses
  %.not44 = icmp eq ptr %i.m, null
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.62, i32 noundef %i.o) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.61) #17 ; 2 uses
  %.not45 = icmp eq ptr %i.q, null
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.q, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.63, i32 noundef %i.s) #17 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.61) #17 ; 2 uses
  %.not46 = icmp eq ptr %i.u, null
  br i1 %.not46, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.u, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.64, i32 noundef %i.w) #17 ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.h
  %.not43 = icmp eq i32 %.051, 0
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %fputs = tail call i32 @fputs(ptr nonnull %i.h, ptr nonnull %i.b) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.1 = phi i32 [ 0, %bb.o ], [ 1, %bb.p ], [ 1, %bb.n ], [ 1, %bb.m ]
  %i.y = tail call ptr @fgets(ptr noundef nonnull %i.h, i32 noundef 1000000, ptr noundef nonnull %i.a)
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.g
  %fwrite47 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 3, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.z = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.aa = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %.not48 = icmp eq ptr %i.h, null
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.h) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Io_TransformROM2PLA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.55) ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef %1) ; 0 uses
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.54) ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Vec_WrdReadHex.exit.thread, label %bb.d

Vec_WrdReadHex.exit.thread:                       ; preds = %bb.c
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef %0) ; 0 uses
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #20 ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.o, %bb.d
  %i.i = phi ptr [ %i.ah, %bb.o ], [ %i.h, %bb.d ]
  %i.j = phi i32 [ %i.ai, %bb.o ], [ 1000, %bb.d ]
  %.val4165.i = phi i32 [ %.val41.i, %bb.o ], [ 0, %bb.d ]
  %i.k = phi ptr [ %i.aj, %bb.o ], [ %i.h, %bb.d ]
  %i.l = phi ptr [ %i.ak, %bb.o ], [ %i.h, %bb.d ]
  %i.m = phi i32 [ %i.al, %bb.o ], [ 1000, %bb.d ]
  %i.n = phi i32 [ %i.ap, %bb.o ], [ 0, %bb.d ]
  %.034.ph.i = phi i32 [ %.135.i, %bb.o ], [ -1, %bb.d ] ; 8 uses
  %.032.ph.i = phi i32 [ %.133.i, %bb.o ], [ 0, %bb.d ]
  %.0.ph.i = phi i64 [ %.1.i, %bb.o ], [ 0, %bb.d ]
  br label %.outer52.i.outer

.outer52.i.outer:                                 ; preds = %Vec_WrdPush.exit50.i, %.outer.i
  %.val60.ph = phi ptr [ %i.bp, %Vec_WrdPush.exit50.i ], [ %i.i, %.outer.i ] ; 9 uses
  %.ph = phi i32 [ %i.bq, %Vec_WrdPush.exit50.i ], [ %i.j, %.outer.i ] ; 10 uses
  %.val.ph = phi i32 [ %i.br, %Vec_WrdPush.exit50.i ], [ %.val4165.i, %.outer.i ] ; 5 uses
  %.ph201 = phi ptr [ %i.bp, %Vec_WrdPush.exit50.i ], [ %i.k, %.outer.i ] ; 7 uses
  %.ph202 = phi ptr [ %i.bp, %Vec_WrdPush.exit50.i ], [ %i.l, %.outer.i ] ; 5 uses
  %.ph203 = phi i32 [ %i.bq, %Vec_WrdPush.exit50.i ], [ %i.m, %.outer.i ] ; 8 uses
  %.ph204 = phi i32 [ %i.br, %Vec_WrdPush.exit50.i ], [ %i.n, %.outer.i ] ; 4 uses
  %.032.ph53.i.ph = phi i32 [ 0, %Vec_WrdPush.exit50.i ], [ %.032.ph.i, %.outer.i ]
  %.0.ph54.i.ph = phi i64 [ 0, %Vec_WrdPush.exit50.i ], [ %.0.ph.i, %.outer.i ]
  br label %.outer52.i

.outer52.i:                                       ; preds = %.outer52.i.outer, %Vec_WrdReadHexOne.exit.i
  %.032.ph53.i = phi i32 [ %i.bd, %Vec_WrdReadHexOne.exit.i ], [ %.032.ph53.i.ph, %.outer52.i.outer ] ; 5 uses
  %.0.ph54.i = phi i64 [ %i.bc, %Vec_WrdReadHexOne.exit.i ], [ %.0.ph54.i.ph, %.outer52.i.outer ] ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.outer52.i
  %i.o = tail call i32 @fgetc(ptr noundef nonnull %i.d) ; 3 uses
  switch i32 %i.o, label %bb.p [
    i32 -1, label %Vec_WrdReadHex.exit.a
    i32 32, label %.backedge.i.backedge
    i32 13, label %.backedge.i.backedge
    i32 9, label %.backedge.i.backedge
    i32 10, label %bb.e
  ]

.backedge.i.backedge:                             ; preds = %.backedge.i, %.backedge.i, %.backedge.i
  br label %.backedge.i

bb.e:                                             ; preds = %.backedge.i
  %i.p = icmp sgt i32 %.032.ph53.i, 0
  br i1 %i.p, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %.ph204, %.ph203
  br i1 %i.q, label %bb.g, label %Vec_WrdPush.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = icmp slt i32 %.ph203, 16
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i = icmp eq ptr %.ph202, null
  br i1 %.not9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %.ph202, i64 noundef 128) #21 ; 2 uses
  br label %Vec_WrdPush.exit.i

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20 ; 2 uses
  br label %Vec_WrdPush.exit.i

bb.k:                                             ; preds = %bb.g
  %i.u = icmp samesign ult i32 %.ph203, 1073741823
  %i.v = shl nuw nsw i32 %.ph203, 1
  %spec.select.i.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 6 uses
  %.not.i9.i.i = icmp samesign ult i32 %.ph203, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.l, label %Vec_WrdPush.exit.i

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i.i = icmp eq ptr %.ph202, null
  %i.w = zext nneg i32 %spec.select.i.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call ptr @realloc(ptr noundef nonnull %.ph202, i64 noundef %i.x) #21 ; 2 uses
  br label %Vec_WrdPush.exit.i

bb.n:                                             ; preds = %bb.l
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #20 ; 2 uses
  br label %Vec_WrdPush.exit.i

Vec_WrdPush.exit.i:                               ; preds = %bb.i, %bb.j, %bb.m, %bb.n, %bb.k, %bb.f
  %i.aa = phi ptr [ %.val60.ph, %bb.f ], [ %.val60.ph, %bb.k ], [ %i.t, %bb.j ], [ %i.s, %bb.i ], [ %i.y, %bb.m ], [ %i.z, %bb.n ]
  %i.ab = phi i32 [ %.ph, %bb.f ], [ %.ph, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i.i, %bb.m ], [ %spec.select.i.i, %bb.n ]
  %i.ac = phi ptr [ %.ph201, %bb.f ], [ %.ph201, %bb.k ], [ %i.t, %bb.j ], [ %i.s, %bb.i ], [ %i.y, %bb.m ], [ %i.z, %bb.n ] ; 3 uses
  %i.ad = phi i32 [ %.ph203, %bb.f ], [ %.ph203, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i.i, %bb.m ], [ %spec.select.i.i, %bb.n ]
  %i.ae = add i32 %.ph204, 1                      ; 2 uses
  %i.af = sext i32 %.ph204 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.af
  store i64 %.0.ph54.i, ptr %i.ag, align 8, !tbaa !78
  br label %bb.o

bb.o:                                             ; preds = %Vec_WrdPush.exit.i, %bb.e
  %i.ah = phi ptr [ %i.aa, %Vec_WrdPush.exit.i ], [ %.val60.ph, %bb.e ]
  %i.ai = phi i32 [ %i.ab, %Vec_WrdPush.exit.i ], [ %.ph, %bb.e ]
  %.val41.i = phi i32 [ %i.ae, %Vec_WrdPush.exit.i ], [ %.val.ph, %bb.e ] ; 4 uses
  %i.aj = phi ptr [ %i.ac, %Vec_WrdPush.exit.i ], [ %.ph201, %bb.e ]
  %i.ak = phi ptr [ %i.ac, %Vec_WrdPush.exit.i ], [ %.ph202, %bb.e ]
  %i.al = phi i32 [ %i.ad, %Vec_WrdPush.exit.i ], [ %.ph203, %bb.e ]
  %i.am = phi i32 [ %i.ae, %Vec_WrdPush.exit.i ], [ %.ph204, %bb.e ]
  %.133.i = phi i32 [ 0, %Vec_WrdPush.exit.i ], [ %.032.ph53.i, %bb.e ]
  %.1.i = phi i64 [ 0, %Vec_WrdPush.exit.i ], [ %.0.ph54.i, %bb.e ]
  %i.an = icmp eq i32 %.034.ph.i, -1              ; 2 uses
  %i.ao = icmp sgt i32 %.val41.i, 0
  %spec.select.i = select i1 %i.ao, i32 %.val41.i, i32 -1
  %i.ap = select i1 %i.an, i32 %.val41.i, i32 %i.am
  %.135.i = select i1 %i.an, i32 %spec.select.i, i32 %.034.ph.i
  br label %.outer.i, !llvm.loop !65

bb.p:                                             ; preds = %.backedge.i
  %i.aq = trunc i32 %i.o to i8                    ; 3 uses
  %sext.i = shl i32 %i.o, 24
  %i.ar = ashr exact i32 %sext.i, 24              ; 3 uses
  %i.as = add i8 %i.aq, -48
  %or.cond.i.i = icmp ult i8 %i.as, 10
  br i1 %or.cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = add nsw i32 %i.ar, -48
  br label %Vec_WrdReadHexOne.exit.i

bb.r:                                             ; preds = %bb.p
  %i.au = add i8 %i.aq, -65
  %or.cond5.i.i = icmp ult i8 %i.au, 6
  br i1 %or.cond5.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = add nsw i32 %i.ar, -55
  br label %Vec_WrdReadHexOne.exit.i

bb.t:                                             ; preds = %bb.r
  %i.aw = add i8 %i.aq, -97
  %or.cond8.i.i = icmp ult i8 %i.aw, 6
  %i.ax = add nsw i32 %i.ar, -87
  %spec.select.i42.i = select i1 %or.cond8.i.i, i32 %i.ax, i32 0
  br label %Vec_WrdReadHexOne.exit.i

Vec_WrdReadHexOne.exit.i:                         ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i = phi i32 [ %i.at, %bb.q ], [ %i.av, %bb.s ], [ %spec.select.i42.i, %bb.t ]
  %i.ay = zext nneg i32 %.0.i.i to i64
  %i.az = shl nsw i32 %.032.ph53.i, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = or i64 %i.bb, %.0.ph54.i                ; 2 uses
  %i.bd = add nsw i32 %.032.ph53.i, 1
  %i.be = icmp slt i32 %.032.ph53.i, 15
  br i1 %i.be, label %.outer52.i, label %bb.u, !llvm.loop !65

bb.u:                                             ; preds = %Vec_WrdReadHexOne.exit.i
  %i.bf = icmp eq i32 %.val.ph, %.ph
  br i1 %i.bf, label %bb.v, label %Vec_WrdPush.exit50.i

bb.v:                                             ; preds = %bb.u
  %i.bg = icmp slt i32 %.ph, 16
  br i1 %i.bg, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.not9.i.i48.i = icmp eq ptr %.ph201, null
  br i1 %.not9.i.i48.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %.ph201, i64 noundef 128) #21
  br label %Vec_WrdPush.exit50.i

bb.y:                                             ; preds = %bb.w
  %i.bi = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  br label %Vec_WrdPush.exit50.i

bb.z:                                             ; preds = %bb.v
  %i.bj = icmp samesign ult i32 %.ph, 1073741823
  %i.bk = shl nuw nsw i32 %.ph, 1
  %spec.select.i43.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %.not.i9.i44.i = icmp samesign ult i32 %.ph, %spec.select.i43.i
  br i1 %.not.i9.i44.i, label %bb.aa, label %Vec_WrdPush.exit50.i

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i45.i = icmp eq ptr %.ph201, null
  %i.bl = zext nneg i32 %spec.select.i43.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3                ; 2 uses
  br i1 %.not9.i10.i45.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %.ph201, i64 noundef %i.bm) #21
  br label %Vec_WrdPush.exit50.i

bb.ac:                                            ; preds = %bb.aa
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #20
  br label %Vec_WrdPush.exit50.i

Vec_WrdPush.exit50.i:                             ; preds = %bb.x, %bb.y, %bb.ab, %bb.ac, %bb.z, %bb.u
  %i.bp = phi ptr [ %.val60.ph, %bb.u ], [ %.val60.ph, %bb.z ], [ %i.bi, %bb.y ], [ %i.bh, %bb.x ], [ %i.bn, %bb.ab ], [ %i.bo, %bb.ac ] ; 4 uses
  %i.bq = phi i32 [ %.ph, %bb.u ], [ %.ph, %bb.z ], [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i43.i, %bb.ab ], [ %spec.select.i43.i, %bb.ac ] ; 2 uses
  %i.br = add i32 %.val.ph, 1                     ; 2 uses
  %i.bs = sext i32 %.val.ph to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs
  store i64 %i.bc, ptr %i.bt, align 8, !tbaa !78
  br label %.outer52.i.outer, !llvm.loop !65

Vec_WrdReadHex.exit.a:                            ; preds = %.backedge.i
  %2 = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %3 = sdiv i32 %.val.ph, %.034.ph.i              ; 8 uses
  %4 = icmp ult i32 %3, 2
  %5 = add i32 %3, -1
  %6 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %5, i1 true)
  %7 = sub nuw nsw i32 32, %6
  %.09.i = select i1 %4, i32 %3, i32 %7           ; 3 uses
  %i.bu = sext i32 %.034.ph.i to i64              ; 2 uses
  %i.bv = tail call noalias ptr @calloc(i64 noundef %i.bu, i64 noundef 8) #22 ; 12 uses
  %i.bw = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.bw, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %Vec_WrdReadHex.exit.a
  %i.bx = icmp sgt i32 %.034.ph.i, 0
  %wide.trip.count.i = zext i32 %.034.ph.i to i64 ; 8 uses
  br i1 %i.bx, label %.lr.ph.preheader.i.preheader, label %._crit_edge.split

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.by = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.by
  %i.bz = shl nuw nsw i64 %wide.trip.count, 3
  %i.ca = mul i64 %i.bz, %wide.trip.count.i
  %scevgep195 = getelementptr i8, ptr %.val60.ph, i64 %i.ca
  %min.iters.check = icmp ult i32 %.034.ph.i, 4
  %bound0 = icmp ult ptr %i.bv, %scevgep195
  %bound1 = icmp ult ptr %.val60.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtOr.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Abc_TtOr.exit.loopexit ] ; 2 uses
  %i.cb = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val60.ph, i64 %i.cb ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  %wide.load196 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load197 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !78, !alias.scope !80
  %wide.load198 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !78, !alias.scope !80
  %i.ch = or <2 x i64> %wide.load197, %wide.load
  %i.ci = or <2 x i64> %wide.load198, %wide.load196
  store <2 x i64> %i.ch, ptr %i.cd, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  store <2 x i64> %i.ci, ptr %i.ce, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtOr.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.prol ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !78
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i.prol
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !78
  %i.co = or i64 %i.cn, %i.cl
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !78
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !70

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.cp = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %Abc_TtOr.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !78
  %i.cv = or i64 %i.cu, %i.cs
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.i ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !78
  %i.da = or i64 %i.cz, %i.cx
  store i64 %i.da, ptr %i.cw, align 8, !tbaa !78
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !78
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.1
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !78
  %i.df = or i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.db, align 8, !tbaa !78
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.2
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !78
  %i.dk = or i64 %i.dj, %i.dh
  store i64 %i.dk, ptr %i.dg, align 8, !tbaa !78
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtOr.exit.loopexit, label %.lr.ph.i, !llvm.loop !71

Abc_TtOr.exit.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !72

._crit_edge.split:                                ; preds = %Abc_TtOr.exit.loopexit, %.lr.ph, %Vec_WrdReadHex.exit.a
  %i.dl = shl i32 %.034.ph.i, 6                   ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 0) ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph194, label %._crit_edge

.lr.ph194.1:                                      ; preds = %.lr.ph194
  %i.dn = add nsw i32 %.0193, -2                  ; 3 uses
  %i.do = lshr i32 %i.dn, 6
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !78
  %i.ds = and i32 %i.dn, 62
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw nsw i64 1, %i.dt
  %i.dv = and i64 %i.dr, %i.du
  %.not.1 = icmp eq i64 %i.dv, 0
  br i1 %.not.1, label %bb.ad, label %.thread, !llvm.loop !73

bb.ad:                                            ; preds = %.lr.ph194.1
  %i.dw = icmp sgt i32 %.0193, 2
  br i1 %i.dw, label %.lr.ph194, label %._crit_edge, !llvm.loop !73

.lr.ph194:                                        ; preds = %._crit_edge.split, %bb.ad
  %.0193 = phi i32 [ %i.dn, %bb.ad ], [ %i.dl, %._crit_edge.split ] ; 4 uses
  %i.dx = add nsw i32 %.0193, -1                  ; 3 uses
  %i.dy = lshr i32 %i.dx, 6
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !78
  %i.ec = and i32 %i.dx, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.eb, %i.ee
  %.not = icmp eq i64 %i.ef, 0
  br i1 %.not, label %.lr.ph194.1, label %.thread, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.ad, %._crit_edge.split
  %.not55 = icmp eq ptr %i.bv, null
  br i1 %.not55, label %bb.ae, label %.thread

.thread:                                          ; preds = %.lr.ph194, %.lr.ph194.1, %._crit_edge
  %.0114 = phi i32 [ %smin, %._crit_edge ], [ %.0193, %.lr.ph194 ], [ %i.dx, %.lr.ph194.1 ]
  tail call void @free(ptr noundef nonnull %i.bv) #17
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %.thread
  %.0115 = phi i32 [ %smin, %._crit_edge ], [ %.0114, %.thread ] ; 3 uses
  %i.eg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.62, i32 noundef %.09.i) #17 ; 0 uses
  %i.eh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.63, i32 noundef %.0115) #17 ; 0 uses
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.64, i32 noundef %3) #17 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.67, i64 9, i64 1, ptr nonnull %i.a) ; 0 uses
  br i1 %i.bw, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.ae
  %i.ej = icmp sgt i32 %.0115, 0
  br i1 %i.ej, label %.lr.ph103.split.us.preheader, label %.lr.ph95.us106

.lr.ph103.split.us.preheader:                     ; preds = %.lr.ph103
  %wide.trip.count143 = zext nneg i32 %3 to i64
  br label %.lr.ph95.us.preheader

.lr.ph95.us.preheader:                            ; preds = %._crit_edge100.us, %.lr.ph103.split.us.preheader
  %indvars.iv140 = phi i64 [ 0, %.lr.ph103.split.us.preheader ], [ %indvars.iv.next141, %._crit_edge100.us ] ; 3 uses
  %i.ek = mul nsw i64 %indvars.iv140, %i.bu
  %i.el = getelementptr inbounds [8 x i8], ptr %.val60.ph, i64 %i.ek
  %8 = trunc nuw nsw i64 %indvars.iv140 to i32
  br label %.lr.ph95.us

.lr.ph95.us:                                      ; preds = %.lr.ph95.us.preheader, %.lr.ph95.us
  %.04993.us = phi i32 [ %i.ep, %.lr.ph95.us ], [ 0, %.lr.ph95.us.preheader ] ; 2 uses
  %i.em = lshr i32 %8, %.04993.us
  %i.en = and i32 %i.em, 1
  %i.eo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, i32 noundef %i.en) #17 ; 0 uses
  %i.ep = add nuw nsw i32 %.04993.us, 1           ; 2 uses
  %exitcond138.not.a = icmp eq i32 %i.ep, %.09.i
  br i1 %exitcond138.not.a, label %.lr.ph99.us, label %.lr.ph95.us, !llvm.loop !74

.lr.ph99.us:                                      ; preds = %.lr.ph95.us
  %fputc.us = tail call i32 @fputc(i32 32, ptr nonnull %i.a) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph99.us, %bb.af
  %.15097.us = phi i32 [ 0, %.lr.ph99.us ], [ %i.fa, %bb.af ] ; 3 uses
  %i.eq = lshr i32 %.15097.us, 6
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !78
  %i.eu = and i32 %.15097.us, 63
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = lshr i64 %i.et, %i.ev
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = and i32 %i.ex, 1
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, i32 noundef %i.ey) #17 ; 0 uses
  %i.fa = add nuw nsw i32 %.15097.us, 1           ; 2 uses
  %exitcond139.not.a = icmp eq i32 %i.fa, %.0115
  br i1 %exitcond139.not.a, label %._crit_edge100.us, label %bb.af, !llvm.loop !75

._crit_edge100.us:                                ; preds = %bb.af
  %fputc59.us = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge104, label %.lr.ph95.us.preheader, !llvm.loop !76

.lr.ph95.us106:                                   ; preds = %.lr.ph103, %._crit_edge96.us108
  %.1101.us105 = phi i32 [ %i.ff, %._crit_edge96.us108 ], [ 0, %.lr.ph103 ] ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph95.us106
  %.04993.us107 = phi i32 [ 0, %.lr.ph95.us106 ], [ %i.fe, %bb.ag ] ; 2 uses
  %i.fb = lshr i32 %.1101.us105, %.04993.us107
  %i.fc = and i32 %i.fb, 1
  %i.fd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, i32 noundef %i.fc) #17 ; 0 uses
  %i.fe = add nuw nsw i32 %.04993.us107, 1        ; 2 uses
  %exitcond135.not = icmp eq i32 %i.fe, %.09.i
  br i1 %exitcond135.not, label %._crit_edge96.us108, label %bb.ag, !llvm.loop !74

._crit_edge96.us108:                              ; preds = %bb.ag
  %fputc.us109 = tail call i32 @fputc(i32 32, ptr nonnull %i.a) ; 0 uses
  %fputc59.us110 = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.ff = add nuw nsw i32 %.1101.us105, 1         ; 2 uses
  %exitcond136.not = icmp eq i32 %i.ff, %3
  br i1 %exitcond136.not, label %._crit_edge104, label %.lr.ph95.us106, !llvm.loop !76

._crit_edge104:                                   ; preds = %._crit_edge96.us108, %._crit_edge100.us, %bb.ae
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.fg = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_WrdReadHex.exit.thread, %._crit_edge104, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Io_ConvertNumsToSop(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  store i32 8, ptr %i.a, align 8, !tbaa !40
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36
  %i.d = add nsw i32 %1, 3                        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val34 = load i32, ptr %i.e, align 4, !tbaa !47 ; 3 uses
  %i.f = mul nsw i32 %.val34, %i.d                ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #20 ; 4 uses
  %i.j = sext i32 %i.f to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 45, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !45
  %i.l = icmp sgt i32 %.val34, 0
  br i1 %i.l, label %.lr.ph41, label %Vec_PtrPush.exit

.lr.ph41:                                         ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val35 = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.n = sext i32 %1 to i64
  %i.o = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.val34 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %.critedge2
  %indvars.iv43 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next44, %.critedge2 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val35, i64 %indvars.iv43 ; 2 uses
  %i.q = mul nsw i64 %indvars.iv43, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %.val3638 = load i32, ptr %i.s, align 4, !tbaa !49 ; 4 uses
  %i.t = icmp sgt i32 %.val3638, 0
  br i1 %i.t, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.p, i64 8
  %.val37.pre = load ptr, ptr %i.u, align 8, !tbaa !50 ; 3 uses
  %i.v = zext nneg i32 %.val3638 to i64           ; 2 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i32 %.val3638, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.v, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val37.pre, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12   ; 2 uses
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = ashr i32 %i.y, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.r, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !45
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val37.pre, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = ashr i32 %i.ah, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.r, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge2.loopexit.unr-lcssa, label %bb.c, !llvm.loop !84

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %.val3638 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val37.pre, i64 %indvars.iv.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12 ; 2 uses
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = ashr i32 %i.ap, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.au
  store i8 %i.as, ptr %i.av, align 1, !tbaa !45
  br label %.critedge2

.critedge2:                                       ; preds = %.epil.preheader, %.critedge2.loopexit.unr-lcssa, %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.r, i64 %i.n ; 3 uses
  store i8 32, ptr %i.aw, align 1, !tbaa !45
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 48, ptr %i.ax, align 1, !tbaa !45
  %i.ay = getelementptr i8, ptr %i.aw, i64 2
  store i8 10, ptr %i.ay, align 1, !tbaa !45
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %Vec_PtrPush.exit, label %bb.b, !llvm.loop !85

Vec_PtrPush.exit:                                 ; preds = %.critedge2, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.az, align 4, !tbaa !35
  store ptr %i.i, ptr %i.b, align 8, !tbaa !37
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Io_ConvertNumsToSopMulti(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val30 = load i32, ptr %i.a, align 4, !tbaa !47 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.c = add i32 %.val30, -1
  %or.cond.i = icmp ult i32 %i.c, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val30 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !35
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !40
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #20
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted42 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted42, ptr %i.h, align 8, !tbaa !36
  %i.i = icmp sgt i32 %.val30, 0
  br i1 %i.i, label %.lr.ph38, label %.critedge

.lr.ph38:                                         ; preds = %Vec_PtrAlloc.exit
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = add nsw i32 %1, 4
  %i.l = sext i32 %i.k to i64
  %i.m = sext i32 %1 to i64                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph38, %Vec_PtrPush.exit
  %indvars.iv48 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next49, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv46 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next47, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge43 = phi ptr [ %.promoted42, %.lr.ph38 ], [ %storemerge44, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i41 = phi i32 [ %spec.store.select.i, %.lr.ph38 ], [ %spec.select.sink.i40, %Vec_PtrPush.exit ] ; 3 uses
  %.val31 = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %indvars.iv48 ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.l) #20 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 45, i64 %i.m, i1 false)
  %i.p = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val3234 = load i32, ptr %i.p, align 4, !tbaa !49
  %i.q = icmp sgt i32 %.val3234, 0
  br i1 %i.q, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.n, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.val33 = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12   ; 2 uses
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 1
  %i.w = or disjoint i8 %i.v, 48
  %i.x = ashr i32 %i.t, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val32 = load i32, ptr %i.p, align 4, !tbaa !49
  %i.aa = sext i32 %.val32 to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.d, label %.critedge2, !llvm.loop !86

.critedge2:                                       ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 %i.m
  store <4 x i8> <i8 32, i8 48, i8 10, i8 0>, ptr %i.ac, align 1, !tbaa !45
  %i.ad = trunc nsw i64 %indvars.iv46 to i32
  %i.ae = icmp eq i32 %spec.select.sink.i41, %i.ad
  br i1 %i.ae, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %.critedge2
  %i.af = icmp samesign ult i64 %indvars.iv46, 16
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge43, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge43, i64 noundef 128) #21
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i64 %indvars.iv46, 1073741823
  %indvars.iv46.tr = trunc nsw i64 %indvars.iv46 to i32
  %i.aj = shl nsw i32 %indvars.iv46.tr, 1
  %spec.select.i = select i1 %i.ai, i32 %i.aj, i32 2147483647 ; 4 uses
  %i.ak = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv46, %i.ak
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i11.i = icmp eq ptr %storemerge43, null
  %i.al = zext nneg i32 %spec.select.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call ptr @realloc(ptr noundef nonnull %storemerge43, i64 noundef %i.am) #21
  br label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #20
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %.critedge2, %bb.i
  %storemerge44 = phi ptr [ %storemerge43, %.critedge2 ], [ %storemerge43, %bb.i ], [ %i.ah, %bb.h ], [ %i.ag, %bb.g ], [ %i.an, %bb.k ], [ %i.ao, %bb.l ] ; 3 uses
  %spec.select.sink.i40 = phi i32 [ %spec.select.sink.i41, %.critedge2 ], [ %spec.select.sink.i41, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %storemerge44, i64 %indvars.iv46
  store ptr %i.o, ptr %i.ap, align 8, !tbaa !37
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !47
  %i.aq = sext i32 %.val to i64
  %i.ar = icmp slt i64 %indvars.iv.next49, %i.aq
  br i1 %i.ar, label %bb.c, label %..critedge_crit_edge, !llvm.loop !87

..critedge_crit_edge:                             ; preds = %Vec_PtrPush.exit
  %i.as = trunc nsw i64 %indvars.iv.next47 to i32
  store i32 %i.as, ptr %i.d, align 4, !tbaa !35
  store i32 %spec.select.sink.i40, ptr %i.b, align 8
  store ptr %storemerge44, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_PtrAlloc.exit
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Io_FileReadCnf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 8 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !47
  store i32 100, ptr %i.b, align 8, !tbaa !90
  %i.d = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #22 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.54) ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 10000, ptr noundef nonnull %i.f)
  %.not6569 = icmp eq ptr %i.h, null
  br i1 %.not6569, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph

.outer._crit_edge.thread:                         ; preds = %.preheader
  %i.i = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.ad

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef %0) ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.l = phi ptr [ %.val8.pre.i84, %.lr.ph ], [ %.val8.pre.i86, %.backedge ] ; 9 uses
  %i.m = phi i32 [ %i.ag, %.lr.ph ], [ %i.cl, %.backedge ] ; 12 uses
  %i.n = phi i32 [ %i.ah, %.lr.ph ], [ %i.cm, %.backedge ] ; 6 uses
  %.pre.i.i = phi ptr [ %.pre.i.i81, %.lr.ph ], [ %.pre.i.i83, %.backedge ] ; 6 uses
  %i.o = phi i32 [ %i.ai, %.lr.ph ], [ %i.cn, %.backedge ] ; 5 uses
  %i.p = load i8, ptr %i.a, align 16, !tbaa !45
  switch i8 %i.p, label %bb.i [
    i8 99, label %.backedge
    i8 112, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = call ptr @strtok(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.71) #17
  %i.r = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(4) @.str.5) #18
  %.not47 = icmp eq i32 %i.r, 0
  br i1 %.not47, label %.outer, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #17
  store ptr null, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !36
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %bb.e, %bb.f
  %i.t = icmp sgt i32 %i.o, 0
  br i1 %i.t, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_PtrFree.exit
  %i.u = zext nneg i32 %i.o to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.x, null
  br i1 %.not15.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef nonnull %i.x) #17
  store ptr null, ptr %i.w, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.u
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %Vec_PtrFree.exit
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.h, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i) #17
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.b) #17
  %i.y = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.ak

.outer:                                           ; preds = %bb.d
  %i.z = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.71) #17
  %i.aa = call i64 @strtol(ptr noundef nonnull captures(none) %i.z, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.71) #17
  %i.ad = call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 10000, ptr noundef nonnull %i.f)
  %.not65 = icmp eq ptr %i.af, null
  br i1 %.not65, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !89

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.val8.pre.i84 = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %i.l, %.outer ]
  %i.ag = phi i32 [ 100, %.lr.ph.lr.ph ], [ %i.m, %.outer ]
  %i.ah = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.n, %.outer ]
  %.pre.i.i81 = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %.pre.i.i, %.outer ]
  %i.ai = phi i32 [ 100, %.lr.ph.lr.ph ], [ %i.o, %.outer ]
  %.036.ph71 = phi i32 [ -1, %.lr.ph.lr.ph ], [ %i.ae, %.outer ]
  %.037.ph70 = phi i32 [ -1, %.lr.ph.lr.ph ], [ %i.ab, %.outer ]
  br label %bb.c

bb.i:                                             ; preds = %bb.c
  %i.aj = call ptr @strtok(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.71) #17 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp eq i32 %i.n, %i.m
  br i1 %i.al, label %bb.k, label %Vec_WecPushLevel.exit

bb.k:                                             ; preds = %bb.j
  %i.am = icmp slt i32 %i.m, 16
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not13.i.i = icmp eq ptr %i.l, null
  br i1 %.not13.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.l, i64 noundef 256) #21
  br label %Vec_WecGrow.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ao = call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #20
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.n, %bb.m
  %i.ap = phi ptr [ %i.an, %bb.m ], [ %i.ao, %bb.n ] ; 3 uses
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !48
  %i.aq = sext i32 %i.m to i64
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  %i.as = sub nsw i32 16, %i.m
  br label %Vec_WecPushLevel.exit.sink.split

bb.o:                                             ; preds = %bb.k
  %i.at = shl nuw nsw i32 %i.m, 1                 ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.l, null
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 4                ; 2 uses
  br i1 %.not13.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.av) #21
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ax = call noalias ptr @malloc(i64 noundef %i.av) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = phi ptr [ %i.aw, %bb.p ], [ %i.ax, %bb.q ] ; 3 uses
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !48
  %i.az = zext nneg i32 %i.m to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  br label %Vec_WecPushLevel.exit.sink.split

Vec_WecPushLevel.exit.sink.split:                 ; preds = %bb.r, %Vec_WecGrow.exit.i
  %.sink141 = phi i32 [ %i.as, %Vec_WecGrow.exit.i ], [ %i.m, %bb.r ]
  %.sink138 = phi ptr [ %i.ar, %Vec_WecGrow.exit.i ], [ %i.ba, %bb.r ]
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i ], [ %i.at, %bb.r ] ; 2 uses
  %.val8.pre.i87.ph = phi ptr [ %i.ap, %Vec_WecGrow.exit.i ], [ %i.ay, %bb.r ]
  %i.bb = zext nneg i32 %.sink141 to i64
  %i.bc = shl nuw nsw i64 %i.bb, 4
  call void @llvm.memset.p0.i64(ptr align 8 %.sink138, i8 0, i64 %i.bc, i1 false)
  store i32 %.sink, ptr %i.b, align 8, !tbaa !90
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %Vec_WecPushLevel.exit.sink.split, %bb.j
  %.val8.pre.i87 = phi ptr [ %i.l, %bb.j ], [ %.val8.pre.i87.ph, %Vec_WecPushLevel.exit.sink.split ] ; 5 uses
  %i.bd = phi i32 [ %i.m, %bb.j ], [ %.sink, %Vec_WecPushLevel.exit.sink.split ] ; 4 uses
  %i.be = add nsw i32 %i.n, 1                     ; 4 uses
  store i32 %i.be, ptr %i.c, align 4, !tbaa !47
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %.val8.pre.i87, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -12 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %Vec_WecPushLevel.exit, %bb.ac
  %.03864 = phi ptr [ %i.aj, %Vec_WecPushLevel.exit ], [ %i.ck, %bb.ac ]
  %i.bk = call i64 @strtol(ptr noundef nonnull captures(none) %.03864, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.bl = trunc i64 %i.bk to i32                  ; 3 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.lobit = lshr i32 %i.bl, 31
  %i.bn = call i32 @llvm.abs.i32(i32 %i.bl, i1 true)
  %i.bo = shl nuw i32 %i.bn, 1
  %i.bp = add i32 %i.bo, -2
  %i.bq = or disjoint i32 %i.bp, %.lobit
  %i.br = load i32, ptr %i.bi, align 4, !tbaa !49 ; 7 uses
  %i.bs = load i32, ptr %i.bh, align 8, !tbaa !91
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !50
  br label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp slt i32 %i.br, 16
  br i1 %i.bu, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bv, null
  br i1 %.not9.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.v
  %i.bx = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.y:                                             ; preds = %bb.u
  %i.by = icmp samesign ult i32 %i.br, 1073741823
  %i.bz = shl nuw nsw i32 %i.br, 1
  %spec.select.i = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.br, %spec.select.i
  %.pre88 = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 3 uses
  br i1 %.not.i9.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i = icmp eq ptr %.pre88, null
  %i.ca = zext nneg i32 %spec.select.i to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = call ptr @realloc(ptr noundef nonnull %.pre88, i64 noundef %i.cb) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %i.cd = call noalias ptr @malloc(i64 noundef %i.cb) #20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.ce = phi ptr [ %i.bx, %bb.x ], [ %i.bw, %bb.w ], [ %i.cc, %bb.aa ], [ %i.cd, %bb.ab ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i, %bb.aa ], [ %spec.select.i, %bb.ab ]
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !50
  store i32 %spec.select.sink.i, ptr %i.bh, align 8, !tbaa !91
  %.pre89 = load i32, ptr %i.bi, align 4, !tbaa !49
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %Vec_IntGrow.exit11.sink.split.i, %bb.y
  %i.cf = phi i32 [ %i.br, %._crit_edge ], [ %.pre89, %Vec_IntGrow.exit11.sink.split.i ], [ %i.br, %bb.y ] ; 2 uses
  %i.cg = phi ptr [ %.pre, %._crit_edge ], [ %i.ce, %Vec_IntGrow.exit11.sink.split.i ], [ %.pre88, %bb.y ]
  %i.ch = add nsw i32 %i.cf, 1
  store i32 %i.ch, ptr %i.bi, align 4, !tbaa !49
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ci
  store i32 %i.bq, ptr %i.cj, align 4, !tbaa !12
  %i.ck = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.71) #17 ; 2 uses
  %.not46 = icmp eq ptr %i.ck, null
  br i1 %.not46, label %.backedge, label %bb.s

.backedge:                                        ; preds = %bb.ac, %bb.s, %bb.i, %bb.c
  %.val8.pre.i86 = phi ptr [ %i.l, %bb.c ], [ %i.l, %bb.i ], [ %.val8.pre.i87, %bb.s ], [ %.val8.pre.i87, %bb.ac ] ; 2 uses
  %i.cl = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.i ], [ %i.bd, %bb.s ], [ %i.bd, %bb.ac ] ; 2 uses
  %i.cm = phi i32 [ %i.n, %bb.c ], [ %i.n, %bb.i ], [ %i.be, %bb.s ], [ %i.be, %bb.ac ] ; 2 uses
  %.pre.i.i83 = phi ptr [ %.pre.i.i, %bb.c ], [ %.pre.i.i, %bb.i ], [ %.val8.pre.i87, %bb.s ], [ %.val8.pre.i87, %bb.ac ]
  %i.cn = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.i ], [ %i.bd, %bb.s ], [ %i.bd, %bb.ac ]
  %i.co = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 10000, ptr noundef nonnull %i.f)
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %.outer._crit_edge, label %bb.c, !llvm.loop !89

.outer._crit_edge:                                ; preds = %.outer, %.backedge
  %.pre.i.i50 = phi ptr [ %.val8.pre.i86, %.backedge ], [ %i.l, %.outer ] ; 2 uses
  %i.cp = phi i32 [ %i.cl, %.backedge ], [ %i.m, %.outer ] ; 2 uses
  %.val48 = phi i32 [ %i.cm, %.backedge ], [ %i.n, %.outer ] ; 2 uses
  %.037.ph.lcssa63 = phi i32 [ %.037.ph70, %.backedge ], [ %i.ab, %.outer ] ; 2 uses
  %.036.ph.lcssa62 = phi i32 [ %.036.ph71, %.backedge ], [ %i.ae, %.outer ] ; 2 uses
  %i.cq = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %.not44 = icmp eq i32 %.036.ph.lcssa62, %.val48
  br i1 %.not44, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.outer._crit_edge.thread, %.outer._crit_edge
  %.036.ph.lcssa62115 = phi i32 [ -1, %.outer._crit_edge.thread ], [ %.036.ph.lcssa62, %.outer._crit_edge ]
  %.037.ph.lcssa63113 = phi i32 [ -1, %.outer._crit_edge.thread ], [ %.037.ph.lcssa63, %.outer._crit_edge ]
  %.val48112 = phi i32 [ 0, %.outer._crit_edge.thread ], [ %.val48, %.outer._crit_edge ]
  %i.cr = phi i32 [ 100, %.outer._crit_edge.thread ], [ %i.cp, %.outer._crit_edge ]
  %.pre.i.i50110 = phi ptr [ %i.d, %.outer._crit_edge.thread ], [ %.pre.i.i50, %.outer._crit_edge ]
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %.036.ph.lcssa62115, i32 noundef %.val48112) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.outer._crit_edge
  %.037.ph.lcssa63114 = phi i32 [ %.037.ph.lcssa63113, %bb.ad ], [ %.037.ph.lcssa63, %.outer._crit_edge ] ; 2 uses
  %i.ct = phi i32 [ %i.cr, %bb.ad ], [ %i.cp, %.outer._crit_edge ] ; 2 uses
  %.pre.i.i50111 = phi ptr [ %.pre.i.i50110, %bb.ad ], [ %.pre.i.i50, %.outer._crit_edge ] ; 3 uses
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = call ptr @Io_ConvertNumsToSopMulti(ptr noundef nonnull %i.b, i32 noundef %.037.ph.lcssa63114)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cv = call ptr @Io_ConvertNumsToSop(ptr noundef nonnull %i.b, i32 noundef %.037.ph.lcssa63114)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.039 = phi ptr [ %i.cu, %bb.af ], [ %i.cv, %bb.ag ]
  %i.cw = icmp sgt i32 %i.ct, 0
  br i1 %i.cw, label %.lr.ph.i.i54.preheader, label %._crit_edge.i.i51

.lr.ph.i.i54.preheader:                           ; preds = %bb.ah
  %i.cx = zext nneg i32 %i.ct to i64
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.preheader, %bb.aj
  %indvars.iv.i.i55 = phi i64 [ %indvars.iv.next.i.i58, %bb.aj ], [ 0, %.lr.ph.i.i54.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i50111, i64 %indvars.iv.i.i55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 2 uses
  %.not15.i.i56 = icmp eq ptr %i.da, null
  br i1 %.not15.i.i56, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i54
  call void @free(ptr noundef nonnull %i.da) #17
  store ptr null, ptr %i.cz, align 8, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i54
  %indvars.iv.next.i.i58 = add nuw nsw i64 %indvars.iv.i.i55, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next.i.i58, %i.cx
  br i1 %exitcond80.not, label %._crit_edge.thread.i.i53, label %.lr.ph.i.i54, !llvm.loop !88

._crit_edge.i.i51:                                ; preds = %bb.ah
  %.not.i.i52 = icmp eq ptr %.pre.i.i50111, null
  br i1 %.not.i.i52, label %Vec_WecFree.exit59, label %._crit_edge.thread.i.i53

._crit_edge.thread.i.i53:                         ; preds = %bb.aj, %._crit_edge.i.i51
  call void @free(ptr noundef nonnull %.pre.i.i50111) #17
  br label %Vec_WecFree.exit59

Vec_WecFree.exit59:                               ; preds = %._crit_edge.i.i51, %._crit_edge.thread.i.i53
  call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.ak

bb.ak:                                            ; preds = %Vec_WecFree.exit59, %Vec_WecFree.exit, %bb.b
  %.040 = phi ptr [ null, %bb.b ], [ null, %Vec_WecFree.exit ], [ %.039, %Vec_WecFree.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.040
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS9Nm_Man_t_", !9, i64 0}
!15 = !{!"p1 _ZTS10Vec_Ptr_t_", !9, i64 0}
!16 = !{!"p1 _ZTS10Abc_Ntk_t_", !9, i64 0}
!17 = !{!"p1 _ZTS10Abc_Des_t_", !9, i64 0}
!18 = !{!"double", !5, i64 0}
!19 = !{!"p1 int", !9, i64 0}
!20 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !19, i64 8}
!21 = !{!"p1 _ZTS12Mem_Fixed_t_", !9, i64 0}
!22 = !{!"p1 _ZTS11Mem_Step_t_", !9, i64 0}
!23 = !{!"p1 _ZTS14Abc_ManTime_t_", !9, i64 0}
!24 = !{!"float", !5, i64 0}
!25 = !{!"p1 _ZTS10Vec_Int_t_", !9, i64 0}
!26 = !{!"p1 _ZTS10Abc_Cex_t_", !9, i64 0}
!27 = !{!"p1 float", !9, i64 0}
!28 = !{!"Abc_Ntk_t_", !6, i64 0, !6, i64 4, !13, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !5, i64 96, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !16, i64 160, !6, i64 168, !17, i64 176, !16, i64 184, !6, i64 192, !6, i64 196, !6, i64 200, !18, i64 208, !6, i64 216, !20, i64 224, !21, i64 240, !22, i64 248, !9, i64 256, !23, i64 264, !9, i64 272, !24, i64 280, !6, i64 284, !25, i64 288, !15, i64 296, !19, i64 304, !26, i64 312, !15, i64 320, !16, i64 328, !9, i64 336, !9, i64 344, !16, i64 352, !9, i64 360, !9, i64 368, !25, i64 376, !25, i64 384, !13, i64 392, !27, i64 400, !15, i64 408, !25, i64 416, !25, i64 424, !15, i64 432, !25, i64 440, !25, i64 448, !25, i64 456}
!29 = !{!28, !17, i64 176}
!30 = !{!"p1 _ZTS9st__table", !9, i64 0}
!31 = !{!"Abc_Des_t_", !13, i64 0, !9, i64 8, !15, i64 16, !15, i64 24, !30, i64 32, !17, i64 40, !9, i64 48}
!32 = !{!31, !15, i64 24}
!33 = !{!"any p2 pointer", !9, i64 0}
!34 = !{!"Vec_Ptr_t_", !6, i64 0, !6, i64 4, !33, i64 8}
!35 = !{!34, !6, i64 4}
!36 = !{!34, !33, i64 8}
!37 = !{!9, !9, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!28, !15, i64 88}
!40 = !{!34, !6, i64 0}
!41 = !{!28, !6, i64 0}
!42 = !{!28, !6, i64 4}
!43 = !{!"p1 _ZTS10Abc_Obj_t_", !9, i64 0}
!44 = !{!"Abc_Obj_t_", !16, i64 0, !43, i64 8, !6, i64 16, !6, i64 20, !6, i64 20, !6, i64 20, !6, i64 20, !6, i64 20, !6, i64 21, !6, i64 21, !6, i64 21, !6, i64 21, !6, i64 21, !20, i64 24, !20, i64 40, !9, i64 56, !5, i64 64, !5, i64 72}
!45 = !{!5, !5, i64 0}
!46 = !{!"Vec_Wec_t_", !6, i64 0, !6, i64 4, !25, i64 8}
!47 = !{!46, !6, i64 4}
!48 = !{!46, !25, i64 8}
!49 = !{!20, !6, i64 4}
!50 = !{!20, !19, i64 8}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !38}
!56 = !{!28, !6, i64 148}
!57 = !{!44, !6, i64 28}
!58 = !{!44, !16, i64 0}
!59 = !{!44, !19, i64 32}
!60 = !{!28, !15, i64 32}
!61 = distinct !{!61, !38}
!62 = !{!13, !13, i64 0}
!63 = distinct !{!63, !38}
!64 = distinct !{!64, !38}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !38, !81, !82}
!70 = distinct !{!70, !83}
!71 = distinct !{!71, !38, !81}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = !{!"long", !5, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!67}
!80 = !{!68}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = distinct !{!84, !38}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = !{!46, !6, i64 0}
!91 = !{!20, !6, i64 0}
end_hunk_0
