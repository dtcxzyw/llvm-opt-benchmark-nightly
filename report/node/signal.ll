inline.NumInlined: 27
inline.NumDeleted: 15
begin_hunk_0_@uv__make_pipe
; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @uv__io_init_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @uv__signal_event(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.030 = phi i64 [ 0, %bb.a ], [ 512, %bb.l ]    ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.1, %bb.l ]      ; 6 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0
  %i.e = sub nuw nsw i64 512, %.0
  %i.f = call i64 @read(i32 noundef %i.c, ptr noundef nonnull %i.d, i64 noundef %i.e) #9 ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.c, label %.critedge40

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #11
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %.critedge [
    i32 4, label %bb.l
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %.not39 = icmp eq i64 %.0, 0
  br i1 %.not39, label %bb.m, label %bb.l

.critedge:                                        ; preds = %bb.c
  tail call void @abort() #10
  unreachable

.critedge40:                                      ; preds = %bb.b
  %sext = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = add nsw i64 %i.k, %.0                    ; 2 uses
  %i.m = and i64 %i.l, -16                        ; 5 uses
  %.not42 = icmp eq i64 %i.m, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge40, %bb.j
  %.02941 = phi i64 [ %i.af, %bb.j ], [ 0, %.critedge40 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02941 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16             ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 1
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__signal_event) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull %i.o, i32 noundef %i.q) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 148 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 33554432
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @uv__signal_stop(ptr noundef nonnull %i.o)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.af = add nuw i64 %.02941, 16                 ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.m
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.j, %.critedge40
  %i.ah = and i64 %i.l, 15                        ; 3 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.ai, i64 %i.ah, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.k
  %.131 = phi i64 [ %.030, %bb.c ], [ %.030, %bb.d ], [ %i.m, %bb.k ], [ %i.m, %._crit_edge ]
  %.1 = phi i64 [ %.0, %bb.c ], [ %.0, %bb.d ], [ %i.ah, %bb.k ], [ 0, %._crit_edge ]
  %i.aj = icmp eq i64 %.131, 512
  br i1 %i.aj, label %bb.b, label %bb.m, !llvm.loop !18

bb.m:                                             ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__signal_block_and_lock(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.b = call i32 @sigfillset(ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @abort() #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %0) #9 ; 0 uses
  %i.d = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %0) #9
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.e = load i32, ptr @uv__signal_lock_pipefd, align 4
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.g = and i64 %i.f, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.not.i.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @__errno_location() #11
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.f, label %bb.h, !llvm.loop !19

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @abort() #10
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal void @uv__signal_handler(i32 noundef %0) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %struct.uv_signal_s, align 8        ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.uv__signal_msg_t, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.c = tail call ptr @__errno_location() #11    ; 5 uses
  %i.d = load i32, ptr %i.c, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load i32, ptr @uv__signal_lock_pipefd, align 4
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.b, i64 noundef 1) #9
  %i.g = and i64 %i.f, 2147483648
  %.not.not.not.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.not.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 4
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.b, label %uv__signal_lock.exit, !llvm.loop !19

uv__signal_lock.exit:                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %0, ptr %i.j, align 8
  %.0127.i.i = load ptr, ptr @uv__signal_tree.0, align 8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0127.i.i, null
  br i1 %.not8.i.i, label %uv__signal_first_handle.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %uv__signal_compare.exit.thread3.i.i
  %.01210.i.i = phi ptr [ %.012.i.i, %uv__signal_compare.exit.thread3.i.i ], [ %.0127.i.i, %bb.d ] ; 10 uses
  %.0119.i.i = phi ptr [ %.1.i.i, %uv__signal_compare.exit.thread3.i.i ], [ null, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01210.i.i, i64 104
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp slt i32 %0, %i.l
  br i1 %i.m, label %uv__signal_compare.exit.thread3.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = icmp sgt i32 %0, %i.l
  br i1 %i.n, label %uv__signal_compare.exit.thread3.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.01210.i.i, i64 88
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 33554432
  %.not12.i = icmp eq i32 %i.q, 0
  br i1 %.not12.i, label %bb.g, label %uv__signal_compare.exit.thread3.i.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.01210.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp ult ptr %1, %.01210.i.i
  %or.cond.i = or i1 %i.u, %i.t
  br i1 %or.cond.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_compare.exit.i.i

uv__signal_compare.exit.i.i:                      ; preds = %bb.g
  %.not6.i.i = icmp ugt ptr %1, %.01210.i.i
  br i1 %.not6.i.i, label %uv__signal_compare.exit.thread3.i.i, label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_compare.exit.thread3.i.i:              ; preds = %uv__signal_compare.exit.i.i, %bb.g, %bb.f, %bb.e, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 112, %bb.g ], [ 120, %bb.e ], [ 112, %.lr.ph.i.i ], [ 112, %bb.f ], [ 120, %uv__signal_compare.exit.i.i ]
  %.1.i.i = phi ptr [ %.01210.i.i, %bb.g ], [ %.0119.i.i, %bb.e ], [ %.01210.i.i, %.lr.ph.i.i ], [ %.01210.i.i, %bb.f ], [ %.0119.i.i, %uv__signal_compare.exit.i.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01210.i.i, i64 %.sink.i.i
  %.012.i.i = load ptr, ptr %i.v, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.012.i.i, null
  br i1 %.not.i.i, label %uv__signal_tree_s_RB_NFIND.exit.i, label %.lr.ph.i.i, !llvm.loop !13

uv__signal_tree_s_RB_NFIND.exit.i:                ; preds = %uv__signal_compare.exit.thread3.i.i
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %uv__signal_first_handle.exit.thread, label %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i

uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i: ; preds = %uv__signal_tree_s_RB_NFIND.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 104
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %uv__signal_tree_s_RB_NFIND.exit.thread8.i

uv__signal_tree_s_RB_NFIND.exit.thread8.i:        ; preds = %uv__signal_compare.exit.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i
  %i.w = phi i32 [ %.pre.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %i.l, %uv__signal_compare.exit.i.i ]
  %.0.i11.i = phi ptr [ %.1.i.i, %uv__signal_tree_s_RB_NFIND.exit.uv__signal_tree_s_RB_NFIND.exit.thread8_crit_edge.i ], [ %.01210.i.i, %uv__signal_compare.exit.i.i ] ; 2 uses
  %i.x = icmp eq i32 %i.w, %0
  br i1 %i.x, label %.lr.ph, label %uv__signal_first_handle.exit.thread

uv__signal_first_handle.exit.thread:              ; preds = %bb.d, %uv__signal_tree_s_RB_NFIND.exit.i, %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.critedge

.lr.ph:                                           ; preds = %uv__signal_tree_s_RB_NFIND.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 104
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, %0
  br i1 %i.ab, label %.lr.ph68.preheader, label %.critedge

.lr.ph68.preheader:                               ; preds = %.lr.ph
  store i32 %0, ptr %i.y, align 8
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %uv__signal_tree_s_RB_NEXT.exit
  %.03167 = phi ptr [ %.2.i, %uv__signal_tree_s_RB_NEXT.exit ], [ %.0.i11.i, %.lr.ph68.preheader ] ; 7 uses
  store ptr %.03167, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.03167, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph68
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 556
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = call i64 @write(i32 noundef %i.af, ptr noundef nonnull %2, i64 noundef 16) #9
  %trunc = trunc i64 %i.ag to i32
  switch i32 %trunc, label %.thread [
    i32 -1, label %bb.i
    i32 16, label %.thread24
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.c, align 4
  switch i32 %i.ah, label %.thread [
    i32 4, label %bb.h
    i32 11, label %.loopexit
  ]

.thread:                                          ; preds = %bb.i, %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__signal_handler) #10
  unreachable

.thread24:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.03167, i64 144 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.thread24
  %i.al = getelementptr inbounds nuw i8, ptr %.03167, i64 120
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i19, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit, %.preheader.i
  %.0.i20 = phi ptr [ %i.ao, %.preheader.i ], [ %i.am, %.loopexit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i20, i64 112
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.ao, null
  br i1 %.not20.i, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader.i, !llvm.loop !20

bb.j:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %.03167, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not18.i = icmp eq ptr %i.aq, null
  br i1 %.not18.i, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %.03167, %i.as
  br i1 %i.at, label %uv__signal_tree_s_RB_NEXT.exit, label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.m
  %.1.i = phi ptr [ %i.av, %bb.m ], [ %.03167, %.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 128
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %.not19.i = icmp eq ptr %i.av, null
  br i1 %.not19.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %.1.i, %i.ax
  br i1 %i.ay, label %bb.l, label %uv__signal_tree_s_RB_NEXT.exit, !llvm.loop !21

uv__signal_tree_s_RB_NEXT.exit:                   ; preds = %.preheader.i, %bb.m, %bb.k
  %.2.i = phi ptr [ %i.av, %bb.m ], [ %i.aq, %bb.k ], [ %.0.i20, %.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.2.i, i64 104
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, %0
  br i1 %i.bb, label %.lr.ph68, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %uv__signal_tree_s_RB_NEXT.exit, %bb.l, %.lr.ph, %uv__signal_first_handle.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 42, ptr %i.a, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @uv__signal_lock_pipefd, i64 4), align 4
  %i.bd = call i64 @write(i32 noundef %i.bc, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %i.be = and i64 %i.bd, 2147483648
  %.not.not.not.not.i21.not = icmp eq i64 %i.be, 0
  br i1 %.not.not.not.not.i21.not, label %uv__signal_unlock.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.n, label %uv__signal_unlock.exit, !llvm.loop !14

uv__signal_unlock.exit:                           ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
end_hunk_0
