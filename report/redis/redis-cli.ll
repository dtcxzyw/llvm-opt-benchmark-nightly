inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@displayKeyStats:bb.a
  call void @dictResetIterator(ptr noundef nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %displayKeyStatsLengthType.exit
  %i.bd = add nsw i32 %i.g, %i.e
  %i.be = add nsw i32 %i.bd, %i.h
  %i.bf = add nsw i32 %i.be, %.0.lcssa.i
  %i.bg = add nsw i32 %i.bf, %i.w
  %i.bh = add nsw i32 %i.bg, %.0.lcssa.i19
  %i.bi = add nsw i32 %i.bh, %i.ak
  %i.bj = add nsw i32 %i.bi, %.0.lcssa.i23
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.771, i32 noundef %i.bj) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %displayKeyStatsLengthType.exit
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bm = call i32 @fflush(ptr noundef %i.bl)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  ret void
}

declare ptr @listInsertNode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @hdr_iter_percentile_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare zeroext i1 @hdr_iter_next(ptr noundef) local_unnamed_addr #9

declare i32 @redisAppendCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

declare void @linenoiseSetMultiLine(i32 noundef) local_unnamed_addr #9

declare void @linenoiseSetCompletionCallback(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @completionCallback(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef nonnull @.str.895, i64 noundef 5) #34
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #38
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %.0 = phi i64 [ %i.k, %bb.b ], [ 5, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !74
  %i.j = and i16 %i.i, 8192
  %.not = icmp eq i16 %i.j, 0
  %i.k = add i64 %.0, 1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !571

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.020 = phi i32 [ 1, %bb.a ], [ 3, %bb.b ]
  %.1 = phi i64 [ 0, %bb.a ], [ %.0, %bb.b ]      ; 2 uses
  %i.l = load i32, ptr @helpEntriesLen, align 4, !tbaa !9 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.1 ; 2 uses
  %.pre25 = load ptr, ptr @helpEntries, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.o = phi i32 [ %i.l, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.p = phi ptr [ %.pre25, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !232
  %i.s = and i32 %i.r, %.020
  %.not22 = icmp eq i32 %i.s, 0
  br i1 %.not22, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = tail call i32 @strncasecmp(ptr noundef nonnull %i.n, ptr noundef %i.v, i64 noundef %i.t) #34
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call ptr @hi_sdsnewlen(ptr noundef nonnull %0, i64 noundef %.1) #32
  %i.z = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ad = tail call ptr @hi_sdscat(ptr noundef %i.y, ptr noundef %i.ac) #32 ; 2 uses
  tail call void @linenoiseAddCompletion(ptr noundef %1, ptr noundef %i.ad) #32
  tail call void @hi_sdsfree(ptr noundef %i.ad) #32
  %.pre = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %.pre26 = load i32, ptr @helpEntriesLen, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ae = phi i32 [ %i.o, %bb.d ], [ %.pre26, %bb.e ], [ %i.o, %bb.c ] ; 2 uses
  %i.af = phi ptr [ %i.p, %bb.d ], [ %.pre, %bb.e ], [ %i.p, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.c, label %._crit_edge, !llvm.loop !572

._crit_edge:                                      ; preds = %bb.f, %.loopexit
  ret void
}

declare void @linenoiseSetHintsCallback(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal ptr @hintsCallback(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %.b = load i1, ptr @pref.0, align 4
  br i1 %.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @getHintForInput(ptr noundef %0) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 90, ptr %1, align 4, !tbaa !9
  store i32 0, ptr %2, align 4, !tbaa !9
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34 ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__ctype_b_loc() #38
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = shl i64 %i.c, 32
  %sext = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext, 32
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !73
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74
  %i.n = and i16 %i.m, 8192
  %.not17 = icmp eq i16 %i.n, 0
  br i1 %.not17, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.o = tail call ptr @hi_sdsnewlen(ptr noundef nonnull @.str.150, i64 noundef 1) #32
  %i.p = tail call ptr @hi_sdscatsds(ptr noundef %i.o, ptr noundef nonnull %i.a) #32
  tail call void @hi_sdsfree(ptr noundef nonnull %i.a) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %.critedge, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.a, %bb.d ], [ %i.p, %.critedge ]
  ret ptr %.1
}

declare void @linenoiseSetFreeHintsCallback(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @freeHintsCallback(ptr noundef %0) #0 {
bb.a:
  tail call void @hi_sdsfree(ptr noundef %0) #32
  ret void
}

declare i32 @linenoiseHistoryLoad(ptr noundef) local_unnamed_addr #9

declare i32 @linenoiseHistoryAdd(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @linenoiseHistorySave(ptr noundef) local_unnamed_addr #9

declare void @linenoiseFree(ptr noundef) local_unnamed_addr #9

declare void @linenoiseClearScreen() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @issueCommandRepeat(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !293
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.c = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.68) #34
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.117) #34
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = add nsw i32 %0, -1                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @cliVersion() #32          ; 2 uses
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.921, ptr noundef %i.h) ; 0 uses
  tail call void @hi_sdsfree(ptr noundef %i.h) #32
  br label %cliOutputHelp.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp sgt i32 %0, 1                       ; 2 uses
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !73
  %i.m = icmp eq i8 %i.l, 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %spec.select.i = select i1 %i.m, ptr %i.n, ptr null
  %i.o = freeze ptr %spec.select.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i = phi ptr [ null, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %i.p = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @cliInitHelp()
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.j, label %.preheader32.i, label %bb.o

.preheader32.i:                                   ; preds = %bb.j
  %i.r = load i32, ptr @helpEntriesLen, align 4, !tbaa !9 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph37.i, label %._crit_edge38.i

.lr.ph37.i:                                       ; preds = %.preheader32.i
  %i.t = icmp eq ptr %.026.i, null
  br i1 %i.t, label %.lr.ph37.split.us.split.us.preheader.i, label %.lr.ph37.split.i

.lr.ph37.split.us.split.us.preheader.i:           ; preds = %.lr.ph37.i
  %.pre48.i = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %.lr.ph37.split.us.split.us.i

.lr.ph37.split.us.split.us.i:                     ; preds = %cliOutputCommandHelp.exit31.us.us.i, %.lr.ph37.split.us.split.us.preheader.i
  %i.u = phi i32 [ %i.r, %.lr.ph37.split.us.split.us.preheader.i ], [ %i.at, %cliOutputCommandHelp.exit31.us.us.i ] ; 3 uses
  %i.v = phi ptr [ %.pre48.i, %.lr.ph37.split.us.split.us.preheader.i ], [ %i.au, %cliOutputCommandHelp.exit31.us.us.i ] ; 4 uses
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph37.split.us.split.us.preheader.i ], [ %indvars.iv.next46.i, %cliOutputCommandHelp.exit31.us.us.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.v, i64 %indvars.iv45.i ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !232
  %.not.us.us.i = icmp eq i32 %i.x, 1
  br i1 %.not.us.us.i, label %bb.k, label %cliOutputCommandHelp.exit31.us.us.i

bb.k:                                             ; preds = %.lr.ph37.split.us.split.us.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !231
  %.not28.us.us.i = icmp sgt i32 %i.e, %i.aa
  br i1 %.not28.us.us.i, label %cliOutputCommandHelp.exit31.us.us.i, label %.preheader.us.us.i

bb.l:                                             ; preds = %.preheader.us.us.i, %bb.n
  %indvars.iv42.i = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next43.i, %bb.n ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv42.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv42.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = tail call i32 @strcasecmp(ptr noundef %i.ac, ptr noundef %i.ae) #34
  %.not29.us.us.i = icmp eq i32 %i.af, 0
  br i1 %.not29.us.us.i, label %bb.n, label %cliOutputCommandHelp.exit31.us.us.i

._crit_edge.us.us.thread.i:                       ; preds = %bb.n
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !573
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.922, ptr noundef %i.ag, ptr noundef %i.ai) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.923, ptr noundef %i.al) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %.not.i.us.us.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.us.us.i, label %cliOutputCommandHelp.exit.us.us.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.us.us.thread.i
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.924, ptr noundef nonnull %i.ao) ; 0 uses
  br label %cliOutputCommandHelp.exit.us.us.i

cliOutputCommandHelp.exit.us.us.i:                ; preds = %bb.m, %._crit_edge.us.us.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.925, ptr noundef %i.ar) ; 0 uses
  %.pre.i = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %.pre49.i = load i32, ptr @helpEntriesLen, align 4, !tbaa !9
  br label %cliOutputCommandHelp.exit31.us.us.i

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.thread.i, label %bb.l, !llvm.loop !574

cliOutputCommandHelp.exit31.us.us.i:              ; preds = %bb.l, %cliOutputCommandHelp.exit.us.us.i, %bb.k, %.lr.ph37.split.us.split.us.i
  %i.at = phi i32 [ %.pre49.i, %cliOutputCommandHelp.exit.us.us.i ], [ %i.u, %.lr.ph37.split.us.split.us.i ], [ %i.u, %bb.k ], [ %i.u, %bb.l ] ; 2 uses
  %i.au = phi ptr [ %.pre.i, %cliOutputCommandHelp.exit.us.us.i ], [ %i.v, %.lr.ph37.split.us.split.us.i ], [ %i.v, %bb.k ], [ %i.v, %bb.l ]
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = icmp slt i64 %indvars.iv.next46.i, %i.av
  br i1 %i.aw, label %.lr.ph37.split.us.split.us.i, label %._crit_edge38.i, !llvm.loop !575

.preheader.us.us.i:                               ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !229
  br label %bb.l

bb.o:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.919, ptr noundef nonnull @.str.7, i32 noundef 1027, ptr noundef nonnull @__PRETTY_FUNCTION__.cliOutputHelp) #37
  unreachable

.lr.ph37.split.i:                                 ; preds = %.lr.ph37.i, %cliOutputCommandHelp.exit31.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %cliOutputCommandHelp.exit31.i ], [ 0, %.lr.ph37.i ] ; 2 uses
  %i.az = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw [88 x i8], ptr %i.az, i64 %indvars.iv.i ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !232
  %.not.i = icmp eq i32 %i.bb, 1
  br i1 %.not.i, label %bb.p, label %cliOutputCommandHelp.exit31.i

bb.p:                                             ; preds = %.lr.ph37.split.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58
  %i.be = tail call i32 @strcasecmp(ptr noundef nonnull %.026.i, ptr noundef %i.bd) #34
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %cliOutputCommandHelp.exit31.i

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !573
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.922, ptr noundef %i.bh, ptr noundef %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.923, ptr noundef %i.bm) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.bp, null
  br i1 %.not.i30.i, label %cliOutputCommandHelp.exit31.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.924, ptr noundef nonnull %i.bp) ; 0 uses
  br label %cliOutputCommandHelp.exit31.i

cliOutputCommandHelp.exit31.i:                    ; preds = %bb.r, %bb.q, %bb.p, %.lr.ph37.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load i32, ptr @helpEntriesLen, align 4, !tbaa !9
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %.lr.ph37.split.i, label %._crit_edge38.i, !llvm.loop !575

._crit_edge38.i:                                  ; preds = %cliOutputCommandHelp.exit31.i, %cliOutputCommandHelp.exit31.us.us.i, %.preheader32.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51) ; 0 uses
  br label %cliOutputHelp.exit

bb.s:                                             ; preds = %bb.c, %bb.a
  %i.bu = icmp sgt i32 %0, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.bw = icmp eq i32 %0, 2                       ; 3 uses
  %i.bx = icmp eq i32 %0, 3                       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = sext i32 %0 to i64
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = icmp sgt i32 %0, 0
  %wide.trip.count.i22 = zext nneg i32 %0 to i64
  %i.cc = tail call i32 @llvm.smax.i32(i32 %0, i32 2)
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = and i32 %0, -2
  %or.cond13.i = icmp eq i32 %i.ce, 2
  %i.cf = icmp eq i32 %0, 1                       ; 4 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !562
  %i.cg = icmp ne i32 %.pre, 0
  br label %bb.t

bb.t:                                             ; preds = %.loopexit42, %bb.s
  %i.ch = phi i1 [ true, %.loopexit42 ], [ %i.cg, %bb.s ]
  %i.ci = load ptr, ptr @context, align 8         ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  %or.cond = select i1 %i.ch, i1 true, i1 %i.cj
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !170
  switch i32 %i.cl, label %bb.z [
    i32 1, label %bb.v
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.t
  %i.cm = tail call fastcc i32 @cliConnect(i32 noundef 1)
  %.not14 = icmp eq i32 %i.cm, 0
  br i1 %.not14, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %cliPrintContextError.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.463, ptr noundef nonnull %i.cq) #39 ; 0 uses
  br label %cliPrintContextError.exit

cliPrintContextError.exit:                        ; preds = %bb.w, %bb.x
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !562
  br label %cliOutputHelp.exit

bb.y:                                             ; preds = %bb.v
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !387
  %i.cs = tail call fastcc i32 @cliSelect()       ; 0 uses
  %.pre72.pre = load ptr, ptr @context, align 8, !tbaa !219
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.y
  %.pre72.a = phi ptr [ %i.ci, %bb.u ], [ %.pre72.pre, %bb.y ] ; 3 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !562
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 232), align 8, !tbaa !563
  %.not15 = icmp eq i32 %i.ct, 0
  br i1 %.not15, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 232), align 8, !tbaa !563
  %i.cu = icmp eq ptr %.pre72.a, null
  br i1 %i.cu, label %cliOutputHelp.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef nonnull %.pre72.a, ptr noundef nonnull @.str.926) #32 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cy = tail call i64 @fwrite(ptr nonnull @.str.84, i64 11, i64 1, ptr %i.cx) #33 ; 0 uses
  br label %cliSendAsking.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.cz = load i32, ptr %i.cv, align 8, !tbaa !41
  %i.da = icmp eq i32 %i.cz, 6
  br i1 %i.da, label %cliSendAsking.exit, label %cliSendAsking.exit.thread30

cliSendAsking.exit.thread30:                      ; preds = %bb.ad
  tail call void @freeReplyObject(ptr noundef nonnull %i.cv) #32
  %.pre71 = load ptr, ptr @context, align 8, !tbaa !219
  br label %bb.af

cliSendAsking.exit:                               ; preds = %bb.ad
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !42
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.927, ptr noundef %i.dd) #39 ; 0 uses
  tail call void @freeReplyObject(ptr noundef nonnull %i.cv) #32
  br label %cliSendAsking.exit.thread

cliSendAsking.exit.thread:                        ; preds = %bb.ac, %cliSendAsking.exit
  %.pr38 = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.df = icmp eq ptr %.pr38, null
  br i1 %i.df, label %cliOutputHelp.exit, label %bb.ae

bb.ae:                                            ; preds = %cliSendAsking.exit.thread
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.pr38, i64 12
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.463, ptr noundef nonnull %i.dh) #39 ; 0 uses
  br label %cliOutputHelp.exit

bb.af:                                            ; preds = %cliSendAsking.exit.thread30, %bb.z
  %i.dj = phi ptr [ %.pre71, %cliSendAsking.exit.thread30 ], [ %.pre72.a, %bb.z ]
  %i.dk = load ptr, ptr %1, align 8, !tbaa !29    ; 29 uses
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %cliPrintContextError.exit27, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.46) #34
  %.not.i19 = icmp eq i32 %i.dm, 0
  br i1 %.not.i19, label %bb.bc, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.928) #34
  %.not144.i = icmp eq i32 %i.dn, 0
  br i1 %.not144.i, label %bb.bc, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bu, label %bb.aj, label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.do = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.929) #34
  %.not145.i = icmp eq i32 %i.do, 0
  br i1 %.not145.i, label %bb.ak, label %.critedge198.i

bb.ak:                                            ; preds = %bb.aj
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 3 uses
  %i.dq = tail call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.930) #34
  %.not146.i = icmp eq i32 %i.dq, 0
  br i1 %.not146.i, label %bb.bc, label %bb.al

bb.al:                                            ; preds = %bb.ak
end_hunk_0
