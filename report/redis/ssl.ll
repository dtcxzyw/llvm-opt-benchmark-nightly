inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@redisSSLAsyncRead:bb.a

; Function Attrs: nounwind uwtable
define internal void @redisSSLAsyncWrite(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !55
  %i.e = call i32 @redisBufferWrite(ptr noundef %0, ptr noundef nonnull %i.a) #7
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__redisAsyncDisconnect(ptr noundef nonnull %0) #7
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !6
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.d, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  call void %i.k(ptr noundef %i.m) #7
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %i.p = and i32 %i.o, 2
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 3 uses
  %.not16.i = icmp eq ptr %i.s, null              ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not16.i, label %refreshTimeout.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 3 uses
  %.not21.i = icmp eq ptr %i.u, null
  br i1 %.not21.i, label %refreshTimeout.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %.not22.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %.not23.i = icmp eq i64 %i.x, 0
  %or.cond.i = select i1 %.not22.i, i1 %.not23.i, i1 false
  br i1 %or.cond.i, label %refreshTimeout.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !61
  call void %i.s(ptr noundef %i.y, i64 %i.v, i64 %i.x) #7, !inline_history !62
  br label %refreshTimeout.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not16.i, label %refreshTimeout.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63  ; 3 uses
  %.not17.i = icmp eq ptr %i.aa, null
  br i1 %.not17.i, label %refreshTimeout.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %.not18.i = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not19.i = icmp eq i64 %i.ad, 0
  %or.cond32.i = select i1 %.not18.i, i1 %.not19.i, i1 false
  br i1 %or.cond32.i, label %refreshTimeout.exit, label %._crit_edge24.i

._crit_edge24.i:                                  ; preds = %bb.m
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !61
  call void %i.s(ptr noundef %i.ae, i64 %i.ab, i64 %i.ad) #7, !inline_history !62
  br label %refreshTimeout.exit

refreshTimeout.exit:                              ; preds = %bb.h, %bb.i, %bb.j, %._crit_edge.i, %bb.k, %bb.l, %bb.m, %._crit_edge24.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64 ; 2 uses
  %.not25 = icmp eq ptr %i.ag, null
  br i1 %.not25, label %bb.q, label %bb.n

bb.n:                                             ; preds = %refreshTimeout.exit
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !61
  call void %i.ag(ptr noundef %i.ah) #7
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %.not27 = icmp eq ptr %i.aj, null
  br i1 %.not27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61
  call void %i.aj(ptr noundef %i.al) #7
  br label %bb.q

bb.q:                                             ; preds = %refreshTimeout.exit, %bb.n, %bb.e, %bb.f, %bb.p, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load i32, ptr %i.am, align 8, !tbaa !56
  %i.ao = and i32 %i.an, 2
  %.not.i29 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57 ; 3 uses
  %.not16.i30 = icmp eq ptr %i.ar, null           ; 2 uses
  br i1 %.not.i29, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not16.i30, label %refreshTimeout.exit41, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 3 uses
  %.not21.i31 = icmp eq ptr %i.at, null
  br i1 %.not21.i31, label %refreshTimeout.exit41, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load i64, ptr %i.at, align 8, !tbaa !59 ; 2 uses
  %.not22.i32 = icmp eq i64 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %.not23.i33 = icmp eq i64 %i.aw, 0
  %or.cond.i34 = select i1 %.not22.i32, i1 %.not23.i33, i1 false
  br i1 %or.cond.i34, label %refreshTimeout.exit41, label %._crit_edge.i35

._crit_edge.i35:                                  ; preds = %bb.t
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !61
  call void %i.ar(ptr noundef %i.ax, i64 %i.au, i64 %i.aw) #7, !inline_history !62
  br label %refreshTimeout.exit41

bb.u:                                             ; preds = %bb.q
  br i1 %.not16.i30, label %refreshTimeout.exit41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 3 uses
  %.not17.i36 = icmp eq ptr %i.az, null
  br i1 %.not17.i36, label %refreshTimeout.exit41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59 ; 2 uses
  %.not18.i37 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %.not19.i38 = icmp eq i64 %i.bc, 0
  %or.cond32.i39 = select i1 %.not18.i37, i1 %.not19.i38, i1 false
  br i1 %or.cond32.i39, label %refreshTimeout.exit41, label %._crit_edge24.i40

._crit_edge24.i40:                                ; preds = %bb.w
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !61
  call void %i.ar(ptr noundef %i.bd, i64 %i.ba, i64 %i.bc) #7, !inline_history !62
  br label %refreshTimeout.exit41

refreshTimeout.exit41:                            ; preds = %bb.r, %bb.s, %bb.t, %._crit_edge.i35, %bb.u, %bb.v, %bb.w, %._crit_edge24.i40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %.not28 = icmp eq ptr %i.bf, null
  br i1 %.not28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %refreshTimeout.exit41
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !61
  call void %i.bf(ptr noundef %i.bg) #7
  br label %bb.y

bb.y:                                             ; preds = %refreshTimeout.exit41, %bb.x, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i64 -1, 2147483648) i64 @redisSSLRead(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = trunc i64 %2 to i32
  %i.e = tail call i32 @SSL_read(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.d) #7 ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  br label %maybeCheckWant.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.e, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.14) #7
  br label %maybeCheckWant.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.j = tail call i32 @SSL_get_error(ptr noundef %i.i, i32 noundef %i.e) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__errno_location() #8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !6    ; 2 uses
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %maybeCheckWant.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i32 %i.o, 11
  %spec.store.select = select i1 %i.q, ptr @.str.15, ptr null
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %spec.store.select) #7
  br label %maybeCheckWant.exit.thread

bb.h:                                             ; preds = %bb.e
  switch i32 %i.j, label %maybeCheckWant.exit [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %3, align 8, !tbaa !54
  br label %maybeCheckWant.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 1, ptr %i.r, align 4, !tbaa !55
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit:                              ; preds = %bb.h
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #7
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit.thread:                       ; preds = %bb.j, %bb.i, %bb.g, %maybeCheckWant.exit, %bb.f, %bb.d, %bb.b
  %.1 = phi i64 [ %i.g, %bb.b ], [ -1, %bb.d ], [ -1, %maybeCheckWant.exit ], [ -1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i64 -1, 2147483648) i64 @redisSSLWrite(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 6 uses
  br i1 %.not, label %bb.b, label %hi_sdslen.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !69
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  switch i32 %i.j, label %hi_sdslen.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.i, 3
  %i.l = zext nneg i32 %i.k to i64
  br label %hi_sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !69
  %i.o = zext i8 %i.n to i64
  br label %hi_sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !70
  %i.r = zext i16 %i.q to i64
  br label %hi_sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !6
  %i.u = zext i32 %i.t to i64
  br label %hi_sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !72
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.x = phi i64 [ 0, %bb.b ], [ %i.w, %bb.g ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.u, %bb.f ], [ %i.d, %bb.a ] ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.z = trunc i64 %i.x to i32
  %i.aa = tail call i32 @SSL_write(ptr noundef %i.y, ptr noundef %i.f, i32 noundef %i.z) #7 ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %hi_sdslen.exit
  store i64 0, ptr %i.c, align 8, !tbaa !67
  br label %bb.n

bb.i:                                             ; preds = %hi_sdslen.exit
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  store i64 %i.x, ptr %i.c, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.ae = tail call i32 @SSL_get_error(ptr noundef %i.ad, i32 noundef %i.aa) #7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !45
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %maybeCheckWant.exit

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ae, label %maybeCheckWant.exit [
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %1, align 8, !tbaa !54
  br label %maybeCheckWant.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 1, ptr %i.aj, align 4, !tbaa !55
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit:                              ; preds = %bb.k, %bb.j
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #7
  br label %maybeCheckWant.exit.thread

bb.n:                                             ; preds = %bb.i, %bb.h
  %i.ak = zext nneg i32 %i.aa to i64
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit.thread:                       ; preds = %bb.m, %bb.l, %maybeCheckWant.exit, %bb.n
  %.1 = phi i64 [ %i.ak, %bb.n ], [ -1, %maybeCheckWant.exit ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i64 %.1
}

declare i32 @SSL_set_fd(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @SSL_set_connect_state(ptr noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @SSL_connect(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i64 @ERR_peek_last_error() local_unnamed_addr #1

declare ptr @ERR_reason_error_string(i64 noundef) local_unnamed_addr #1

declare i32 @redisBufferWrite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @__redisAsyncDisconnect(ptr noundef) local_unnamed_addr #1

declare i32 @redisBufferRead(ptr noundef) local_unnamed_addr #1

declare void @redisProcessCallbacks(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 8}
!11 = !{!"redisSSLContext", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTS10ssl_ctx_st", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!16, !13, i64 32}
!16 = !{!"hiredisAllocFuncs", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!17 = distinct !{null}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !14, i64 0}
!20 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40}
!21 = !{!20, !14, i64 8}
!22 = !{!20, !14, i64 16}
!23 = !{!20, !14, i64 24}
!24 = !{!20, !14, i64 32}
!25 = !{!20, !7, i64 40}
!26 = !{!16, !13, i64 8}
!27 = distinct !{null}
!28 = !{!16, !13, i64 24}
!29 = distinct !{null}
!30 = distinct !{ptr @redisFreeSSLContext, null}
!31 = !{!32, !13, i64 256}
!32 = !{!"redisContext", !33, i64 0, !7, i64 8, !8, i64 12, !7, i64 140, !7, i64 144, !14, i64 152, !34, i64 160, !7, i64 168, !35, i64 176, !35, i64 184, !36, i64 192, !37, i64 216, !38, i64 224, !39, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264}
!33 = !{!"p1 _ZTS17redisContextFuncs", !13, i64 0}
!34 = !{!"p1 _ZTS11redisReader", !13, i64 0}
!35 = !{!"p1 _ZTS7timeval", !13, i64 0}
!36 = !{!"", !14, i64 0, !14, i64 8, !7, i64 16}
!37 = !{!"", !14, i64 0}
!38 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!39 = !{!"long", !8, i64 0}
!40 = !{!32, !33, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"redisSSL", !43, i64 0, !39, i64 8, !7, i64 16, !7, i64 20}
!43 = !{!"p1 _ZTS6ssl_st", !13, i64 0}
!44 = !{!32, !7, i64 140}
!45 = !{!32, !7, i64 144}
!46 = !{!32, !7, i64 8}
!47 = !{!48, !13, i64 256}
!48 = !{!"redisAsyncContext", !32, i64 0, !7, i64 272, !14, i64 280, !13, i64 288, !13, i64 296, !49, i64 304, !13, i64 360, !13, i64 368, !13, i64 376, !50, i64 384, !38, i64 400, !39, i64 408, !52, i64 416, !13, i64 456}
!49 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!50 = !{!"redisCallbackList", !51, i64 0, !51, i64 8}
!51 = !{!"p1 _ZTS13redisCallback", !13, i64 0}
!52 = !{!"", !50, i64 0, !53, i64 16, !53, i64 24, !7, i64 32}
!53 = !{!"p1 _ZTS4dict", !13, i64 0}
!54 = !{!42, !7, i64 16}
!55 = !{!42, !7, i64 20}
!56 = !{!48, !7, i64 144}
!57 = !{!48, !13, i64 352}
!58 = !{!48, !35, i64 184}
!59 = !{!60, !39, i64 0}
!60 = !{!"timeval", !39, i64 0, !39, i64 8}
!61 = !{!48, !13, i64 304}
!62 = distinct !{null}
!63 = !{!48, !35, i64 176}
!64 = !{!48, !13, i64 328}
!65 = !{!48, !13, i64 312}
!66 = !{!48, !13, i64 336}
!67 = !{!42, !39, i64 8}
!68 = !{!32, !14, i64 152}
!69 = !{!8, !8, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !8, i64 0}
!72 = !{!39, !39, i64 0}
end_hunk_0
