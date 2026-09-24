Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/linenoise?download=true
inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@linenoiseEditDeletePrevWord:bb.a
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.critedge..critedge2_crit_edge, label %bb.b, !llvm.loop !51

.critedge..critedge2_crit_edge:                   ; preds = %bb.c, %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %.critedge2

.lr.ph28:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %bb.e
  %i.m = phi i64 [ %i.e, %.lr.ph28 ], [ %i.q, %bb.e ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25
  %.not23 = icmp eq i8 %i.p, 32
  br i1 %.not23, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.m, -1                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !30
  %.not22 = icmp eq i64 %i.q, 0
  br i1 %.not22, label %.critedge2, label %bb.d, !llvm.loop !52

.critedge2:                                       ; preds = %bb.d, %bb.e, %.critedge..critedge2_crit_edge
  %i.r = phi ptr [ %.pre, %.critedge..critedge2_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ 0, %.critedge..critedge2_crit_edge ], [ %i.m, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.neg = sub i64 %.lcssa, %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.lcssa
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %reass.sub = sub i64 %i.v, %i.b
  %i.w = add i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.w, i1 false)
  %i.x = load i64, ptr %i.u, align 8, !tbaa !22
  %i.y = add i64 %.neg, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !22
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoisePrintKeyCodes() local_unnamed_addr #9 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.b = tail call fastcc i32 @enableRawMode() #29
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %disableRawMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 538976288, ptr %.sroa.0, align 4
  %.sroa.0.1..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.3..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.1..sroa_idx4, i64 3, i1 false)
  %i.g = load i8, ptr %i.a, align 1, !tbaa !25    ; 3 uses
  store i8 %i.g, ptr %.sroa.0.3..sroa_idx5, align 1, !tbaa !25
  %.sroa.0.0..sroa.0.0.lhsv = load i32, ptr %.sroa.0, align 4
  %.not3 = icmp eq i32 %.sroa.0.0..sroa.0.0.lhsv, 1953068401
  br i1 %.not3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__ctype_b_loc() #31
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = sext i8 %i.g to i32                      ; 3 uses
  %i.k = sext i8 %i.g to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !56
  %i.n = and i16 %i.m, 16384
  %.not = icmp eq i16 %i.n, 0
  %i.o = select i1 %.not, i32 63, i32 %i.j
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.o, i32 noundef %i.j, i32 noundef %i.j) #29 ; 0 uses
  %putchar = tail call i32 @putchar(i32 13)       ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.r = tail call i32 @fflush(ptr noundef %i.q) #29 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.b.i = load i1, ptr @rawmode, align 4
  br i1 %.b.i, label %bb.h, label %disableRawMode.exit

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @orig_termios) #24
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %disableRawMode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 false, ptr @rawmode, align 4
  br label %disableRawMode.exit

disableRawMode.exit:                              ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 1) i32 @enableRawMode() unnamed_addr #9 {
bb.a:
  %0 = alloca %struct.termios, align 16           ; 8 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.7) #24
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  %i.b = tail call i32 @isatty(i32 noundef 0) #24
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.b = load i1, ptr @atexit_registered, align 4
  br i1 %.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @atexit(ptr noundef nonnull @linenoiseAtExit) #24 ; 0 uses
  store i1 true, ptr @atexit_registered, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = tail call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @orig_termios) #24
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %0, ptr noundef nonnull align 4 dereferenceable(60) @orig_termios, i64 60, i1 false), !tbaa.struct !57
  %i.f = load <4 x i32>, ptr %0, align 16, !tbaa !10 ; 2 uses
  %i.g = and <4 x i32> %i.f, <i32 -1331, i32 -2, i32 poison, i32 -32780>
  %i.h = or <4 x i32> %i.f, <i32 poison, i32 poison, i32 48, i32 poison>
  %i.i = shufflevector <4 x i32> %i.g, <4 x i32> %i.h, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x i32> %i.i, ptr %0, align 16, !tbaa !10
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
  store i32 25, ptr %i.n, align 4, !tbaa !10
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
  %3 = alloca %struct.linenoiseState, align 8     ; 51 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca [3 x i8], align 1                 ; 8 uses
  %i.e = alloca [4096 x i8], align 16             ; 20 uses
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
  %i.n = load ptr, ptr @stdin, align 8, !tbaa !43
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
  br i1 %.not.i14, label %isUnsupportedTerm.exit.thread, label %.preheader.i, !llvm.loop !58

.preheader.i:                                     ; preds = %bb.k, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @unsupported_term, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ab = tail call i32 @strcasecmp(ptr noundef nonnull %i.x, ptr noundef %i.aa) #25
  %.not8.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i, label %isUnsupportedTerm.exit, label %bb.l

isUnsupportedTerm.exit:                           ; preds = %.preheader.i
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %0) #29 ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) #29 ; 0 uses
  %i.af = load ptr, ptr @stdin, align 8, !tbaa !43
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
  br i1 %.not13, label %.critedge, label %.lr.ph, !llvm.loop !59

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %bb.m
  %i.ao = call noalias ptr @strdup(ptr noundef nonnull %i.e) #24
  br label %linenoiseNoTTY.exit

isUnsupportedTerm.exit.thread:                    ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = tail call fastcc i32 @enableRawMode() #29
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %linenoiseNoTTY.exit, label %bb.n

bb.n:                                             ; preds = %isUnsupportedTerm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <2 x i32> <i32 0, i32 1>, ptr %3, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store ptr %0, ptr %i.at, align 8, !tbaa !33
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.au, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 35 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 21 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ay = call ptr @getenv(ptr noundef nonnull @.str.7) #24
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.o, label %getColumns.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.az = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %2) #24
  %i.ba = icmp eq i32 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bc = load i16, ptr %i.bb, align 2            ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  %or.cond.i.i.i = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.be = call fastcc i32 @getCursorPosition() #29 ; 3 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %getColumns.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = call i64 @write(i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef 6) #24
  %.not22.i.i.i = icmp eq i64 %i.bg, 6
  br i1 %.not22.i.i.i, label %bb.r, label %getColumns.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.bh = call fastcc i32 @getCursorPosition() #29 ; 5 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %getColumns.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bj, label %bb.t, label %getColumns.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bk = sub nsw i32 %i.bh, %i.be
  %i.bl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.bk) #24 ; 0 uses
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.bn = call i64 @write(i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %getColumns.exit.i.i

bb.u:                                             ; preds = %bb.o
  %i.bo = zext i16 %i.bc to i32
  br label %getColumns.exit.i.i

getColumns.exit.i.i:                              ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.1.i.i.i = phi i32 [ %i.bh, %bb.t ], [ %i.bo, %bb.u ], [ %i.bh, %bb.s ], [ 80, %bb.n ], [ 80, %bb.r ], [ 80, %bb.p ], [ 80, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bp = sext i32 %.1.i.i.i to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 0, ptr %i.br, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 0, ptr %i.bs, align 8, !tbaa !41
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 4095, ptr %i.as, align 8, !tbaa !29
  %i.bt = call i32 @linenoiseHistoryAdd(ptr noundef nonnull @.str.27, i32 noundef 0) #29 ; 0 uses
  %i.bu = call i64 @write(i32 noundef 1, ptr noundef nonnull %0, i64 noundef %i.au) #24
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %linenoiseEdit.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %getColumns.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.bw = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.c, i64 noundef 1) #24
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.v

._crit_edge.i.i:                                  ; preds = %linenoiseEditMoveLeft.exit.i.i
  %i.cd = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.ce = trunc i64 %i.cd to i32
  br label %.thread.i.i

bb.v:                                             ; preds = %linenoiseEditMoveLeft.exit.i.i, %.lr.ph.i.i
  %i.cf = load i8, ptr %i.c, align 1, !tbaa !25   ; 2 uses
  %i.cg = icmp ne i8 %i.cf, 9
  %i.ch = load ptr, ptr @completionCallback, align 8 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  %or.cond.not57.i.i = select i1 %i.cg, i1 true, i1 %i.ci
  %.b.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  %or.cond3.i.i = select i1 %or.cond.not57.i.i, i1 true, i1 %.b.i.i
  br i1 %or.cond3.i.i, label %thread-pre-split.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !25
  %i.cj = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void %i.ch(ptr noundef %i.cj, ptr noundef nonnull %1) #24, !inline_history !60
  %i.ck = load i64, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.x, label %.preheader.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !43
  %fputc.i.i.i.i = call i32 @fputc(i32 7, ptr %i.cm) ; 0 uses
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.co = call i32 @fflush(ptr noundef %i.cn) #29 ; 0 uses
  br label %completeLine.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.w, %.preheader.i.i.i.backedge
  %i.cp = phi i64 [ %.be, %.preheader.i.i.i.backedge ], [ %i.ck, %bb.w ]
  %.03338.i.i.i = phi i64 [ %.03338.i.i.i.be, %.preheader.i.i.i.backedge ], [ 0, %bb.w ] ; 6 uses
  %i.cq = icmp ult i64 %.03338.i.i.i, %i.cp
  br i1 %i.cq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader.i.i.i
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !20
  %.sroa.41.0.copyload.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !63
  %.sroa.52.0.copyload.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !63
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03338.i.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  %i.cu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #25 ; 2 uses
  store i64 %i.cu, ptr %i.aw, align 8, !tbaa !30
  store i64 %i.cu, ptr %i.ax, align 8, !tbaa !22
  store ptr %i.ct, ptr %i.ar, align 8, !tbaa !24
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  store i64 %.sroa.52.0.copyload.i.i.i, ptr %i.ax, align 8, !tbaa !22
  store i64 %.sroa.41.0.copyload.i.i.i, ptr %i.aw, align 8, !tbaa !30
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %i.ar, align 8, !tbaa !24
  br label %bb.aa

bb.z:                                             ; preds = %.preheader.i.i.i
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = load i32, ptr %3, align 8, !tbaa !64
  %i.cw = call i64 @read(i32 noundef %i.cv, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp slt i32 %i.cx, 1
  br i1 %i.cy, label %completeLine.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load i8, ptr %i.a, align 1, !tbaa !25   ; 2 uses
  switch i8 %i.cz, label %bb.ag [
    i8 9, label %bb.ac
    i8 27, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.da = add i64 %.03338.i.i.i, 1
  %i.db = load i64, ptr %1, align 8, !tbaa !18    ; 4 uses
  %i.dc = add i64 %i.db, 1
  %i.dd = urem i64 %i.da, %i.dc                   ; 2 uses
  %i.de = icmp eq i64 %i.dd, %i.db
  br i1 %i.de, label %bb.ad, label %.preheader.i.i.i.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !43
  %fputc.i37.i.i.i = call i32 @fputc(i32 7, ptr %i.df) ; 0 uses
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.dh = call i32 @fflush(ptr noundef %i.dg) #29 ; 0 uses
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !18
  br label %.preheader.i.i.i.backedge

.preheader.i.i.i.backedge:                        ; preds = %bb.ad, %bb.ac
  %.be = phi i64 [ %.pre.i.i, %bb.ad ], [ %i.db, %bb.ac ]
  %.03338.i.i.i.be = phi i64 [ %i.db, %bb.ad ], [ %i.dd, %bb.ac ]
  br label %.preheader.i.i.i, !llvm.loop !61

bb.ae:                                            ; preds = %bb.ab
  %i.di = load i64, ptr %1, align 8, !tbaa !18
  %i.dj = icmp ult i64 %.03338.i.i.i, %i.di
  br i1 %i.dj, label %bb.af, label %.critedge.loopexit.i.i.i

bb.af:                                            ; preds = %bb.ae
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %.critedge.loopexit.i.i.i

bb.ag:                                            ; preds = %bb.ab
  %i.dk = load i64, ptr %1, align 8, !tbaa !18
  %i.dl = icmp ult i64 %.03338.i.i.i, %i.dk
  br i1 %i.dl, label %bb.ah, label %.critedge.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.dn = load i64, ptr %i.as, align 8, !tbaa !29
  %i.do = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.03338.i.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.dr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dm, i64 noundef %i.dn, ptr noundef nonnull @.str.8, ptr noundef %i.dq) #24
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  store i64 %i.ds, ptr %i.aw, align 8, !tbaa !30
  store i64 %i.ds, ptr %i.ax, align 8, !tbaa !22
  br label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.dt = sext i8 %i.cz to i32
  br label %completeLine.exit.i.i

completeLine.exit.i.i:                            ; preds = %bb.aa, %.critedge.loopexit.i.i.i, %bb.x
  %.1.i64.i.i = phi i32 [ 0, %bb.x ], [ %i.dt, %.critedge.loopexit.i.i.i ], [ -1, %bb.aa ] ; 3 uses
  %i.du = load i64, ptr %1, align 8, !tbaa !18
  %.not8.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %completeLine.exit.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i ], [ 0, %completeLine.exit.i.i ] ; 2 uses
  %i.dv = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.07.i.i.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !20
  call void @free(ptr noundef %i.dx) #24
  %i.dy = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %i.dz = load i64, ptr %1, align 8, !tbaa !18
  %i.ea = icmp ult i64 %i.dy, %i.dz
  br i1 %i.ea, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %completeLine.exit.i.i
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !17 ; 2 uses
  %.not.i83.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i83.i.i, label %freeCompletions.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef nonnull %i.eb) #24
  br label %freeCompletions.exit.i.i

freeCompletions.exit.i.i:                         ; preds = %bb.ai, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ec = trunc nsw i32 %.1.i64.i.i to i8         ; 2 uses
  store i8 %i.ec, ptr %i.c, align 1, !tbaa !25
  %i.ed = icmp slt i32 %.1.i64.i.i, 0
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %freeCompletions.exit.i.i
  %i.ee = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.ef = trunc i64 %i.ee to i32
  br label %.thread.i.i

bb.ak:                                            ; preds = %freeCompletions.exit.i.i
  %i.eg = icmp eq i32 %.1.i64.i.i, 0
  br i1 %i.eg, label %linenoiseEditMoveLeft.exit.i.i, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.ak, %bb.v
  %i.eh = phi i8 [ %i.ec, %bb.ak ], [ %i.cf, %bb.v ] ; 3 uses
  switch i8 %i.eh, label %bb.cn [
    i8 10, label %linenoiseEditMoveLeft.exit.i.i
    i8 9, label %bb.al
    i8 13, label %bb.an
    i8 3, label %bb.au
    i8 127, label %bb.ax
    i8 8, label %bb.ax
    i8 4, label %bb.ay
    i8 20, label %bb.bb
    i8 2, label %bb.bf
    i8 6, label %bb.bh
    i8 16, label %bb.bj
    i8 18, label %bb.bk
    i8 19, label %bb.bk
    i8 7, label %bb.bm
    i8 14, label %bb.bo
    i8 27, label %bb.bp
    i8 21, label %bb.co
    i8 11, label %bb.cp
    i8 1, label %bb.cq
    i8 5, label %bb.cs
    i8 12, label %bb.cu
    i8 23, label %bb.cv
  ]

bb.al:                                            ; preds = %thread-pre-split.i.i
  %.b55.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b55.i.i, label %bb.am, label %linenoiseEditMoveLeft.exit.i.i

bb.am:                                            ; preds = %bb.al
  call fastcc void @disableReverseSearchMode(ptr noundef %3, ptr noundef nonnull %i.e, i32 noundef 0) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.an:                                            ; preds = %thread-pre-split.i.i
  %i.ei = load i32, ptr @history_len, align 4, !tbaa !10
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr @history_len, align 4, !tbaa !10
  %i.ek = load ptr, ptr @history, align 8, !tbaa !40
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !20
  call void @free(ptr noundef %i.en) #24
  %i.eo = load i32, ptr @mlmode, align 4, !tbaa !10
  %.not60.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not60.i.i, label %linenoiseEditMoveEnd.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.eq = load i64, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i65.i.i = icmp eq i64 %i.ep, %i.eq
  br i1 %.not.i65.i.i, label %linenoiseEditMoveEnd.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.eq, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveEnd.exit.i.i

linenoiseEditMoveEnd.exit.i.i:                    ; preds = %bb.ap, %bb.ao, %bb.an
  %i.er = load ptr, ptr @hintsCallback, align 8, !tbaa !12 ; 2 uses
  %.not61.i.i = icmp eq ptr %i.er, null
  br i1 %.not61.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %linenoiseEditMoveEnd.exit.i.i
  store ptr null, ptr @hintsCallback, align 8, !tbaa !12
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  store ptr %i.er, ptr @hintsCallback, align 8, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %linenoiseEditMoveEnd.exit.i.i
  %.b54.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b54.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call fastcc void @disableReverseSearchMode(ptr noundef %3, ptr noundef nonnull %i.e, i32 noundef 0) #29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.es = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.et = trunc i64 %i.es to i32
  br label %.thread.i.i

bb.au:                                            ; preds = %thread-pre-split.i.i
  %.b53.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b53.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 0, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.eu = load ptr, ptr %i.cc, align 8, !tbaa !44
  store ptr %i.eu, ptr %i.at, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ev = tail call ptr @__errno_location() #31
  store i32 11, ptr %i.ev, align 4, !tbaa !10
  br label %.thread.i.i

bb.ax:                                            ; preds = %thread-pre-split.i.i, %thread-pre-split.i.i
  call void @linenoiseEditBackspace(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ay:                                            ; preds = %thread-pre-split.i.i
  %i.ew = load i64, ptr %i.ax, align 8, !tbaa !22
  %.not59.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not59.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @linenoiseEditDelete(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.ex = load i32, ptr @history_len, align 4, !tbaa !10
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr @history_len, align 4, !tbaa !10
  %i.ez = load ptr, ptr @history, align 8, !tbaa !40
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !20
  call void @free(ptr noundef %i.fc) #24
  br label %.thread.i.i

bb.bb:                                            ; preds = %thread-pre-split.i.i
  %i.fd = load i64, ptr %i.aw, align 8, !tbaa !30 ; 5 uses
  %.not.i.i = icmp ne i64 %i.fd, 0
  %i.fe = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.ff = icmp ult i64 %i.fd, %i.fe
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ff, i1 false
  br i1 %or.cond.i.i, label %bb.bc, label %linenoiseEditMoveLeft.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.fg = getelementptr i8, ptr %i.e, i64 %i.fd   ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -1     ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !25
  %i.fj = load i8, ptr %i.fg, align 1, !tbaa !25
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !25
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !25
  %i.fk = add i64 %i.fe, -1
  %.not58.i.i = icmp eq i64 %i.fd, %i.fk
  br i1 %.not58.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fl = add nuw i64 %i.fd, 1
  store i64 %i.fl, ptr %i.aw, align 8, !tbaa !30
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bf:                                            ; preds = %thread-pre-split.i.i
  %i.fm = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %.not.i66.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i66.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fn = add i64 %i.fm, -1
  store i64 %i.fn, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bh:                                            ; preds = %thread-pre-split.i.i
  %i.fo = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.fp = load i64, ptr %i.ax, align 8, !tbaa !22
  %.not.i67.i.i = icmp eq i64 %i.fo, %i.fp
  br i1 %.not.i67.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fq = add i64 %i.fo, 1
  store i64 %i.fq, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bj:                                            ; preds = %thread-pre-split.i.i
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %3, i32 noundef 1) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bk:                                            ; preds = %thread-pre-split.i.i, %thread-pre-split.i.i
  %i.fr = icmp eq i8 %i.eh, 18                    ; 3 uses
  %i.fs = select i1 %i.fr, i32 -1, i32 1
  store i32 %i.fs, ptr @reverse_search_direction, align 4, !tbaa !10
  %.b52.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b52.i.i, label %bb.bl, label %enableReverseSearchMode.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  store i1 true, ptr @cycle_to_next_search, align 4
  %i.ft = select i1 %i.fr, ptr @.str.28, ptr @.str.29
  store ptr %i.ft, ptr %i.at, align 8, !tbaa !33
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

enableReverseSearchMode.exit.i.i:                 ; preds = %bb.bk
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 0, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i1 true, ptr @reverse_search_mode_enabled, align 4
  %i.fu = load ptr, ptr %i.at, align 8, !tbaa !33
  store ptr %i.fu, ptr %i.cc, align 8, !tbaa !44
  %i.fv = select i1 %i.fr, ptr @.str.28, ptr @.str.29
  store ptr %i.fv, ptr %i.at, align 8, !tbaa !33
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bm:                                            ; preds = %thread-pre-split.i.i
  %.b51.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b51.i.i, label %bb.bn, label %linenoiseEditMoveLeft.exit.i.i

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 0, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.fw = load ptr, ptr %i.cc, align 8, !tbaa !44
  store ptr %i.fw, ptr %i.at, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bo:                                            ; preds = %thread-pre-split.i.i
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %3, i32 noundef 0) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bp:                                            ; preds = %thread-pre-split.i.i
  %i.fx = load i32, ptr %3, align 8, !tbaa !64    ; 3 uses
  %i.fy = call i64 @read(i32 noundef %i.fx, ptr noundef nonnull %i.d, i64 noundef 1) #24
  %i.fz = icmp eq i64 %i.fy, -1
  br i1 %i.fz, label %linenoiseEditMoveLeft.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ga = call i64 @read(i32 noundef %i.fx, ptr noundef nonnull %i.ca, i64 noundef 1) #24
  %i.gb = icmp eq i64 %i.ga, -1
  br i1 %i.gb, label %linenoiseEditMoveLeft.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.b50.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b50.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 0, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.gc = load ptr, ptr %i.cc, align 8, !tbaa !44
  store ptr %i.gc, ptr %i.at, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gd = load i8, ptr %i.d, align 1, !tbaa !25
  switch i8 %i.gd, label %linenoiseEditMoveLeft.exit.i.i [
    i8 91, label %bb.bu
    i8 79, label %bb.ci
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ge = load i8, ptr %i.ca, align 1, !tbaa !25  ; 2 uses
  %i.gf = add i8 %i.ge, -48
  %or.cond7.i.i = icmp ult i8 %i.gf, 10
  br i1 %or.cond7.i.i, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.gg = call i64 @read(i32 noundef %i.fx, ptr noundef nonnull %i.cb, i64 noundef 1) #24
  %i.gh = icmp ne i64 %i.gg, -1
  %i.gi = load i8, ptr %i.cb, align 1
  %i.gj = icmp eq i8 %i.gi, 126
  %or.cond11.i.i = select i1 %i.gh, i1 %i.gj, i1 false
  %i.gk = load i8, ptr %i.ca, align 1
  %cond.i.i = icmp eq i8 %i.gk, 51
  %or.cond14.i.i = select i1 %or.cond11.i.i, i1 %cond.i.i, i1 false
  br i1 %or.cond14.i.i, label %bb.bw, label %linenoiseEditMoveLeft.exit.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @linenoiseEditDelete(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bx:                                            ; preds = %bb.bu
  switch i8 %i.ge, label %linenoiseEditMoveLeft.exit.i.i [
    i8 65, label %bb.by
    i8 66, label %bb.bz
    i8 67, label %bb.ca
    i8 68, label %bb.cc
    i8 72, label %bb.ce
    i8 70, label %bb.cg
  ]

bb.by:                                            ; preds = %bb.bx
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %3, i32 noundef 1) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.bz:                                            ; preds = %bb.bx
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %3, i32 noundef 0) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.gl = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.gm = load i64, ptr %i.ax, align 8, !tbaa !22
  %.not.i68.i.i = icmp eq i64 %i.gl, %i.gm
  br i1 %.not.i68.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gn = add i64 %i.gl, 1
  store i64 %i.gn, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cc:                                            ; preds = %bb.bx
  %i.go = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %.not.i70.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i70.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gp = add i64 %i.go, -1
  store i64 %i.gp, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ce:                                            ; preds = %bb.bx
  %i.gq = load i64, ptr %i.aw, align 8, !tbaa !30
  %.not.i72.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i72.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cg:                                            ; preds = %bb.bx
  %i.gr = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.gs = load i64, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i73.i.i = icmp eq i64 %i.gr, %i.gs
  br i1 %.not.i73.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.gs, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ci:                                            ; preds = %bb.bt
  %i.gt = load i8, ptr %i.ca, align 1, !tbaa !25
  switch i8 %i.gt, label %linenoiseEditMoveLeft.exit.i.i [
    i8 72, label %bb.cj
    i8 70, label %bb.cl
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.gu = load i64, ptr %i.aw, align 8, !tbaa !30
  %.not.i75.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i75.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cl:                                            ; preds = %bb.ci
  %i.gv = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.gw = load i64, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i77.i.i = icmp eq i64 %i.gv, %i.gw
  br i1 %.not.i77.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i64 %i.gw, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cn:                                            ; preds = %thread-pre-split.i.i
  %i.gx = call i32 @linenoiseEditInsert(ptr noundef nonnull %3, i8 noundef signext %i.eh) #29
  %.not62.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not62.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %.thread.i.i

bb.co:                                            ; preds = %thread-pre-split.i.i
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 0, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cp:                                            ; preds = %thread-pre-split.i.i
  %i.gy = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gy
  store i8 0, ptr %i.gz, align 1, !tbaa !25
  store i64 %i.gy, ptr %i.ax, align 8, !tbaa !22
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cq:                                            ; preds = %thread-pre-split.i.i
  %i.ha = load i64, ptr %i.aw, align 8, !tbaa !30
  %.not.i79.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i79.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cs:                                            ; preds = %thread-pre-split.i.i
  %i.hb = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.hc = load i64, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i81.i.i = icmp eq i64 %i.hb, %i.hc
  br i1 %.not.i81.i.i, label %linenoiseEditMoveLeft.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i64 %i.hc, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cu:                                            ; preds = %thread-pre-split.i.i
  %i.hd = call i64 @write(i32 noundef 1, ptr noundef nonnull @.str, i64 noundef 7) #24 ; 0 uses
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.cv:                                            ; preds = %thread-pre-split.i.i
  call void @linenoiseEditDeletePrevWord(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

.thread.i.i:                                      ; preds = %bb.cn, %bb.ba, %bb.aw, %bb.at, %bb.aj, %._crit_edge.i.i, %.preheader.i.i
  %.1.ph.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.ef, %bb.aj ], [ -1, %bb.ba ], [ -1, %bb.aw ], [ %i.et, %bb.at ], [ %i.ce, %._crit_edge.i.i ], [ -1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.he = icmp eq i32 %.1.ph.i.i, -1
  br label %linenoiseEdit.exit.i

linenoiseEditMoveLeft.exit.i.i:                   ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %enableReverseSearchMode.exit.i.i, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.am, %bb.al, %thread-pre-split.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.hf = load i32, ptr %3, align 8, !tbaa !64
  %i.hg = call i64 @read(i32 noundef %i.hf, ptr noundef nonnull %i.c, i64 noundef 1) #24
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %._crit_edge.i.i, label %bb.v

linenoiseEdit.exit.i:                             ; preds = %.thread.i.i, %getColumns.exit.i.i
  %.2.i.i = phi i1 [ %i.he, %.thread.i.i ], [ true, %getColumns.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.b.i6.i = load i1, ptr @rawmode, align 4
  br i1 %.b.i6.i, label %bb.cw, label %linenoiseRaw.exit

bb.cw:                                            ; preds = %linenoiseEdit.exit.i
  %i.hj = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @orig_termios) #24
  %.not.i7.i = icmp eq i32 %i.hj, -1
  br i1 %.not.i7.i, label %linenoiseRaw.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i1 false, ptr @rawmode, align 4
  br label %linenoiseRaw.exit

linenoiseRaw.exit:                                ; preds = %linenoiseEdit.exit.i, %bb.cw, %bb.cx
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  br i1 %.2.i.i, label %linenoiseNoTTY.exit, label %bb.cy

bb.cy:                                            ; preds = %linenoiseRaw.exit
  %i.hk = call noalias ptr @strdup(ptr noundef nonnull %i.e) #24
  br label %linenoiseNoTTY.exit

linenoiseNoTTY.exit:                              ; preds = %bb.i, %bb.i, %isUnsupportedTerm.exit.thread, %.thread.sink.split.i, %bb.d, %linenoiseRaw.exit, %.critedge, %isUnsupportedTerm.exit, %bb.cy
  %.1 = phi ptr [ null, %linenoiseRaw.exit ], [ null, %isUnsupportedTerm.exit ], [ %i.hk, %bb.cy ], [ %i.ao, %.critedge ], [ null, %bb.d ], [ null, %.thread.sink.split.i ], [ null, %isUnsupportedTerm.exit.thread ], [ %.3.i, %bb.i ], [ %.3.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  ret ptr %.1
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @linenoiseFree(ptr noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  tail call void @free(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @linenoiseHistoryAdd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @history_max_len, align 4, !tbaa !10 ; 3 uses
  %i.b = load ptr, ptr @history, align 8, !tbaa !40 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #26 ; 5 uses
  store ptr %i.f, ptr @history, align 8, !tbaa !40
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw nsw i64 %i.d, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.h) ; 2 uses
  store ptr %calloc, ptr @history_sensitive, align 8, !tbaa !46
  %i.i = icmp eq ptr %calloc, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #24
  store ptr null, ptr @history, align 8, !tbaa !40
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.j = phi ptr [ %i.f, %bb.e ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load i32, ptr @history_len, align 4, !tbaa !10 ; 4 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %0) #25
  %.not8 = icmp eq i32 %i.p, 0
  br i1 %.not8, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = tail call noalias ptr @strdup(ptr noundef %0) #24 ; 2 uses
  %.not9 = icmp eq ptr %i.q, null
  br i1 %.not9, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp eq i32 %i.k, %i.a
  %.pre = load ptr, ptr @history_sensitive, align 8, !tbaa !46 ; 3 uses
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.s) #24
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = add nsw i32 %i.a, -1                     ; 2 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.t, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.y = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.pre, ptr nonnull align 4 %i.x, i64 %i.y, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %i.u, %bb.j ], [ %i.k, %bb.i ] ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.aa
  store ptr %i.q, ptr %i.ab, align 8, !tbaa !20
  %i.ac = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.aa
  store i32 %1, ptr %i.ac, align 4, !tbaa !10
  %i.ad = add nsw i32 %i.z, 1
  store i32 %i.ad, ptr @history_len, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.b, %bb.k, %bb.d
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.d ], [ 1, %bb.k ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind optsize memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @linenoiseHistorySetMaxLen(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @history, align 8, !tbaa !40 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  %.pre = load i32, ptr @history_len, align 4, !tbaa !10 ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #26 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #26 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %0, %.pre
  br i1 %i.j, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.f
  %i.k = sub nsw i32 %.pre, %0                    ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.n) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !65

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.preheader
  %.pre-phi = phi i32 [ %i.k, %.preheader ], [ 0, %bb.f ], [ %i.k, %.lr.ph ]
  %.028 = phi i32 [ %0, %.preheader ], [ %.pre, %bb.f ], [ %0, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.g, i1 false)
  %i.o = zext nneg i32 %.pre-phi to i64           ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o
  %i.q = sext i32 %.028 to i64                    ; 2 uses
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.p, i64 %i.r, i1 false)
end_hunk_0
begin_hunk_1_@disableReverseSearchMode:bb.a

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink15 = phi i64 [ %i.c, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink15, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink15, ptr %i.e, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @getCursorPosition() unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = tail call i64 @write(i32 noundef 1, ptr noundef nonnull @.str.32, i64 noundef 4) #24
  %.not = icmp eq i64 %i.d, 4
  br i1 %.not, label %.preheader, label %bb.f

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %bb.d, label %.preheader, !llvm.loop !70

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.f = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.e, i64 noundef 1) #24
  %.not13 = icmp eq i64 %i.f, 1
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.g = load i8, ptr %i.e, align 1, !tbaa !25
  %i.h = icmp eq i8 %i.g, 82
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %.preheader, %bb.b
  %.lcssa = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv, %.preheader ], [ 31, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa
  store i8 0, ptr %i.i, align 1, !tbaa !25
  %i.j = load i8, ptr %i.a, align 16, !tbaa !25
  %i.k = icmp ne i8 %i.j, 27
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp ne i8 %i.m, 91
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.p = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #24
  %.not14 = icmp eq i32 %i.p, 2
  %i.q = load i32, ptr %i.b, align 4
  %spec.select = select i1 %.not14, i32 %i.q, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.011 = phi i32 [ %spec.select, %bb.e ], [ -1, %bb.a ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.011
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0) }
attributes #27 = { nounwind optsize allocsize(1) }
attributes #28 = { nounwind }
attributes #29 = { optsize }
attributes #30 = { nounwind optsize allocsize(0,1) }
attributes #31 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"linenoiseCompletions", !13, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !13, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"linenoiseState", !9, i64 0, !9, i64 4, !19, i64 8, !13, i64 16, !19, i64 24, !19, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !9, i64 88}
!22 = !{!21, !13, i64 64}
!23 = !{!21, !13, i64 72}
!24 = !{!21, !19, i64 8}
!25 = !{!8, !8, i64 0}
!26 = !{!"abuf", !19, i64 0, !9, i64 8}
!27 = !{!26, !19, i64 0}
!28 = !{!26, !9, i64 8}
!29 = !{!21, !13, i64 16}
!30 = !{!21, !13, i64 48}
!31 = !{!21, !13, i64 40}
!32 = !{!21, !9, i64 4}
!33 = !{!21, !19, i64 32}
!34 = !{!21, !13, i64 80}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"", !9, i64 0, !19, i64 8, !9, i64 16, !9, i64 20}
!37 = !{!36, !19, i64 8}
!38 = !{!36, !9, i64 16}
!39 = !{!36, !9, i64 20}
!40 = !{!15, !15, i64 0}
!41 = !{!21, !9, i64 88}
!42 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!21, !19, i64 24}
!45 = !{!"p1 int", !11, i64 0}
!46 = !{!45, !45, i64 0}
!47 = distinct !{!47, !35}
!48 = distinct !{!48, !35}
!49 = distinct !{!49, !35}
!50 = !{!21, !13, i64 56}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = !{!"p1 short", !11, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"short", !8, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 1, !25, i64 17, i64 32, !25, i64 52, i64 4, !10, i64 56, i64 4, !10}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = distinct !{null, null, null}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = !{!13, !13, i64 0}
!64 = !{!21, !9, i64 0}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !35}
!67 = distinct !{!67, !35}
!68 = !{!36, !9, i64 0}
!69 = distinct !{!69, !35}
!70 = distinct !{!70, !35}
end_hunk_1
