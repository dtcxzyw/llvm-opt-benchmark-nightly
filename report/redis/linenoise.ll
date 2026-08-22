Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/linenoise?download=true
inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@enableRawMode:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = tail call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @orig_termios) #24
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %0, ptr noundef nonnull align 4 dereferenceable(60) @orig_termios, i64 60, i1 false), !tbaa.struct !54
  %i.f = load <4 x i32>, ptr %0, align 16, !tbaa !7 ; 2 uses
  %i.g = and <4 x i32> %i.f, <i32 -1331, i32 -2, i32 poison, i32 -32780>
  %i.h = or <4 x i32> %i.f, <i32 poison, i32 poison, i32 48, i32 poison>
  %i.i = shufflevector <4 x i32> %i.g, <4 x i32> %i.h, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x i32> %i.i, ptr %0, align 16, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 1, ptr %i.j, align 1, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.k, align 2, !tbaa !25
  %i.l = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %0) #24
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @rawmode, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.n = tail call ptr @__errno_location() #31
  store i32 25, ptr %i.n, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ -1, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i32 [ %.0, %bb.i ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define dso_local ptr @linenoise(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %1 = alloca %struct.linenoiseCompletions, align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.winsize, align 2            ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %struct.linenoiseState, align 8     ; 55 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca [3 x i8], align 1                 ; 8 uses
  %i.e = alloca [4096 x i8], align 16             ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.7) #24
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @isatty(i32 noundef 0) #24
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.b, %bb.i
  %.034.i = phi ptr [ %.3.i, %bb.i ], [ undef, %bb.b ]
  %.032.i = phi ptr [ %.133.i, %bb.i ], [ null, %bb.b ] ; 4 uses
  %.030.i = phi i64 [ %.131.i, %bb.i ], [ 0, %bb.b ] ; 8 uses
  %.028.i = phi i64 [ %.129.i, %bb.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = icmp eq i64 %.030.i, %.028.i
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.preheader
  %i.j = icmp eq i64 %.030.i, 0
  %i.k = shl i64 %.030.i, 1
  %i.l = select i1 %i.j, i64 32, i64 %i.k         ; 2 uses
  %i.m = tail call ptr @realloc(ptr noundef %.032.i, i64 noundef %i.l) #27 ; 2 uses
  %.not37.i = icmp eq ptr %i.m, null
  br i1 %.not37.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %.032.i, null
  br i1 %.not.i, label %linenoiseNoTTY.exit, label %.thread.sink.split.i

bb.e:                                             ; preds = %bb.c, %.preheader
  %.133.i = phi ptr [ %.032.i, %.preheader ], [ %i.m, %bb.c ] ; 5 uses
  %.129.i = phi i64 [ %.028.i, %.preheader ], [ %i.l, %bb.c ]
  %i.n = load ptr, ptr @stdin, align 8, !tbaa !52
  %i.o = tail call i32 @fgetc(ptr noundef %i.n) #29 ; 4 uses
  switch i32 %i.o, label %bb.h [
    i32 -1, label %bb.f
    i32 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.p = icmp eq i32 %i.o, -1
  %i.q = icmp eq i64 %.030.i, 0
  %or.cond4.i = and i1 %i.q, %i.p
  br i1 %or.cond4.i, label %.thread.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.133.i, i64 %.030.i
  store i8 0, ptr %i.r, align 1, !tbaa !25
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = trunc i32 %i.o to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.133.i, i64 %.030.i
  store i8 %i.s, ptr %i.t, align 1, !tbaa !25
  %i.u = add i64 %.030.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.i = phi ptr [ %.034.i, %bb.h ], [ %.133.i, %bb.g ] ; 3 uses
  %.131.i = phi i64 [ %i.u, %bb.h ], [ %.030.i, %bb.g ]
  switch i32 %i.o, label %.preheader [
    i32 -1, label %linenoiseNoTTY.exit
    i32 10, label %linenoiseNoTTY.exit
  ]

.thread.sink.split.i:                             ; preds = %bb.f, %bb.d
  %.032.lcssa.sink.i = phi ptr [ %.032.i, %bb.d ], [ %.133.i, %bb.f ]
  tail call void @free(ptr noundef %.032.lcssa.sink.i) #24
  br label %linenoiseNoTTY.exit

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.v = tail call ptr @getenv(ptr noundef nonnull @.str.7) #24
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %isUnsupportedTerm.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @getenv(ptr noundef nonnull @.str.23) #24 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %isUnsupportedTerm.exit.thread, label %.preheader.i

bb.l:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i14 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %.not.i14, label %isUnsupportedTerm.exit.thread, label %.preheader.i, !llvm.loop !55

.preheader.i:                                     ; preds = %bb.k, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @unsupported_term, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = tail call i32 @strcasecmp(ptr noundef nonnull %i.x, ptr noundef %i.aa) #25
  %.not8.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i, label %isUnsupportedTerm.exit, label %bb.l

isUnsupportedTerm.exit:                           ; preds = %.preheader.i
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %0) #29 ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !52
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) #29 ; 0 uses
  %i.af = load ptr, ptr @stdin, align 8, !tbaa !52
  %i.ag = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 4096, ptr noundef %i.af) #29
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %linenoiseNoTTY.exit, label %bb.m

bb.m:                                             ; preds = %isUnsupportedTerm.exit
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25 ; 2 uses
  %.not1324 = icmp eq i64 %i.ai, 0
  br i1 %.not1324, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.critedge2
  %.025 = phi i64 [ %i.am, %.critedge2 ], [ %i.ai, %bb.m ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 %.025
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25
  switch i8 %i.al, label %.critedge [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.am = add i64 %.025, -1                       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !25
  %.not13 = icmp eq i64 %i.am, 0
  br i1 %.not13, label %.critedge, label %.lr.ph, !llvm.loop !56

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %bb.m
  %i.ao = call noalias ptr @strdup(ptr noundef nonnull %i.e) #24
  br label %linenoiseNoTTY.exit

isUnsupportedTerm.exit.thread:                    ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = tail call fastcc i32 @enableRawMode() #29
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %linenoiseNoTTY.exit, label %bb.n

bb.n:                                             ; preds = %isUnsupportedTerm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 0, ptr %3, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 1, ptr %i.ar, align 4, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store ptr %i.e, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 4096, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store ptr %0, ptr %i.au, align 8, !tbaa !33
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 35 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 21 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.az = call ptr @getenv(ptr noundef nonnull @.str.7) #24
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.o, label %getColumns.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ba = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %2) #24
  %i.bb = icmp eq i32 %i.ba, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bd = load i16, ptr %i.bc, align 2            ; 2 uses
  %i.be = icmp eq i16 %i.bd, 0
  %or.cond.i.i.i = select i1 %i.bb, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bf = call fastcc i32 @getCursorPosition() #29 ; 3 uses
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %getColumns.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = call i64 @write(i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef 6) #24
  %.not22.i.i.i = icmp eq i64 %i.bh, 6
  br i1 %.not22.i.i.i, label %bb.r, label %getColumns.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.bi = call fastcc i32 @getCursorPosition() #29 ; 5 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %getColumns.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp sgt i32 %i.bi, %i.bf
  br i1 %i.bk, label %bb.t, label %getColumns.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bl = sub nsw i32 %i.bi, %i.bf
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.bl) #24 ; 0 uses
  %i.bn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.bo = call i64 @write(i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef %i.bn) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %getColumns.exit.i.i

bb.u:                                             ; preds = %bb.o
  %i.bp = zext i16 %i.bd to i32
  br label %getColumns.exit.i.i

getColumns.exit.i.i:                              ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.1.i.i.i = phi i32 [ %i.bi, %bb.t ], [ %i.bp, %bb.u ], [ %i.bi, %bb.s ], [ 80, %bb.n ], [ 80, %bb.r ], [ 80, %bb.p ], [ 80, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bq = sext i32 %.1.i.i.i to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 0, ptr %i.bs, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 0, ptr %i.bt, align 8, !tbaa !45
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !24
  store i8 0, ptr %i.bu, align 1, !tbaa !25
  %i.bv = load i64, ptr %i.at, align 8, !tbaa !29
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !29
  %i.bx = call i32 @linenoiseHistoryAdd(ptr noundef nonnull @.str.27, i32 noundef 0) #29 ; 0 uses
  %i.by = load i32, ptr %i.ar, align 4, !tbaa !32
  %i.bz = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.ca = call i64 @write(i32 noundef %i.by, ptr noundef nonnull %0, i64 noundef %i.bz) #24
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %linenoiseEdit.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %getColumns.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.cc = load i32, ptr %3, align 8, !tbaa !57
  %i.cd = call i64 @read(i32 noundef %i.cc, ptr noundef nonnull %i.c, i64 noundef 1) #24
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.v

._crit_edge.i.i:                                  ; preds = %linenoiseEditMoveLeft.exit.i.i, %.preheader.i.i
  %i.ck = load i64, ptr %i.ay, align 8, !tbaa !21
  %i.cl = trunc i64 %i.ck to i32
  br label %.thread.i.i

bb.v:                                             ; preds = %linenoiseEditMoveLeft.exit.i.i, %.lr.ph.i.i
  %i.cm = load i8, ptr %i.c, align 1, !tbaa !25   ; 2 uses
  %i.cn = icmp ne i8 %i.cm, 9
  %i.co = load ptr, ptr @completionCallback, align 8 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  %or.cond.not57.i.i = select i1 %i.cn, i1 true, i1 %i.cp
  %.b.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  %or.cond3.i.i = select i1 %or.cond.not57.i.i, i1 true, i1 %.b.i.i
  br i1 %or.cond3.i.i, label %thread-pre-split.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !25
  %i.cq = load ptr, ptr %i.as, align 8, !tbaa !24
  call void %i.co(ptr noundef %i.cq, ptr noundef nonnull %1) #24, !inline_history !58
  %i.cr = load i64, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.x, label %.preheader.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !52
  %fputc.i.i.i.i = call i32 @fputc(i32 7, ptr %i.ct) ; 0 uses
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.cv = call i32 @fflush(ptr noundef %i.cu) #29 ; 0 uses
  br label %completeLine.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.w, %.preheader.i.i.i.backedge
  %i.cw = phi i64 [ %.be, %.preheader.i.i.i.backedge ], [ %i.cr, %bb.w ]
  %.03338.i.i.i = phi i64 [ %.03338.i.i.i.be, %.preheader.i.i.i.backedge ], [ 0, %bb.w ] ; 6 uses
  %i.cx = icmp ult i64 %.03338.i.i.i, %i.cw
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader.i.i.i
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !19
  %.sroa.41.0.copyload.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !59
  %.sroa.52.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !59
  %i.cy = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.03338.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19 ; 2 uses
  %i.db = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #25 ; 2 uses
  store i64 %i.db, ptr %i.ax, align 8, !tbaa !30
  store i64 %i.db, ptr %i.ay, align 8, !tbaa !21
  store ptr %i.da, ptr %i.as, align 8, !tbaa !24
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  store i64 %.sroa.52.0.copyload.i.i.i, ptr %i.ay, align 8, !tbaa !21
  store i64 %.sroa.41.0.copyload.i.i.i, ptr %i.ax, align 8, !tbaa !30
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %i.as, align 8, !tbaa !24
  br label %bb.aa

bb.z:                                             ; preds = %.preheader.i.i.i
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dc = load i32, ptr %3, align 8, !tbaa !57
  %i.dd = call i64 @read(i32 noundef %i.dc, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp slt i32 %i.de, 1
  br i1 %i.df, label %completeLine.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load i8, ptr %i.a, align 1, !tbaa !25   ; 2 uses
  switch i8 %i.dg, label %bb.ag [
    i8 9, label %bb.ac
    i8 27, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dh = add i64 %.03338.i.i.i, 1
  %i.di = load i64, ptr %1, align 8, !tbaa !18    ; 4 uses
  %i.dj = add i64 %i.di, 1
  %i.dk = urem i64 %i.dh, %i.dj                   ; 2 uses
  %i.dl = icmp eq i64 %i.dk, %i.di
  br i1 %i.dl, label %bb.ad, label %.preheader.i.i.i.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !52
  %fputc.i37.i.i.i = call i32 @fputc(i32 7, ptr %i.dm) ; 0 uses
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.do = call i32 @fflush(ptr noundef %i.dn) #29 ; 0 uses
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !18
  br label %.preheader.i.i.i.backedge

.preheader.i.i.i.backedge:                        ; preds = %bb.ad, %bb.ac
  %.be = phi i64 [ %.pre.i.i, %bb.ad ], [ %i.di, %bb.ac ]
  %.03338.i.i.i.be = phi i64 [ %i.di, %bb.ad ], [ %i.dk, %bb.ac ]
  br label %.preheader.i.i.i, !llvm.loop !60

bb.ae:                                            ; preds = %bb.ab
  %i.dp = load i64, ptr %1, align 8, !tbaa !18
  %i.dq = icmp ult i64 %.03338.i.i.i, %i.dp
  br i1 %i.dq, label %bb.af, label %.critedge.loopexit.i.i.i

bb.af:                                            ; preds = %bb.ae
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %.critedge.loopexit.i.i.i

end_hunk_0
