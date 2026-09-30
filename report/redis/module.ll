Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/module?download=true
inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@commandFlagsFromString:bb.a

bb.x:                                             ; preds = %bb.v
  %i.ae = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.18) #35
  %.not67 = icmp eq i32 %i.ae, 0
  br i1 %.not67, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.af = or i64 %.05383, 16384
  br label %select.unfold

bb.z:                                             ; preds = %bb.x
  %i.ag = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.19) #35
  %.not68 = icmp eq i32 %i.ag, 0
  br i1 %.not68, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ah = or i64 %.05383, 32768
  br label %select.unfold

bb.ab:                                            ; preds = %bb.z
  %i.ai = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.20) #35
  %.not69 = icmp eq i32 %i.ai, 0
  br i1 %.not69, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aj = or i64 %.05383, 65536
  br label %select.unfold

bb.ad:                                            ; preds = %bb.ab
  %i.ak = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.21) #35
  %.not70 = icmp eq i32 %i.ak, 0
  br i1 %.not70, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.al = or i64 %.05383, 2097152
  br label %select.unfold

bb.af:                                            ; preds = %bb.ad
  %i.am = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.22) #35
  %.not71 = icmp eq i32 %i.am, 0
  br i1 %.not71, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.an = or i64 %.05383, 134217728
  br label %select.unfold

bb.ah:                                            ; preds = %bb.af
  %i.ao = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.23) #35
  %.not72 = icmp eq i32 %i.ao, 0
  br i1 %.not72, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ap = or i64 %.05383, 4194304
  br label %select.unfold

bb.aj:                                            ; preds = %bb.ah
  %i.aq = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.24) #35
  %.not73 = icmp eq i32 %i.aq, 0
  br i1 %.not73, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ar = or i64 %.05383, 524288
  br label %select.unfold

bb.al:                                            ; preds = %bb.aj
  %i.as = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.25) #35
  %.not74 = icmp eq i32 %i.as, 0
  br i1 %.not74, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.at = or i64 %.05383, 67108864
  br label %select.unfold

bb.an:                                            ; preds = %bb.al
  %i.au = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.26) #35
  %.not75 = icmp eq i32 %i.au, 0
  br i1 %.not75, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.av = or i64 %.05383, 536870976
  br label %select.unfold

bb.ap:                                            ; preds = %bb.an
  %i.aw = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.27) #35
  %.not76 = icmp eq i32 %i.aw, 0
  %i.ax = or i64 %.05383, 268435456
  br i1 %.not76, label %select.unfold, label %._crit_edge.loopexit.split.loop.exit

select.unfold:                                    ; preds = %bb.ap, %bb.d, %bb.h, %bb.l, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.am, %bb.b, %bb.ao, %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.n, %bb.j, %bb.f
  %.2.ph = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.q, %bb.j ], [ %i.s, %bb.l ], [ %i.u, %bb.n ], [ %.05383, %bb.o ], [ %i.x, %bb.q ], [ %i.z, %bb.s ], [ %i.ab, %bb.u ], [ %i.ad, %bb.w ], [ %i.af, %bb.y ], [ %i.ah, %bb.aa ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ae ], [ %i.an, %bb.ag ], [ %i.ap, %bb.ai ], [ %i.ar, %bb.ak ], [ %i.at, %bb.am ], [ %i.av, %bb.ao ], [ %i.ax, %bb.ap ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !486

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.ap
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %select.unfold, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %i.ay, %._crit_edge.loopexit.split.loop.exit ], [ %i.d, %select.unfold ]
  %.053.lcssa = phi i64 [ 0, %bb.a ], [ %.05383, %._crit_edge.loopexit.split.loop.exit ], [ %.2.ph, %select.unfold ]
  call void @sdsfreesplitres(ptr noundef %i.c, i32 noundef %i.d) #31
  %i.az = load i32, ptr %i.a, align 4, !tbaa !29
  %.not77 = icmp eq i32 %.054.lcssa, %i.az
  %.3. = select i1 %.not77, i64 %.053.lcssa, i64 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i64 %.3.
}

declare ptr @sdssplitlen(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare void @sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CreateCommand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !176
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %.thread35, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @commandFlagsFromString(ptr noundef nonnull %3) ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %i.e, 4194304
  %i.h = icmp ne i64 %i.g, 0                      ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !177
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !177
  br label %.thread35

.thread35:                                        ; preds = %bb.b, %bb.f, %bb.e
  %i.m = phi i64 [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %i.n = tail call ptr @strpbrk(ptr noundef readonly %1, ptr noundef nonnull @.str.4) #35
  %.not.i.not = icmp eq ptr %i.n, null
  br i1 %.not.i.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.thread35
  %i.o = tail call ptr @lookupCommandByCString(ptr noundef %1) #31
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @sdsnew(ptr noundef %1) #31 ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.r = tail call ptr @sdsdup(ptr noundef %i.p) #31
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #32 ; 4 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !163
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !164
  %i.u = tail call noalias dereferenceable_or_null(312) ptr @zcalloc(i64 noundef 312) #32 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !178
  store ptr %i.p, ptr %i.u, align 8, !tbaa !179
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  store ptr %i.r, ptr %i.w, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 17, ptr %i.x, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store ptr @RedisModuleCommandDispatcher, ptr %i.y, align 8, !tbaa !182
  %i.z = or i64 %i.m, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !183
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !161
  %.not.i32 = icmp eq i32 %4, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  br i1 %.not.i32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ac, align 8, !tbaa !184
  %i.ad = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #32 ; 8 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !185
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %7 = lshr i64 %i.m, 11
  %8 = and i64 %7, 1024
  %spec.store.select.i = or disjoint i64 %8, 50
  store i64 %spec.store.select.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ah, align 8, !tbaa !186
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %4, ptr %i.ai, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 2, ptr %i.aj, align 8, !tbaa !187
  %i.ak = icmp slt i32 %5, 0
  %i.al = select i1 %i.ak, i32 0, i32 %4
  %i.am = sub nsw i32 %5, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 %i.am, ptr %i.an, align 4, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i32 %6, ptr %i.ao, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  store i32 0, ptr %i.ap, align 4, !tbaa !85
  br label %moduleCreateCommandProxy.exit

bb.j:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8, !tbaa !184
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store ptr null, ptr %i.aq, align 8, !tbaa !185
  br label %moduleCreateCommandProxy.exit

moduleCreateCommandProxy.exit:                    ; preds = %bb.i, %bb.j
  %i.ar = phi ptr [ %i.u, %bb.j ], [ %i.ae, %bb.i ]
  tail call void @populateCommandLegacyRangeSpec(ptr noundef nonnull %i.ar) #31
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  %.not31 = icmp eq ptr %2, null
  %i.au = select i1 %.not31, i32 -2, i32 -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store i32 %i.au, ptr %i.av, align 8, !tbaa !188
  tail call void @pauseAllIOThreads() #31
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 72), align 8, !tbaa !189
  %i.ax = tail call ptr @sdsdup(ptr noundef %i.p) #31
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.az = tail call i32 @dictAdd(ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef %i.ay) #31
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.l, label %bb.k, !prof !72

bb.k:                                             ; preds = %moduleCreateCommandProxy.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 1303) #31
  tail call void @abort() #34
  unreachable

bb.l:                                             ; preds = %moduleCreateCommandProxy.exit
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 80), align 8, !tbaa !190
  %i.bc = tail call ptr @sdsdup(ptr noundef %i.p) #31
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.be = tail call i32 @dictAdd(ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.bd) #31
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.m, !prof !72

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1304) #31
  tail call void @abort() #34
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @resumeAllIOThreads() #31
  %i.bg = tail call i64 @ACLGetCommandID(ptr noundef %i.p) #31
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  store i32 %i.bh, ptr %i.bj, align 8, !tbaa !487
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c, %bb.d, %.thread35, %bb.g, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %.thread35 ], [ 0, %bb.n ], [ 1, %bb.g ]
  ret i32 %.1
}

declare ptr @lookupCommandByCString(ptr noundef) local_unnamed_addr #1

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @moduleCreateCommandProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #32 ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !164
  %i.c = tail call noalias dereferenceable_or_null(312) ptr @zcalloc(i64 noundef 312) #32 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !178
  store ptr %1, ptr %i.c, align 8, !tbaa !179
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store ptr %2, ptr %i.e, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 17, ptr %i.f, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @RedisModuleCommandDispatcher, ptr %i.g, align 8, !tbaa !182
  %i.h = or i64 %4, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.h, ptr %i.i, align 8, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr %i.a, ptr %i.j, align 8, !tbaa !161
  %.not = icmp eq i32 %5, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.k, align 8, !tbaa !184
  %i.l = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #32 ; 8 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !178  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.l, ptr %i.n, align 8, !tbaa !185
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %8 = lshr i64 %4, 11
  %9 = and i64 %8, 1024
  %spec.store.select = or disjoint i64 %9, 50
  store i64 %spec.store.select, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 2, ptr %i.p, align 8, !tbaa !186
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %5, ptr %i.q, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 2, ptr %i.r, align 8, !tbaa !187
  %i.s = icmp slt i32 %6, 0
  %i.t = select i1 %i.s, i32 0, i32 %5
  %i.u = sub nsw i32 %6, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  store i32 %i.u, ptr %i.v, align 4, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 %7, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store i32 0, ptr %i.x, align 4, !tbaa !85
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.k, align 8, !tbaa !184
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.y, align 8, !tbaa !185
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ %i.c, %bb.c ], [ %i.m, %bb.b ]
  tail call void @populateCommandLegacyRangeSpec(ptr noundef nonnull %i.z) #31
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  ret ptr %i.a
}

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

declare void @pauseAllIOThreads() local_unnamed_addr #1

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @resumeAllIOThreads() local_unnamed_addr #1

declare i64 @ACLGetCommandID(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #3

declare void @populateCommandLegacyRangeSpec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_GetCommand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @lookupCommandByCString(ptr noundef %1) #31 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183
  %i.d = and i64 %i.c, 8
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %.not10 = icmp eq ptr %i.g, %i.i
  %. = select i1 %.not10, ptr %i.f, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.1 = phi ptr [ %., %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CreateSubcommand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !176
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %3, null
  br i1 %.not33, label %.thread41, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @commandFlagsFromString(ptr noundef nonnull %3) ; 4 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.d, 4194304
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.i = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.g, label %bb.f, label %.thread41

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !177
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !177
  br label %.thread41

.thread41:                                        ; preds = %bb.b, %bb.f, %bb.e
  %i.l = phi i64 [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !178  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !488
  %.not34 = icmp eq ptr %i.p, null
  br i1 %.not34, label %bb.g, label %bb.m

bb.g:                                             ; preds = %.thread41
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !164
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @strpbrk(ptr noundef readonly %1, ptr noundef nonnull @.str.4) #35
  %.not.i.not = icmp eq ptr %i.u, null
  br i1 %.not.i.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @sdsnew(ptr noundef %1) #31 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !191
  %.not37 = icmp eq ptr %i.x, null
  br i1 %.not37, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @lookupSubcommand(ptr noundef nonnull %i.n, ptr noundef %i.v) #31
  %.not38 = icmp eq ptr %i.y, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @sdsfree(ptr noundef %i.v) #31
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180
  %i.ab = tail call ptr @catSubCommandFullname(ptr noundef %i.aa, ptr noundef %1) #31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !163
  %i.ad = tail call ptr @moduleCreateCommandProxy(ptr noundef %i.ac, ptr noundef %i.v, ptr noundef %i.ab, ptr noundef %2, i64 noundef %i.l, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !178 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i32 -2, ptr %i.ag, align 8, !tbaa !188
  tail call void @commandAddSubcommand(ptr noundef nonnull %i.n, ptr noundef %i.af, ptr noundef %1) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.h, %bb.l, %bb.k, %.thread41, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %.thread41 ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.k ], [ 0, %bb.l ]
  ret i32 %.4
}

declare ptr @lookupSubcommand(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

declare ptr @catSubCommandFullname(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @commandAddSubcommand(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @populateArgsStructure(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !193
  %.not1114 = icmp eq ptr %i.a, null
  br i1 %.not1114, label %.loopexit, label %.lr.ph.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %.not12 = icmp eq i32 %i.f, 2147483647
  br i1 %.not12, label %bb.b, label %.lr.ph.preheader, !prof !490, !llvm.loop !489

bb.b:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1477) #31
  tail call void @abort() #34
  unreachable

.lr.ph.preheader:                                 ; preds = %.preheader, %.lr.ph
  %.081518 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.preheader ] ; 3 uses
  %.01617 = phi i32 [ %i.f, %.lr.ph ], [ 0, %.preheader ]
  %i.b = getelementptr inbounds nuw i8, ptr %.081518, i64 64
end_hunk_0
begin_hunk_1_@RM_CallReplyPromiseAbort:bb.a

bb.c:                                             ; preds = %bb.b
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154
  store ptr %i.h, ptr %1, align 8, !tbaa !110
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !136
  tail call void @unblockClient(ptr noundef %i.i, i32 noundef 0) #31
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !77
  tail call void @moduleReleaseTempClient(ptr noundef %i.l)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

declare void @unblockClient(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_CallReplyStringPtr(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr %i.a, ptr %1
  %i.b = call ptr @callReplyGetString(ptr noundef %0, ptr noundef nonnull %spec.store.select) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %i.b
}

declare ptr @callReplyGetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_CreateStringFromCallReply(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = tail call ptr @callReplyGetPrivateData(ptr noundef %0) #31 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.d = tail call i32 @callReplyType(ptr noundef %0) #31
  switch i32 %i.d, label %RM_CreateString.exit [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = call ptr @callReplyGetString(ptr noundef %0, ptr noundef nonnull %i.a) #31
  %i.f = load i64, ptr %i.a, align 8, !tbaa !45
  %i.g = call ptr @createStringObject(ptr noundef %i.e, i64 noundef %i.f) #31 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %RM_CreateString.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !114
  %i.j = and i32 %i.i, 1
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %RM_CreateString.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !123  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !239
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !124
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @llvm.smax.i32(i32 %i.l, i32 8)
  %spec.select.i.i = shl nuw i32 %i.p, 1          ; 2 uses
  store i32 %spec.select.i.i, ptr %i.m, align 8, !tbaa !239
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.s = sext i32 %spec.select.i.i to i64
  %i.t = shl nsw i64 %i.s, 4
  %i.u = call ptr @zrealloc(ptr noundef %i.r, i64 noundef %i.t) #33 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !124
  %.pre15.i.i = load i32, ptr %i.k, align 4, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.v = phi i32 [ %i.l, %._crit_edge.i.i ], [ %.pre15.i.i, %bb.e ] ; 2 uses
  %i.w = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.u, %bb.e ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !127
  store ptr %i.g, ptr %i.y, align 8, !tbaa !126
  %i.aa = add nsw i32 %i.v, 1
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !123
  br label %RM_CreateString.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ab = tail call i64 @callReplyGetLongLong(ptr noundef %0) #31
  %i.ac = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef %i.ab) #31
  %i.ad = sext i32 %i.ac to i64
  %i.ae = call ptr @createStringObject(ptr noundef nonnull %i.b, i64 noundef %i.ad) #31 ; 2 uses
  %.not.i8 = icmp eq ptr %i.c, null
  br i1 %.not.i8, label %RM_CreateString.exit15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114
  %i.ah = and i32 %i.ag, 1
  %.not.i.i9 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i9, label %RM_CreateString.exit15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !123 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !239
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %bb.i
  %.phi.trans.insert.i.i11 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre.i.i12 = load ptr, ptr %.phi.trans.insert.i.i11, align 8, !tbaa !124
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = call i32 @llvm.smax.i32(i32 %i.aj, i32 8)
  %spec.select.i.i13 = shl nuw i32 %i.an, 1       ; 2 uses
  store i32 %spec.select.i.i13, ptr %i.ak, align 8, !tbaa !239
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.aq = sext i32 %spec.select.i.i13 to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = call ptr @zrealloc(ptr noundef %i.ap, i64 noundef %i.ar) #33 ; 2 uses
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !124
  %.pre15.i.i14 = load i32, ptr %i.ai, align 4, !tbaa !123
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i10
  %i.at = phi i32 [ %i.aj, %._crit_edge.i.i10 ], [ %.pre15.i.i14, %bb.j ] ; 2 uses
  %i.au = phi ptr [ %.pre.i.i12, %._crit_edge.i.i10 ], [ %i.as, %bb.j ]
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !127
  store ptr %i.ae, ptr %i.aw, align 8, !tbaa !126
  %i.ay = add nsw i32 %i.at, 1
  store i32 %i.ay, ptr %i.ai, align 4, !tbaa !123
  br label %RM_CreateString.exit15

RM_CreateString.exit15:                           ; preds = %bb.g, %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %RM_CreateString.exit

RM_CreateString.exit:                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a, %RM_CreateString.exit15
  %.0 = phi ptr [ %i.ae, %RM_CreateString.exit15 ], [ null, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RM_SetContextUser(ptr nofree noundef writeonly captures(none) initializes((112, 120)) %0, ptr noundef %1) #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8, !tbaa !292
  ret void
}

declare ptr @createStringObjectFromLongLongWithSds(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_Call(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ...) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 0, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.f = call ptr @moduleCreateArgvFromUserFormat(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3) ; 2 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !29   ; 11 uses
  %i.h = and i32 %i.g, 256                        ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.i = load i64, ptr @moduleTempClientCount, align 8, !tbaa !45 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @moduleTempClients, align 8, !tbaa !47
  %i.k = add i64 %i.i, -1                         ; 4 uses
  store i64 %i.k, ptr @moduleTempClientCount, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.n = load i64, ptr @moduleTempClientMinCount, align 8, !tbaa !45
  %i.o = icmp ult i64 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %moduleAllocTempClient.exit

bb.c:                                             ; preds = %bb.b
  store i64 %i.k, ptr @moduleTempClientMinCount, align 8, !tbaa !45
  br label %moduleAllocTempClient.exit

bb.d:                                             ; preds = %bb.a
  %i.p = call ptr @createClient(ptr noundef null) #31 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !69
  %i.s = or i64 %i.r, 134217728
  store i64 %i.s, ptr %i.q, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  store ptr null, ptr %i.t, align 8, !tbaa !70
  br label %moduleAllocTempClient.exit

moduleAllocTempClient.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %i.p, %bb.d ] ; 48 uses
  %i.u = and i32 %i.g, 2048
  %.not = icmp eq i32 %i.u, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %moduleAllocTempClient.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69
  %i.x = or i64 %i.w, 2199023255552
  store i64 %i.x, ptr %i.v, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %moduleAllocTempClient.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !143
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 96 ; 6 uses
  store ptr %i.f, ptr %i.ad, align 8, !tbaa !165
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !29  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 5 uses
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 28 ; 2 uses
  store i32 2, ptr %i.ah, align 4, !tbaa !250
  %i.ai = and i32 %i.g, 8
  %.not195 = icmp eq i32 %i.ai, 0
  br i1 %.not195, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.aj = and i32 %i.g, 16
  %.not196 = icmp eq i32 %i.aj, 0
  br i1 %.not196, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !250
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  %.sink = phi i32 [ %i.al, %bb.h ], [ 3, %bb.f ]
  store i32 %.sink, ptr %i.ah, align 4, !tbaa !250
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !118 ; 2 uses
  %.not197 = icmp eq ptr %i.an, null
  br i1 %.not197, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 68 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !153
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = and i32 %i.g, 32
  %.not198 = icmp eq i32 %i.ar, 0                 ; 3 uses
  br i1 %.not198, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !69
  %i.au = and i64 %i.at, 4503599627370496
  %.not199 = icmp eq i64 %i.au, 0
  br i1 %.not199, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !292 ; 2 uses
  %.not200 = icmp eq ptr %i.aw, null
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  %.in = select i1 %.not200, ptr %i.ax, ptr %i.aw
  %i.ay = load ptr, ptr %.in, align 8, !tbaa !110 ; 3 uses
  %.not201 = icmp eq ptr %i.ay, null
  br i1 %.not201, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.az = tail call ptr @__errno_location() #36
  store i32 95, ptr %i.az, align 4, !tbaa !29
  %.not202 = icmp eq i32 %i.h, 0
  br i1 %.not202, label %autoMemoryAdd.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = call ptr @sdsnew(ptr noundef nonnull @.str.47) #31
  %i.bb = call ptr @callReplyCreateError(ptr noundef %i.ba, ptr noundef nonnull %0) #31
  br label %.thread256

bb.p:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 224
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %bb.k
  %.0180 = phi ptr [ null, %bb.l ], [ %i.ay, %bb.p ], [ null, %bb.k ]
  %i.bd = icmp eq ptr %i.f, null
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = tail call ptr @__errno_location() #36
  store i32 9, ptr %i.be, align 4, !tbaa !29
  br label %autoMemoryAdd.exit

bb.s:                                             ; preds = %bb.q
  call void @moduleCallCommandFilters(ptr noundef nonnull %.0.i)
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !165
  %i.bg = load i32, ptr %i.ag, align 8, !tbaa !166
  %i.bh = call ptr @lookupCommand(ptr noundef %i.bf, i32 noundef %i.bg) #31 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 216 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !578
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 200
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !294
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 192 ; 11 uses
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !155
  %.not203 = icmp eq ptr %i.bh, null
  br i1 %.not203, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bm, 536870912
  %.not204 = icmp eq i64 %i.bn, 0
  %brmerge = or i1 %.not198, %.not204
  br i1 %brmerge, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !122 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !69
  %i.br = and i64 %i.bq, 4503599627370496
  %.not206 = icmp eq i64 %i.br, 0
  br i1 %.not206, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bs = call i32 @mustObeyClient(ptr noundef nonnull %i.bo) #31
  %.not207 = icmp eq i32 %i.bs, 0
  br i1 %.not207, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.bi, align 8, !tbaa !578
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.u, %bb.s
  %.not208 = icmp eq i32 %i.h, 0                  ; 14 uses
  %. = select i1 %.not208, ptr null, ptr %i.c     ; 2 uses
  %i.bt = call i32 @commandCheckExistence(ptr noundef nonnull %.0.i, ptr noundef %.) #31
  %.not209 = icmp eq i32 %i.bt, 0
  br i1 %.not209, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bu = tail call ptr @__errno_location() #36
  store i32 2, ptr %i.bu, align 4, !tbaa !29
  br i1 %.not208, label %autoMemoryAdd.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.bw = call ptr @callReplyCreateError(ptr noundef %i.bv, ptr noundef nonnull %0) #31
  br label %.thread256

bb.aa:                                            ; preds = %bb.x
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.by = load i32, ptr %i.ag, align 8, !tbaa !166
  %i.bz = call i32 @commandCheckArity(ptr noundef %i.bx, i32 noundef %i.by, ptr noundef %.) #31
end_hunk_1
begin_hunk_2_@RM_Call:bb.a

bb.ba:                                            ; preds = %bb.az
  %i.ek = tail call ptr @__errno_location() #36
  store i32 29, ptr %i.ek, align 4, !tbaa !29
  br i1 %.not208, label %autoMemoryAdd.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 296), align 8, !tbaa !582
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !243
  %i.eo = call ptr @sdsdup(ptr noundef %i.en) #31
  %i.ep = call ptr @callReplyCreateError(ptr noundef %i.eo, ptr noundef nonnull %0) #31
  br label %.thread256

bb.bc:                                            ; preds = %._crit_edge, %bb.az
  %i.eq = phi ptr [ %.pre, %._crit_edge ], [ %i.eg, %bb.az ]
  %i.er = icmp ne ptr %i.eq, null
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4
  %i.et = icmp ne i32 %i.es, 13
  %or.cond10 = select i1 %i.er, i1 %i.et, i1 false
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7568), align 8
  %i.ev = icmp eq i32 %i.eu, 0
  %or.cond12 = select i1 %or.cond10, i1 %i.ev, i1 false
  %i.ew = and i64 %i.cd, 1024
  %.not225 = icmp eq i64 %i.ew, 0
  %or.cond248 = select i1 %or.cond12, i1 %.not225, i1 false
  br i1 %or.cond248, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ex = tail call ptr @__errno_location() #36
  store i32 29, ptr %i.ex, align 4, !tbaa !29
  br i1 %.not208, label %autoMemoryAdd.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 288), align 8, !tbaa !583
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !243
  %i.fb = call ptr @sdsdup(ptr noundef %i.fa) #31
  %i.fc = call ptr @callReplyCreateError(ptr noundef %i.fb, ptr noundef nonnull %0) #31
  br label %.thread256

bb.bf:                                            ; preds = %bb.bc, %bb.ap
  br i1 %.not198, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.fd = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.fe = load ptr, ptr %i.ad, align 8, !tbaa !165
  %i.ff = load i32, ptr %i.ag, align 8, !tbaa !166
  %i.fg = call i32 @ACLCheckAllUserCommandPerm(ptr noundef %.0180, ptr noundef %i.fd, ptr noundef %i.fe, i32 noundef %i.ff, ptr noundef null, ptr noundef nonnull %i.d) #31 ; 3 uses
  switch i32 %i.fg, label %bb.bi [
    i32 0, label %.thread259
    i32 1, label %bb.bh
  ]

.thread259:                                       ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.fh = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fj = load ptr, ptr %i.ad, align 8, !tbaa !165
  %i.fk = load i32, ptr %i.d, align 4, !tbaa !29
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !82
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink285.in = phi ptr [ %i.fo, %bb.bi ], [ %i.fi, %bb.bh ]
  %.sink285 = load ptr, ptr %.sink285.in, align 8, !tbaa !110
  %i.fp = call ptr @sdsdup(ptr noundef %.sink285) #31
  %i.fq = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i, i64 224 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !70
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !255
  call void @addACLLogEntry(ptr noundef %i.fq, i32 noundef %i.fg, i32 noundef 3, i32 noundef -1, ptr noundef %i.ft, ptr noundef %i.fp) #31
  br i1 %.not208, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !70
  %i.fv = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.fw = load ptr, ptr %i.ad, align 8, !tbaa !165
  %i.fx = load i32, ptr %i.d, align 4, !tbaa !29
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !82
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !243
  %i.gd = call ptr @getAclErrorMessage(i32 noundef %i.fg, ptr noundef %i.fu, ptr noundef %i.fv, ptr noundef %i.gc, i32 noundef 0) #31 ; 2 uses
  %i.ge = call ptr @sdsempty() #31
  %i.gf = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.ge, ptr noundef nonnull @.str.50, ptr noundef %i.gd) #31
  call void @sdsfree(ptr noundef %i.gd) #31
  %i.gg = call ptr @callReplyCreateError(ptr noundef %i.gf, ptr noundef nonnull %0) #31
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.8 = phi ptr [ %i.gg, %bb.bk ], [ null, %bb.bj ]
  %i.gh = tail call ptr @__errno_location() #36
  store i32 13, ptr %i.gh, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.thread256

bb.bm:                                            ; preds = %.thread259, %bb.bf
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !268
  %.not228 = icmp eq i32 %i.gi, 0
  br i1 %.not228, label %bb.bz, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gj = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.gk = call i32 @mustObeyClient(ptr noundef %i.gj) #31
  %.not229 = icmp eq i32 %i.gk, 0
  br i1 %.not229, label %bb.bo, label %bb.bz

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !69
  %i.gn = and i64 %i.gm, -131585                  ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !69
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !69
  %i.gr = and i64 %i.gq, 131584
  %i.gs = or disjoint i64 %i.gr, %i.gn
  store i64 %i.gs, ptr %i.gl, align 8, !tbaa !69
  %i.gt = call i64 @getCommandFlags(ptr noundef nonnull %.0.i) #31
  %i.gu = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.gv = load ptr, ptr %i.ad, align 8, !tbaa !165
  %i.gw = load i32, ptr %i.ag, align 8, !tbaa !166
  %i.gx = call ptr @getNodeByQuery(ptr noundef nonnull %.0.i, ptr noundef %i.gu, ptr noundef %i.gv, i32 noundef %i.gw, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i64 noundef %i.gt, ptr noundef nonnull %i.e) #31
  %i.gy = call ptr @getMyClusterNode() #31
  %.not230 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not230, label %bb.by, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gz = load i32, ptr %i.e, align 4, !tbaa !29
  switch i32 %i.gz, label %bb.bu [
    i32 7, label %bb.bq
    i32 5, label %bb.bs
  ]

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not208, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = call ptr @sdsempty() #31
  %i.hb = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 216
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !180
  %i.he = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.ha, ptr noundef nonnull @.str.51, ptr noundef %i.hd) #31
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bp
  br i1 %.not208, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hf = call ptr @sdsempty() #31
  %i.hg = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 216
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !180
  %i.hj = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.hf, ptr noundef nonnull @.str.52, ptr noundef %i.hi) #31
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bp
  br i1 %.not208, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hk = call ptr @sdsnew(ptr noundef nonnull @.str.53) #31
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bs, %bb.bt, %bb.bq, %bb.br
  %.sink286 = phi i32 [ 30, %bb.bq ], [ 100, %bb.bs ], [ 30, %bb.br ], [ 100, %bb.bt ], [ 1, %bb.bv ], [ 1, %bb.bu ]
  %.3179 = phi ptr [ null, %bb.bq ], [ null, %bb.bs ], [ %i.he, %bb.br ], [ %i.hj, %bb.bt ], [ %i.hk, %bb.bv ], [ null, %bb.bu ] ; 2 uses
  %i.hl = tail call ptr @__errno_location() #36
  store i32 %.sink286, ptr %i.hl, align 4, !tbaa !29
  %.not231 = icmp eq ptr %.3179, null
  br i1 %.not231, label %.thread263, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hm = call ptr @callReplyCreateError(ptr noundef nonnull %.3179, ptr noundef nonnull %0) #31
  br label %.thread263

.thread263:                                       ; preds = %bb.bw, %bb.bx
  %.12.ph = phi ptr [ %i.hm, %bb.bx ], [ null, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %.thread256

bb.by:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bn, %bb.bm
  %i.hn = and i32 %i.g, 1024
  %.not232 = icmp eq i32 %i.hn, 0
  br i1 %.not232, label %bb.ca, label %autoMemoryAdd.exit

bb.ca:                                            ; preds = %bb.bz
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7088), align 8, !tbaa !584 ; 2 uses
  %5 = trunc i32 %i.g to i1                       ; 2 uses
  %6 = icmp ne i32 %4, 0
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i32
  store i32 %8, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7088), align 8, !tbaa !584
  %9 = lshr i32 %i.g, 1
  %10 = and i32 %9, 3
  %spec.select251 = xor i32 %10, 7
  %.1175 = select i1 %5, i32 %spec.select251, i32 4 ; 3 uses
  call void @call(ptr noundef nonnull %.0.i, i32 noundef %.1175) #31
  store i32 %4, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7088), align 8, !tbaa !584
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 5 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !69
  %i.hq = and i64 %i.hp, 16
  %.not235 = icmp eq i64 %i.hq, 0
  br i1 %.not235, label %bb.cj, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not, label %bb.cc, label %bb.cd, !prof !87

bb.cc:                                            ; preds = %bb.cb
  call void @_serverAssert(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 7072) #31
  call void @abort() #34
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.hr = load ptr, ptr %i.am, align 8, !tbaa !118
  %.not238 = icmp eq ptr %i.hr, null
  br i1 %.not238, label %bb.ce, label %bb.cf, !prof !87

bb.ce:                                            ; preds = %bb.cd
  call void @_serverAssert(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 7073) #31
  call void @abort() #34
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.hs = call noalias dereferenceable_or_null(48) ptr @zmalloc(i64 noundef 48) #32 ; 8 uses
  %i.ht = load ptr, ptr %i.am, align 8, !tbaa !118
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !114
  %i.hw = and i32 %i.hv, 1
  %.not239 = icmp eq i32 %i.hw, 0
  %i.hx = select i1 %.not239, ptr null, ptr %0
  store i64 2, ptr %i.hs, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store ptr %i.ht, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !585
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr %.0.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !48
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store ptr %i.hx, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !586
  %i.hy = call ptr @callReplyCreatePromise(ptr noundef nonnull %i.hs) #31 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i, i64 648
  store ptr %i.hs, ptr %i.hz, align 8, !tbaa !74
  %i.ia = and i32 %.1175, 1
  %.not240 = icmp eq i32 %i.ia, 0
  br i1 %.not240, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ib = load i64, ptr %i.ho, align 8, !tbaa !69
  %i.ic = or i64 %i.ib, 281474976710656
  store i64 %i.ic, ptr %i.ho, align 8, !tbaa !69
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.id = and i32 %.1175, 2
  %.not241 = icmp eq i32 %i.id, 0
  br i1 %.not241, label %bb.ci, label %.thread256

bb.ci:                                            ; preds = %bb.ch
  %i.ie = load i64, ptr %i.ho, align 8, !tbaa !69
  %i.if = or i64 %i.ie, 562949953421312
  store i64 %i.if, ptr %i.ho, align 8, !tbaa !69
  br label %.thread256

bb.cj:                                            ; preds = %bb.ca
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !114
  %i.ii = and i32 %i.ih, 1
  %.not236 = icmp eq i32 %i.ii, 0
  %i.ij = select i1 %.not236, ptr null, ptr %0
  %i.ik = call fastcc ptr @moduleParseReply(ptr noundef nonnull %.0.i, ptr noundef %i.ij)
  br label %.thread256

.thread256:                                       ; preds = %bb.bb, %bb.ay, %.thread263, %bb.bl, %bb.al, %bb.ch, %bb.ci, %bb.cj, %bb.be, %bb.at, %bb.ao, %bb.af, %bb.ac, %bb.z, %bb.o
  %.14 = phi ptr [ %i.bb, %bb.o ], [ %i.cm, %bb.af ], [ %i.hy, %bb.ch ], [ %i.dp, %bb.ao ], [ %i.cc, %bb.ac ], [ %i.hy, %bb.ci ], [ %i.bw, %bb.z ], [ %i.ik, %bb.cj ], [ %.12.ph, %.thread263 ], [ %.8, %bb.bl ], [ %i.fc, %bb.be ], [ %i.dd, %bb.al ], [ %i.dw, %bb.at ], [ %i.ep, %bb.bb ], [ %i.ef, %bb.ay ] ; 4 uses
  %.0171 = phi ptr [ %.0.i, %bb.o ], [ %.0.i, %bb.af ], [ null, %bb.ch ], [ %.0.i, %bb.ao ], [ %.0.i, %bb.ac ], [ null, %bb.ci ], [ %.0.i, %bb.z ], [ %.0.i, %bb.cj ], [ %.0.i, %.thread263 ], [ %.0.i, %bb.bl ], [ %.0.i, %bb.be ], [ %.0.i, %bb.al ], [ %.0.i, %bb.at ], [ %.0.i, %bb.bb ], [ %.0.i, %bb.ay ] ; 3 uses
  %.not242 = icmp eq ptr %.14, null
  br i1 %.not242, label %autoMemoryAdd.exit, label %bb.ck

bb.ck:                                            ; preds = %.thread256
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = load i32, ptr %i.il, align 8, !tbaa !114
  %i.in = and i32 %i.im, 1
  %.not.i252 = icmp eq i32 %i.in, 0
  br i1 %.not.i252, label %autoMemoryAdd.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !123 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !239
  %i.is = icmp eq i32 %i.ip, %i.ir
  br i1 %i.is, label %bb.cm, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.cl
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !124
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.it = call i32 @llvm.smax.i32(i32 %i.ip, i32 8)
  %spec.select.i = shl nuw i32 %i.it, 1           ; 2 uses
  store i32 %spec.select.i, ptr %i.iq, align 8, !tbaa !239
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !124
  %i.iw = sext i32 %spec.select.i to i64
  %i.ix = shl nsw i64 %i.iw, 4
  %i.iy = call ptr @zrealloc(ptr noundef %i.iv, i64 noundef %i.ix) #33 ; 2 uses
  store ptr %i.iy, ptr %i.iu, align 8, !tbaa !124
  %.pre15.i = load i32, ptr %i.io, align 4, !tbaa !123
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge.i
  %i.iz = phi i32 [ %i.ip, %._crit_edge.i ], [ %.pre15.i, %bb.cm ] ; 2 uses
  %i.ja = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.iy, %bb.cm ]
  %i.jb = sext i32 %i.iz to i64
  %i.jc = getelementptr inbounds [16 x i8], ptr %i.ja, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i32 2, ptr %i.jd, align 8, !tbaa !127
  store ptr %.14, ptr %i.jc, align 8, !tbaa !126
  %i.je = add nsw i32 %i.iz, 1
  store i32 %i.je, ptr %i.io, align 4, !tbaa !123
  br label %autoMemoryAdd.exit

autoMemoryAdd.exit:                               ; preds = %bb.ba, %bb.ax, %bb.ak, %bb.y, %bb.ab, %bb.as, %bb.bd, %bb.n, %bb.bz, %bb.an, %bb.ae, %bb.r, %bb.cn, %bb.ck, %.thread256
  %.0171272 = phi ptr [ %.0171, %bb.cn ], [ %.0171, %.thread256 ], [ %.0171, %bb.ck ], [ %.0.i, %bb.r ], [ %.0.i, %bb.ae ], [ %.0.i, %bb.an ], [ %.0.i, %bb.bz ], [ %.0.i, %bb.n ], [ %.0.i, %bb.bd ], [ %.0.i, %bb.as ], [ %.0.i, %bb.ab ], [ %.0.i, %bb.y ], [ %.0.i, %bb.ak ], [ %.0.i, %bb.ax ], [ %.0.i, %bb.ba ] ; 2 uses
  %.14271 = phi ptr [ %.14, %bb.cn ], [ null, %.thread256 ], [ %.14, %bb.ck ], [ null, %bb.r ], [ null, %bb.ae ], [ null, %bb.an ], [ null, %bb.bz ], [ null, %bb.n ], [ null, %bb.bd ], [ null, %bb.as ], [ null, %bb.ab ], [ null, %bb.y ], [ null, %bb.ak ], [ null, %bb.ax ], [ null, %bb.ba ]
  %i.jf = load ptr, ptr %i.am, align 8, !tbaa !118 ; 2 uses
  %.not243 = icmp eq ptr %i.jf, null
  br i1 %.not243, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %autoMemoryAdd.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 68 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !153
  %i.ji = add nsw i32 %i.jh, -1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !153
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %autoMemoryAdd.exit
  %.not244 = icmp eq ptr %.0171272, null
  br i1 %.not244, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @moduleReleaseTempClient(ptr noundef nonnull %.0171272)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %.14271
}

declare ptr @callReplyCreateError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleCallCommandFilters(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %2 = alloca %struct.RedisModuleCommandFilterCtx, align 8 ; 8 uses
  %i.a = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !295 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !149
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @listRewind(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !297
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !293  ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !298
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !166  ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !299
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.m, align 8, !tbaa !300
  %i.n = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.o = phi ptr [ %i.z, %bb.e ], [ %i.n, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !302
  %i.t = and i32 %i.s, 1
  %.not24 = icmp eq i32 %i.t, 0
  br i1 %.not24, label %bb.d, label %bb.c

end_hunk_2
