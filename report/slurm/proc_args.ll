Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/proc_args?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@verify_dist_type:bb.a

bb.au:                                            ; preds = %bb.at
  %i.db = load ptr, ptr %i.d, align 8
  %i.dc = call i32 @xstrcasecmp(ptr noundef %i.db, ptr noundef nonnull @.str.35) #18
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.de = load ptr, ptr %i.d, align 8
  %i.df = call i32 @xstrcasecmp(ptr noundef %i.de, ptr noundef nonnull @.str.36) #18
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = load ptr, ptr %i.d, align 8
  call fastcc void @_parse_dist_flag(ptr noundef %i.dh, ptr noundef %i.a)
  %.pr.i = load i32, ptr %i.a, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %._crit_edge.i
  %i.di = phi i32 [ 1, %._crit_edge.i ], [ 3, %bb.w ], [ 33, %bb.z ], [ 18, %bb.ab ], [ 49, %bb.ad ], [ 529, %bb.af ], [ 289, %bb.ah ], [ 801, %bb.aj ], [ 561, %bb.al ], [ 274, %bb.an ], [ 786, %bb.ap ], [ 546, %bb.ar ], [ 306, %bb.at ], [ %.pr.i, %bb.aw ], [ 562, %bb.au ], [ 802, %bb.as ], [ 290, %bb.aq ], [ 530, %bb.ao ], [ 817, %bb.am ], [ 305, %bb.ak ], [ 545, %bb.ai ], [ 785, %bb.ag ], [ 273, %bb.ae ], [ 50, %bb.ac ], [ 34, %bb.aa ], [ 17, %bb.y ], [ 2, %bb.v ], [ 3, %bb.x ], [ 818, %bb.av ] ; 5 uses
  %i.dj = icmp ne i32 %i.di, -1
  %i.dk = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.dl = icmp ne ptr %i.dk, null
  %or.cond.i8 = select i1 %i.dj, i1 %i.dl, i1 false
  br i1 %or.cond.i8, label %bb.ay, label %_parse_dist_flag.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.dm = load i8, ptr %i.dk, align 1
  %.not26.i = icmp eq i8 %i.dm, 0
  br i1 %.not26.i, label %_parse_dist_flag.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %_parse_dist_flag.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dn = call i32 @xstrcasecmp(ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.140) #18
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.sink.split.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dp = call i32 @xstrcasecmp(ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.141) #18
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.sink.split.i.i, label %_parse_dist_flag.exit.i

.sink.split.i.i:                                  ; preds = %bb.bb, %bb.ba
  %.sink9.i.i = phi i32 [ 4194304, %bb.ba ], [ 8388608, %bb.bb ]
  %i.dr = or i32 %.sink9.i.i, %i.di
  br label %_parse_dist_flag.exit.i

_parse_dist_flag.exit.i:                          ; preds = %.sink.split.i.i, %bb.bb, %bb.az, %bb.ay, %bb.ax
  %i.ds = phi i32 [ %i.di, %bb.ax ], [ %i.di, %bb.ay ], [ -1, %bb.bb ], [ -1, %bb.az ], [ %i.dr, %.sink.split.i.i ]
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %_parse_dist_flag.exit.i, %bb.l
  %.sink.i = phi ptr [ %i.d, %_parse_dist_flag.exit.i ], [ %i.b, %bb.l ]
  %.019.ph.i = phi i32 [ %i.ds, %_parse_dist_flag.exit.i ], [ -1, %bb.l ]
  call void @slurm_xfree(ptr noundef nonnull %.sink.i) #18
  br label %_parse_dist_base.exit

_parse_dist_base.exit:                            ; preds = %.lr.ph.i, %bb.k, %bb.k, %.loopexit.sink.split.i
  %.019.i = phi i32 [ -1, %bb.k ], [ -1, %bb.k ], [ %.019.ph.i, %.loopexit.sink.split.i ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %_parse_dist_base.exit, %_parse_plane_dist.exit
  %.0 = phi i32 [ %.019.i, %_parse_dist_base.exit ], [ %.01423.i, %_parse_plane_dist.exit ], [ 8192, %bb.a ]
  ret i32 %.0
}

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @base_name(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #19 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.0 = select i1 %i.c, ptr %0, ptr %i.d
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull %.0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.07 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.07
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2, -9223372036854775808) i64 @str_to_mbytes(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = tail call ptr @__errno_location() #20    ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = call i64 @__isoc23_strtoll(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 8 uses
  %i.d = load i32, ptr %i.b, align 4
  %.not = icmp ne i32 %i.d, 0
  %i.e = add i64 %i.c, -9223372036854775807
  %or.cond = icmp ult i64 %i.e, 2
  %or.cond17 = select i1 %.not, i1 %or.cond, i1 false
  br i1 %or.cond17, label %_end_on_byte.exit20.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.g = icmp eq ptr %0, %i.f
  %i.h = icmp slt i64 %i.c, 0
  %or.cond18 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond18, label %_end_on_byte.exit20.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.f, align 1               ; 4 uses
  switch i8 %i.i, label %_end_on_byte.exit20.thread.fold.split [
    i8 0, label %_end_on_byte.exit20.thread
    i8 107, label %bb.d
    i8 75, label %bb.d
    i8 109, label %bb.g
    i8 77, label %bb.g
    i8 103, label %bb.i
    i8 71, label %bb.i
    i8 116, label %bb.l
    i8 84, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1
  switch i8 %i.k, label %_end_on_byte.exit [
    i8 0, label %bb.f
    i8 66, label %bb.e
    i8 98, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_end_on_byte.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = add nuw nsw i64 %i.c, 1023
  %i.p = lshr i64 %i.o, 10
  br label %_end_on_byte.exit20.thread

_end_on_byte.exit:                                ; preds = %bb.e, %bb.d
  switch i8 %i.i, label %_end_on_byte.exit20.thread [
    i8 84, label %bb.l
    i8 77, label %bb.g
    i8 103, label %bb.i
  ]

bb.g:                                             ; preds = %bb.c, %bb.c, %_end_on_byte.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %_end_on_byte.exit20 [
    i8 0, label %_end_on_byte.exit20.thread
    i8 66, label %bb.h
    i8 98, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %_end_on_byte.exit20.thread, label %_end_on_byte.exit20

_end_on_byte.exit20:                              ; preds = %bb.h, %bb.g
  switch i8 %i.i, label %_end_on_byte.exit20.thread [
    i8 103, label %bb.i
    i8 84, label %bb.l
  ]

bb.i:                                             ; preds = %bb.c, %bb.c, %_end_on_byte.exit, %_end_on_byte.exit20
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.w = load i8, ptr %i.v, align 1
  switch i8 %i.w, label %_end_on_byte.exit22 [
    i8 0, label %bb.k
    i8 66, label %bb.j
    i8 98, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.k, label %_end_on_byte.exit22

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aa = shl nsw i64 %i.c, 10
  br label %_end_on_byte.exit20.thread

_end_on_byte.exit22:                              ; preds = %bb.j, %bb.i
  %cond = icmp eq i8 %i.i, 84
  br i1 %cond, label %bb.l, label %_end_on_byte.exit20.thread.fold.split

bb.l:                                             ; preds = %_end_on_byte.exit22, %_end_on_byte.exit20, %_end_on_byte.exit, %bb.c, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  switch i8 %i.ac, label %_end_on_byte.exit20.thread [
    i8 0, label %bb.n
    i8 66, label %bb.m
    i8 98, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.n, label %_end_on_byte.exit20.thread

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ag = shl nsw i64 %i.c, 20
  br label %_end_on_byte.exit20.thread

_end_on_byte.exit20.thread.fold.split:            ; preds = %_end_on_byte.exit22, %bb.c
  br label %_end_on_byte.exit20.thread

_end_on_byte.exit20.thread:                       ; preds = %bb.m, %bb.l, %bb.c, %_end_on_byte.exit20.thread.fold.split, %_end_on_byte.exit, %_end_on_byte.exit20, %bb.h, %bb.g, %bb.n, %bb.f, %bb.k, %bb.b, %bb.a
  %.010 = phi i64 [ %i.aa, %bb.k ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %_end_on_byte.exit20.thread.fold.split ], [ -2, %_end_on_byte.exit ], [ %i.c, %bb.c ], [ %i.p, %bb.f ], [ %i.ag, %bb.n ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ -2, %_end_on_byte.exit20 ], [ -2, %bb.l ], [ -2, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.010
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @mbytes_to_str(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, -2
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.027 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.01326 = phi i64 [ %i.c, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.b = and i64 %.01326, 1023
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.c = lshr exact i64 %.01326, 10               ; 2 uses
  %i.d = add nuw nsw i32 %.027, 1                 ; 2 uses
  %cond = icmp eq i32 %i.d, 4
  br i1 %cond, label %.loopexit, label %.preheader, !llvm.loop !11

bb.c:                                             ; preds = %.preheader
  %i.e = icmp eq i32 %.027, 0
  br i1 %i.e, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.39, i64 noundef %.01326) #18
  br label %bb.e

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.01322 = phi i64 [ %.01326, %bb.c ], [ %i.c, %bb.b ]
  %.pn.in = phi i32 [ %.027, %bb.c ], [ 4, %bb.b ]
  %.pn = zext nneg i32 %.pn.in to i64
  %i.g = getelementptr inbounds nuw i8, ptr @.str.38, i64 %.pn
  %i.h = load i8, ptr %i.g, align 1
  %i.i = sext i8 %i.h to i32
  %i.j = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.40, i64 noundef %.01322, i32 noundef %i.i) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit, %bb.d
  %.014 = phi ptr [ %i.j, %.loopexit ], [ %i.f, %bb.d ], [ null, %bb.a ]
  ret ptr %.014
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @str_to_nodes(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i64 @__isoc23_strtol(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1               ; 2 uses
  switch i8 %i.e, label %bb.e [
    i8 75, label %bb.d
    i8 107, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = shl nsw i64 %i.b, 10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8
  %.pre = load i8, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi i8 [ %.pre, %bb.d ], [ %i.e, %bb.c ]
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %i.b, %bb.c ]  ; 2 uses
  switch i8 %i.h, label %bb.g [
    i8 77, label %bb.f
    i8 109, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.j = shl nsw i64 %.0, 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = phi ptr [ %i.k, %bb.f ], [ %i.i, %bb.e ]
  %.1 = phi i64 [ %i.j, %bb.f ], [ %.0, %bb.e ]   ; 2 uses
  store ptr %i.l, ptr %1, align 8
  %or.cond = icmp ugt i64 %.1, 2147483647
  %i.m = trunc nuw nsw i64 %.1 to i32
  %spec.select = select i1 %or.cond, i32 -1, i32 %i.m
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.011 = phi i32 [ -1, %bb.b ], [ %spec.select, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.011
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @verify_node_count(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 12 uses
  %i.g = alloca ptr, align 8                      ; 10 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_xfree(ptr noundef nonnull %3) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @xstrchr(ptr noundef %0, i32 noundef 44) #18
  %.not63 = icmp eq ptr %i.j, null
  br i1 %.not63, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @xstrchr(ptr noundef %0, i32 noundef 58) #18
  %.not64 = icmp eq ptr %i.k, null
  br i1 %.not64, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr null, ptr %i.h, align 8
  %i.l = tail call ptr @xstrdup(ptr noundef %0) #18 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8
  %i.m = call ptr @strtok_r(ptr noundef %i.l, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.h) #18 ; 2 uses
  %.not6695 = icmp eq ptr %i.m, null
  br i1 %.not6695, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.04897 = phi i64 [ %spec.select, %bb.i ], [ 0, %bb.e ]
  %.05096 = phi ptr [ %i.u, %bb.i ], [ %i.m, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.n = call i64 @__isoc23_strtol(ptr noundef nonnull %.05096, ptr noundef nonnull %i.i, i32 noundef 10) #18 ; 3 uses
  %i.o = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, %.05096
  br i1 %i.p, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.q = load i8, ptr %i.o, align 1               ; 2 uses
  switch i8 %i.q, label %bb.g [
    i8 0, label %bb.h
    i8 44, label %bb.h
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = icmp ne i8 %i.q, 58
  %i.s = icmp sgt i64 %i.n, 16383
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %.critedge, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %.old2 = icmp sgt i64 %i.n, 16383
  br i1 %.old2, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.h, %bb.g, %.lr.ph
  %i.t = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.42, ptr noundef nonnull %.05096) #18 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %.critedge75

bb.i:                                             ; preds = %bb.g, %bb.h
  %spec.select = call i64 @llvm.smax.i64(i64 %i.n, i64 %.04897) ; 2 uses
  %i.u = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.h) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
end_hunk_0
