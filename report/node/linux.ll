inline.NumInlined: 107
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@maybe_free_watcher_list:bb.a
  %.3.i.i = phi ptr [ %i.et, %bb.bz ], [ %.2.i.i, %.thread.i.i ], [ %.2.i.i, %bb.bp ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 24 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 24
  store i32 %i.ev, ptr %i.ew, align 8
  store i32 0, ptr %i.eu, align 8
  %i.ex = load ptr, ptr %.3.i.i, align 8          ; 2 uses
  %.not197.i.i = icmp eq ptr %i.ex, null
  br i1 %.not197.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.thread.thread.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i32 0, ptr %i.ey, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread.thread.i.i
  %i.ez = load ptr, ptr %.0179.i.i, align 8       ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  store ptr %i.fb, ptr %.0179.i.i, align 8
  %.not198.i.i = icmp eq ptr %i.fb, null
  br i1 %.not198.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %.0179.i.i, ptr %i.fc, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.fd = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %i.fe, ptr %i.ff, align 8
  %.not199.i.i = icmp eq ptr %i.fe, null
  br i1 %.not199.i.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fg = load ptr, ptr %i.fe, align 8
  %i.fh = icmp eq ptr %.0179.i.i, %i.fg
  br i1 %i.fh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.ez, ptr %i.fe, align 8
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ez, ptr %i.fi, align 8
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  store ptr %i.ez, ptr %i.e, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  store ptr %.0179.i.i, ptr %i.fa, align 8
  store ptr %i.ez, ptr %i.fd, align 8
  br label %.critedge.sink.split.i.i

bb.cj:                                            ; preds = %bb.br, %bb.bq, %bb.ao, %bb.an
  %.2.sink.i.i = phi ptr [ %.0.i.i, %bb.an ], [ %.0.i.i, %bb.ao ], [ %.2.i.i, %bb.br ], [ %.2.i.i, %bb.bq ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.2.sink.i.i, i64 24
  store i32 1, ptr %i.fj, align 8
  %.1180.in.i.i = getelementptr inbounds nuw i8, ptr %.0179.i.i, i64 16
  %.1180.i.i = load ptr, ptr %.1180.in.i.i, align 8
  br label %.preheader.i, !llvm.loop !42

.critedge.sink.split.i.i:                         ; preds = %bb.ci, %bb.be
  %i.fk = load ptr, ptr %i.e, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.aa, %.critedge.sink.split.i.i
  %.2178.i.i = phi ptr [ %i.fk, %.critedge.sink.split.i.i ], [ %.0176.i.i, %bb.aa ] ; 2 uses
  %.not208.i.i = icmp eq ptr %.2178.i.i, null
  br i1 %.not208.i.i, label %watcher_root_RB_REMOVE.exit, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.z, %.critedge.i.i
  %.2178211.i.i = phi ptr [ %.2178.i.i, %.critedge.i.i ], [ %.0176.i.i, %bb.z ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.2178211.i.i, i64 24
  store i32 0, ptr %i.fl, align 8
  br label %watcher_root_RB_REMOVE.exit

watcher_root_RB_REMOVE.exit:                      ; preds = %.loopexit.i, %.critedge.i.i, %.critedge.thread.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = tail call i32 @inotify_rm_watch(i32 noundef %i.fn, i32 noundef %i.fp) #16 ; 0 uses
  tail call void @uv__free(ptr noundef nonnull %0) #16
  br label %bb.ck

bb.ck:                                            ; preds = %watcher_root_RB_REMOVE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @uv__fs_event_close(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %uv_fs_event_stop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 832
  %.val.i = load ptr, ptr %i.h, align 8           ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not2.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.e
  %.093.i.i.i = phi ptr [ %.09.i.i.i, %bb.e ], [ %.val.i, %bb.b ] ; 4 uses
  %i.i = getelementptr i8, ptr %.093.i.i.i, i64 64
  %.09.val.i.i.i = load i32, ptr %i.i, align 8    ; 2 uses
  %i.j = icmp slt i32 %i.g, %.09.val.i.i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not11.i.i.i = icmp eq i32 %i.g, %.09.val.i.i.i
  br i1 %.not11.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.093.i.i.i, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.1.in.i.i.i = phi ptr [ %i.k, %bb.d ], [ %.093.i.i.i, %.lr.ph.i.i.i ]
  %.09.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.09.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.e, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.7, i32 noundef 2746, ptr noundef nonnull @__PRETTY_FUNCTION__.uv_fs_event_stop) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  store i32 -1, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.l, align 8
  %i.m = and i32 %i.b, -5
  store i32 %i.m, ptr %i.a, align 8
  %i.n = and i32 %i.b, 8
  %.not14.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.d, align 8
  tail call fastcc void @maybe_free_watcher_list(ptr noundef %.093.i.i.i, ptr noundef %i.x)
  br label %uv_fs_event_stop.exit

uv_fs_event_stop.exit:                            ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

declare void @uv__fs_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

declare ptr @uv__strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @inotify_init1(i32 noundef) local_unnamed_addr #3

declare i32 @uv__io_init_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @uv__inotify_read(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #0 {
bb.a:
  %3 = alloca %struct.uv__queue, align 16         ; 12 uses
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.c = getelementptr i8, ptr %0, i64 832        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.a
  %i.e = load i32, ptr %i.b, align 8
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 4096) #16 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %.critedge37

bb.b:                                             ; preds = %.loopexit
  %i.h = tail call ptr @__errno_location() #18
  %i.i = load i32, ptr %i.h, align 4
  switch i32 %i.i, label %bb.c [
    i32 4, label %.loopexit.backedge
    i32 11, label %bb.l
  ]

.loopexit.backedge:                               ; preds = %find_watcher.exit.thread, %bb.b, %.lr.ph46
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.7, i32 noundef 2618, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__inotify_read) #19
  unreachable

.critedge37:                                      ; preds = %.loopexit
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %.lr.ph46, label %bb.d

.lr.ph46:                                         ; preds = %.critedge37
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit.backedge, label %.lr.ph46.split

bb.d:                                             ; preds = %.critedge37
  call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.7, i32 noundef 2622, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__inotify_read) #19
  unreachable

.lr.ph46.split:                                   ; preds = %.lr.ph46, %find_watcher.exit.thread
  %.045 = phi ptr [ %i.bc, %find_watcher.exit.thread ], [ %i.a, %.lr.ph46 ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = and i32 %i.o, 6
  %.not = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not, i32 0, i32 2
  %i.q = and i32 %i.o, -7
  %.not34 = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not34 to i32
  %.1 = or disjoint i32 %spec.select, %i.r
  %i.s = load i32, ptr %.045, align 4             ; 2 uses
  %.val38 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not2.i.i = icmp eq ptr %.val38, null
  br i1 %.not2.i.i, label %find_watcher.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph46.split, %bb.g
  %.093.i.i = phi ptr [ %.09.i.i, %bb.g ], [ %.val38, %.lr.ph46.split ] ; 9 uses
  %i.t = getelementptr i8, ptr %.093.i.i, i64 64
  %.09.val.i.i = load i32, ptr %i.t, align 8      ; 2 uses
  %i.u = icmp slt i32 %i.s, %.09.val.i.i
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %.not11.i.i = icmp eq i32 %i.s, %.09.val.i.i
  br i1 %.not11.i.i, label %find_watcher.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.1.in.i.i = phi ptr [ %i.v, %bb.f ], [ %.093.i.i, %.lr.ph.i.i ]
  %.09.i.i = load ptr, ptr %.1.in.i.i, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.09.i.i, null
  br i1 %.not.i.i, label %find_watcher.exit.thread, label %.lr.ph.i.i, !llvm.loop !14

find_watcher.exit:                                ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.045, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %find_watcher.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.045, i64 16
  br label %bb.j

bb.i:                                             ; preds = %find_watcher.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 56
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.aa, i32 noundef 47) #17 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.0.i = select i1 %i.ac, ptr %i.aa, ptr %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.y, %bb.h ], [ %.0.i, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 48 ; 2 uses
  store i32 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 32 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %uv__queue_move.exit.thread, label %uv__queue_move.exit

uv__queue_move.exit.thread:                       ; preds = %bb.j
  store <2 x ptr> %5, ptr %3, align 16
  br label %._crit_edge

uv__queue_move.exit:                              ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  store ptr %i.aj, ptr %i.d, align 8
  store ptr %3, ptr %i.aj, align 8
  store ptr %i.ah, ptr %3, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8
  store ptr %i.ag, ptr %i.al, align 8
  store ptr %3, ptr %i.ak, align 8
  %.pre = load ptr, ptr %3, align 16              ; 2 uses
  %.not4044 = icmp eq ptr %3, %.pre
  br i1 %.not4044, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %uv__queue_move.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.093.i.i, i64 40 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.an = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %bb.k ] ; 7 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -112
  %i.ap = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  store ptr %i.ap, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.at, align 8
  store ptr %i.ag, ptr %i.an, align 8
  %i.au = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr %i.au, ptr %i.aq, align 8
  store ptr %i.an, ptr %i.au, align 8
  store ptr %i.an, ptr %i.am, align 8
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull %i.ao, ptr noundef %i.ae, i32 noundef %.1, i32 noundef 0) #16
  %i.ax = load ptr, ptr %3, align 16              ; 2 uses
  %.not40 = icmp eq ptr %3, %i.ax
  br i1 %.not40, label %._crit_edge, label %bb.k, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.k, %uv__queue_move.exit.thread, %uv__queue_move.exit
  store i32 0, ptr %i.af, align 8
  call fastcc void @maybe_free_watcher_list(ptr noundef %.093.i.i, ptr noundef %0)
  br label %find_watcher.exit.thread

find_watcher.exit.thread:                         ; preds = %bb.g, %.lr.ph46.split, %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %.045, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.045, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.k
  br i1 %i.bd, label %.lr.ph46.split, label %.loopexit.backedge, !llvm.loop !44

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @inotify_rm_watch(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold }

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
!8 = distinct !{null}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{null}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{null}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10, !45}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
