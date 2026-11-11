Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cliFormatReplyRaw:bb.a
bb.af:                                            ; preds = %hi_sdslen.exit57
  %i.dp = getelementptr inbounds i8, ptr %i.di, i64 -3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !1024
  %i.dr = zext i8 %i.dq to i64
  br label %hi_sdslen.exit59

bb.ag:                                            ; preds = %hi_sdslen.exit57
  %i.ds = getelementptr inbounds i8, ptr %i.di, i64 -5
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !1026
  %i.du = zext i16 %i.dt to i64
  br label %hi_sdslen.exit59

bb.ah:                                            ; preds = %hi_sdslen.exit57
  %i.dv = getelementptr inbounds i8, ptr %i.di, i64 -9
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !23
  %i.dx = zext i32 %i.dw to i64
  br label %hi_sdslen.exit59

bb.ai:                                            ; preds = %hi_sdslen.exit57
  %i.dy = getelementptr inbounds i8, ptr %i.di, i64 -17
  %i.dz = load i64, ptr %i.dy, align 1, !tbaa !989
  br label %hi_sdslen.exit59

hi_sdslen.exit59:                                 ; preds = %hi_sdslen.exit57, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i58 = phi i64 [ %i.dz, %bb.ai ], [ %i.do, %bb.ae ], [ %i.dr, %bb.af ], [ %i.du, %bb.ag ], [ %i.dx, %bb.ah ], [ 0, %hi_sdslen.exit57 ]
  %i.ea = tail call ptr @hi_sdscatlen(ptr noundef %i.dd, ptr noundef nonnull %i.di, i64 noundef %.0.i58) #32 ; 2 uses
  tail call void @hi_sdsfree(ptr noundef nonnull %i.di) #32
  %i.eb = add i64 %.162, 2                        ; 2 uses
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !997
  %i.ed = icmp ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.w, label %.loopexit, !llvm.loop !1588

bb.aj:                                            ; preds = %bb.a
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !978
  %i.ef = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.470, i32 noundef %i.b) #39 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

.loopexit:                                        ; preds = %hi_sdslen.exit59, %hi_sdslen.exit, %hi_sdslen.exit.peel, %.preheader, %bb.k, %bb.g, %bb.f, %bb.e, %bb.j, %bb.i, %bb.h, %bb.b, %bb.a
  %.4 = phi ptr [ %i.a, %bb.a ], [ %i.k, %bb.b ], [ %i.a, %bb.e ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %i.ac, %bb.i ], [ %i.af, %bb.j ], [ %i.cb, %hi_sdslen.exit ], [ %i.a, %bb.k ], [ %i.a, %.preheader ], [ %i.bb, %hi_sdslen.exit.peel ], [ %i.ea, %hi_sdslen.exit59 ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cliRefreshPrompt() unnamed_addr #0 !guid !1590 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !1133
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @hi_sdsempty() #32         ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !1125 ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %i.c, ptr noundef nonnull @.str.471, ptr noundef nonnull %i.d) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.f = load ptr, ptr @config, align 8, !tbaa !1111 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !1112
  %i.h = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 58) #34
  %.not.i = icmp eq ptr %i.h, null
  %i.i = select i1 %.not.i, ptr @.str.477, ptr @.str.476
  %i.j = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, i32 noundef %i.g) #32 ; 0 uses
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #34
  %i.l = call ptr @hi_sdscatlen(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.l, %bb.d ]  ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !1149 ; 2 uses
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.0, ptr noundef nonnull @.str.472, i32 noundef %i.m) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.n, %bb.f ], [ %.0, %bb.e ]   ; 2 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 704), align 8, !tbaa !1117
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call ptr @hi_sdscatlen(ptr noundef %.1, ptr noundef nonnull @.str.473, i64 noundef 4) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi ptr [ %i.p, %bb.h ], [ %.1, %bb.g ]   ; 2 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8, !tbaa !1148
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.2, ptr noundef nonnull @.str.474) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.r, %bb.j ], [ %.2, %bb.i ]
  %i.s = call ptr @hi_sdscatlen(ptr noundef %.3, ptr noundef nonnull @.str.475, i64 noundef 2) #32 ; 2 uses
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @config, i64 384), i64 noundef 128, ptr noundef nonnull @.str.260, ptr noundef %i.s) #32 ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.s) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @cliLegacyInitHelp(ptr noundef %0) unnamed_addr #0 !guid !1591 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 712), align 8, !tbaa !1118 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %cliGetServerVersion.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @context, align 8, !tbaa !1099 ; 2 uses
  %.not26.i = icmp eq ptr %i.b, null
  br i1 %.not26.i, label %cliGetServerVersion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.508) #32 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.c, align 8, !tbaa !1001
  switch i32 %i.e, label %bb.f [
    i32 6, label %bb.e
    i32 1, label %bb.g
    i32 14, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @freeReplyObject(ptr noundef %i.c) #32
  %i.f = tail call ptr @hi_sdsempty() #32
  br label %cliGetServerVersion.exit

bb.f:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.509, ptr noundef nonnull @.str.7, i32 noundef 889, ptr noundef nonnull @__PRETTY_FUNCTION__.cliGetServerVersion) #37
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1002
  %i.i = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.507) #34 ; 2 uses
  %.not27.i = icmp eq ptr %i.i, null
  br i1 %.not27.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 15 ; 3 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 13) #34 ; 2 uses
  %.not28.i = icmp eq ptr %i.k, null
  br i1 %.not28.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = tail call ptr @hi_sdsnewlen(ptr noundef nonnull %i.j, i64 noundef %i.n) #32 ; 2 uses
  tail call void @freeReplyObject(ptr noundef nonnull %i.c) #32
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @config, i64 712), align 8, !tbaa !1118
  br label %cliGetServerVersion.exit

.thread.i:                                        ; preds = %bb.h, %bb.g
  tail call void @freeReplyObject(ptr noundef nonnull %i.c) #32
  br label %cliGetServerVersion.exit

cliGetServerVersion.exit:                         ; preds = %bb.a, %bb.b, %bb.e, %bb.i, %.thread.i
  %.2.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.e ], [ null, %bb.b ], [ null, %.thread.i ], [ %i.o, %bb.i ] ; 2 uses
  %i.p = tail call fastcc i64 @cliLegacyCountCommands(ptr noundef nonnull @redisCommandTable, ptr noundef %.2.i) ; 2 uses
  %i.q = trunc nsw i64 %i.p to i32
  store i32 %i.q, ptr @helpEntriesLen, align 4, !tbaa !23
  %i.r = mul nsw i64 %i.p, 88
  %i.s = tail call noalias ptr @zmalloc(i64 noundef %i.r) #36
  store ptr %i.s, ptr @helpEntries, align 8, !tbaa !990
  %i.t = tail call i32 @cliLegacyInitCommandHelpEntries(ptr noundef nonnull @redisCommandTable, ptr noundef %0, ptr noundef %.2.i)
  store i32 %i.t, ptr @helpEntriesLen, align 4, !tbaa !23
  tail call void @cliInitGroupHelpEntries(ptr noundef %0)
  %i.u = load ptr, ptr @helpEntries, align 8, !tbaa !990
  %i.v = load i32, ptr @helpEntriesLen, align 4, !tbaa !23
  %i.w = sext i32 %i.v to i64
  tail call void @qsort(ptr noundef %i.u, i64 noundef %i.w, i64 noundef 88, ptr noundef nonnull @helpEntryCompare) #32
  tail call void @dictRelease(ptr noundef %0) #32
  ret void
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @cliLegacyCountCommands(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #12 !guid !1593 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1009
  %.not22 = icmp eq ptr %i.a, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %versionIsSupported.exit.thread.us, label %.lr.ph.split

versionIsSupported.exit.thread.us:                ; preds = %.lr.ph, %versionIsSupported.exit.us
  %.025.us = phi i64 [ %i.i, %versionIsSupported.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.01423.us = phi i32 [ %.1.us, %versionIsSupported.exit.us ], [ 0, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.025.us
  %i.c = add nsw i32 %.01423.us, 1                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 2 uses
  %.not19.us = icmp eq ptr %i.e, null
  br i1 %.not19.us, label %versionIsSupported.exit.us, label %bb.b

bb.b:                                             ; preds = %versionIsSupported.exit.thread.us
  %i.f = tail call fastcc i64 @cliLegacyCountCommands(ptr noundef nonnull %i.e, ptr noundef null)
  %i.g = trunc nsw i64 %i.f to i32
  %i.h = add i32 %i.c, %i.g
  br label %versionIsSupported.exit.us

versionIsSupported.exit.us:                       ; preds = %bb.b, %versionIsSupported.exit.thread.us
  %.1.us = phi i32 [ %i.h, %bb.b ], [ %i.c, %versionIsSupported.exit.thread.us ] ; 2 uses
  %i.i = add i64 %.025.us, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1009
  %.not.us = icmp eq ptr %i.k, null
  br i1 %.not.us, label %._crit_edge, label %versionIsSupported.exit.thread.us, !llvm.loop !1592

._crit_edge:                                      ; preds = %versionIsSupported.exit, %versionIsSupported.exit.us, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %.1.us, %versionIsSupported.exit.us ], [ %.1, %versionIsSupported.exit ]
  %i.l = sext i32 %.014.lcssa to i64
  ret i64 %i.l

.lr.ph.split:                                     ; preds = %.lr.ph, %versionIsSupported.exit
  %.025 = phi i64 [ %i.ai, %versionIsSupported.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.01423 = phi i32 [ %.1, %versionIsSupported.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.025 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1010 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %versionIsSupported.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.split, %bb.e
  %.02343.i = phi ptr [ %i.aa, %bb.e ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %.02442.i = phi ptr [ %i.z, %bb.e ], [ %1, %.lr.ph.split ] ; 2 uses
  %.02641.i = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph.split ]
  %i.p = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.02442.i, ptr noundef null, i32 noundef 10) #32, !inline_history !1
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.02343.i, ptr noundef null, i32 noundef 10) #32, !inline_history !1
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp sgt i32 %i.q, %i.s
  br i1 %i.t, label %versionIsSupported.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.u = icmp sgt i32 %i.s, %i.q
  br i1 %i.u, label %versionIsSupported.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.02442.i, i32 noundef 46) #34 ; 2 uses
  %i.w = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.02343.i, i32 noundef 46) #34 ; 2 uses
  %i.x = icmp ne ptr %i.v, null                   ; 2 uses
  %i.y = icmp ne ptr %i.w, null                   ; 2 uses
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %bb.e, label %versionIsSupported.exit.thread

bb.e:                                             ; preds = %bb.d
  %or.cond3.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = add nuw nsw i32 %.02641.i, 1            ; 2 uses
  %.not36.i = icmp ne i32 %i.ab, 3
  %or.cond46.not.i = select i1 %or.cond3.i, i1 %.not36.i, i1 false
  br i1 %or.cond46.not.i, label %.preheader.i, label %versionIsSupported.exit, !llvm.loop !2

versionIsSupported.exit.thread:                   ; preds = %bb.d, %.preheader.i, %.lr.ph.split
  %i.ac = add nsw i32 %.01423, 1                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1013 ; 2 uses
  %.not19 = icmp eq ptr %i.ae, null
  br i1 %.not19, label %versionIsSupported.exit, label %bb.f

bb.f:                                             ; preds = %versionIsSupported.exit.thread
  %i.af = tail call fastcc i64 @cliLegacyCountCommands(ptr noundef nonnull %i.ae, ptr noundef nonnull %1)
  %i.ag = trunc nsw i64 %i.af to i32
  %i.ah = add i32 %i.ac, %i.ag
  br label %versionIsSupported.exit

versionIsSupported.exit:                          ; preds = %bb.e, %bb.c, %versionIsSupported.exit.thread, %bb.f
  %.1 = phi i32 [ %i.ah, %bb.f ], [ %i.ac, %versionIsSupported.exit.thread ], [ %.01423, %bb.c ], [ %.01423, %bb.e ] ; 2 uses
  %i.ai = add i64 %.025, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1009
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1592
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage(i32 noundef range(i32 0, 2) %0) unnamed_addr #21 !guid !1594 {
bb.a:
  %i.a = tail call ptr @cliVersion() #32          ; 2 uses
  %.not = icmp eq i32 %0, 0
  %i.b = load ptr, ptr @stderr, align 8
  %i.c = load ptr, ptr @stdout, align 8
  %i.d = select i1 %.not, ptr %i.c, ptr %i.b      ; 4 uses
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.646, ptr noundef %i.a, ptr noundef nonnull @.str.645) #32 ; 0 uses
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.647, i32 noundef 30) #32 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.648, i64 2403, i64 1, ptr %i.d) ; 0 uses
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.649, i64 846, i64 1, ptr %i.d) ; 0 uses
  tail call void @hi_sdsfree(ptr noundef %i.a) #32
  tail call void @exit(i32 noundef %0) #37
  unreachable
}

declare void @parseRedisUri(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @unquoteCString(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @createClusterManagerCommand(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !guid !1596 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 560), align 8, !tbaa !1597
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 568), align 8, !tbaa !1598
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr null, ptr %2
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @config, i64 576), align 8, !tbaa !1599
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.11) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %isColorTerm.exit.thread, label %isColorTerm.exit

isColorTerm.exit:                                 ; preds = %bb.a
  %i.c = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.12) #34
  %.not43 = icmp eq ptr %i.c, null
  br i1 %.not43, label %isColorTerm.exit.thread, label %bb.b

bb.b:                                             ; preds = %isColorTerm.exit
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !1600
  %i.e = or i32 %i.d, 256
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !1600
  br label %isColorTerm.exit.thread

isColorTerm.exit.thread:                          ; preds = %bb.a, %bb.b, %isColorTerm.exit
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 336), align 8, !tbaa !1122
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %isColorTerm.exit.thread
  %i.g = add nsw i32 %1, 1
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @zmalloc(i64 noundef %i.i) #36 ; 3 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 576), align 8, !tbaa !1599
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 568), align 8, !tbaa !1598
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.k, i64 %i.n, i1 false)
  %i.o = tail call ptr @readArgFromStdin() #32    ; 2 uses
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @config, i64 584), align 8, !tbaa !1601
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 568), align 8, !tbaa !1598 ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @config, i64 568), align 8, !tbaa !1598
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.r
  store ptr %i.o, ptr %i.s, align 8, !tbaa !991
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @config, i64 576), align 8, !tbaa !1599
  br label %.critedge40

bb.d:                                             ; preds = %isColorTerm.exit.thread
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 340), align 4, !tbaa !1123
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %.critedge40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @readArgFromStdin() #32    ; 3 uses
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @config, i64 584), align 8, !tbaa !1601
  %.not3844 = icmp sgt i32 %1, 0
  br i1 %.not3844, label %.lr.ph, label %.critedge41

.lr.ph:                                           ; preds = %bb.e
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 344), align 8, !tbaa !1124
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge41, label %bb.g, !llvm.loop !1595

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !991
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.v) #34
end_hunk_0
