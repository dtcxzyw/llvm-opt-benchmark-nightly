inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@time_str2mins:bb.a
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %i.a, 59
  %i.c = sdiv i32 %i.b, 60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @time_str2secs(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_is_valid_timespec.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_is_valid_timespec.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #12
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_is_valid_timespec.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %_is_valid_timespec.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %_is_valid_timespec.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i8, ptr %0, align 1                 ; 2 uses
  %.not51.i = icmp eq i8 %i.k, 0
  br i1 %.not51.i, label %_is_valid_timespec.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.l = phi i8 [ %i.r, %bb.k ], [ %i.k, %bb.f ]  ; 2 uses
  %.056.i = phi i1 [ %or.cond46.i, %bb.k ], [ false, %bb.f ]
  %.03255.i = phi i32 [ %.133.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03454.i = phi i32 [ %.135.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03653.i = phi i32 [ %.137.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03852.i = phi ptr [ %i.q, %bb.k ], [ %0, %bb.f ]
  %i.m = add i8 %i.l, -48
  %or.cond46.i = icmp ult i8 %i.m, 10             ; 2 uses
  br i1 %or.cond46.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %not..i = xor i1 %.056.i, true
  %i.n = zext i1 %not..i to i32
  %spec.select.i = add nsw i32 %.03653.i, %i.n
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  switch i8 %i.l, label %_is_valid_timespec.exit.thread [
    i8 45, label %bb.i
    i8 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %.03454.i, 1
  %.not45.i = icmp eq i32 %.03255.i, 0
  br i1 %.not45.i, label %bb.k, label %_is_valid_timespec.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.p = add nsw i32 %.03255.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.137.i = phi i32 [ %spec.select.i, %bb.g ], [ %.03653.i, %bb.j ], [ %.03653.i, %bb.i ] ; 6 uses
  %.135.i = phi i32 [ %.03454.i, %bb.g ], [ %.03454.i, %bb.j ], [ %i.o, %bb.i ] ; 3 uses
  %.133.i = phi i32 [ %.03255.i, %bb.g ], [ %i.p, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03852.i, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.k
  %.not43.i = icmp eq i32 %.137.i, 0
  br i1 %.not43.i, label %_is_valid_timespec.exit.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.s = icmp sgt i32 %.135.i, 1
  %i.t = icmp sgt i32 %.133.i, 2
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_is_valid_timespec.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not44.i = icmp eq i32 %.135.i, 0
  %i.u = icmp eq i32 %.133.i, 1                   ; 2 uses
  br i1 %.not44.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = icmp slt i32 %.137.i, 3
  %or.cond3.i = and i1 %i.v, %i.u
  br i1 %or.cond3.i, label %_is_valid_timespec.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = icmp eq i32 %.133.i, 2
  %i.x = icmp slt i32 %.137.i, 4
  %or.cond5.i = and i1 %i.x, %i.w
  br i1 %or.cond5.i, label %_is_valid_timespec.exit.thread, label %_is_valid_timespec.exit

bb.p:                                             ; preds = %bb.m
  %i.y = icmp slt i32 %.137.i, 2
  %or.cond7.i = and i1 %i.y, %i.u
  br i1 %or.cond7.i, label %_is_valid_timespec.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = icmp eq i32 %.133.i, 2
  %i.aa = icmp slt i32 %.137.i, 3
  %or.cond9.i = and i1 %i.aa, %i.z
  br i1 %or.cond9.i, label %_is_valid_timespec.exit.thread, label %_is_valid_timespec.exit

_is_valid_timespec.exit:                          ; preds = %bb.q, %bb.o
  %i.ab = tail call ptr @xstrchr(ptr noundef nonnull %0, i32 noundef 45) #12
  %.not12 = icmp eq ptr %i.ab, null
  br i1 %.not12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_is_valid_timespec.exit
  %i.ac = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = mul nsw i32 %i.ad, 86400
  %i.af = load i32, ptr %i.b, align 4
  %i.ag = mul nsw i32 %i.af, 3600
  br label %bb.v

bb.s:                                             ; preds = %_is_valid_timespec.exit
  %i.ah = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #12
  %i.ai = icmp eq i32 %i.ah, 3
  br i1 %i.ai, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = mul nsw i32 %i.aj, 3600
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.c, align 4
  store i32 %i.al, ptr %i.d, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %.sink17 = phi ptr [ %i.c, %bb.t ], [ %i.b, %bb.u ], [ %i.c, %bb.r ]
  %i.am = phi i32 [ %i.ak, %bb.t ], [ 0, %bb.u ], [ %i.ag, %bb.r ]
  %i.an = phi i32 [ 0, %bb.t ], [ 0, %bb.u ], [ %i.ae, %bb.r ]
  %i.ao = load i32, ptr %.sink17, align 4
  %i.ap = mul nsw i32 %i.ao, 60
  %i.aq = add nsw i32 %i.am, %i.an
  %i.ar = add nsw i32 %i.aq, %i.ap
  %i.as = load i32, ptr %i.d, align 4
  %i.at = add nsw i32 %i.ar, %i.as
  br label %_is_valid_timespec.exit.thread

_is_valid_timespec.exit.thread:                   ; preds = %bb.h, %bb.i, %bb.f, %bb.o, %bb.n, %bb.l, %._crit_edge.i, %bb.q, %bb.p, %bb.c, %bb.d, %bb.e, %bb.a, %bb.b, %bb.v
  %.0 = phi i32 [ -2, %bb.a ], [ %i.at, %bb.v ], [ -1, %bb.c ], [ -2, %bb.b ], [ -1, %bb.e ], [ -1, %bb.d ], [ -2, %bb.p ], [ -2, %bb.q ], [ -2, %._crit_edge.i ], [ -2, %bb.l ], [ -2, %bb.n ], [ -2, %bb.o ], [ -2, %bb.f ], [ -2, %bb.i ], [ -2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @secs2time_str(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 4294967295
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = srem i64 %0, 60                          ; 3 uses
  %i.e = sdiv i64 %0, 60
  %i.f = srem i64 %i.e, 60                        ; 3 uses
  %i.g = sdiv i64 %0, 3600
  %i.h = srem i64 %i.g, 24                        ; 3 uses
  %3 = sdiv i64 %0, 86400
  %i.i = icmp slt i64 %0, -86399
  %i.j = or i64 %i.h, %i.d
  %i.k = or i64 %i.j, %i.f
  %i.l = icmp slt i64 %i.k, 0
  %or.cond5 = or i1 %i.i, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %2 to i64
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.m, ptr noundef nonnull @.str.7) #12 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.off = add i64 %0, 86399
  %.not = icmp ult i64 %.off, 172799
  %i.o = sext i32 %2 to i64                       ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.o, ptr noundef nonnull @.str.8, i64 noundef %3, i64 noundef %i.h, i64 noundef %i.f, i64 noundef %i.d) #12 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.o, ptr noundef nonnull @.str.9, i64 noundef %i.h, i64 noundef %i.f, i64 noundef %i.d) #12 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @mins2time_str(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = icmp eq i32 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = urem i32 %0, 60
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = udiv i32 %0, 60
  %i.g = urem i32 %i.f, 24
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %.not = icmp ult i32 %0, 1440
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = udiv i32 %0, 1440
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sext i32 %2 to i64
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.k, ptr noundef nonnull @.str.8, i64 noundef %i.j, i64 noundef %i.h, i64 noundef %i.e, i64 noundef 0) #12 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = sext i32 %2 to i64
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.m, ptr noundef nonnull @.str.9, i64 noundef %i.h, i64 noundef %i.e, i64 noundef 0) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2055) i32 @_parse_time(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %struct.tm, align 8                 ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %5 = alloca %struct.tm, align 8                 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.tm, align 8                 ; 6 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.tm, align 8                 ; 10 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.tm, align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 -1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 -1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 -1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.k = tail call i32 @xstrncasecmp(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef 3) #12
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = call i64 @strtol(ptr noundef nonnull %i.l, ptr noundef nonnull %i.f, i32 noundef 10) #12 ; 2 uses
  %i.n = add i64 %i.m, -9223372036854775807
  %or.cond = icmp ult i64 %i.n, -9223372036853775807
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.p
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 1
  %.not71 = icmp eq i8 %i.q, 0
  br i1 %.not71, label %.critedge92, label %bb.d

.critedge92:                                      ; preds = %bb.c
  store i64 %i.m, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.bv

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call i64 @time(ptr noundef null) #12
  store i64 %i.r, ptr %i.a, align 8
  %i.s = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.bd, %bb.e
  %.0109 = phi i32 [ -1, %bb.e ], [ %.2111, %bb.bd ] ; 14 uses
  %.0105 = phi i32 [ -1, %bb.e ], [ %.2107, %bb.bd ] ; 11 uses
  %.0103 = phi i32 [ 0, %bb.e ], [ %.2, %bb.bd ]  ; 7 uses
  %storemerge = phi i32 [ 0, %bb.e ], [ %i.fq, %bb.bd ] ; 18 uses
  store i32 %storemerge, ptr %i.e, align 4
  %i.ae = sext i32 %storemerge to i64
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 12 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 3 uses
  switch i8 %i.ag, label %bb.g [
    i8 0, label %.critedge
    i8 10, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call ptr @__ctype_b_loc() #13      ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = sext i8 %i.ag to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %.fr = freeze i16 %i.al
  %.not77 = trunc i16 %.fr to i1
  br i1 %.not77, label %bb.bd, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.ag, label %bb.h [
    i8 84, label %bb.bd
    i8 45, label %bb.bd
  ]

bb.h:                                             ; preds = %switch.early.test
  %i.am = call i32 @xstrncasecmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.11, i64 noundef 5) #12
  %.not78 = icmp eq i32 %i.am, 0
  br i1 %.not78, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.ab, align 8
  store i32 %i.an, ptr %i.b, align 4
  %i.ao = load i32, ptr %i.ac, align 4
  store i32 %i.ao, ptr %i.c, align 4
  %i.ap = load i32, ptr %i.ad, align 4
  store i32 %i.ap, ptr %i.d, align 4
  %i.aq = add nsw i32 %storemerge, 4
  store i32 %i.aq, ptr %i.e, align 4
  br label %bb.bd

bb.j:                                             ; preds = %bb.h
  %i.ar = call i32 @xstrncasecmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.12, i64 noundef 8) #12
  %.not79 = icmp eq i32 %i.ar, 0
  br i1 %.not79, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_0
