inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@commandFlagsFromString:bb.a
  %i.c = call ptr @sdssplitlen(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef nonnull %i.a) #31 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %select.unfold ] ; 3 uses
  %.05582 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2.ph, %select.unfold ] ; 23 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167  ; 22 uses
  %i.h = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.6) #35
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = or i64 %.05582, 1
  br label %select.unfold

bb.c:                                             ; preds = %.lr.ph
  %i.j = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.7) #35
  %.not56 = icmp eq i32 %i.j, 0
  br i1 %.not56, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = or i64 %.05582, 2
  br label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.l = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.8) #35
  %.not57 = icmp eq i32 %i.l, 0
  br i1 %.not57, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = or i64 %.05582, 16
  br label %select.unfold

bb.g:                                             ; preds = %bb.e
  %i.n = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.9) #35
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = or i64 %.05582, 4
  br label %select.unfold

bb.i:                                             ; preds = %bb.g
  %i.p = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.10) #35
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = or i64 %.05582, 64
  br label %select.unfold

bb.k:                                             ; preds = %bb.i
  %i.r = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.11) #35
  %.not60 = icmp eq i32 %i.r, 0
  br i1 %.not60, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = or i64 %.05582, 512
  br label %select.unfold

bb.m:                                             ; preds = %bb.k
  %i.t = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.12) #35
  %.not61 = icmp eq i32 %i.t, 0
  br i1 %.not61, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = or i64 %.05582, 32
  br label %select.unfold

bb.o:                                             ; preds = %bb.m
  %i.v = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.13) #35
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %select.unfold, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.14) #35
  %.not63 = icmp eq i32 %i.w, 0
  br i1 %.not63, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.x = or i64 %.05582, 256
  br label %select.unfold

bb.r:                                             ; preds = %bb.p
  %i.y = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.15) #35
  %.not64 = icmp eq i32 %i.y, 0
  br i1 %.not64, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.z = or i64 %.05582, 1024
  br label %select.unfold

bb.t:                                             ; preds = %bb.r
  %i.aa = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.16) #35
  %.not65 = icmp eq i32 %i.aa, 0
  br i1 %.not65, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ab = or i64 %.05582, 2048
  br label %select.unfold

bb.v:                                             ; preds = %bb.t
  %i.ac = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.17) #35
  %.not66 = icmp eq i32 %i.ac, 0
  br i1 %.not66, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ad = or i64 %.05582, 4096
  br label %select.unfold

bb.x:                                             ; preds = %bb.v
  %i.ae = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.18) #35
  %.not67 = icmp eq i32 %i.ae, 0
  br i1 %.not67, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.af = or i64 %.05582, 16384
  br label %select.unfold

bb.z:                                             ; preds = %bb.x
  %i.ag = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.19) #35
  %.not68 = icmp eq i32 %i.ag, 0
  br i1 %.not68, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ah = or i64 %.05582, 32768
  br label %select.unfold

bb.ab:                                            ; preds = %bb.z
  %i.ai = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.20) #35
  %.not69 = icmp eq i32 %i.ai, 0
  br i1 %.not69, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aj = or i64 %.05582, 65536
  br label %select.unfold

bb.ad:                                            ; preds = %bb.ab
  %i.ak = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.21) #35
  %.not70 = icmp eq i32 %i.ak, 0
  br i1 %.not70, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.al = or i64 %.05582, 2097152
  br label %select.unfold

bb.af:                                            ; preds = %bb.ad
  %i.am = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.22) #35
  %.not71 = icmp eq i32 %i.am, 0
  br i1 %.not71, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.an = or i64 %.05582, 134217728
  br label %select.unfold

bb.ah:                                            ; preds = %bb.af
  %i.ao = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.23) #35
  %.not72 = icmp eq i32 %i.ao, 0
  br i1 %.not72, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ap = or i64 %.05582, 4194304
  br label %select.unfold

bb.aj:                                            ; preds = %bb.ah
  %i.aq = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.24) #35
  %.not73 = icmp eq i32 %i.aq, 0
  br i1 %.not73, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ar = or i64 %.05582, 524288
  br label %select.unfold

bb.al:                                            ; preds = %bb.aj
  %i.as = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.25) #35
  %.not74 = icmp eq i32 %i.as, 0
  br i1 %.not74, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.at = or i64 %.05582, 67108864
  br label %select.unfold

bb.an:                                            ; preds = %bb.al
  %i.au = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.26) #35
  %.not75 = icmp eq i32 %i.au, 0
  br i1 %.not75, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.av = or i64 %.05582, 536870976
  br label %select.unfold

bb.ap:                                            ; preds = %bb.an
  %i.aw = call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.27) #35
  %.fr = freeze i32 %i.aw
  %.not76 = icmp eq i32 %.fr, 0
  %i.ax = or i64 %.05582, 268435456
  br i1 %.not76, label %select.unfold, label %._crit_edge.loopexit.split.loop.exit

select.unfold:                                    ; preds = %bb.ap, %bb.d, %bb.h, %bb.l, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.am, %bb.b, %bb.ao, %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.n, %bb.j, %bb.f
  %.2.ph = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.q, %bb.j ], [ %i.s, %bb.l ], [ %i.u, %bb.n ], [ %.05582, %bb.o ], [ %i.x, %bb.q ], [ %i.z, %bb.s ], [ %i.ab, %bb.u ], [ %i.ad, %bb.w ], [ %i.af, %bb.y ], [ %i.ah, %bb.aa ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ae ], [ %i.an, %bb.ag ], [ %i.ap, %bb.ai ], [ %i.ar, %bb.ak ], [ %i.at, %bb.am ], [ %i.av, %bb.ao ], [ %i.ax, %bb.ap ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.ap
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %select.unfold, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %i.ay, %._crit_edge.loopexit.split.loop.exit ], [ %i.d, %select.unfold ]
  %.3 = phi i64 [ 0, %bb.a ], [ %.05582, %._crit_edge.loopexit.split.loop.exit ], [ %.2.ph, %select.unfold ]
  call void @sdsfreesplitres(ptr noundef %i.c, i32 noundef %i.d) #31
  %i.az = load i32, ptr %i.a, align 4, !tbaa !9
  %.not77 = icmp eq i32 %.054.lcssa, %i.az
  %.3. = select i1 %.not77, i64 %.3, i64 -1
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
define dso_local range(i32 0, 2) i32 @RM_CreateCommand(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !169
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
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !170
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !170
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.r = tail call ptr @sdsdup(ptr noundef %i.p) #31
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #32 ; 4 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !155
  %i.u = tail call noalias dereferenceable_or_null(312) ptr @zcalloc(i64 noundef 312) #32 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !171
  store ptr %i.p, ptr %i.u, align 8, !tbaa !172
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  store ptr %i.r, ptr %i.w, align 8, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 17, ptr %i.x, align 8, !tbaa !174
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store ptr @RedisModuleCommandDispatcher, ptr %i.y, align 8, !tbaa !175
  %i.z = or i64 %i.m, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !176
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !147
  %.not.i32 = icmp eq i32 %4, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  br i1 %.not.i32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ac, align 8, !tbaa !177
  %i.ad = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #32 ; 8 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !171 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !178
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = and i64 %i.m, 2097152
  %.not40.i = icmp eq i64 %i.ah, 0
  %spec.store.select.i = select i1 %.not40.i, i64 50, i64 1074
  store i64 %spec.store.select.i, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ai, align 8, !tbaa !179
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %4, ptr %i.aj, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 2, ptr %i.ak, align 8, !tbaa !180
  %i.al = icmp slt i32 %5, 0
  %i.am = select i1 %i.al, i32 0, i32 %4
  %i.an = sub nsw i32 %5, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i32 %6, ptr %i.ap, align 8, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  store i32 0, ptr %i.aq, align 4, !tbaa !73
  br label %moduleCreateCommandProxy.exit

bb.j:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8, !tbaa !177
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store ptr null, ptr %i.ar, align 8, !tbaa !178
  br label %moduleCreateCommandProxy.exit

moduleCreateCommandProxy.exit:                    ; preds = %bb.i, %bb.j
  %i.as = phi ptr [ %i.u, %bb.j ], [ %i.ae, %bb.i ]
  tail call void @populateCommandLegacyRangeSpec(ptr noundef nonnull %i.as) #31
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !171 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %.not31 = icmp eq ptr %2, null
  %i.av = select i1 %.not31, i32 -2, i32 -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !181
  tail call void @pauseAllIOThreads() #31
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 72), align 8, !tbaa !182
  %i.ay = tail call ptr @sdsdup(ptr noundef %i.p) #31
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !171
  %i.ba = tail call i32 @dictAdd(ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %i.az) #31
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.k, !prof !60

bb.k:                                             ; preds = %moduleCreateCommandProxy.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 1303) #31
  tail call void @abort() #34
  unreachable

bb.l:                                             ; preds = %moduleCreateCommandProxy.exit
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 80), align 8, !tbaa !183
  %i.bd = tail call ptr @sdsdup(ptr noundef %i.p) #31
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !171
  %i.bf = tail call i32 @dictAdd(ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef %i.be) #31
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.m, !prof !60

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1304) #31
  tail call void @abort() #34
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @resumeAllIOThreads() #31
  %i.bh = tail call i64 @ACLGetCommandID(ptr noundef %i.p) #31
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !171
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !184
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
  store ptr %0, ptr %i.a, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !155
  %i.c = tail call noalias dereferenceable_or_null(312) ptr @zcalloc(i64 noundef 312) #32 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !171
  store ptr %1, ptr %i.c, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store ptr %2, ptr %i.e, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 17, ptr %i.f, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @RedisModuleCommandDispatcher, ptr %i.g, align 8, !tbaa !175
  %i.h = or i64 %4, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.h, ptr %i.i, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr %i.a, ptr %i.j, align 8, !tbaa !147
  %.not = icmp eq i32 %5, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
end_hunk_0
