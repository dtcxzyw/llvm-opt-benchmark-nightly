Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mbox?download=true
inline.NumInlined: 31
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@do_multipart:bb.a
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !49
  tail call void @messageDestroy(ptr noundef %i.bb) #16
  store ptr null, ptr %i.b, align 8, !tbaa !49
  br label %bb.aw

bb.ah:                                            ; preds = %bb.af, %bb.ae
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.210) #16
  tail call void @messageAddArgument(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.241) #16
  %i.bc = load ptr, ptr %4, align 8, !tbaa !14
  %i.bd = tail call ptr @messageToFileblob(ptr noundef nonnull %i.c, ptr noundef %i.bc, i32 noundef 1) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %saveTextPart.exit.thread, label %saveTextPart.exit

saveTextPart.exit:                                ; preds = %bb.ah
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.242) #16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !18
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !18
  %i.bh = tail call i32 @fileblobScanAndDestroy(ptr noundef nonnull %i.bd) #16
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.ai, label %saveTextPart.exit.thread

bb.ai:                                            ; preds = %saveTextPart.exit
  store i32 3, ptr %3, align 4, !tbaa !9
  br label %saveTextPart.exit.thread

saveTextPart.exit.thread:                         ; preds = %bb.ah, %bb.ai, %saveTextPart.exit
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !49
  tail call void @messageDestroy(ptr noundef %i.bj) #16
  store ptr null, ptr %i.b, align 8, !tbaa !49
  br label %bb.aw

bb.aj:                                            ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.211) #16
  %i.bk = load ptr, ptr %6, align 8, !tbaa !39
  %i.bl = add i32 %7, 1
  %i.bm = tail call fastcc i32 @parseEmailBody(ptr noundef nonnull %i.c, ptr noundef %i.bk, ptr noundef %4, i32 noundef %i.bl) ; 2 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !9
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.212, i32 noundef %i.bm) #16
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !49
  tail call void @messageDestroy(ptr noundef %i.bn) #16
  store ptr null, ptr %i.b, align 8, !tbaa !49
  br label %bb.aw

bb.ak:                                            ; preds = %bb.e
  %i.bo = tail call i32 @messageGetMimeType(ptr noundef nonnull %i.c) #16
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.213, i32 noundef %i.bo) #16
  br label %bb.al

bb.al:                                            ; preds = %bb.ac, %bb.aa, %bb.z, %bb.r, %bb.p, %bb.q, %bb.e, %bb.e, %bb.e, %bb.e, %bb.ak
  %.2 = phi ptr [ %0, %bb.ak ], [ %0, %bb.e ], [ %0, %bb.e ], [ %0, %bb.e ], [ %0, %bb.e ], [ null, %bb.q ], [ null, %bb.p ], [ %0, %bb.r ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ac ]
  %.1 = phi i1 [ false, %bb.ak ], [ false, %bb.e ], [ false, %bb.e ], [ false, %bb.e ], [ false, %bb.e ], [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.r ], [ true, %bb.z ], [ false, %bb.aa ], [ false, %bb.ac ]
  %i.bp = load i32, ptr %3, align 4, !tbaa !9
  %.not128 = icmp eq i32 %i.bp, 3
  br i1 %.not128, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.1, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.214) #16
  %i.bq = tail call ptr @messageGetBody(ptr noundef nonnull %i.c) #16
  %.not130 = icmp eq ptr %i.bq, null
  br i1 %.not130, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.br = load ptr, ptr %6, align 8, !tbaa !39
  %i.bs = tail call ptr @messageGetBody(ptr noundef nonnull %i.c) #16
  %i.bt = tail call ptr @textMove(ptr noundef %i.br, ptr noundef %i.bs) #16
  store ptr %i.bt, ptr %6, align 8, !tbaa !39
  br label %bb.at

bb.ap:                                            ; preds = %bb.am
  %i.bu = load ptr, ptr %4, align 8, !tbaa !14
  %i.bv = tail call ptr @messageToFileblob(ptr noundef nonnull %i.c, ptr noundef %i.bu, i32 noundef 1) #16 ; 2 uses
  %.not129 = icmp eq ptr %i.bv, null
  br i1 %.not129, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = tail call i32 @fileblobScanAndDestroy(ptr noundef nonnull %i.bv) #16
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 3, ptr %3, align 4, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !18
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !18
  br label %bb.at

bb.at:                                            ; preds = %bb.ap, %bb.as, %bb.an, %bb.ao
  %i.cb = tail call i32 @messageContainsVirus(ptr noundef nonnull %i.c) #16
  %.not131 = icmp eq i32 %i.cb, 0
  br i1 %.not131, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 3, ptr %3, align 4, !tbaa !9
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.al
  tail call void @messageDestroy(ptr noundef nonnull %i.c) #16
  store ptr null, ptr %i.b, align 8, !tbaa !49
  br label %bb.aw

bb.aw:                                            ; preds = %bb.d, %bb.c, %bb.av, %bb.aj, %saveTextPart.exit.thread, %bb.ag, %bb.ad
  %.0113 = phi ptr [ %0, %bb.aj ], [ %0, %bb.c ], [ %.2, %bb.av ], [ %0, %bb.ad ], [ %0, %saveTextPart.exit.thread ], [ %0, %bb.ag ], [ %0, %bb.d ]
  ret ptr %.0113
}

declare void @textDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getTextPart(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %.not19 = icmp eq i64 %1, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.018 = phi i32 [ %.1, %bb.d ], [ -1, %bb.a ]   ; 2 uses
  %.01217 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01217 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call i32 @messageGetMimeType(ptr noundef nonnull %i.b) #16
  %i.d = icmp eq i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.f = tail call ptr @messageGetMimeSubtype(ptr noundef %i.e) #16
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.19) #18
  %i.h = icmp eq i32 %i.g, 0
  %i.i = trunc i64 %.01217 to i32                 ; 2 uses
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph, %bb.b
  %.1 = phi i32 [ %.018, %.lr.ph ], [ %.018, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = add nuw i64 %.01217, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  %.013 = phi i32 [ -1, %bb.a ], [ %.1, %bb.d ], [ %i.i, %bb.c ]
  ret i32 %.013
}

declare ptr @fileblobCreate() local_unnamed_addr #1

declare void @fileblobSetFilename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fileblobSetCTX(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @textToFileblob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fileblobDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @rfc1341(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 11 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca [257 x i8], align 16              ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [257 x i8], align 16              ; 6 uses
  %i.e = alloca [8192 x i8], align 16             ; 8 uses
  %i.f = alloca [257 x i8], align 16              ; 11 uses
  %3 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.g = tail call ptr @messageFindArgument(ptr noundef nonnull %0, ptr noundef nonnull @.str.215) #16 ; 14 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @getenv(ptr noundef nonnull @.str.216) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @getenv(ptr noundef nonnull @.str.217) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @getenv(ptr noundef nonnull @.str.218) #16 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %spec.store.select = select i1 %i.n, ptr @.str.219, ptr %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.082 = phi ptr [ %spec.store.select, %bb.d ], [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.220, ptr noundef nonnull %.082) #16 ; 0 uses
  %i.p = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 448) #16
  %4 = icmp slt i32 %i.p, 0
  %i.q = tail call ptr @__errno_location() #17    ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %.not = icmp eq i32 %i.r, 17                    ; 2 uses
  br i1 %4, label %bb.f, label %5

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %.thread149, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.221, ptr noundef nonnull %i.a) #16
  call void @free(ptr noundef nonnull %i.g) #16
  br label %bb.am

5:                                                ; preds = %bb.e
  br i1 %.not, label %.thread149, label %bb.k

.thread149:                                       ; preds = %bb.f, %5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.s = call i32 @stat(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.thread149
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !108  ; 2 uses
  %i.w = and i32 %i.v, 63
  %.not102 = icmp eq i32 %i.w, 0
  br i1 %.not102, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.v, 511
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.223, ptr noundef nonnull %i.a, i32 noundef %i.x) #16
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.j:                                             ; preds = %.thread149
  %i.y = load i32, ptr %i.q, align 4, !tbaa !9
  %i.z = tail call ptr @strerror(i32 noundef %i.y) #16
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.222, ptr noundef nonnull %i.a, ptr noundef %i.z) #16
  call void @free(ptr noundef nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.am

bb.k:                                             ; preds = %.thread, %5
  %i.aa = call ptr @messageFindArgument(ptr noundef nonnull %0, ptr noundef nonnull @.str.224) #16 ; 9 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.g) #16
  br label %bb.am

bb.m:                                             ; preds = %bb.k
  %i.ac = call ptr @messageGetFilename(ptr noundef nonnull %0) #16 ; 3 uses
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #18
  %i.ae = add i64 %i.ad, 10
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #18
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = call ptr @cli_malloc(i64 noundef %i.ag) #16 ; 4 uses
  %.not103 = icmp eq ptr %i.ah, null
  br i1 %.not103, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.225, ptr noundef nonnull %i.g, ptr noundef nonnull %i.aa) #16 ; 0 uses
  call void @messageAddArgument(ptr noundef nonnull %0, ptr noundef nonnull %i.ah) #16
  call void @free(ptr noundef nonnull %i.ah) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not104 = icmp eq ptr %i.ac, null
  br i1 %.not104, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.226, ptr noundef nonnull %i.ac) #16
  call void @free(ptr noundef nonnull %i.ac) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aj = call ptr @messageToFileblob(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 0) #16 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.g) #16
  call void @free(ptr noundef nonnull %i.aa) #16
  br label %bb.am

bb.s:                                             ; preds = %bb.q
  call void @fileblobDestroy(ptr noundef nonnull %i.aj) #16
  %i.al = call ptr @messageFindArgument(ptr noundef nonnull %0, ptr noundef nonnull @.str.227) #16 ; 4 uses
  %.not105 = icmp eq ptr %i.al, null              ; 2 uses
  %i.am = select i1 %.not105, ptr @.str.229, ptr %i.al
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, ptr noundef nonnull %i.g, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.am) #16
  br i1 %.not105, label %bb.al, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aa, ptr noundef null, i32 noundef 10) #16, !inline_history !1
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = call i64 @__isoc23_strtol(ptr noundef nonnull %i.al, ptr noundef null, i32 noundef 10) #16, !inline_history !1
  %i.aq = trunc i64 %i.ap to i32
  call void @free(ptr noundef nonnull %i.al) #16
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.as = call noalias ptr @opendir(ptr noundef nonnull %i.a) ; 7 uses
  %.not106 = icmp eq ptr %i.as, null
  br i1 %.not106, label %bb.al, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @sanitiseName(ptr noundef nonnull %i.g) #16
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull @.str.158, ptr noundef %1, ptr noundef nonnull %i.g) #16 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230, ptr noundef nonnull %i.b) #16
  %i.au = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.159) ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.b) #16
  call void @free(ptr noundef nonnull %i.g) #16
  call void @free(ptr noundef nonnull %i.aa) #16
  %i.aw = call i32 @closedir(ptr noundef nonnull %i.as) ; 0 uses
  br label %.critedge115

bb.x:                                             ; preds = %bb.v
  %i.ax = call i64 @time(ptr noundef nonnull %i.c) #16 ; 0 uses
  %.not107129 = icmp slt i32 %i.ao, 1
  br i1 %.not107129, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.x
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 88
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph132, %.loopexit124
  %.077130 = phi i32 [ 1, %.lr.ph132 ], [ %i.ch, %.loopexit124 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 257, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.g, i32 noundef %.077130) #16 ; 0 uses
  %i.ba = call ptr @readdir(ptr noundef nonnull %i.as) #16 ; 2 uses
  %.not108125 = icmp eq ptr %i.ba, null
  br i1 %.not108125, label %.loopexit124, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.ak
  %i.bb = phi ptr [ %i.cg, %bb.ak ], [ %i.ba, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ak, label %bb.z, !llvm.loop !102

bb.z:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 19 ; 2 uses
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 256, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be) #16 ; 0 uses
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #18
  %i.bh = call i32 @strncmp(ptr noundef nonnull %i.d, ptr noundef nonnull %i.be, i64 noundef %i.bg) #18
  %.not109 = icmp eq i32 %i.bh, 0
  br i1 %.not109, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !19
  %.not113 = icmp eq i8 %i.bi, 0
  br i1 %.not113, label %bb.ak, label %bb.ab, !llvm.loop !102

bb.ab:                                            ; preds = %bb.aa
  %i.bj = call i32 @stat(ptr noundef nonnull %i.f, ptr noundef nonnull %3) #16
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.ak, label %bb.ac, !llvm.loop !102

bb.ac:                                            ; preds = %bb.ab
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !55
  %i.bm = load i64, ptr %i.ay, align 8, !tbaa !111
  %i.bn = sub nsw i64 %i.bl, %i.bm
  %i.bo = icmp sgt i64 %i.bn, 604800
  br i1 %i.bo, label %bb.ad, label %bb.ak, !llvm.loop !102

bb.ad:                                            ; preds = %bb.ac
  %i.bp = call i32 @unlink(ptr noundef nonnull %i.f) #16
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.ae, label %bb.ak, !llvm.loop !102

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.f) #16
  br label %bb.ak, !llvm.loop !102

bb.af:                                            ; preds = %bb.z
  %i.br = call noalias ptr @fopen(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.2) ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge, label %.preheader123

.preheader123:                                    ; preds = %bb.af
  %i.bt = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 8191, ptr noundef nonnull %i.br)
  %.not110126 = icmp eq ptr %i.bt, null
  br i1 %.not110126, label %._crit_edge, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader123, %bb.ai
  %.0127 = phi i32 [ %.3, %bb.ai ], [ 0, %.preheader123 ] ; 4 uses
  %i.bu = load i8, ptr %i.e, align 16, !tbaa !19
  %i.bv = icmp eq i8 %i.bu, 10
  br i1 %i.bv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph128
  %i.bw = add nsw i32 %.0127, 1
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph128
  %.not112 = icmp eq i32 %.0127, 0
  br i1 %.not112, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ah, %.preheader
  %.1 = phi i32 [ %i.by, %.preheader ], [ %.0127, %bb.ah ] ; 2 uses
  %i.bx = call i32 @putc(i32 noundef 10, ptr noundef nonnull %i.au) ; 0 uses
  %i.by = add nsw i32 %.1, -1
  %i.bz = icmp sgt i32 %.1, 1
  br i1 %i.bz, label %.preheader, label %.loopexit.loopexit, !llvm.loop !103

.loopexit.loopexit:                               ; preds = %.preheader
  %smin = call i32 @llvm.smin.i32(i32 %.0127, i32 1)
  %i.ca = add i32 %smin, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ah
  %.2 = phi i32 [ 0, %bb.ah ], [ %i.ca, %.loopexit.loopexit ]
  %i.cb = call i32 @fputs(ptr noundef nonnull %i.e, ptr noundef nonnull %i.au) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.ag
  %.3 = phi i32 [ %i.bw, %bb.ag ], [ %.2, %.loopexit ]
  %i.cc = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 8191, ptr noundef nonnull %i.br)
  %.not110 = icmp eq ptr %i.cc, null
  br i1 %.not110, label %._crit_edge, label %.lr.ph128, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.ai, %.preheader123
  %i.cd = call i32 @fclose(ptr noundef nonnull %i.br) ; 0 uses
  %i.ce = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !19
  %.not111 = icmp eq i8 %i.ce, 0
  br i1 %.not111, label %bb.aj, label %.thread119

bb.aj:                                            ; preds = %._crit_edge
  %i.cf = call i32 @unlink(ptr noundef nonnull %i.f) #16 ; 0 uses
  br label %.thread119

.thread119:                                       ; preds = %bb.aj, %._crit_edge
end_hunk_0
