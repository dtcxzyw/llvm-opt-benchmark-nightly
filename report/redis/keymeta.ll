Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/keymeta?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@keyMetaOnRename:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89 ; 2 uses
  %.not39 = icmp eq ptr %i.aj, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = call i32 %i.aj(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #16
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.pre43 = load i64, ptr %i.a, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %i.al = phi i64 [ %.pre43, %._crit_edge ], [ %i.af, %bb.l ]
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 1, %i.am
  %i.ao = load i16, ptr %i.y, align 2, !tbaa !25
  %i.ap = trunc i32 %i.an to i16
  %i.aq = or i16 %i.ao, %i.ap
  store i16 %i.aq, ptr %i.y, align 2, !tbaa !25
  %i.ar = load i16, ptr %4, align 8, !tbaa !26
  %i.as = add i16 %i.ar, 1                        ; 2 uses
  store i16 %i.as, ptr %4, align 8, !tbaa !26
  %i.at = zext i16 %i.as to i64
  %i.au = sub nsw i64 8, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  store i64 %i.al, ptr %i.av, align 8, !tbaa !22
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !34
  store i64 %i.aw, ptr %.1, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ax = getelementptr inbounds i8, ptr %.1, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.2 = phi ptr [ %i.ax, %bb.o ], [ %.1, %bb.h ]
  %i.ay = lshr i32 %.027, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not41 = icmp eq i32 %i.ay, 0
  br i1 %.not41, label %bb.q, label %bb.h, !llvm.loop !88

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnMove(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = and i64 %i.c, 4294967296
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not30 = icmp eq i64 %i.e, -1
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !25
  %i.h = or i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 2, !tbaa !25
  %i.i = load i16, ptr %4, align 8, !tbaa !26
  %i.j = add i16 %i.i, 1                          ; 2 uses
  store i16 %i.j, ptr %4, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = zext i16 %i.j to i64
  %i.m = sub nsw i64 8, %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store i64 %i.e, ptr %i.n, align 8, !tbaa !22
  %.pre.pre = load i64, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i64 [ %.pre.pre, %bb.c ], [ %i.c, %bb.b ]
  %i.o = getelementptr inbounds i8, ptr %0, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = phi i64 [ %.pre, %bb.d ], [ %i.c, %bb.a ]
  %.025 = phi ptr [ %i.o, %bb.d ], [ %i.b, %bb.a ]
  %sum.shift = lshr i64 %i.p, 33
  %i.q = trunc nuw nsw i64 %sum.shift to i32
  %i.r = and i32 %i.q, 127                        ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.q, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %1, ptr %5, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %2, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %3, ptr %i.v, align 4, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %.2, %bb.o ], [ %.025, %bb.f ]  ; 4 uses
  %.024 = phi i32 [ %i.aw, %bb.o ], [ %i.r, %bb.f ] ; 2 uses
  %i.y = and i32 %.024, 1
  %.not31 = icmp eq i32 %i.y, 0
  br i1 %.not31, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 264) #16
  call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ad = load i64, ptr %.1, align 8, !tbaa !22   ; 3 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %.not32 = icmp eq i64 %i.ad, %i.af
  br i1 %.not32, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 2 uses
  %.not33 = icmp eq ptr %i.ah, null
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = call i32 %i.ah(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #16
  %.not34 = icmp eq i32 %i.ai, 0
  br i1 %.not34, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre37 = load i64, ptr %i.a, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.k
  %i.aj = phi i64 [ %.pre37, %._crit_edge ], [ %i.ad, %bb.k ]
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = load i16, ptr %i.w, align 2, !tbaa !25
  %i.an = trunc i32 %i.al to i16
  %i.ao = or i16 %i.am, %i.an
  store i16 %i.ao, ptr %i.w, align 2, !tbaa !25
  %i.ap = load i16, ptr %4, align 8, !tbaa !26
  %i.aq = add i16 %i.ap, 1                        ; 2 uses
  store i16 %i.aq, ptr %4, align 8, !tbaa !26
  %i.ar = zext i16 %i.aq to i64
  %i.as = sub nsw i64 8, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.as
  store i64 %i.aj, ptr %i.at, align 8, !tbaa !22
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !34
  store i64 %i.au, ptr %.1, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.av = getelementptr inbounds i8, ptr %.1, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.2 = phi ptr [ %i.av, %bb.n ], [ %.1, %bb.g ]
  %i.aw = lshr i32 %.024, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not35 = icmp eq i32 %i.aw, 0
  br i1 %.not35, label %bb.p, label %bb.g, !llvm.loop !90

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnUnlink(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %4 = lshr i64 %i.a, 29
  %5 = and i64 %4, 8
  %spec.select.v = xor i64 %5, -8
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not24 = icmp eq ptr %0, null
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ -1, %bb.b ]
  store i32 %i.i, ptr %i.f, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.j, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 1, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.l ], [ %spec.select, %bb.d ] ; 4 uses
  %.018 = phi i32 [ %i.v, %bb.l ], [ %i.c, %bb.d ] ; 2 uses
  %i.k = and i32 %.018, 1
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 308) #16
  call void @abort() #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = load i64, ptr %.1, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34
  %.not26 = icmp eq i64 %i.p, %i.r
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93   ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.t(ptr noundef nonnull %3, ptr noundef nonnull %.1) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.u = getelementptr inbounds i8, ptr %.1, i64 -8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.2 = phi ptr [ %i.u, %bb.k ], [ %.1, %bb.e ]
  %i.v = lshr i32 %.018, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.m, label %bb.e, !llvm.loop !92

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnFree(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %1 = lshr i64 %i.a, 29
  %2 = and i64 %1, 8
  %spec.select.v = xor i64 %2, -8
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v
  %i.e = tail call ptr @kvobjGetKey(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.i ], [ %spec.select, %bb.b ] ; 3 uses
  %.017 = phi i32 [ %i.q, %bb.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = and i32 %.017, 1
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 347) #16
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %.1, i64 -8 ; 3 uses
  %i.l = load i64, ptr %.1, align 8, !tbaa !22    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %.not24 = icmp eq i64 %i.l, %i.n
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.p(ptr noundef %i.e, i64 noundef %i.l) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.c
  %.2 = phi ptr [ %.1, %bb.c ], [ %i.k, %bb.h ], [ %i.k, %bb.g ], [ %i.k, %bb.f ]
  %i.q = lshr i32 %.017, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %.loopexit, label %bb.c, !llvm.loop !94

.loopexit:                                        ; preds = %bb.i, %bb.a
  ret void
}

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaSpecCleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !25   ; 2 uses
  %.not25 = icmp eq i16 %i.d, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = zext i16 %i.d to i32
  %i.f = zext i16 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = sub nsw i64 8, %i.f
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  store i16 0, ptr %0, align 8, !tbaa !26
  store i16 0, ptr %i.c, align 2, !tbaa !25
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01926 = phi i32 [ %i.e, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.01926, i1 true) ; 2 uses
  %i.j = xor i32 %i.i, 31
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %.not23 = icmp eq i64 %i.l, %i.s
  br i1 %.not23, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.u(ptr noundef null, i64 noundef %i.l) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.v = lshr exact i32 -2147483648, %i.i
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.01926, %i.w                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !0

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadSkipMetaIfAllowed(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !95
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !13
  store ptr %0, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %2, 1
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !13 ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !13
  %i.e = icmp slt i32 %i.c, 1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.g = icmp sgt i32 %i.f, 2
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call ptr @rdbLoadCheckModuleValue(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef %1) #16
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  tail call void @decrRefCount(ptr noundef nonnull %i.h) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.h
  %.1 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.k ]
  ret i32 %.1
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @rdbLoadCheckModuleValue(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @decrRefCount(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadKeyMetadata(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 15 uses
  %i.c = alloca i32, align 4                      ; 6 uses
end_hunk_0
begin_hunk_1_@rdbSaveKeyMetadata:bb.a
bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %.not53 = icmp eq ptr %i.ab, null
  br i1 %.not53, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !84
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !13
  %i.ae = call i64 @rdbWriteRaw(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef 4) #16
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %.thread67.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.ah = call fastcc i64 @sdslen(ptr noundef %i.ag) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %4, ptr %i.k, align 8, !tbaa !76
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !77
  store i64 0, ptr %5, align 8, !tbaa !78
  store i32 0, ptr %i.m, align 8, !tbaa !79
  store ptr %1, ptr %i.n, align 8, !tbaa !80
  store i32 %3, ptr %i.o, align 8, !tbaa !81
  store ptr null, ptr %i.p, align 8, !tbaa !82
  store ptr null, ptr %i.q, align 8, !tbaa !83
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !107
  call void %i.aj(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %.138) #16
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %.not54 = icmp eq ptr %i.ak, null
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @moduleFreeContext(ptr noundef nonnull %i.ak) #16
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !82
  call void @zfree(ptr noundef %i.al) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load i32, ptr %i.m, align 8, !tbaa !79
  %.not55 = icmp eq i32 %i.am, 0
  br i1 %.not55, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.ao = call fastcc i64 @sdslen(ptr noundef %i.an)
  %i.ap = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = call i32 @rdbSaveLen(ptr noundef nonnull %4, i64 noundef 0) #16
  %i.ar = icmp eq i32 %i.aq, -1
  %i.as = add nsw i32 %.036, 1
  br i1 %i.ar, label %select.unfold, label %.thread62

bb.n:                                             ; preds = %bb.l
  %i.at = add i64 %i.ah, -4                       ; 2 uses
  call void @sdssubstr(ptr noundef %i.an, i64 noundef 0, i64 noundef %i.at) #16
  store i64 %i.at, ptr %i.r, align 8, !tbaa !14
  br label %.thread62

.thread62:                                        ; preds = %bb.m, %bb.n
  %.3.ph = phi i32 [ %.036, %bb.n ], [ %i.as, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

select.unfold:                                    ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread67.sink.split

bb.o:                                             ; preds = %bb.f, %bb.g, %.thread62
  %.5 = phi i32 [ %.3.ph, %.thread62 ], [ %.036, %bb.g ], [ %.036, %bb.f ]
  %i.au = getelementptr inbounds i8, ptr %.138, i64 -8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.340 = phi ptr [ %i.au, %bb.o ], [ %.138, %bb.c ]
  %.7 = phi i32 [ %.5, %bb.o ], [ %.036, %bb.c ]  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.av = lshr i32 %.0, 1                         ; 2 uses
  %.not56 = icmp eq i32 %i.av, 0
  br i1 %.not56, label %bb.q, label %bb.c, !llvm.loop !106

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp eq i32 %.7, 0
  br i1 %i.aw, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = call i32 @rdbSaveType(ptr noundef %0, i8 noundef zeroext -13) #16
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %.thread67, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = sext i32 %.7 to i64
  %i.ba = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.az) #16
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %.thread67, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.bd = call fastcc i64 @sdslen(ptr noundef %i.bc)
  %i.be = call i64 @rdbWriteRaw(ptr noundef %0, ptr noundef %i.bc, i64 noundef %i.bd) #16
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %.thread67, label %bb.u

.thread67.sink.split:                             ; preds = %bb.h, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread67

.thread67:                                        ; preds = %.thread67.sink.split, %bb.r, %bb.s, %bb.t
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %.thread67
  %.045 = phi i32 [ 0, %bb.q ], [ -1, %.thread67 ], [ 0, %bb.t ]
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !14
  call void @sdsfree(ptr noundef %i.bg) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.146 = phi i32 [ %.045, %bb.u ], [ 0, %bb.a ]
  ret i32 %.146
}

declare void @rioInitWithBuffer(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sdsempty() local_unnamed_addr #6

declare i64 @rdbWriteRaw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr nofree noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !14   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !108
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @rdbSaveLen(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @sdssubstr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @sdsfree(ptr noundef) local_unnamed_addr #6

declare i32 @rdbSaveType(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaOnAof(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.RedisModuleIO, align 8      ; 11 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader, !prof !27

.preheader:                                       ; preds = %bb.a
  %5 = lshr i64 %i.a, 29
  %6 = and i64 %5, 8
  %spec.select.v = xor i64 %6, -8
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.128 = phi ptr [ %spec.select, %.preheader ], [ %.3, %bb.k ] ; 3 uses
  %.026 = phi i32 [ %i.c, %.preheader ], [ %i.aa, %bb.k ] ; 2 uses
  %i.l = and i32 %.026, 1
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 663) #16
  call void @abort() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %.128, align 8, !tbaa !22  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %.not38 = icmp eq i64 %i.q, %i.s
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110  ; 2 uses
  %.not39 = icmp eq ptr %i.u, null
  br i1 %.not39, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !76
  store ptr %i.v, ptr %i.f, align 8, !tbaa !77
  store i64 0, ptr %4, align 8, !tbaa !78
  store i32 0, ptr %i.g, align 8, !tbaa !79
  store ptr %1, ptr %i.h, align 8, !tbaa !80
  store i32 %3, ptr %i.i, align 8, !tbaa !81
  store ptr null, ptr %i.j, align 8, !tbaa !82
  store ptr null, ptr %i.k, align 8, !tbaa !83
  call void %i.u(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef %i.q) #16
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !82   ; 2 uses
  %.not40 = icmp eq ptr %i.w, null
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @moduleFreeContext(ptr noundef nonnull %i.w) #16
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !82
  call void @zfree(ptr noundef %i.x) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = load i32, ptr %i.g, align 8, !tbaa !79
  %.not41 = icmp eq i32 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.not41, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.z = getelementptr inbounds i8, ptr %.128, i64 -8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.3 = phi ptr [ %i.z, %bb.j ], [ %.128, %bb.b ]
  %i.aa = lshr i32 %.026, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %.critedge, label %bb.b, !llvm.loop !109

.critedge:                                        ; preds = %bb.k, %bb.i, %bb.a
  %.6 = phi i32 [ 1, %bb.a ], [ 0, %bb.i ], [ 1, %bb.k ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaTransition(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32      ; 13 uses
  %i.c = and i32 %i.b, 127
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %2 = lshr i64 %i.e, 29
  %3 = and i64 %2, 8
  %.023.v = xor i64 %3, -8
  %.023 = getelementptr inbounds i8, ptr %1, i64 %.023.v ; 4 uses
  %4 = lshr i64 %i.a, 29
  %5 = and i64 %4, 8
  %spec.select.v = xor i64 %5, -8
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v ; 5 uses
  %sum.shift30 = lshr i64 %i.e, 33                ; 2 uses
  %i.f = trunc nuw nsw i64 %sum.shift30 to i32    ; 7 uses
  %i.g = and i32 %i.b, 1
  %.not31 = icmp eq i32 %i.g, 0
  br i1 %.not31, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.f, 1
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %spec.select, align 8, !tbaa !22
  %i.j = getelementptr inbounds i8, ptr %.023, i64 -8
  store i64 %i.i, ptr %.023, align 8, !tbaa !22
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 200), align 8, !tbaa !34
  %i.l = getelementptr inbounds i8, ptr %spec.select, i64 -8
  store i64 %i.k, ptr %spec.select, align 8, !tbaa !22
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %spec.select, i64 -8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = and i64 %sum.shift30, 1
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %.023, i64 %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.226 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %spec.select, %bb.f ] ; 5 uses
  %.2 = phi ptr [ %i.j, %bb.d ], [ %.023, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %.mask = and i32 %i.b, 126
  %.not33 = icmp eq i32 %.mask, 0
  br i1 %.not33, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = lshr i32 %i.f, 1
  %i.r = and i32 %i.b, 2
  %.not31.1 = icmp eq i32 %i.r, 0
  %i.s = and i32 %i.q, 1                          ; 2 uses
  br i1 %.not31.1, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not32.1 = icmp eq i32 %i.s, 0
  br i1 %.not32.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i64, ptr %.226, align 8, !tbaa !22
  %i.u = getelementptr inbounds i8, ptr %.2, i64 -8
  store i64 %i.t, ptr %.2, align 8, !tbaa !22
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 352), align 16, !tbaa !34
  %i.w = getelementptr inbounds i8, ptr %.226, i64 -8
  store i64 %i.v, ptr %.226, align 8, !tbaa !22
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds i8, ptr %.226, i64 -8
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.y = zext nneg i32 %i.s to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %.2, i64 %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.226.1 = phi ptr [ %i.w, %bb.j ], [ %i.x, %bb.k ], [ %.226, %bb.l ] ; 5 uses
  %.2.1 = phi ptr [ %i.u, %bb.j ], [ %.2, %bb.k ], [ %i.aa, %bb.l ] ; 4 uses
  %.mask36 = and i32 %i.b, 124
  %.not33.1 = icmp eq i32 %.mask36, 0
  br i1 %.not33.1, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = lshr i32 %i.f, 2
  %i.ac = and i32 %i.b, 4
  %.not31.2 = icmp eq i32 %i.ac, 0
  %i.ad = and i32 %i.ab, 1                        ; 2 uses
  br i1 %.not31.2, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not32.2 = icmp eq i32 %i.ad, 0
  br i1 %.not32.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %.226.1, align 8, !tbaa !22
  %i.af = getelementptr inbounds i8, ptr %.2.1, i64 -8
  store i64 %i.ae, ptr %.2.1, align 8, !tbaa !22
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 504), align 8, !tbaa !34
  %i.ah = getelementptr inbounds i8, ptr %.226.1, i64 -8
  store i64 %i.ag, ptr %.226.1, align 8, !tbaa !22
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds i8, ptr %.226.1, i64 -8
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.aj = zext nneg i32 %i.ad to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %.2.1, i64 %i.ak
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.226.2 = phi ptr [ %i.ah, %bb.p ], [ %i.ai, %bb.q ], [ %.226.1, %bb.r ] ; 5 uses
  %.2.2 = phi ptr [ %i.af, %bb.p ], [ %.2.1, %bb.q ], [ %i.al, %bb.r ] ; 4 uses
  %.mask37 = and i32 %i.b, 120
  %.not33.2 = icmp eq i32 %.mask37, 0
  br i1 %.not33.2, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = lshr i32 %i.f, 3
  %i.an = and i32 %i.b, 8
  %.not31.3 = icmp eq i32 %i.an, 0
  %i.ao = and i32 %i.am, 1                        ; 2 uses
  br i1 %.not31.3, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not32.3 = icmp eq i32 %i.ao, 0
  br i1 %.not32.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = load i64, ptr %.226.2, align 8, !tbaa !22
  %i.aq = getelementptr inbounds i8, ptr %.2.2, i64 -8
  store i64 %i.ap, ptr %.2.2, align 8, !tbaa !22
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 656), align 16, !tbaa !34
  %i.as = getelementptr inbounds i8, ptr %.226.2, i64 -8
  store i64 %i.ar, ptr %.226.2, align 8, !tbaa !22
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds i8, ptr %.226.2, i64 -8
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.au = zext nneg i32 %i.ao to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %.2.2, i64 %i.av
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.226.3 = phi ptr [ %i.as, %bb.v ], [ %i.at, %bb.w ], [ %.226.2, %bb.x ] ; 5 uses
  %.2.3 = phi ptr [ %i.aq, %bb.v ], [ %.2.2, %bb.w ], [ %i.aw, %bb.x ] ; 4 uses
  %.mask38 = and i32 %i.b, 112
  %.not33.3 = icmp eq i32 %.mask38, 0
  br i1 %.not33.3, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = lshr i32 %i.f, 4
  %i.ay = and i32 %i.b, 16
  %.not31.4 = icmp eq i32 %i.ay, 0
  %i.az = and i32 %i.ax, 1                        ; 2 uses
  br i1 %.not31.4, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not32.4 = icmp eq i32 %i.az, 0
  br i1 %.not32.4, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = load i64, ptr %.226.3, align 8, !tbaa !22
  %i.bb = getelementptr inbounds i8, ptr %.2.3, i64 -8
  store i64 %i.ba, ptr %.2.3, align 8, !tbaa !22
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 808), align 8, !tbaa !34
  %i.bd = getelementptr inbounds i8, ptr %.226.3, i64 -8
  store i64 %i.bc, ptr %.226.3, align 8, !tbaa !22
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.be = getelementptr inbounds i8, ptr %.226.3, i64 -8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.bf = zext nneg i32 %i.az to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %.2.3, i64 %i.bg
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.226.4 = phi ptr [ %i.bd, %bb.ab ], [ %i.be, %bb.ac ], [ %.226.3, %bb.ad ] ; 5 uses
  %.2.4 = phi ptr [ %i.bb, %bb.ab ], [ %.2.3, %bb.ac ], [ %i.bh, %bb.ad ] ; 4 uses
  %.mask39 = and i32 %i.b, 96
  %.not33.4 = icmp eq i32 %.mask39, 0
  br i1 %.not33.4, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = lshr i32 %i.f, 5
  %i.bj = and i32 %i.b, 32
  %.not31.5 = icmp eq i32 %i.bj, 0
  %i.bk = and i32 %i.bi, 1                        ; 2 uses
  br i1 %.not31.5, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not32.5 = icmp eq i32 %i.bk, 0
  br i1 %.not32.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bl = load i64, ptr %.226.4, align 8, !tbaa !22
  %i.bm = getelementptr inbounds i8, ptr %.2.4, i64 -8
end_hunk_1
begin_hunk_2_@keyMetaSetMetadata:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 795) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.m = and i32 %i.l, %i.k
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %2) #16
  store i64 %3, ptr %i.n, align 8, !tbaa !22
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.o = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #16 ; 4 uses
  %i.p = tail call i32 @getKeySlot(ptr noundef %i.o) #16 ; 7 uses
  %i.q = load i64, ptr %1, align 8
  %i.r = and i64 %i.q, 15
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116
  %i.v = tail call i64 @estoreRemove(ptr noundef %i.u, i32 noundef %i.p, ptr noundef nonnull %1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.050 = phi i64 [ %i.v, %bb.g ], [ 281474976710656, %bb.f ] ; 2 uses
  %i.w = tail call i64 @kvobjGetExpire(ptr noundef nonnull %1) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.x = load ptr, ptr %0, align 8, !tbaa !117
  %i.y = tail call ptr @kvstoreDictFindLink(ptr noundef %i.x, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !119
  %.not54 = icmp eq ptr %i.y, null
  br i1 %.not54, label %bb.i, label %bb.j, !prof !120

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 827) #16
  tail call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !119
  %.not55 = icmp eq i64 %i.w, -1                  ; 2 uses
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = tail call ptr @kvstoreDictFindLink(ptr noundef %i.aa, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !119
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.l, label %bb.m, !prof !120

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 833) #16
  tail call void @abort() #17
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !122
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.ad, %bb.n ], [ 0, %bb.m ]
  %i.ae = load i64, ptr %1, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 255
  %i.ai = or i32 %i.ah, %i.l
  %i.aj = tail call ptr @kvobjSet(ptr noundef %i.o, ptr noundef nonnull %1, i32 noundef %i.ai) #16 ; 8 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !117
  call void @kvstoreDictSetAtLink(ptr noundef %i.ak, i32 noundef %i.p, ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !122
  %.not58 = icmp eq i32 %i.al, 0
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = call i64 @kvobjAllocSize(ptr noundef %i.aj) #16
  call void @updateSlotAllocSize(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %i.aj, i64 noundef %.0, i64 noundef %i.am) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = call ptr @kvobjMetaRef(ptr noundef %i.aj, i32 noundef %2) #16
  store i64 %3, ptr %i.an, align 8, !tbaa !22
  br i1 %.not55, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %i.w, ptr %i.ao, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !121
  call void @kvstoreDictSetAtLink(ptr noundef %i.aq, i32 noundef %i.p, ptr noundef %i.aj, ptr noundef nonnull %i.b, i32 noundef 0) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not60 = icmp eq i64 %.050, 281474976710656
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116
  call void @estoreAdd(ptr noundef %i.as, i32 noundef %i.p, ptr noundef %i.aj, i64 noundef %.050) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.u, %bb.e
  %.051 = phi ptr [ %i.aj, %bb.u ], [ %1, %bb.e ], [ null, %bb.c ]
  ret ptr %.051
}

declare ptr @kvobjMetaRef(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #6

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #6

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #6

declare ptr @kvobjSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @kvstoreDictSetAtLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaGetMetadata(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 864) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %1, align 8
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = shl nuw nsw i32 1, %0
  %i.k = and i32 %i.j, %i.i
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %0) #16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  store i64 %i.m, ptr %2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaResetModuleValues(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %1 = lshr i64 %i.a, 29
  %2 = and i64 %1, 8
  %spec.select.v = xor i64 %2, -8
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v ; 3 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32      ; 12 uses
  %i.c = and i32 %i.b, 1
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 200), align 8, !tbaa !34
  %i.e = getelementptr inbounds i8, ptr %spec.select, i64 -8
  store i64 %i.d, ptr %spec.select, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.2 = phi ptr [ %i.e, %bb.b ], [ %spec.select, %bb.a ] ; 3 uses
  %i.f = and i32 %i.b, 126
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.b, 2
  %.not12.1 = icmp eq i32 %i.g, 0
  br i1 %.not12.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 352), align 16, !tbaa !34
  %i.i = getelementptr inbounds i8, ptr %.2, i64 -8
  store i64 %i.h, ptr %.2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.1 = phi ptr [ %i.i, %bb.e ], [ %.2, %bb.d ] ; 3 uses
  %i.j = and i32 %i.b, 124
  %.not13.1 = icmp eq i32 %i.j, 0
  br i1 %.not13.1, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %i.b, 4
  %.not12.2 = icmp eq i32 %i.k, 0
  br i1 %.not12.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 504), align 8, !tbaa !34
  %i.m = getelementptr inbounds i8, ptr %.2.1, i64 -8
  store i64 %i.l, ptr %.2.1, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.2 = phi ptr [ %i.m, %bb.h ], [ %.2.1, %bb.g ] ; 3 uses
  %i.n = and i32 %i.b, 120
  %.not13.2 = icmp eq i32 %i.n, 0
  br i1 %.not13.2, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = and i32 %i.b, 8
  %.not12.3 = icmp eq i32 %i.o, 0
  br i1 %.not12.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 656), align 16, !tbaa !34
  %i.q = getelementptr inbounds i8, ptr %.2.2, i64 -8
  store i64 %i.p, ptr %.2.2, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.3 = phi ptr [ %i.q, %bb.k ], [ %.2.2, %bb.j ] ; 3 uses
  %i.r = and i32 %i.b, 112
  %.not13.3 = icmp eq i32 %i.r, 0
  br i1 %.not13.3, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = and i32 %i.b, 16
  %.not12.4 = icmp eq i32 %i.s, 0
  br i1 %.not12.4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 808), align 8, !tbaa !34
  %i.u = getelementptr inbounds i8, ptr %.2.3, i64 -8
  store i64 %i.t, ptr %.2.3, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.4 = phi ptr [ %i.u, %bb.n ], [ %.2.3, %bb.m ] ; 3 uses
  %i.v = and i32 %i.b, 96
  %.not13.4 = icmp eq i32 %i.v, 0
  br i1 %.not13.4, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = and i32 %i.b, 32
  %.not12.5 = icmp eq i32 %i.w, 0
  br i1 %.not12.5, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 960), align 16, !tbaa !34
  %i.y = getelementptr inbounds i8, ptr %.2.4, i64 -8
  store i64 %i.x, ptr %.2.4, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2.5 = phi ptr [ %i.y, %bb.q ], [ %.2.4, %bb.p ]
  %i.z = and i32 %i.b, 64
  %.not13.5 = icmp eq i32 %i.z, 0
  br i1 %.not13.5, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1112), align 8, !tbaa !34
  store i64 %i.aa, ptr %.2.5, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !35}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 1, !"ThinLTO", i32 0}
!8 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS11RedisModule", !15, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"ModuleEntityId", !16, i64 0, !11, i64 8, !17, i64 24}
!19 = !{!"KeyMetaClassConf", !17, i64 0, !17, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!20 = !{!"KeyMetaClass", !11, i64 0, !18, i64 8, !19, i64 40, !12, i64 144, !12, i64 148}
!21 = !{!20, !12, i64 144}
!22 = !{!17, !17, i64 0}
!23 = !{!"short", !11, i64 0}
!24 = !{!"KeyMetaSpec", !23, i64 0, !23, i64 2, !11, i64 8}
!25 = !{!24, !23, i64 2}
!26 = !{!24, !23, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"p1 _ZTS11redisObject", !15, i64 0}
!29 = !{!"RedisModuleKeyOptCtx", !28, i64 0, !28, i64 8, !12, i64 16, !12, i64 20}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!29, !12, i64 16}
!33 = !{!29, !12, i64 20}
!34 = !{!20, !17, i64 48}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTS8_kvstore", !15, i64 0}
!37 = !{!"p1 _ZTS7_estore", !15, i64 0}
!38 = !{!"p1 _ZTS4dict", !15, i64 0}
!39 = !{!"long long", !11, i64 0}
!40 = !{!"redisDb", !36, i64 0, !36, i64 8, !37, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !12, i64 72, !39, i64 80, !17, i64 88}
!41 = !{!40, !12, i64 72}
!42 = !{!20, !15, i64 88}
!43 = !{!"p1 _ZTS4_rio", !15, i64 0}
!44 = !{!"p1 omnipotent char", !15, i64 0}
!45 = !{!"any p2 pointer", !15, i64 0}
!46 = !{!"p2 omnipotent char", !45, i64 0}
!47 = !{!"p1 _ZTS7redisDb", !15, i64 0}
!48 = !{!"p1 _ZTS11aeEventLoop", !15, i64 0}
!49 = !{!"p1 _ZTS3rax", !15, i64 0}
!50 = !{!"p1 _ZTS4list", !15, i64 0}
!51 = !{!"p1 _ZTS14ConnectionType", !15, i64 0}
!52 = !{!"connListener", !11, i64 0, !12, i64 64, !46, i64 72, !12, i64 80, !12, i64 84, !51, i64 88, !15, i64 96}
!53 = !{!"p1 _ZTS6client", !15, i64 0}
end_hunk_2
