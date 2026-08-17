inline.NumInlined: 64
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv_cwd:bb.a

bb.j:                                             ; preds = %bb.i
  store i64 %i.p, ptr %1, align 8
  store i8 0, ptr %i.q, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.t = icmp eq ptr %.016, %i.a
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = load i64, ptr %1, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.a, %bb.b, %bb.l, %bb.g, %bb.e
  %.0 = phi i32 [ %i.m, %bb.g ], [ -105, %bb.l ], [ -22, %bb.a ], [ %i.i, %bb.e ], [ -22, %bb.b ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @uv_chdir(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @chdir(ptr noundef %0) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #23
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sub nsw i32 0, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uv_disable_stdio_inheritance() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %uv__cloexec.exit.thread, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %uv__cloexec.exit.thread ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %.0, i32 noundef 2, i32 noundef 1) #22
  switch i32 %i.a, label %..critedge_crit_edge.i [
    i32 -1, label %bb.d
    i32 0, label %uv__cloexec.exit.thread
  ]

..critedge_crit_edge.i:                           ; preds = %bb.c
  %.pre.i = tail call ptr @__errno_location() #23
  %.pre = load i32, ptr %.pre.i, align 4
  br label %uv__cloexec.exit

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @__errno_location() #23
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %uv__cloexec.exit, !llvm.loop !15

uv__cloexec.exit:                                 ; preds = %bb.d, %..critedge_crit_edge.i
  %i.e = phi i32 [ %.pre, %..critedge_crit_edge.i ], [ %i.c, %bb.d ]
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp samesign ugt i32 %.0, 15
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.e, label %uv__cloexec.exit.thread

uv__cloexec.exit.thread:                          ; preds = %bb.c, %uv__cloexec.exit
  %i.h = add nuw nsw i32 %.0, 1
  br label %bb.b

bb.e:                                             ; preds = %uv__cloexec.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -22, 1) i32 @uv_fileno(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %switch.tableidx = add i32 %i.b, -7             ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 419, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond10 = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond10, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uv__getsockpeername, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %.0 = load i32, ptr %i.e, align 8               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 3
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp eq i32 %.0, -1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  store i32 %.0, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %switch.lookup, %bb.b
  %.09 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ], [ -9, %switch.lookup ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define hidden void @uv__io_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, -2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 907, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_init) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.e, align 8
  store ptr %1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -12, 1) i32 @uv__io_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, -8200
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 920, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_start) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 921, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_start) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 922, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_start) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not24 = icmp eq i32 %i.d, 2147483647
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 923, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_start) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, %2                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %.not.i.not = icmp ult i32 %i.d, %i.j
  br i1 %.not.i.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not35.i = icmp eq ptr %i.l, null
  br i1 %.not35.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %3 = zext nneg i32 %i.j to i64
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %3
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.029.i = phi ptr [ %i.o, %bb.k ], [ null, %bb.j ]
  %.028.i = phi ptr [ %i.q, %bb.k ], [ null, %bb.j ]
  %i.r = add nuw i32 %i.d, 2                      ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = or i32 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = or i32 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i32 %i.v, 4
  %i.x = or i32 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i32 %i.x, 8
  %i.z = or i32 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i32 %i.z, 16
  %i.ab = or i32 %i.aa, %i.z                      ; 4 uses
  %i.ac = add i32 %i.ab, 1
  %i.ad = add i32 %i.ab, -1                       ; 3 uses
  %i.ae = zext i32 %i.ac to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call ptr @uv__reallocf(ptr noundef %i.l, i64 noundef %i.af) #22 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %maybe_resize.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %i.i, align 8             ; 3 uses
  %i.aj = icmp ult i32 %i.ai, %i.ad
  br i1 %i.aj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ak = zext i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %scevgep.i = getelementptr i8, ptr %i.ag, i64 %i.al
  %i.am = add i32 %i.ab, -2
  %i.an = sub i32 %i.am, %i.ai
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.m
  %i.ar = zext i32 %i.ad to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ar
  store ptr %.029.i, ptr %i.as, align 8
  %i.at = zext i32 %i.ab to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.at
  store ptr %.028.i, ptr %i.au, align 8
  store ptr %i.ag, ptr %i.k, align 8
  store i32 %i.ad, ptr %i.i, align 8
  %.pre = load i32, ptr %i.f, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.i
  %i.av = phi i32 [ %.pre, %._crit_edge.i ], [ %i.h, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %i.av
  br i1 %i.ay, label %maybe_resize.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %.not29 = icmp eq ptr %i.az, %i.ba
  br i1 %.not29, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bd, ptr %i.be, align 8
  store ptr %i.az, ptr %i.bd, align 8
  store ptr %i.az, ptr %i.bc, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load i32, ptr %i.c, align 8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %maybe_resize.exit

bb.r:                                             ; preds = %bb.q
  store ptr %1, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4
  br label %maybe_resize.exit

maybe_resize.exit:                                ; preds = %bb.l, %bb.q, %bb.r, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.r ], [ -12, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -12, 1) i32 @uv__io_init_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 958, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_init_start) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %3, -1
  br i1 %i.a, label %uv__io_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 959, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_init_start) #24
  unreachable

uv__io_init.exit:                                 ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store ptr %i.b, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  store ptr %i.d, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  store ptr %2, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 0, ptr %i.h, align 8
  %i.i = tail call i32 @uv__io_start(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %4) ; 2 uses
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %uv__io_init.exit
  store ptr %i.b, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr %i.d, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  store ptr null, ptr %1, align 8
  store i32 -1, ptr %i.f, align 8
  store i32 0, ptr %i.g, align 4
  store i32 0, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %uv__io_init.exit
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define hidden void @uv__io_stop(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, -8200
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 969, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_stop) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 970, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_stop) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp sgt i32 %i.d, -1
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 975, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_stop) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8
  %.not22 = icmp ult i32 %i.d, %i.h
  br i1 %.not22, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.i = xor i32 %2, -1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, %i.i                       ; 2 uses
  store i32 %i.l, ptr %i.j, align 8
  %i.m = icmp eq i32 %i.l, 0
end_hunk_0
