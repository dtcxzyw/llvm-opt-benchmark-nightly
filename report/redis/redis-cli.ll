inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@completionCallback:bb.a
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
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.c = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.68) #34
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.117) #34
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.d, label %bb.r

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
  br i1 %i.j, label %.preheader32.i, label %bb.n

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

bb.l:                                             ; preds = %.preheader.us.us.i, %3
  %indvars.iv42.i = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next43.i, %3 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv42.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv42.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = tail call i32 @strcasecmp(ptr noundef %i.ac, ptr noundef %i.ae) #34
  %.not29.us.us.i = icmp eq i32 %i.af, 0
  br i1 %.not29.us.us.i, label %3, label %cliOutputCommandHelp.exit31.us.us.i

._crit_edge.us.us.thread.i.loopexit:              ; preds = %3
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

bb.m:                                             ; preds = %._crit_edge.us.us.thread.i.loopexit
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.924, ptr noundef nonnull %i.ao) ; 0 uses
  br label %cliOutputCommandHelp.exit.us.us.i

cliOutputCommandHelp.exit.us.us.i:                ; preds = %bb.m, %._crit_edge.us.us.thread.i.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.925, ptr noundef %i.ar) ; 0 uses
  %.pre.i = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %.pre49.i = load i32, ptr @helpEntriesLen, align 4, !tbaa !9
  br label %cliOutputCommandHelp.exit31.us.us.i

3:                                                ; preds = %bb.l
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.thread.i.loopexit, label %bb.l, !llvm.loop !574

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

bb.n:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.919, ptr noundef nonnull @.str.7, i32 noundef 1027, ptr noundef nonnull @__PRETTY_FUNCTION__.cliOutputHelp) #37
  unreachable

.lr.ph37.split.i:                                 ; preds = %.lr.ph37.i, %cliOutputCommandHelp.exit31.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %cliOutputCommandHelp.exit31.i ], [ 0, %.lr.ph37.i ] ; 2 uses
  %i.az = load ptr, ptr @helpEntries, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw [88 x i8], ptr %i.az, i64 %indvars.iv.i ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !232
  %.not.i = icmp eq i32 %i.bb, 1
  br i1 %.not.i, label %bb.o, label %cliOutputCommandHelp.exit31.i

bb.o:                                             ; preds = %.lr.ph37.split.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58
  %i.be = tail call i32 @strcasecmp(ptr noundef nonnull %.026.i, ptr noundef %i.bd) #34
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.p, label %cliOutputCommandHelp.exit31.i

bb.p:                                             ; preds = %bb.o
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
  br i1 %.not.i30.i, label %cliOutputCommandHelp.exit31.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.924, ptr noundef nonnull %i.bp) ; 0 uses
  br label %cliOutputCommandHelp.exit31.i

cliOutputCommandHelp.exit31.i:                    ; preds = %bb.q, %bb.p, %bb.o, %.lr.ph37.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load i32, ptr @helpEntriesLen, align 4, !tbaa !9
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %.lr.ph37.split.i, label %._crit_edge38.i, !llvm.loop !575

._crit_edge38.i:                                  ; preds = %cliOutputCommandHelp.exit31.i, %cliOutputCommandHelp.exit31.us.us.i, %.preheader32.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51) ; 0 uses
  br label %cliOutputHelp.exit

bb.r:                                             ; preds = %bb.c, %bb.a
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
  br label %bb.s

bb.s:                                             ; preds = %.loopexit42, %bb.r
  %i.ch = phi i1 [ true, %.loopexit42 ], [ %i.cg, %bb.r ]
  %i.ci = load ptr, ptr @context, align 8         ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  %or.cond = select i1 %i.ch, i1 true, i1 %i.cj
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !170
  switch i32 %i.cl, label %bb.y [
    i32 1, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.s
  %i.cm = tail call fastcc i32 @cliConnect(i32 noundef 1)
  %.not14 = icmp eq i32 %i.cm, 0
  br i1 %.not14, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %cliPrintContextError.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.463, ptr noundef nonnull %i.cq) #39 ; 0 uses
  br label %cliPrintContextError.exit

cliPrintContextError.exit:                        ; preds = %bb.v, %bb.w
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !562
  br label %cliOutputHelp.exit

bb.x:                                             ; preds = %bb.u
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !387
  %i.cs = tail call fastcc i32 @cliSelect()       ; 0 uses
  %.pre71.pre = load ptr, ptr @context, align 8, !tbaa !219
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x
  %.pre71 = phi ptr [ %i.ci, %bb.t ], [ %.pre71.pre, %bb.x ] ; 3 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !562
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 232), align 8, !tbaa !563
  %.not15 = icmp eq i32 %i.ct, 0
  br i1 %.not15, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 232), align 8, !tbaa !563
  %i.cu = icmp eq ptr %.pre71, null
  br i1 %i.cu, label %cliOutputHelp.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef nonnull %.pre71, ptr noundef nonnull @.str.926) #32 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cy = tail call i64 @fwrite(ptr nonnull @.str.84, i64 11, i64 1, ptr %i.cx) #33 ; 0 uses
  br label %cliSendAsking.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.cz = load i32, ptr %i.cv, align 8, !tbaa !41
  %i.da = icmp eq i32 %i.cz, 6
  br i1 %i.da, label %cliSendAsking.exit, label %cliSendAsking.exit.thread30

cliSendAsking.exit.thread30:                      ; preds = %bb.ac
  tail call void @freeReplyObject(ptr noundef nonnull %i.cv) #32
  %.pre70 = load ptr, ptr @context, align 8, !tbaa !219
  br label %bb.ae

cliSendAsking.exit:                               ; preds = %bb.ac
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !42
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.927, ptr noundef %i.dd) #39 ; 0 uses
  tail call void @freeReplyObject(ptr noundef nonnull %i.cv) #32
  br label %cliSendAsking.exit.thread

cliSendAsking.exit.thread:                        ; preds = %bb.ab, %cliSendAsking.exit
  %.pr38 = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.df = icmp eq ptr %.pr38, null
  br i1 %i.df, label %cliOutputHelp.exit, label %bb.ad

bb.ad:                                            ; preds = %cliSendAsking.exit.thread
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.pr38, i64 12
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.463, ptr noundef nonnull %i.dh) #39 ; 0 uses
  br label %cliOutputHelp.exit

bb.ae:                                            ; preds = %cliSendAsking.exit.thread30, %bb.y
  %i.dj = phi ptr [ %.pre70, %cliSendAsking.exit.thread30 ], [ %.pre71, %bb.y ]
  %i.dk = load ptr, ptr %1, align 8, !tbaa !29    ; 29 uses
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %cliPrintContextError.exit27, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.46) #34
  %.not.i19 = icmp eq i32 %i.dm, 0
  br i1 %.not.i19, label %bb.bb, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.928) #34
  %.not144.i = icmp eq i32 %i.dn, 0
  br i1 %.not144.i, label %bb.bb, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bu, label %bb.ai, label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.do = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.929) #34
  %.not145.i = icmp eq i32 %i.do, 0
  br i1 %.not145.i, label %bb.aj, label %.critedge198.i

bb.aj:                                            ; preds = %bb.ai
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 3 uses
  %i.dq = tail call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.930) #34
  %.not146.i = icmp eq i32 %i.dq, 0
  br i1 %.not146.i, label %bb.bb, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = tail call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.931) #34
  %.not148.i = icmp eq i32 %i.dr, 0
  br i1 %.not148.i, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = tail call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.932) #34
  %.not150.i = icmp eq i32 %i.ds, 0
  br i1 %.not150.i, label %bb.bb, label %.critedge198.i

.critedge198.i:                                   ; preds = %bb.al, %bb.ai
  %i.dt = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.933) #34
  %.not151.i = icmp eq i32 %i.dt, 0
  br i1 %.not151.i, label %bb.am, label %.critedge199.i

bb.am:                                            ; preds = %.critedge198.i
  %i.du = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 2 uses
  %i.dv = tail call i32 @strcasecmp(ptr noundef %i.du, ptr noundef nonnull @.str.934) #34
  %.not152.i = icmp eq i32 %i.dv, 0
  br i1 %.not152.i, label %bb.bb, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dw = tail call i32 @strcasecmp(ptr noundef %i.du, ptr noundef nonnull @.str.935) #34
  %.not153.i = icmp eq i32 %i.dw, 0
  br i1 %.not153.i, label %bb.bb, label %.critedge199.i

.critedge199.i:                                   ; preds = %bb.an, %.critedge198.i
  br i1 %i.bw, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %.critedge199.i
  %i.dx = tail call i32 @strcasecmp(ptr noundef %i.dk, ptr noundef nonnull @.str.936) #34
  %.not154.i = icmp eq i32 %i.dx, 0
  br i1 %.not154.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!373 = distinct !{!373, !17}
!374 = distinct !{!374, !17}
!375 = distinct !{!375, !17}
!376 = distinct !{!376, !17}
!377 = distinct !{!377, !17}
!378 = distinct !{!378, !17}
!379 = distinct !{!379, !17}
!380 = distinct !{!380, !17}
!381 = distinct !{!381, !17}
!382 = distinct !{!382, !17}
!383 = distinct !{!383, !17}
!384 = distinct !{!384, !17}
!385 = !{!64, !10, i64 160}
!386 = distinct !{!386, !17}
!387 = !{!64, !10, i64 144}
!388 = distinct !{!388, !17}
!389 = distinct !{!389, !17}
!390 = distinct !{!390, !17}
!391 = distinct !{!391, !17}
!392 = distinct !{!392, !17}
!393 = distinct !{!393, !17}
!394 = distinct !{!394, !17}
!395 = !{!64, !10, i64 156}
!396 = !{!64, !10, i64 164}
!397 = !{!64, !10, i64 148}
!398 = distinct !{!398, !17}
!399 = distinct !{!399, !17}
!400 = distinct !{!400, !17}
!401 = !{!64, !10, i64 528}
!402 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 1, !73, i64 17, i64 32, !73, i64 52, i64 4, !9, i64 56, i64 4, !9}
!403 = !{!404, !10, i64 12}
!404 = !{!"termios", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 17, !10, i64 52, !10, i64 56}
!405 = distinct !{!405, !17}
!406 = distinct !{null}
!407 = !{!408, !22, i64 0}
!408 = !{!"cliCommandArg", !22, i64 0, !10, i64 8, !22, i64 16, !22, i64 24, !10, i64 32, !10, i64 36, !24, i64 40, !22, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68}
!409 = !{!408, !22, i64 48}
!410 = !{!408, !22, i64 16}
!411 = !{!408, !10, i64 8}
!412 = !{!408, !24, i64 40}
!413 = !{!408, !10, i64 36}
!414 = !{!408, !10, i64 32}
!415 = distinct !{!415, !17}
!416 = distinct !{!416, !17}
!417 = distinct !{!417, !17}
!418 = distinct !{!418, !17}
!419 = distinct !{!419, !17}
!420 = !{!408, !10, i64 56}
!421 = distinct !{null, null}
!422 = distinct !{!422, !17}
!423 = !{!408, !10, i64 68}
!424 = distinct !{!424, !17}
!425 = distinct !{!425, !17}
!426 = distinct !{!426, !17}
!427 = distinct !{!427, !17}
!428 = !{!408, !10, i64 60}
!429 = distinct !{null}
!430 = distinct !{!430, !17}
!431 = distinct !{!431, !17}
!432 = distinct !{!432, !17}
!433 = !{!408, !10, i64 64}
!434 = distinct !{!434, !17}
!435 = distinct !{null}
!436 = !{!408, !22, i64 24}
!437 = distinct !{!437, !17}
!438 = !{i64 0, i64 8, !29, i64 8, i64 4, !9, i64 16, i64 8, !29, i64 24, i64 8, !29, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 8, !31, i64 48, i64 8, !29, i64 56, i64 4, !9, i64 60, i64 4, !9, i64 64, i64 4, !9, i64 68, i64 4, !9}
!439 = distinct !{!439, !17}
!440 = !{!81, !79, i64 16480}
!441 = distinct !{!441, !17}
!442 = distinct !{!442, !17}
!443 = distinct !{!443, !17}
!444 = !{!81, !79, i64 64}
!445 = distinct !{!445, !17}
!446 = distinct !{!446, !17}
!447 = distinct !{!447, !17}
!448 = distinct !{!448, !17}
!449 = distinct !{null}
!450 = !{!81, !27, i64 40}
!451 = !{!81, !27, i64 48}
!452 = !{!453}
!453 = distinct !{!453, !454, !"vprintf: argument 0"}
!454 = distinct !{!454, !"vprintf"}
!455 = distinct !{null}
!456 = !{!457}
!457 = distinct !{!457, !458, !"vprintf: argument 0"}
!458 = distinct !{!458, !"vprintf"}
!459 = distinct !{!459, !17}
!460 = distinct !{!460, !17}
!461 = distinct !{!461, !17}
!462 = !{!463, !22, i64 0}
!463 = !{!"clusterManagerLink", !22, i64 0, !22, i64 8, !10, i64 16, !10, i64 20}
!464 = !{!463, !22, i64 8}
!465 = !{!463, !10, i64 16}
!466 = !{!463, !10, i64 20}
!467 = distinct !{!467, !17}
!468 = distinct !{!468, !17}
!469 = distinct !{!469, !17}
!470 = distinct !{!470, !17}
!471 = distinct !{!471, !17}
!472 = distinct !{!472, !17}
!473 = distinct !{!473, !17}
!474 = !{!78, !10, i64 16}
!475 = distinct !{!475, !17}
!476 = distinct !{!476, !17, !477}
!477 = !{!"llvm.loop.peeled.count", i32 1}
!478 = distinct !{!478, !17, !477}
!479 = distinct !{!479, !17}
!480 = distinct !{!480, !17, !477}
!481 = distinct !{!481, !17}
!482 = distinct !{!482, !17}
!483 = distinct !{!483, !17}
!484 = distinct !{!484, !17}
!485 = distinct !{!485, !17}
!486 = distinct !{!486, !17}
!487 = distinct !{!487, !17}
!488 = distinct !{!488, !17}
!489 = distinct !{!489, !17}
!490 = distinct !{!490, !17}
!491 = distinct !{!491, !17}
!492 = distinct !{!492, !17, !114, !115}
!493 = distinct !{!493, !17}
!494 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28, i64 88, i64 8, !28, i64 96, i64 1, !73, i64 104, i64 8, !28, i64 112, i64 8, !28}
!495 = !{!496, !15, i64 32}
!496 = !{!"dictType", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !10, i64 96, !10, i64 96, !10, i64 96, !15, i64 104, !15, i64 112}
!497 = !{!496, !15, i64 40}
!498 = !{!499, !499, i64 0}
!499 = !{!"p1 _ZTS4dict", !15, i64 0}
!500 = distinct !{!500, !17}
!501 = distinct !{!501, !17}
!502 = distinct !{!502, !17}
!503 = distinct !{!503, !17}
!504 = distinct !{!504, !17}
!505 = distinct !{!505, !17}
!506 = distinct !{!506, !17}
!507 = distinct !{!507, !17}
!508 = distinct !{!508, !17}
!509 = distinct !{!509, !17}
!510 = distinct !{!510, !17}
!511 = distinct !{!511, !17}
!512 = distinct !{!512, !17}
!513 = distinct !{!513, !17}
!514 = distinct !{!514, !17}
!515 = distinct !{!515, !17}
!516 = distinct !{!516, !17}
!517 = distinct !{!517, !17}
!518 = distinct !{!518, !17}
!519 = distinct !{!519, !17}
!520 = distinct !{!520, !17, !477}
!521 = distinct !{!521, !17, !477}
!522 = distinct !{!522, !17}
!523 = distinct !{!523, !17}
!524 = distinct !{!524, !17}
!525 = distinct !{!525, !17}
!526 = distinct !{!526, !17}
!527 = distinct !{!527, !17}
!528 = distinct !{!528, !17}
!529 = distinct !{!529, !17}
!530 = distinct !{!530, !17}
!531 = distinct !{!531, !17}
!532 = distinct !{!532, !17}
!533 = distinct !{!533, !17}
!534 = distinct !{!534, !17}
!535 = distinct !{!535, !17}
!536 = distinct !{!536, !17}
!537 = distinct !{!537, !17}
!538 = distinct !{!538, !17}
!539 = distinct !{!539, !17}
!540 = !{!64, !10, i64 532}
!541 = distinct !{!541, !17, !477}
!542 = distinct !{!542, !17}
!543 = distinct !{!543, !17}
!544 = !{!68, !22, i64 0}
!545 = !{!68, !10, i64 8}
!546 = !{!68, !20, i64 16}
!547 = !{!68, !10, i64 32}
!548 = !{!68, !22, i64 24}
!549 = distinct !{!549, !17}
!550 = distinct !{!550, !17}
!551 = distinct !{!551, !17}
!552 = distinct !{!552, !17}
!553 = distinct !{!553, !17}
!554 = distinct !{!554, !17}
!555 = distinct !{!555, !17}
!556 = distinct !{!556, !17}
!557 = distinct !{!557, !17}
!558 = distinct !{!558, !17}
!559 = distinct !{!559, !17}
!560 = !{!64, !40, i64 544}
!561 = !{!64, !10, i64 152}
!562 = !{!64, !10, i64 228}
!563 = !{!64, !10, i64 232}
!564 = distinct !{!564, !17}
!565 = distinct !{!565, !17}
!566 = distinct !{!566, !17}
!567 = distinct !{!567, !17}
!568 = distinct !{!568, !17}
!569 = distinct !{!569, !17}
!570 = distinct !{!570, !17}
!571 = distinct !{!571, !17}
!572 = distinct !{!572, !17}
!573 = !{!23, !22, i64 56}
!574 = distinct !{!574, !17}
!575 = distinct !{!575, !17}
!576 = distinct !{!576, !17}
!577 = distinct !{!577, !17}
!578 = !{!64, !10, i64 708}
end_hunk_1
