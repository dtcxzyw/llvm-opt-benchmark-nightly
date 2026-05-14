inline.NumInlined: 103
inline.NumDeleted: 34
begin_hunk_0_@__redisAsyncFree:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !77
  tail call void %i.ez(ptr noundef %i.fb) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr null, ptr %i.ey, align 8, !tbaa !96
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !47 ; 4 uses
  %i.fe = and i32 %i.fd, 2
  %.not36 = icmp eq i32 %i.fe, 0
  br i1 %.not36, label %__redisRunDisconnectCallback.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !67
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = and i32 %i.fd, 8
  %.not37 = icmp eq i32 %i.fi, 0
  %narrow = select i1 %.not37, i1 %i.fh, i1 false
  %spec.store.select = sext i1 %narrow to i32     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !82 ; 3 uses
  %.not.i82 = icmp eq ptr %i.fk, null
  br i1 %.not.i82, label %__redisRunDisconnectCallback.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = and i32 %i.fd, 16
  %.not9.i = icmp eq i32 %i.fl, 0
  br i1 %.not9.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fm = or disjoint i32 %i.fd, 16
  store i32 %i.fm, ptr %i.fc, align 8, !tbaa !72
  tail call void %i.fk(ptr noundef nonnull %0, i32 noundef range(i32 -1, 1) %spec.store.select) #16, !inline_history !97
  %i.fn = load i32, ptr %i.fc, align 8, !tbaa !72
  %i.fo = and i32 %i.fn, -17
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !72
  br label %__redisRunDisconnectCallback.exit

bb.am:                                            ; preds = %bb.ak
  tail call void %i.fk(ptr noundef nonnull %0, i32 noundef range(i32 -1, 1) %spec.store.select) #16, !inline_history !97
  br label %__redisRunDisconnectCallback.exit

__redisRunDisconnectCallback.exit:                ; preds = %bb.am, %bb.al, %bb.aj, %bb.ai
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !98 ; 2 uses
  %.not38 = icmp eq ptr %i.fq, null
  br i1 %.not38, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %__redisRunDisconnectCallback.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !99
  tail call void %i.fq(ptr noundef %i.fs) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %__redisRunDisconnectCallback.exit
  tail call void @redisFree(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define void @__redisAsyncDisconnect(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.__redisAsyncCopyError.exit_crit_edge, label %bb.b

.__redisAsyncCopyError.exit_crit_edge:            ; preds = %bb.a
  %.pre = load i32, ptr inttoptr (i64 272 to ptr), align 16, !tbaa !67
  br label %__redisAsyncCopyError.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.b, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.d, ptr %i.e, align 8, !tbaa !68
  br label %__redisAsyncCopyError.exit

__redisAsyncCopyError.exit:                       ; preds = %.__redisAsyncCopyError.exit_crit_edge, %bb.b
  %i.f = phi i32 [ %.pre, %.__redisAsyncCopyError.exit_crit_edge ], [ %i.b, %bb.b ]
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %__redisAsyncCopyError.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 4 uses
  %.not.i12 = icmp eq ptr %i.i, null
  br i1 %.not.i12, label %__redisShiftCallback.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  store ptr %i.j, ptr %i.h, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = icmp eq ptr %i.i, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.k, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  tail call void %i.n(ptr noundef nonnull %i.i) #16, !inline_history !87
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisAsyncDisconnect) #17
  unreachable

bb.g:                                             ; preds = %__redisAsyncCopyError.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = or i32 %i.p, 4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !47
  br label %__redisShiftCallback.exit.thread

__redisShiftCallback.exit.thread:                 ; preds = %bb.c, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %__redisShiftCallback.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  tail call void %i.s(ptr noundef %i.u) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %__redisShiftCallback.exit.thread
  store ptr null, ptr %i.r, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !47
  %i.x = and i32 %i.w, 512
  %.not11 = icmp eq i32 %i.x, 0
  br i1 %.not11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @__redisAsyncFree(ptr noundef nonnull %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @redisAsyncDisconnect(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = and i32 %i.b, -517
  %i.d = or disjoint i32 %i.c, 4
  store i32 %i.d, ptr %i.a, align 8, !tbaa !47
  %i.e = and i32 %i.b, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %__redisAsyncDisconnect.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %__redisAsyncCopyError.exit.i, label %__redisAsyncDisconnect.exit

__redisAsyncCopyError.exit.i:                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.j, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %__redisAsyncCopyError.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  tail call void %i.o(ptr noundef %i.q) #16, !inline_history !101
  %.pre = load i32, ptr %i.a, align 8, !tbaa !47
  %i.r = and i32 %.pre, 512
  %i.s = icmp eq i32 %i.r, 0
  store ptr null, ptr %i.n, align 8, !tbaa !96
  br i1 %i.s, label %.thread, label %__redisAsyncDisconnect.exit

.thread:                                          ; preds = %__redisAsyncCopyError.exit.i, %bb.c
  tail call fastcc void @__redisAsyncFree(ptr noundef nonnull %0)
  br label %__redisAsyncDisconnect.exit

__redisAsyncDisconnect.exit:                      ; preds = %.thread, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @redisProcessCallbacks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.b = call i32 @redisGetReply(ptr noundef %0, ptr noundef nonnull %i.a) #16
  %cond127 = icmp eq i32 %i.b, 0
  br i1 %cond127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !15   ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.t = and i32 %i.s, 4
  %.not34 = icmp eq i32 %i.t, 0
  br i1 %.not34, label %__redisAsyncDisconnect.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.y, 7
  switch i32 %i.z, label %hi_sdslen.exit.thread [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i32 %i.y, 3
  %i.ab = zext nneg i32 %i.aa to i64
  br label %hi_sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i64
  br label %hi_sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -5
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !103
  %i.ah = zext i16 %i.ag to i64
  br label %hi_sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 -9
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !6
  %i.ak = zext i32 %i.aj to i64
  br label %hi_sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds i8, ptr %i.v, i64 -17
  %i.am = load i64, ptr %i.al, align 1, !tbaa !105
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.am, %bb.i ], [ %i.ab, %bb.e ], [ %i.ae, %bb.f ], [ %i.ah, %bb.g ], [ %i.ak, %bb.h ]
  %i.an = icmp eq i64 %.0.i, 0
  br i1 %i.an, label %hi_sdslen.exit.thread, label %__redisAsyncDisconnect.exit

hi_sdslen.exit.thread:                            ; preds = %bb.d, %hi_sdslen.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %__redisAsyncCopyError.exit.i, label %__redisAsyncDisconnect.exit

__redisAsyncCopyError.exit.i:                     ; preds = %hi_sdslen.exit.thread
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !66  ; 2 uses
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !67
  store ptr %i.m, ptr %i.n, align 8, !tbaa !68
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %__redisShiftCallback.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %__redisAsyncCopyError.exit.i
  store i32 %i.s, ptr %i.c, align 8, !tbaa !47
  br label %__redisShiftCallback.exit.thread.i

__redisShiftCallback.exit.thread.i:               ; preds = %__redisAsyncCopyError.exit.i, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %__redisShiftCallback.exit.thread.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !77
  call void %i.at(ptr noundef %i.av) #16, !inline_history !101
  %.pre147 = load i32, ptr %i.c, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %__redisShiftCallback.exit.thread.i
  %i.aw = phi i32 [ %.pre147, %bb.k ], [ %i.s, %__redisShiftCallback.exit.thread.i ]
  store ptr null, ptr %i.as, align 8, !tbaa !96
  %i.ax = and i32 %i.aw, 512
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %__redisAsyncDisconnect.exit.sink.split, label %__redisAsyncDisconnect.exit

bb.m:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !106 ; 3 uses
  %i.az = icmp eq i32 %i.ay, 12
  br i1 %i.az, label %bb.n, label %redisIsSubscribeReply.exit.thread90

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.bb = or i32 %i.ba, 256
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !111
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %redisIsSubscribeReply.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !113 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !106
  %.not.i36 = icmp eq i32 %i.bi, 1
  br i1 %.not.i36, label %bb.p, label %redisIsSubscribeReply.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !115 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 7
  br i1 %i.bl, label %redisIsSubscribeReply.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call ptr @__ctype_tolower_loc() #18
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !118 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !6
  %i.bu = icmp eq i32 %i.bt, 112
  %i.bv = zext i1 %i.bu to i64                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bv ; 3 uses
  %i.bx = sub nuw i64 %i.bk, %i.bv                ; 3 uses
  %i.by = call i32 @strncasecmp(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.7, i64 noundef %i.bx) #19
  %.not17.i = icmp eq i32 %i.by, 0
  br i1 %.not17.i, label %redisIsSubscribeReply.exit.thread90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = call i32 @strncasecmp(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.8, i64 noundef %i.bx) #19
  %.not18.i = icmp eq i32 %i.bz, 0
  br i1 %.not18.i, label %redisIsSubscribeReply.exit.thread90, label %redisIsSubscribeReply.exit

redisIsSubscribeReply.exit:                       ; preds = %bb.r
  %i.ca = call i32 @strncasecmp(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.9, i64 noundef %i.bx) #19
  %.not19.i.not = icmp eq i32 %i.ca, 0
  br i1 %.not19.i.not, label %redisIsSubscribeReply.exit.thread90, label %redisIsSubscribeReply.exit.thread

redisIsSubscribeReply.exit.thread:                ; preds = %bb.o, %bb.p, %bb.n, %redisIsSubscribeReply.exit
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !65  ; 2 uses
  %.not.i38 = icmp eq ptr %i.cb, null
  br i1 %.not.i38, label %__redisRunPushCallback.exit, label %bb.s

bb.s:                                             ; preds = %redisIsSubscribeReply.exit.thread
  %i.cc = or i32 %i.ba, 272
  store i32 %i.cc, ptr %i.c, align 8, !tbaa !72
  call void %i.cb(ptr noundef nonnull %0, ptr noundef nonnull %i.q) #16, !inline_history !119
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !72
  %i.ce = and i32 %i.cd, -17
  store i32 %i.ce, ptr %i.c, align 8, !tbaa !72
  %.pre146 = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %__redisRunPushCallback.exit

__redisRunPushCallback.exit:                      ; preds = %redisIsSubscribeReply.exit.thread, %bb.s
  %i.cf = phi ptr [ %i.q, %redisIsSubscribeReply.exit.thread ], [ %.pre146, %bb.s ]
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 200
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !125
  call void %i.ck(ptr noundef %i.cf) #16
  br label %.backedge

.backedge:                                        ; preds = %bb.cd, %bb.ce, %bb.cj, %__redisRunPushCallback.exit
end_hunk_0
begin_hunk_1_@redisProcessCallbacks:bb.a
bb.au:                                            ; preds = %dictFind.exit.thread.i
  %i.gk = call i32 @strcasecmp(ptr noundef nonnull %i.ge, ptr noundef nonnull @.str.9) #19
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.av, label %bb.bw

bb.av:                                            ; preds = %bb.au
  %i.gm = icmp eq ptr %.048.i, null
  br i1 %i.gm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gn = load i32, ptr %i.h, align 8, !tbaa !63
  %i.go = add nsw i32 %i.gn, -1
  store i32 %i.go, ptr %i.h, align 8, !tbaa !63
  br label %dictDelete.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.gp = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !135
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.ay, label %dictDelete.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.gs = getelementptr inbounds nuw i8, ptr %.046.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !32
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %dictDelete.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gv = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 5 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !129
  %i.gy = call i32 %i.gx(ptr noundef %.047.i) #16, !inline_history !136
  %i.gz = getelementptr inbounds nuw i8, ptr %.046.i, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !131
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i32 %i.gy, %i.hb
  %i.hd = load ptr, ptr %.046.i, align 8, !tbaa !22 ; 2 uses
  %i.he = zext i32 %i.hc to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  %.03244.i.i = load ptr, ptr %i.hf, align 8, !tbaa !34 ; 5 uses
  %.not45.i.i = icmp eq ptr %.03244.i.i, null
  br i1 %.not45.i.i, label %dictDelete.exit.i, label %.lr.ph.i53.i

.lr.ph.i53.i:                                     ; preds = %bb.az
  %i.hg = getelementptr inbounds nuw i8, ptr %.046.i, i64 40 ; 3 uses
  %i.hh = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !132
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %.lr.ph.split.us.i56.i, label %.lr.ph.split.i54.i

.lr.ph.split.us.i56.i:                            ; preds = %.lr.ph.i53.i
  %i.hl = load ptr, ptr %.03244.i.i, align 8, !tbaa !40
  %i.hm = icmp eq ptr %.047.i, %i.hl
  br i1 %i.hm, label %.split.us.thread.i.i, label %.lr.ph50.i.i

bb.ba:                                            ; preds = %.lr.ph50.i.i
  %i.hn = load ptr, ptr %.032.us.i.i, align 8, !tbaa !40
  %i.ho = icmp eq ptr %.047.i, %i.hn
  br i1 %i.ho, label %.split.us.thread66.i.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph.split.us.i56.i, %bb.ba
  %.03247.us49.i.i = phi ptr [ %.032.us.i.i, %bb.ba ], [ %.03244.i.i, %.lr.ph.split.us.i56.i ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.03247.us49.i.i, i64 16
  %.032.us.i.i = load ptr, ptr %i.hp, align 8, !tbaa !34 ; 4 uses
  %.not.us.i57.i = icmp eq ptr %.032.us.i.i, null
  br i1 %.not.us.i57.i, label %dictDelete.exit.i, label %bb.ba

.lr.ph.split.i54.i:                               ; preds = %.lr.ph.i53.i, %bb.bi
  %.03247.i.i = phi ptr [ %.032.i.i, %bb.bi ], [ %.03244.i.i, %.lr.ph.i53.i ] ; 6 uses
  %.046.i.i = phi ptr [ %.03247.i.i, %bb.bi ], [ null, %.lr.ph.i53.i ] ; 2 uses
  %i.hq = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !132 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.hs, null
  br i1 %.not37.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.split.i54.i
  %i.ht = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.hu = load ptr, ptr %.03247.i.i, align 8, !tbaa !40
  %i.hv = call i32 %i.hs(ptr noundef %i.ht, ptr noundef %.047.i, ptr noundef %i.hu) #16, !inline_history !136
  %.not38.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not38.i.i, label %bb.bi, label %.split.us.i.i

bb.bc:                                            ; preds = %.lr.ph.split.i54.i
  %i.hw = load ptr, ptr %.03247.i.i, align 8, !tbaa !40
  %i.hx = icmp eq ptr %.047.i, %i.hw
  br i1 %i.hx, label %.split.us.i.i, label %bb.bi

.split.us.i.i:                                    ; preds = %bb.bc, %bb.bb
  %.not39.i.i = icmp eq ptr %.046.i.i, null
  br i1 %.not39.i.i, label %.split.us.i..split.us.thread.i_crit_edge.i, label %.split.us.thread66.i.i

.split.us.i..split.us.thread.i_crit_edge.i:       ; preds = %.split.us.i.i
  %.pre.i51 = load ptr, ptr %.046.i, align 8, !tbaa !22
  br label %.split.us.thread.i.i

.split.us.thread66.i.i:                           ; preds = %bb.ba, %.split.us.i.i
  %.us-phi4871.i.i = phi ptr [ %.03247.i.i, %.split.us.i.i ], [ %.032.us.i.i, %bb.ba ] ; 2 uses
  %.us-phi70.i.i = phi ptr [ %.046.i.i, %.split.us.i.i ], [ %.03247.us49.i.i, %bb.ba ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.us-phi4871.i.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !36
  %i.ia = getelementptr inbounds nuw i8, ptr %.us-phi70.i.i, i64 16
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !36
  br label %bb.bd

.split.us.thread.i.i:                             ; preds = %.split.us.i..split.us.thread.i_crit_edge.i, %.lr.ph.split.us.i56.i
  %i.ib = phi ptr [ %.pre.i51, %.split.us.i..split.us.thread.i_crit_edge.i ], [ %i.hd, %.lr.ph.split.us.i56.i ]
  %.us-phi4865.i.i = phi ptr [ %.03247.i.i, %.split.us.i..split.us.thread.i_crit_edge.i ], [ %.03244.i.i, %.lr.ph.split.us.i56.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.us-phi4865.i.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !36
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.he
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %.split.us.thread.i.i, %.split.us.thread66.i.i
  %.us-phi4864.i.i = phi ptr [ %.us-phi4865.i.i, %.split.us.thread.i.i ], [ %.us-phi4871.i.i, %.split.us.thread66.i.i ] ; 3 uses
  %i.if = load ptr, ptr %i.gv, align 8, !tbaa !28 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !38 ; 2 uses
  %.not40.i.i = icmp eq ptr %i.ih, null
  br i1 %.not40.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ii = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.ij = load ptr, ptr %.us-phi4864.i.i, align 8, !tbaa !40
  call void %i.ih(ptr noundef %i.ii, ptr noundef %i.ij) #16, !inline_history !136
  %.pre.i.i = load ptr, ptr %i.gv, align 8, !tbaa !28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ik = phi ptr [ %.pre.i.i, %bb.be ], [ %i.if, %bb.bd ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !42 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.im, null
  br i1 %.not41.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.in = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %.us-phi4864.i.i, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !43
  call void %i.im(ptr noundef %i.in, ptr noundef %i.ip) #16, !inline_history !136
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.iq(ptr noundef nonnull %.us-phi4864.i.i) #16, !inline_history !137
  %i.ir = getelementptr inbounds nuw i8, ptr %.046.i, i64 32 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !33
  %i.it = add i64 %i.is, -1
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !33
  br label %dictDelete.exit.i

bb.bi:                                            ; preds = %bb.bc, %bb.bb
  %i.iu = getelementptr inbounds nuw i8, ptr %.03247.i.i, i64 16
  %.032.i.i = load ptr, ptr %i.iu, align 8, !tbaa !34 ; 2 uses
  %.not.i55.i = icmp eq ptr %.032.i.i, null
  br i1 %.not.i55.i, label %dictDelete.exit.i, label %.lr.ph.split.i54.i, !llvm.loop !138

dictDelete.exit.i:                                ; preds = %bb.bi, %.lr.ph50.i.i, %bb.bh, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.iv = load ptr, ptr %i.dx, align 8, !tbaa !112
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !113 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !106
  %i.iz = icmp eq i32 %i.iy, 3
  br i1 %i.iz, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %dictDelete.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisGetSubscribeCallback) #17
  unreachable

bb.bk:                                            ; preds = %dictDelete.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !139
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !33
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %bb.bm, label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !33
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.jl = load i32, ptr %i.h, align 8, !tbaa !63
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.jn = load i32, ptr %i.c, align 8, !tbaa !47
  %i.jo = and i32 %i.jn, -33
  store i32 %i.jo, ptr %i.c, align 8, !tbaa !47
  %i.jp = load ptr, ptr %i.i, align 8, !tbaa !83  ; 2 uses
  %.not.i5878.i = icmp eq ptr %i.jp, null
  br i1 %.not.i5878.i, label %bb.bw, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bo, %__redisPushCallback.exit.i
  %i.jq = phi ptr [ %i.kb, %__redisPushCallback.exit.i ], [ %i.jp, %bb.bo ] ; 4 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !84
  store ptr %i.jr, ptr %i.i, align 8, !tbaa !83
  %i.js = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.jt = icmp eq ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i
  store ptr null, ptr %i.j, align 8, !tbaa !86
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i
  %.sroa.0.0.copyload = load <32 x i8>, ptr %i.jq, align 8
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.ju(ptr noundef nonnull %i.jq) #16, !inline_history !140
  %i.jv = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !19
  %i.jw = call ptr %i.jv(i64 noundef 32) #16, !inline_history !141 ; 6 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %__redisPushCallback.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store <32 x i8> %.sroa.0.0.copyload, ptr %i.jw, align 8
  store ptr null, ptr %i.jw, align 8, !tbaa !84
  %i.jy = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr %i.jw, ptr %i.d, align 8, !tbaa !83
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ka = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %.not.i60.i = icmp eq ptr %i.ka, null
  br i1 %.not.i60.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.jw, ptr %i.ka, align 8, !tbaa !84
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  store ptr %i.jw, ptr %i.e, align 8, !tbaa !86
  br label %__redisPushCallback.exit.i

__redisPushCallback.exit.i:                       ; preds = %bb.bv, %bb.bq
  %i.kb = load ptr, ptr %i.i, align 8, !tbaa !83  ; 2 uses
  %.not.i58.i = icmp eq ptr %i.kb, null
  br i1 %.not.i58.i, label %bb.bw, label %.lr.ph.i

bb.bw:                                            ; preds = %bb.bo, %__redisPushCallback.exit.i, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.au, %bb.at
  call void @hi_sdsfree(ptr noundef %.047.i) #16
  br label %__redisGetSubscribeCallback.exit

.thread.i:                                        ; preds = %bb.ag, %bb.af, %bb.ae
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !83  ; 7 uses
  %.not.i62.i = icmp eq ptr %i.kc, null
  br i1 %.not.i62.i, label %__redisGetSubscribeCallback.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %.thread.i
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !84
  store ptr %i.kd, ptr %i.i, align 8, !tbaa !83
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.kf = icmp eq ptr %i.kc, %i.ke
  br i1 %i.kf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr null, ptr %i.j, align 8, !tbaa !86
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.sroa.8.0.copyload72 = load ptr, ptr %.sroa.8.0..sroa_idx71, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i64, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.1079.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %.sroa.1079.0.copyload83 = load ptr, ptr %.sroa.1079.0..sroa_idx82, align 8
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.kh(ptr noundef nonnull %i.kc) #16, !inline_history !140
  br label %__redisGetSubscribeCallback.exit

bb.ca:                                            ; preds = %bb.ak
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.6) #16
  %i.ki = load i32, ptr %i.k, align 8, !tbaa !66
  store i32 %i.ki, ptr %i.l, align 8, !tbaa !67
  store ptr %i.m, ptr %i.n, align 8, !tbaa !68
  %.pre143 = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %__redisGetSubscribeCallback.exit.thread

__redisGetSubscribeCallback.exit:                 ; preds = %bb.bz, %bb.bw, %__redisShiftCallback.exit.thread
  %.sroa.10.sroa.0.1 = phi i64 [ %i.kg, %bb.bz ], [ %.sroa.10.sroa.0.0, %bb.bw ], [ %i.cq, %__redisShiftCallback.exit.thread ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload72, %bb.bz ], [ %.sroa.8.2, %bb.bw ], [ %.sroa.8.0.copyload, %__redisShiftCallback.exit.thread ] ; 3 uses
  %.sroa.1079.0 = phi ptr [ %.sroa.1079.0.copyload83, %bb.bz ], [ %.sroa.1079.2, %bb.bw ], [ %.sroa.1079.0.copyload, %__redisShiftCallback.exit.thread ] ; 3 uses
  %.not30 = icmp eq ptr %.sroa.8.0, null
  %.pre144 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  br i1 %.not30, label %__redisGetSubscribeCallback.exit.thread, label %__redisRunCallback.exit

__redisRunCallback.exit:                          ; preds = %__redisGetSubscribeCallback.exit
  %i.kj = load i32, ptr %i.c, align 8, !tbaa !47
  %i.kk = or i32 %i.kj, 16
  store i32 %i.kk, ptr %i.c, align 8, !tbaa !47
  call void %.sroa.8.0(ptr noundef %0, ptr noundef %.pre144, ptr noundef %.sroa.1079.0) #16, !inline_history !88
  %i.kl = load i32, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.km = and i32 %i.kl, -17                      ; 2 uses
  store i32 %i.km, ptr %i.c, align 8, !tbaa !47
  %i.kn = and i32 %i.kl, 1024
  %.not31 = icmp eq i32 %i.kn, 0
  br i1 %.not31, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %__redisRunCallback.exit
  %i.ko = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 200
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !121
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !125
  %i.kt = load ptr, ptr %i.a, align 8, !tbaa !15
  call void %i.ks(ptr noundef %i.kt) #16
  %.pre = load i32, ptr %i.c, align 8, !tbaa !47
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %__redisRunCallback.exit
  %i.ku = phi i32 [ %.pre, %bb.cb ], [ %i.km, %__redisRunCallback.exit ] ; 2 uses
  %i.kv = and i32 %i.ku, 8
  %.not32 = icmp eq i32 %i.kv, 0
  br i1 %.not32, label %bb.cd, label %__redisAsyncDisconnect.exit.sink.split

__redisGetSubscribeCallback.exit.thread:          ; preds = %bb.ca, %.thread.i, %__redisGetSubscribeCallback.exit
  %i.kw = phi ptr [ %i.q, %.thread.i ], [ %.pre144, %__redisGetSubscribeCallback.exit ], [ %.pre143, %bb.ca ]
  %.sroa.10.sroa.0.2 = phi i64 [ 0, %.thread.i ], [ %.sroa.10.sroa.0.1, %__redisGetSubscribeCallback.exit ], [ 0, %bb.ca ]
  %.sroa.1079.0107 = phi ptr [ null, %.thread.i ], [ %.sroa.1079.0, %__redisGetSubscribeCallback.exit ], [ null, %bb.ca ]
  %i.kx = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 200
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !121
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !125
  call void %i.lb(ptr noundef %i.kw) #16
  %.pre145 = load i32, ptr %i.c, align 8, !tbaa !47
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %__redisGetSubscribeCallback.exit.thread
  %i.lc = phi i32 [ %.pre145, %__redisGetSubscribeCallback.exit.thread ], [ %i.ku, %bb.cc ]
  %.sroa.10.sroa.0.3 = phi i64 [ %.sroa.10.sroa.0.2, %__redisGetSubscribeCallback.exit.thread ], [ %.sroa.10.sroa.0.1, %bb.cc ]
  %.sroa.1079.0106 = phi ptr [ %.sroa.1079.0107, %__redisGetSubscribeCallback.exit.thread ], [ %.sroa.1079.0, %bb.cc ]
  %.sroa.8.0104 = phi ptr [ null, %__redisGetSubscribeCallback.exit.thread ], [ %.sroa.8.0, %bb.cc ]
  %i.ld = and i32 %i.lc, 64
  %.not33 = icmp eq i32 %i.ld, 0
  br i1 %.not33, label %.backedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.le = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !19
  %i.lf = call ptr %i.le(i64 noundef 32) #16, !inline_history !142 ; 8 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %.backedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.sroa.8.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %.sroa.8.0104, ptr %.sroa.8.0..sroa_idx73, align 8
  %.sroa.10.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store i64 %.sroa.10.sroa.0.3, ptr %.sroa.10.0..sroa_idx78, align 8
  %.sroa.1079.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store ptr %.sroa.1079.0106, ptr %.sroa.1079.0..sroa_idx84, align 8
  store ptr null, ptr %i.lf, align 8, !tbaa !84
  %i.lh = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.lf, ptr %i.d, align 8, !tbaa !83
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.lj = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %.not.i55 = icmp eq ptr %i.lj, null
  br i1 %.not.i55, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.lf, ptr %i.lj, align 8, !tbaa !84
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr %i.lf, ptr %i.e, align 8, !tbaa !86
  br label %.backedge

._crit_edge:                                      ; preds = %bb.a
  %.not.i.i57 = icmp eq ptr %0, null
  br i1 %.not.i.i57, label %.__redisAsyncCopyError.exit_crit_edge.i63, label %._crit_edge.thread

.__redisAsyncCopyError.exit_crit_edge.i63:        ; preds = %._crit_edge
  %.pre.i64 = load i32, ptr inttoptr (i64 272 to ptr), align 16, !tbaa !67
  br label %__redisAsyncCopyError.exit.i58

._crit_edge.thread:                               ; preds = %.backedge, %._crit_edge
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !66 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !67
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !68
  br label %__redisAsyncCopyError.exit.i58

__redisAsyncCopyError.exit.i58:                   ; preds = %._crit_edge.thread, %.__redisAsyncCopyError.exit_crit_edge.i63
  %i.lp = phi i32 [ %.pre.i64, %.__redisAsyncCopyError.exit_crit_edge.i63 ], [ %i.ll, %._crit_edge.thread ]
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %__redisAsyncCopyError.exit.i58
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !83 ; 4 uses
  %.not.i12.i62 = icmp eq ptr %i.ls, null
  br i1 %.not.i12.i62, label %__redisShiftCallback.exit.thread.i59, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !84
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !83
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !86
  %i.lw = icmp eq ptr %i.ls, %i.lv
  br i1 %i.lw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store ptr null, ptr %i.lu, align 8, !tbaa !86
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.lx(ptr noundef nonnull %i.ls) #16, !inline_history !127
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisAsyncDisconnect) #17
  unreachable

bb.co:                                            ; preds = %__redisAsyncCopyError.exit.i58
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !47
  %i.ma = or i32 %i.lz, 4
  store i32 %i.ma, ptr %i.ly, align 8, !tbaa !47
  br label %__redisShiftCallback.exit.thread.i59

__redisShiftCallback.exit.thread.i59:             ; preds = %bb.co, %bb.ck
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !96 ; 2 uses
  %.not.i60 = icmp eq ptr %i.mc, null
  br i1 %.not.i60, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %__redisShiftCallback.exit.thread.i59
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !77
  call void %i.mc(ptr noundef %i.me) #16, !inline_history !101
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %__redisShiftCallback.exit.thread.i59
  store ptr null, ptr %i.mb, align 8, !tbaa !96
end_hunk_1
