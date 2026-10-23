Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/others_common?download=true
inline.NumInlined: 25
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_writen:bb.a
  %i.h = tail call ptr @strerror(i32 noundef %i.e) #22
  %i.i = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 128) #22 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.j, align 1, !tbaa !28
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull @cli_strerror_mutex) #22 ; 0 uses
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.e:                                             ; preds = %.preheader
  %i.l = icmp ugt i64 %i.b, %.017
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sub nuw i64 %.017, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 %i.b
  br label %bb.g

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.118 = phi i64 [ %.017, %.critedge ], [ %i.m, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %.016, %.critedge ], [ %i.n, %bb.f ]
  %.not24 = icmp eq i64 %.118, 0
  br i1 %.not24, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.d, %bb.b
  %.3 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ %2, %bb.e ], [ %2, %bb.g ]
  ret i64 %.3
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define i32 @cli_filecopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #22 ; 6 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 577, i32 noundef 384) #22 ; 4 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @close(i32 noundef %i.a) #22 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #24 ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @close(i32 noundef %i.a) #22 ; 0 uses
  %i.h = tail call i32 @close(i32 noundef %i.c) #22 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @cli_readn(i32 noundef %i.a, ptr noundef nonnull %i.f, i64 noundef 8192) ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = icmp ult i64 %i.j, -2
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.021 = phi i64 [ %i.m, %.lr.ph ], [ %i.i, %bb.f ]
  %i.l = tail call i64 @cli_writen(i32 noundef %i.c, ptr noundef nonnull %i.f, i64 noundef %.021) ; 0 uses
  %i.m = tail call i64 @cli_readn(i32 noundef %i.a, ptr noundef nonnull %i.f, i64 noundef 8192) ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = icmp ult i64 %i.n, -2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #22
  %i.p = tail call i32 @close(i32 noundef %i.a) #22 ; 0 uses
  %i.q = tail call i32 @close(i32 noundef %i.c) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge, %bb.e, %bb.c
  %.017 = phi i32 [ -1, %bb.e ], [ -1, %bb.c ], [ %i.q, %._crit_edge ], [ -1, %bb.a ]
  ret i32 %.017
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #16

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read) uwtable
define noundef nonnull ptr @cli_gettmpdir() local_unnamed_addr #18 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.28) #22 ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  %spec.select = select i1 %.not7, ptr @.str.29, ptr %i.a
  ret ptr %spec.select
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define i32 @cli_ftw(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.dirent_data, align 8        ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !8
  %i.c = and i32 %1, 8
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ne ptr %5, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !28      ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28    ; 2 uses
  %.not61 = icmp eq i8 %i.h, 0
  br i1 %.not61, label %bb.e, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c
  %i.i = icmp eq i8 %i.f, 47
  %i.j = icmp eq i8 %i.h, 47
  %or.cond88 = and i1 %i.i, %i.j
  br i1 %or.cond88, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %thread-pre-split, %.peel.next
  %.050 = phi ptr [ %i.k, %.peel.next ], [ %i.g, %thread-pre-split ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.050, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %.peel.next, label %.critedge, !llvm.loop !39

.critedge:                                        ; preds = %.peel.next, %thread-pre-split
  %.050.lcssa = phi ptr [ %0, %thread-pre-split ], [ %.050, %.peel.next ] ; 4 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.050.lcssa) #23 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.050.lcssa, i64 %i.n ; 2 uses
  %.not93 = icmp eq i64 %i.n, 0
  br i1 %.not93, label %.critedge3, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.p = icmp ugt ptr %i.q, %.050.lcssa
  br i1 %i.p, label %.lr.ph, label %.critedge3

.lr.ph:                                           ; preds = %.critedge, %bb.d
  %.090 = phi ptr [ %i.q, %bb.d ], [ %i.o, %.critedge ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.090, i64 -1 ; 4 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = icmp eq i8 %i.r, 47
  br i1 %i.s, label %bb.d, label %.critedge3

.critedge3:                                       ; preds = %.lr.ph, %bb.d, %.critedge
  %.0.lcssa = phi ptr [ %i.o, %.critedge ], [ %.090, %.lr.ph ], [ %i.q, %bb.d ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %.critedge3, %bb.c, %bb.b
  %.151 = phi ptr [ %.050.lcssa, %.critedge3 ], [ %0, %bb.c ], [ %0, %bb.b ] ; 3 uses
  br i1 %i.e, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 %5(ptr noundef nonnull %.151, ptr noundef %4) #22
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %cli_safer_strdup.exit.thread, label %.thread

.thread:                                          ; preds = %bb.a, %bb.f, %bb.e
  %.15171 = phi ptr [ %.151, %bb.e ], [ %.151, %bb.f ], [ %0, %bb.a ] ; 8 uses
  %i.v = call fastcc i32 @handle_filetype(ptr noundef %.15171, i32 noundef %1, ptr noundef %6, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %bb.g, label %cli_safer_strdup.exit.thread

bb.g:                                             ; preds = %.thread
  %i.w = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.x = and i32 %i.w, -2
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.h, label %cli_safer_strdup.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.b, align 4, !tbaa !8
  %.not64 = icmp eq i32 %i.z, 0
  %. = select i1 %.not64, ptr null, ptr %6        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %., ptr %i.aa, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.w, 2                     ; 2 uses
  %i.ac = zext i1 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !32
  %i.ae = icmp eq ptr %.15171, null               ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19)
  br label %cli_safer_strdup.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.af = call noalias ptr @strdup(ptr noundef nonnull readonly %.15171) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.l, label %cli_safer_strdup.exit

bb.l:                                             ; preds = %bb.k
  call void @perror(ptr noundef nonnull @.str.20) #25
  %i.ag = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.15171) #23
  %i.ah = trunc i64 %i.ag to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.ah)
  br label %cli_safer_strdup.exit.thread

cli_safer_strdup.exit:                            ; preds = %bb.k
  %i.ai = call i32 %3(ptr noundef %., ptr noundef nonnull %i.af, ptr noundef nonnull %.15171, i32 noundef 1, ptr noundef %4) #22 ; 2 uses
  %.not65 = icmp eq i32 %i.ai, 0
  br i1 %.not65, label %8, label %cli_safer_strdup.exit.thread

8:                                                ; preds = %cli_safer_strdup.exit
  %.pr74 = load i32, ptr %i.ad, align 8, !tbaa !32
  %.not66 = icmp eq i32 %.pr74, 0
  br i1 %.not66, label %.thread77, label %bb.m

bb.m:                                             ; preds = %8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.15171, ptr %i.aj, align 8, !tbaa !33
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.o, label %.thread77

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19)
  br label %cli_safer_strdup.exit.thread

.thread77:                                        ; preds = %8, %bb.n
  %i.ak = call noalias ptr @strdup(ptr noundef nonnull readonly %.15171) #22 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ak, null
  br i1 %.not.i67, label %bb.p, label %cli_safer_strdup.exit69

bb.p:                                             ; preds = %.thread77
  call void @perror(ptr noundef nonnull @.str.20) #25
  %i.al = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.15171) #23
  %i.am = trunc i64 %i.al to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.am)
  br label %cli_safer_strdup.exit.thread

cli_safer_strdup.exit69:                          ; preds = %.thread77
  store ptr %i.ak, ptr %7, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %cli_safer_strdup.exit69, %bb.m
  %i.an = call fastcc i32 @handle_entry(ptr noundef %7, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %cli_safer_strdup.exit.thread

cli_safer_strdup.exit.thread:                     ; preds = %bb.p, %bb.o, %bb.l, %bb.j, %bb.g, %bb.f, %cli_safer_strdup.exit, %.thread, %bb.q
  %.149 = phi i32 [ 0, %bb.l ], [ %i.v, %.thread ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ai, %cli_safer_strdup.exit ], [ %i.an, %bb.q ], [ 0, %bb.j ], [ 0, %bb.o ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i32 %.149
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define internal fastcc i32 @handle_filetype(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 4
  %i.b = load i32, ptr %4, align 4, !tbaa !8      ; 3 uses
  %switch.i = icmp ult i32 %i.b, 2
  br i1 %switch.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 3                            ; 2 uses
  %.not.i = icmp eq i32 %i.c, 3
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not33.i = icmp eq i32 %i.b, 1
  br i1 %.not33.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @lstat(ptr noundef readonly %0, ptr noundef nonnull %2) #22
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 40960
  br i1 %i.i, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i, %bb.c
  %i.j = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.028.i = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ 0, %._crit_edge.i ]
  %.0.i = phi i32 [ 0, %bb.f ], [ 0, %bb.c ], [ 1, %._crit_edge.i ]
  %i.k = icmp eq i32 %i.j, 1
  %.not34.i = icmp eq i32 %i.c, 0
  %or.cond.i = and i1 %.not34.i, %i.k
  br i1 %or.cond.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.l = phi i32 [ %i.b, %bb.a ], [ %i.j, %bb.g ]
  %.129.i = phi i32 [ %i.a, %bb.a ], [ %.028.i, %bb.g ]
  %.1.i = phi i32 [ 0, %bb.a ], [ %.0.i, %bb.g ]
  %.not35.i = icmp eq i32 %.129.i, 0
  br i1 %.not35.i, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.b
  %i.m = tail call i32 @stat(ptr noundef readonly %0, ptr noundef nonnull %2) #22
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.m, label %.thread._crit_edge.i

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.pre47.i = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %.thread._crit_edge.i, %bb.h
  %i.o = phi i32 [ %i.l, %bb.h ], [ %.pre47.i, %.thread._crit_edge.i ] ; 3 uses
  %.2.i = phi i32 [ %.1.i, %bb.h ], [ 1, %.thread._crit_edge.i ] ; 4 uses
  %switch42.i = icmp ult i32 %i.o, 2
  br i1 %switch42.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !43
  %i.r = and i32 %i.q, 61440                      ; 2 uses
  %trunc.i = trunc nuw i32 %i.r to i16
  switch i16 %trunc.i, label %.thread46.i [
    i16 16384, label %bb.k
    i16 -32768, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %.not36.i = icmp eq i32 %i.o, 1
  %i.s = and i32 %1, 2
  %.not37.i = icmp eq i32 %i.s, 0
  %or.cond40.i = and i1 %.not37.i, %.not36.i
  br i1 %or.cond40.i, label %.thread46.i, label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %.not38.i = icmp eq i32 %i.o, 1
  %i.t = and i32 %1, 1
  %.not39.i = icmp eq i32 %i.t, 0
  %or.cond41.i = and i1 %.not39.i, %.not38.i
  br i1 %or.cond41.i, label %.thread46.i, label %.sink.split.i

.thread46.i:                                      ; preds = %bb.l, %bb.k, %bb.j
  %i.u = icmp eq i32 %i.r, 40960
  %i.v = select i1 %i.u, i32 5, i32 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.thread46.i, %bb.l, %bb.k, %bb.g
  %.sink.i = phi i32 [ 2, %bb.k ], [ %i.v, %.thread46.i ], [ 5, %bb.g ], [ 3, %bb.l ]
  %.027.ph.i = phi i32 [ %.2.i, %bb.k ], [ %.2.i, %.thread46.i ], [ 0, %bb.g ], [ %.2.i, %bb.l ]
  store i32 %.sink.i, ptr %4, align 4, !tbaa !8
  br label %bb.r

bb.m:                                             ; preds = %bb.d, %.thread.i
  store i32 -1, ptr %3, align 4, !tbaa !8
  %i.w = icmp eq ptr %0, null
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19)
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.x = tail call noalias ptr @strdup(ptr noundef nonnull readonly %0) #22 ; 2 uses
  %.not.i43 = icmp eq ptr %i.x, null
  br i1 %.not.i43, label %bb.p, label %cli_safer_strdup.exit

bb.p:                                             ; preds = %bb.o
  tail call void @perror(ptr noundef nonnull @.str.20) #25
  %i.y = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #23
  %i.z = trunc i64 %i.y to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.z)
  br label %.thread

cli_safer_strdup.exit:                            ; preds = %bb.o
  %i.aa = tail call i32 %5(ptr noundef null, ptr noundef nonnull %i.x, ptr noundef nonnull %0, i32 noundef 3, ptr noundef %6) #22 ; 2 uses
  %.not40 = icmp eq i32 %i.aa, 0
  br i1 %.not40, label %bb.q, label %.thread

bb.q:                                             ; preds = %cli_safer_strdup.exit
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %.thread

bb.r:                                             ; preds = %.sink.split.i, %bb.i
  %.027.i = phi i32 [ %.2.i, %bb.i ], [ %.027.ph.i, %.sink.split.i ]
  store i32 %.027.i, ptr %3, align 4, !tbaa !8
  %i.ab = load i32, ptr %4, align 4, !tbaa !8
  %i.ac = and i32 %i.ab, -2
  %switch = icmp eq i32 %i.ac, 4
  br i1 %switch, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ad = icmp eq ptr %0, null
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19)
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ae = tail call noalias ptr @strdup(ptr noundef nonnull readonly %0) #22 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ae, null
  br i1 %.not.i45, label %bb.v, label %cli_safer_strdup.exit47

bb.v:                                             ; preds = %bb.u
  tail call void @perror(ptr noundef nonnull @.str.20) #25
  %i.af = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #23
  %i.ag = trunc i64 %i.af to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.ag)
  br label %.thread

cli_safer_strdup.exit47:                          ; preds = %bb.u
  %i.ah = load i32, ptr %4, align 4, !tbaa !8
  %i.ai = icmp eq i32 %i.ah, 5
  %i.aj = select i1 %i.ai, i32 4, i32 5
  %i.ak = tail call i32 %5(ptr noundef nonnull %2, ptr noundef nonnull %i.ae, ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef %6) #22
  br label %.thread

.thread:                                          ; preds = %cli_safer_strdup.exit47, %bb.v, %bb.t, %bb.p, %bb.n, %cli_safer_strdup.exit, %bb.r, %bb.q
end_hunk_0
