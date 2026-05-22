inline.NumInlined: 55
inline.NumDeleted: 19
begin_hunk_0_@uv__udp_close:bb.a
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.e, -5
  store i32 %i.h, ptr %i.d, align 8
  %i.i = and i32 %i.e, 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not9 = icmp eq i32 %i.o, -1
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @uv__close(i32 noundef %i.o) #9 ; 0 uses
  store i32 -1, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare void @uv__io_close(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uv__close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @uv__udp_finish_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i32 @uv__io_active(ptr noundef nonnull %i.a, i32 noundef 5) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__udp_finish_close) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not1516 = icmp eq ptr %i.f, %i.g
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 72, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__udp_finish_close) #10
  unreachable

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.j = phi ptr [ %i.g, %.lr.ph ], [ %i.r, %bb.e ] ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i64 -125, ptr %i.p, align 8
  store ptr %i.h, ptr %i.j, align 8
  %i.q = load ptr, ptr %i.i, align 8              ; 2 uses
  store ptr %i.q, ptr %i.l, align 8
  store ptr %i.j, ptr %i.q, align 8
  store ptr %i.j, ptr %i.i, align 8
  %i.r = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.f, %i.r
  br i1 %.not15, label %._crit_edge, label %bb.e, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.e, %.preheader
  tail call fastcc void @uv__udp_run_completed(ptr noundef nonnull %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 85, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__udp_finish_close) #10
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__udp_finish_close) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @uv__io_active(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__udp_run_completed(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 16777216
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 99, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__udp_run_completed) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 16777216
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not4143 = icmp eq ptr %i.e, %i.f
  br i1 %.not4143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.i = phi ptr [ %i.f, %.lr.ph ], [ %i.aj, %.backedge ] ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -80
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__udp_run_completed) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.w = load i32, ptr %i.v, align 8
  %i.x = tail call i64 @uv__count_bufs(ptr noundef %i.u, i32 noundef %i.w) #9
  %i.y = load <2 x i64>, ptr %i.h, align 8
  %i.z = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.x, i64 0
  %i.aa = sub <2 x i64> %i.y, %i.z
  store <2 x i64> %i.aa, ptr %i.h, align 8
  %i.ab = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %.not40 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @uv__free(ptr noundef %i.ab) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.backedge, label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %1 = icmp sgt i64 %i.ah, -1
  %i.ai = trunc i64 %i.ah to i32
  %.sink = select i1 %1, i32 0, i32 %i.ai
  tail call void %i.ae(ptr noundef nonnull %i.o, i32 noundef %.sink) #9
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.h
  %i.aj = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not41 = icmp eq ptr %i.e, %i.aj
  br i1 %.not41, label %._crit_edge, label %bb.d, !llvm.loop !10

._crit_edge:                                      ; preds = %.backedge, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not42 = icmp eq ptr %i.ak, %i.al
  br i1 %.not42, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @uv__io_stop(ptr noundef %i.an, ptr noundef nonnull %i.ao, i32 noundef 4) #9
  %i.ap = tail call i32 @uv__io_active(ptr noundef nonnull %i.ao, i32 noundef 1) #9
  %.not37 = icmp eq i32 %i.ap, 0
  br i1 %.not37, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.a, align 8             ; 3 uses
  %i.ar = and i32 %i.aq, 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = and i32 %i.aq, -5
  store i32 %i.at, ptr %i.a, align 8
  %i.au = and i32 %i.aq, 8
  %.not38 = icmp eq i32 %i.au, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.am, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.j, %._crit_edge
  %i.az = load i32, ptr %i.a, align 8
  %i.ba = and i32 %i.az, -16777217
  store i32 %i.ba, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @uv__udp_bind(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = and i32 %3, -102
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %3, 1
  %.not40 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr %1, align 2
  %.not41 = icmp eq i16 %i.f, 10
  br i1 %.not41, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load i16, ptr %1, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = tail call i32 @uv__socket(i32 noundef %i.k, i32 noundef 2, i32 noundef 0) #9 ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.l, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.034 = phi i32 [ %i.l, %bb.f ], [ %i.h, %bb.d ] ; 6 uses
  %i.n = and i32 %3, 32
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i16, ptr %1, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 1, ptr %i.b, align 4
  switch i16 %i.o, label %uv__set_recverr.exit.thread [
    i16 2, label %bb.i
    i16 10, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = call i32 @setsockopt(i32 noundef range(i32 0, -1) %.034, i32 noundef 0, i32 noundef 11, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %.not6.i = icmp eq i32 %i.p, 0
  br i1 %.not6.i, label %uv__set_recverr.exit.thread, label %uv__set_recverr.exit

bb.j:                                             ; preds = %bb.h
  %i.q = call i32 @setsockopt(i32 noundef range(i32 0, -1) %.034, i32 noundef 41, i32 noundef 25, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %uv__set_recverr.exit.thread, label %uv__set_recverr.exit

uv__set_recverr.exit.thread:                      ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.k

uv__set_recverr.exit:                             ; preds = %bb.i, %bb.j
  %i.r = tail call ptr @__errno_location() #11
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = sub nsw i32 0, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %bb.k, label %bb.t

bb.k:                                             ; preds = %uv__set_recverr.exit.thread, %uv__set_recverr.exit, %bb.g
  %i.u = and i32 %3, 4
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 1, ptr %i.a, align 4
  %i.v = call i32 @setsockopt(i32 noundef %.034, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %.not.i49 = icmp eq i32 %i.v, 0
  br i1 %.not.i49, label %uv__sock_reuseaddr.exit.thread, label %uv__sock_reuseaddr.exit

uv__sock_reuseaddr.exit.thread:                   ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.m

uv__sock_reuseaddr.exit:                          ; preds = %bb.l
  %i.w = tail call ptr @__errno_location() #11
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not45 = icmp eq i32 %i.x, 0
  br i1 %.not45, label %bb.m, label %bb.t

bb.m:                                             ; preds = %uv__sock_reuseaddr.exit.thread, %uv__sock_reuseaddr.exit, %bb.k
  %.not46 = icmp samesign ult i32 %3, 64
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = call i32 @uv__sock_reuseport(i32 noundef %.034) #9 ; 2 uses
  %.not47 = icmp eq i32 %i.z, 0
  br i1 %.not47, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not40, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.c, align 4
  %i.aa = call i32 @setsockopt(i32 noundef %.034, i32 noundef 41, i32 noundef 26, ptr noundef nonnull %i.c, i32 noundef 4) #9
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call ptr @__errno_location() #11
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sub nsw i32 0, %i.ad
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.af = call i32 @bind(i32 noundef %.034, ptr %1, i32 noundef %2) #9
  %.not48 = icmp eq i32 %i.af, 0
  br i1 %.not48, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call ptr @__errno_location() #11
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = icmp eq i32 %i.ah, 97
  %spec.store.select = select i1 %i.aj, i32 -22, i32 %i.ai
  br label %bb.t

._crit_edge:                                      ; preds = %bb.r
  %i.ak = load i16, ptr %1, align 2
  %i.al = icmp eq i16 %i.ak, 10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = select i1 %i.al, i32 4202496, i32 8192
  %i.aq = or i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 8
  br label %bb.t

end_hunk_0
begin_hunk_1_@uv__udp_recv_stop:bb.a
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  ret i32 0
}

declare void @uv__io_stop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__udp_try_send2(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @uv__udp_sendmsgv(i32 noundef %i.b, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @uv__udp_sendmsgv(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [20 x %struct.mmsghdr], align 16    ; 5 uses
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.preheader76.preheader, label %.preheader78

.preheader76.preheader:                           ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  br label %.preheader76

.preheader78:                                     ; preds = %bb.a
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.lr.ph.split, label %.thread72

.preheader76:                                     ; preds = %.preheader76.preheader, %uv__udp_prep_pkt.exit
  %.04197 = phi i32 [ %i.ac, %uv__udp_prep_pkt.exit ], [ 0, %.preheader76.preheader ] ; 2 uses
  %.04596 = phi i32 [ %i.ad, %uv__udp_prep_pkt.exit ], [ 0, %.preheader76.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.d = zext i32 %.04596 to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.h
  %i.e = trunc nuw i64 %indvars.iv.next111 to i32
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %bb.i

bb.b:                                             ; preds = %.preheader76, %bb.h
  %indvars.iv110 = phi i64 [ %i.d, %.preheader76 ], [ %indvars.iv.next111, %bb.h ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv110
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv110
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  store ptr %i.m, ptr %i.g, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.o, align 16
  %i.p = zext i32 %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.p, ptr %i.q, align 8
  %i.r = icmp eq ptr %i.m, null
  br i1 %i.r, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i16, ptr %i.m, align 2
  switch i16 %i.s, label %uv__udp_prep_pkt.exit.thread64 [
    i16 2, label %bb.d
    i16 10, label %bb.e
    i16 1, label %bb.f
    i16 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  store i32 16, ptr %i.n, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  store i32 28, ptr %i.n, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  store i32 110, ptr %i.n, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.e, %bb.f
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next111, %i.b
  %i.u = icmp samesign ult i64 %indvars.iv, 19
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.b, label %.preheader, !llvm.loop !22

bb.i:                                             ; preds = %.preheader, %bb.j
  %i.w = call i32 @sendmmsg(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef 0) #9 ; 6 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @__errno_location() #11
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %bb.i, label %uv__udp_prep_pkt.exit.thread64, !llvm.loop !23

.critedge:                                        ; preds = %bb.i
  %i.ab = icmp slt i32 %i.w, 1
  br i1 %i.ab, label %uv__udp_prep_pkt.exit.thread64, label %uv__udp_prep_pkt.exit

uv__udp_prep_pkt.exit.thread64:                   ; preds = %.critedge, %bb.c, %bb.j
  %.1.ph = phi i32 [ -1, %bb.j ], [ -22, %bb.c ], [ %i.w, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.loopexit

uv__udp_prep_pkt.exit:                            ; preds = %.critedge
  %i.ac = add nuw nsw i32 %i.w, %.04197           ; 2 uses
  %i.ad = add i32 %i.w, %i.e                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.ae = icmp ult i32 %i.ad, %1
  br i1 %i.ae, label %.preheader76, label %.loopexit

.lr.ph.split:                                     ; preds = %.preheader78
  %i.af = load ptr, ptr %2, align 8
  %i.ag = load i32, ptr %3, align 4
  %i.ah = load ptr, ptr %4, align 8
  %i.ai = tail call fastcc i32 @uv__udp_sendmsg1(i32 noundef %0, ptr noundef %i.af, i32 noundef %i.ag, ptr noundef %i.ah) ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.thread72, label %.loopexit.thread

.loopexit:                                        ; preds = %uv__udp_prep_pkt.exit, %uv__udp_prep_pkt.exit.thread64
  %.344 = phi i32 [ %.04197, %uv__udp_prep_pkt.exit.thread64 ], [ %i.ac, %uv__udp_prep_pkt.exit ] ; 2 uses
  %.3 = phi i32 [ %.1.ph, %uv__udp_prep_pkt.exit.thread64 ], [ %i.w, %uv__udp_prep_pkt.exit ]
  %i.aj = icmp sgt i32 %.344, 0
  br i1 %i.aj, label %.thread72, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph.split, %.loopexit
  %.3121 = phi i32 [ %.3, %.loopexit ], [ %i.ai, %.lr.ph.split ] ; 2 uses
  %i.ak = icmp slt i32 %.3121, 0
  br i1 %i.ak, label %bb.k, label %.thread72

bb.k:                                             ; preds = %.loopexit.thread
  %i.al = tail call ptr @__errno_location() #11
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = sub nsw i32 0, %i.am
  switch i32 %i.am, label %.thread72 [
    i32 11, label %bb.l
    i32 105, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  br label %.thread72

.thread72:                                        ; preds = %.lr.ph.split, %.preheader78, %.loopexit.thread, %bb.l, %bb.k, %.loopexit
  %.049 = phi i32 [ %.344, %.loopexit ], [ -11, %bb.l ], [ %i.an, %bb.k ], [ %.3121, %.loopexit.thread ], [ 0, %.preheader78 ], [ 1, %.lr.ph.split ]
  ret i32 %.049
}

declare void @uv__free(ptr noundef) local_unnamed_addr #1

declare { ptr, i64 } @uv_buf_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @recvmmsg(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uv_inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uv__io_feed(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @sendmmsg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{null}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{null, null}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
end_hunk_1
