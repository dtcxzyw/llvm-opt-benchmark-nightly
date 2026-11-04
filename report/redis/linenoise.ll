Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/linenoise?download=true
inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@linenoiseEditHistoryNext:bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q
  store ptr %i.m, ptr %i.r, align 8, !tbaa !20
  %i.s = icmp eq i32 %1, 1
  %i.t = select i1 %i.s, i32 1, i32 -1
  %i.u = add nsw i32 %i.n, %i.t                   ; 4 uses
  store i32 %i.u, ptr %i.d, align 8, !tbaa !41
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !41
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not = icmp samesign ult i32 %i.u, %i.a
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.a, -1
  store i32 %i.w, ptr %i.d, align 8, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.y = xor i32 %i.u, -1
  %i.z = add nsw i32 %i.a, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.af = tail call ptr @strncpy(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae) #24 ; 0 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.al, ptr %i.an, align 8, !tbaa !22
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditDelete(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = xor i64 %i.d, -1
  %i.k = add i64 %i.b, %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !22
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !25
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditBackspace(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not14 = icmp eq i64 %i.d, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.i = sub i64 %i.d, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.g, i64 %i.i, i1 false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !30
  %i.l = load i64, ptr %i.c, align 8, !tbaa !22
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !tbaa !22
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !25
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditDeletePrevWord(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %.not25 = icmp eq i64 %i.b, 0
  br i1 %.not25, label %.critedge..critedge2_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = phi i64 [ %i.b, %.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %.lr.ph28

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.e, -1                         ; 3 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !30
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
  br i1 %i.c, label %disableRawMode.exit, label %0

0:                                                ; preds = %bb.a
  store i32 538976288, ptr %.sroa.0, align 4
  %.sroa.0.1..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.3..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.1..sroa_idx4, i64 3, i1 false)
  %1 = load i8, ptr %i.a, align 1, !tbaa !25      ; 3 uses
  store i8 %1, ptr %.sroa.0.3..sroa_idx5, align 1, !tbaa !25
  %.sroa.0.0..sroa.0.0.lhsv = load i32, ptr %.sroa.0, align 4
  %.not3 = icmp eq i32 %.sroa.0.0..sroa.0.0.lhsv, 1953068401
  br i1 %.not3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__ctype_b_loc() #31
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = sext i8 %1 to i32                        ; 3 uses
  %i.j = sext i8 %1 to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !56
  %i.m = and i16 %i.l, 16384
  %.not = icmp eq i16 %i.m, 0
  %i.n = select i1 %.not, i32 63, i32 %i.i
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.n, i32 noundef %i.i, i32 noundef %i.i) #29 ; 0 uses
  %putchar = tail call i32 @putchar(i32 13)       ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.q = tail call i32 @fflush(ptr noundef %i.p) #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.b.i = load i1, ptr @rawmode, align 4
  br i1 %.b.i, label %bb.g, label %disableRawMode.exit

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @orig_termios) #24
  %.not.i = icmp eq i32 %i.r, -1
  br i1 %.not.i, label %disableRawMode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i1 false, ptr @rawmode, align 4
  br label %disableRawMode.exit

disableRawMode.exit:                              ; preds = %bb.h, %bb.g, %bb.f, %bb.a
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
define dso_local noalias ptr @linenoise(ptr noundef %0) local_unnamed_addr #9 {
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

end_hunk_0
