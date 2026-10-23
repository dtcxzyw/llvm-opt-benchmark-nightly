Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/nsh_proccmds?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
@.str.46 = private unnamed_addr constant [55 x i8] c"%5d %5s %5d %3s %-8s %-7s %3s %-8s %-9s %-8s %07lu %s\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ps_readprocfs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %1) #15 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @__errno() #15
  %i.j = load i32, ptr %i.i, align 4
  %i.k = call i32 (ptr, ptr, ...) %i.h(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %i.j) #15 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  store i8 0, ptr %i.p, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.w = load i64, ptr %i.v, align 8
  %i.x = sub i64 %i.w, %i.t
  %i.y = call i32 @nsh_readfile(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef %i.u, i64 noundef %i.x) #15 ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = load i64, ptr %i.s, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = call i64 @strlen(ptr noundef %i.ac) #16
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.af, %bb.d ], [ %i.y, %bb.c ]
  %i.ag = load ptr, ptr %i.a, align 8
  call void @free(ptr noundef %i.ag) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.0, %bb.e ]
  %i.ah = sext i32 %.1 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.ah
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: noredzone optsize
declare dso_local i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @nsh_readfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @cmd_exec(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call i64 @strtol(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %2, align 8
  %i.l = tail call i32 (ptr, ptr, ...) %i.j(ptr noundef %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef %i.k) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.p = tail call i32 (ptr, ptr, ...) %i.n(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.o) #15 ; 0 uses
  %i.q = tail call i32 %i.o() #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @cmd_ps(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.dirent, align 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 (ptr, ptr, ...) %i.c(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #15, !inline_history !8 ; 0 uses
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 5
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  %isdigittmp = add nsw i32 %i.k, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 4, ptr %i.f, align 4
  %i.l = call ptr @strcpy(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i) #16 ; 0 uses
  %i.m = call i32 @ps_callback(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr nonnull poison) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !9

bb.e:                                             ; preds = %bb.a
  %i.n = call i32 @nsh_foreach_direntry(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @ps_callback, ptr noundef nonnull %i.a) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e
  %.011 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.011
}

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @ps_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readonly captures(none) %3) #3 {
bb.a:
  %4 = alloca %struct.nsh_taskstatus_s, align 8   ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = icmp eq i8 %i.b, 4
  br i1 %i.c, label %.preheader.i, label %ps_skipfile.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %ps_skipfile.exit, label %bb.c, !llvm.loop !10

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %ps_skipfile.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sext i8 %i.f to i32
  %isdigittmp.i = add nsw i32 %i.g, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %ps_skipfile.exit.thread

ps_skipfile.exit:                                 ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1024, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <4 x ptr> <ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24>, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store <4 x ptr> <ptr @.str.24, ptr @.str.24, ptr @.str.24, ptr @.str.24>, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr @.str.24, ptr %i.s, align 8
  %i.t = tail call i32 @atoi(ptr noundef nonnull %i.d) #16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 76 ; 2 uses
  store i32 -1, ptr %i.v, align 4
  %i.w = call i64 @ps_readprocfs(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #16 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  br i1 %i.x, label %bb.e, label %.loopexit97.i

bb.e:                                             ; preds = %ps_skipfile.exit
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.w, ptr %i.y, align 8
  br label %bb.f

bb.f:                                             ; preds = %nsh_parse_statusline.exit.i, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ %.2.i, %nsh_parse_statusline.exit.i ] ; 15 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.pn.i = phi ptr [ %.0.i, %bb.f ], [ %.1.i, %bb.g ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.pn.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %.1.i, align 1
  switch i8 %i.z, label %bb.g [
    i8 10, label %bb.h
    i8 0, label %.loopexit96.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.pn.i, i64 2
  store i8 0, ptr %.1.i, align 1
  br label %.loopexit96.i

.loopexit96.i:                                    ; preds = %bb.g, %bb.h
  %.2.i = phi ptr [ %i.aa, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull @g_type) #16
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_type, i64 noundef %i.ab) #16
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit96.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.af = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.ae) #15
  store ptr %i.af, ptr %4, align 8
  br label %nsh_parse_statusline.exit.i

bb.j:                                             ; preds = %.loopexit96.i
  %i.ag = tail call i64 @strlen(ptr noundef nonnull @g_groupid) #16
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_groupid, i64 noundef %i.ag) #16
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ak = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.aj) #15
  store ptr %i.ak, ptr %i.l, align 8
  br label %nsh_parse_statusline.exit.i

bb.l:                                             ; preds = %bb.j
  %i.al = tail call i64 @strlen(ptr noundef nonnull @g_state) #16
  %i.am = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_state, i64 noundef %i.al) #16
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ap = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.ao) #15 ; 2 uses
  store ptr %i.ap, ptr %i.m, align 8
  %i.aq = tail call ptr @strchr(ptr noundef %i.ap, i32 noundef 44) #16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %nsh_parse_statusline.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 0, ptr %i.aq, align 1
  %i.as = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.ar) #15
  store ptr %i.as, ptr %i.n, align 8
  br label %nsh_parse_statusline.exit.i

bb.o:                                             ; preds = %bb.l
  %i.at = tail call i64 @strlen(ptr noundef nonnull @g_flags) #16
  %i.au = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_flags, i64 noundef %i.at) #16
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ax = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.aw) #15
  store ptr %i.ax, ptr %i.o, align 8
  br label %nsh_parse_statusline.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ay = tail call i64 @strlen(ptr noundef nonnull @g_priority) #16
  %i.az = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_priority, i64 noundef %i.ay) #16
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.bc = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.bb) #15 ; 2 uses
  store ptr %i.bc, ptr %i.p, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i.i = phi ptr [ %i.bc, %bb.r ], [ %i.bf, %bb.s ] ; 3 uses
  %i.bd = load i8, ptr %.0.i.i, align 1
  %i.be = sext i8 %i.bd to i32
  %isdigittmp.i.i = add nsw i32 %i.be, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %isdigit.i.i, label %bb.s, label %bb.t, !llvm.loop !11

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %.0.i.i, align 1
  br label %nsh_parse_statusline.exit.i

bb.u:                                             ; preds = %bb.q
  %i.bg = tail call i64 @strlen(ptr noundef nonnull @g_scheduler) #16
  %i.bh = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_scheduler, i64 noundef %i.bg) #16
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 18
  %i.bk = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.bj) #15
  store ptr %i.bk, ptr %i.q, align 8
  br label %nsh_parse_statusline.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bl = tail call i64 @strlen(ptr noundef nonnull @g_sigmask) #16
  %i.bm = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull @g_sigmask, i64 noundef %i.bl) #16
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %nsh_parse_statusline.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.bp = tail call ptr @nsh_trimspaces(ptr noundef nonnull %i.bo) #15
  store ptr %i.bp, ptr %i.r, align 8
  br label %nsh_parse_statusline.exit.i

nsh_parse_statusline.exit.i:                      ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.p, %bb.n, %bb.m, %bb.k, %bb.i
  %.not86.i = icmp eq ptr %.2.i, null
  br i1 %.not86.i, label %.loopexit97.i, label %bb.f, !llvm.loop !12

.loopexit97.i:                                    ; preds = %nsh_parse_statusline.exit.i, %ps_skipfile.exit
  %i.bq = call i64 @ps_readprocfs(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #16
  %i.br = icmp sgt i64 %i.bq, -1
  br i1 %i.br, label %bb.y, label %.loopexit95.i

bb.y:                                             ; preds = %.loopexit97.i
  %5 = load ptr, ptr %i.j, align 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %7 = load i64, ptr %6, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 %7
  br label %bb.z

bb.z:                                             ; preds = %nsh_parse_gstatusline.exit.i, %bb.y
  %i.bt = phi i32 [ -1, %bb.y ], [ %i.cb, %nsh_parse_gstatusline.exit.i ]
  %.3.i = phi ptr [ %i.bs, %bb.y ], [ %.5.i, %nsh_parse_gstatusline.exit.i ] ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.3.pn.i = phi ptr [ %.3.i, %bb.z ], [ %.4.i, %bb.aa ] ; 2 uses
  %.4.i = getelementptr inbounds nuw i8, ptr %.3.pn.i, i64 1 ; 3 uses
  %i.bu = load i8, ptr %.4.i, align 1
  switch i8 %i.bu, label %bb.aa [
    i8 10, label %bb.ab
    i8 0, label %.loopexit94.i
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %.3.pn.i, i64 2
  store i8 0, ptr %.4.i, align 1
  br label %.loopexit94.i

.loopexit94.i:                                    ; preds = %bb.aa, %bb.ab
  %.5.i = phi ptr [ %i.bv, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.bw = tail call i64 @strlen(ptr noundef nonnull @g_ppid) #16
  %i.bx = tail call i32 @strncmp(ptr noundef %.3.i, ptr noundef nonnull @g_ppid, i64 noundef %i.bw) #16
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ac, label %nsh_parse_gstatusline.exit.i

bb.ac:                                            ; preds = %.loopexit94.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.3.i, i64 12
  %i.ca = tail call i32 @atoi(ptr noundef nonnull %i.bz) #16 ; 2 uses
  store i32 %i.ca, ptr %i.v, align 4
  br label %nsh_parse_gstatusline.exit.i

nsh_parse_gstatusline.exit.i:                     ; preds = %bb.ac, %.loopexit94.i
  %i.cb = phi i32 [ %i.ca, %bb.ac ], [ %i.bt, %.loopexit94.i ] ; 2 uses
  %.not89.i = icmp eq ptr %.5.i, null
  br i1 %.not89.i, label %.loopexit95.i, label %bb.z, !llvm.loop !13

.loopexit95.i:                                    ; preds = %nsh_parse_gstatusline.exit.i, %.loopexit97.i
  %i.cc = phi i32 [ -1, %.loopexit97.i ], [ %i.cb, %nsh_parse_gstatusline.exit.i ]
  %i.cd = call i64 @ps_readprocfs(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #16
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %bb.ad, label %.loopexit93.i

bb.ad:                                            ; preds = %.loopexit95.i
  %8 = load ptr, ptr %i.j, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %10 = load i64, ptr %9, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 %10
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %bb.ad
  %.6.i = phi ptr [ %i.cf, %bb.ad ], [ %.8.i, %bb.ai ] ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.6.pn.i = phi ptr [ %.6.i, %bb.ae ], [ %.7.i, %bb.af ] ; 2 uses
  %.7.i = getelementptr inbounds nuw i8, ptr %.6.pn.i, i64 1 ; 3 uses
  %i.ch = load i8, ptr %.7.i, align 1
  switch i8 %i.ch, label %bb.af [
    i8 10, label %bb.ag
    i8 0, label %.loopexit.i
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %.6.pn.i, i64 2
  store i8 0, ptr %.7.i, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.af, %bb.ag
  %.8.i = phi ptr [ %i.ci, %bb.ag ], [ null, %bb.af ] ; 2 uses
  %i.cj = tail call i64 @strlen(ptr noundef nonnull @g_stacksize) #16
  %i.ck = tail call i32 @strncmp(ptr noundef %.6.i, ptr noundef nonnull @g_stacksize, i64 noundef %i.cj) #16
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.6.i, i64 12
  %i.cn = tail call i64 @strtoul(ptr noundef nonnull captures(none) %i.cm, ptr noundef null, i32 noundef 0) #16
  store i64 %i.cn, ptr %i.cg, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit.i
  %.not92.i = icmp eq ptr %.8.i, null
  br i1 %.not92.i, label %.loopexit93.i, label %bb.ae, !llvm.loop !14

.loopexit93.i:                                    ; preds = %bb.ai, %.loopexit95.i
  %i.co = call i64 @ps_readprocfs(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #16 ; 3 uses
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.aj, label %ps_record.exit.thread

ps_record.exit.thread:                            ; preds = %.loopexit93.i
  %i.cq = trunc nsw i64 %i.co to i32
  br label %ps_skipfile.exit.thread

bb.aj:                                            ; preds = %.loopexit93.i
  %11 = load ptr, ptr %i.j, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %13 = load i64, ptr %12, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 %13
  %i.cs = tail call ptr @nsh_trimspaces(ptr noundef %i.cr) #15 ; 2 uses
  store ptr %i.cs, ptr %i.s, align 8
  %i.ct = trunc nuw nsw i64 %i.co to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %i.cu, align 8
  %15 = load ptr, ptr %i.l, align 8
  %16 = load ptr, ptr %i.p, align 8
  %17 = load ptr, ptr %i.q, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load ptr, ptr %i.o, align 8
  %20 = load ptr, ptr %i.m, align 8
  %21 = load ptr, ptr %i.n, align 8
  %i.cv = load ptr, ptr %i.r, align 8
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %23 = load i64, ptr %22, align 8
  %i.cw = tail call i32 (ptr, ptr, ...) %14(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %i.t, ptr noundef %15, i32 noundef %i.cc, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %i.cv, i64 noundef %23, ptr noundef %i.cs) #15, !inline_history !15 ; 0 uses
  br label %ps_skipfile.exit.thread

ps_skipfile.exit.thread:                          ; preds = %bb.d, %ps_record.exit.thread, %bb.a, %bb.aj
  %.0 = phi i32 [ %i.ct, %bb.aj ], [ %i.cq, %ps_record.exit.thread ], [ 0, %bb.a ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nsh_foreach_direntry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @cmd_pidof(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 4 uses
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr [8 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = call i64 @nsh_getpid(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 8) #15 ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %2, align 8
  %i.l = call i32 (ptr, ptr, ...) %i.j(ptr noundef %0, ptr noundef nonnull @g_fmtnosuch, ptr noundef %i.k, ptr noundef nonnull @.str.5, ptr noundef %i.e) #15 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4
  %i.p = call i32 (ptr, ptr, ...) %i.m(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.o) #15 ; 0 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !16

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = call i32 (ptr, ptr, ...) %i.q(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.017 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.017
}

; Function Attrs: noredzone optsize
declare dso_local i64 @nsh_getpid(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @cmd_kill(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  switch i32 %1, label %bb.j [
    i32 3, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not = icmp eq i8 %i.d, 45
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i64 @strtol(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = add i8 %i.k, -58
  %or.cond32 = icmp ult i8 %i.l, -10
  br i1 %or.cond32, label %bb.j, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = add i8 %i.o, -58
  %or.cond33 = icmp ult i8 %i.p, -10
  br i1 %or.cond33, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026 = phi ptr [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %.0 = phi i64 [ %i.h, %bb.d ], [ 15, %bb.e ]
  %i.q = call i64 @strtol(ptr noundef nonnull %.026, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.r = trunc i64 %i.q to i32
  %i.s = trunc i64 %.0 to i32
  %i.t = tail call i32 @kill(i32 noundef %i.r, i32 noundef %i.s) #15
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @__errno() #15
  %i.w = load i32, ptr %i.v, align 4
  switch i32 %i.w, label %bb.i [
    i32 22, label %bb.j
    i32 3, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 (ptr, ptr, ...) %i.y(ptr noundef %0, ptr noundef nonnull @g_fmtnosuch, ptr noundef %i.z, ptr noundef nonnull @.str.5, ptr noundef %i.ab) #15 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %2, align 8
  %i.ag = tail call ptr @__errno() #15
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call i32 (ptr, ptr, ...) %i.ae(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %i.af, ptr noundef nonnull @.str.8, i32 noundef %i.ah) #15 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.d, %bb.b, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %2, align 8
  %i.am = tail call i32 (ptr, ptr, ...) %i.ak(ptr noundef %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef %i.al) #15 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.i, %bb.h
  %.027 = phi i32 [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.027
}

; Function Attrs: noredzone optsize
declare dso_local i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @cmd_pkill(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  switch i32 %1, label %bb.k [
    i32 3, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not = icmp eq i8 %i.d, 45
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @atoi(ptr noundef nonnull %i.e) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sink = phi i64 [ 16, %bb.d ], [ 8, %bb.a ]
  %.031 = phi i32 [ %i.h, %bb.d ], [ 15, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sink
  %.032 = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call i64 @nsh_getpid(ptr noundef %0, ptr noundef %.032, ptr noundef nonnull %i.a, i64 noundef 8) #15 ; 2 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = call i32 (ptr, ptr, ...) %i.m(ptr noundef %0, ptr noundef nonnull @g_fmtnosuch, ptr noundef %i.n, ptr noundef nonnull @.str.5, ptr noundef %.032) #15 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !17
end_hunk_0
