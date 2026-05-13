inline.NumInlined: 48
inline.NumDeleted: 22
begin_hunk_0_@rsock_s_recvfrom:bb.a
  %i.aa = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.y) #9, !callees !42, !inline_history !43
  br label %rsock_strbuf.exit

bb.n:                                             ; preds = %rb_num2int_inline.exit27
  %i.ab = call i64 @rb_string_value(ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !10  ; 3 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34 ; 2 uses
  %.not.i28 = icmp slt i64 %i.af, %i.y
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @rb_str_modify(i64 noundef %i.ac) #9
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ag = sub nsw i64 %i.y, %i.af
  call void @rb_str_modify_expand(i64 noundef %i.ac, i64 noundef %i.ag) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !10
  br label %rsock_strbuf.exit

rsock_strbuf.exit:                                ; preds = %bb.m, %bb.q
  %i.ai = phi i64 [ %i.aa, %bb.m ], [ %i.ah, %bb.q ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 6 uses
  call void @rb_io_check_closed(ptr noundef %i.am) #9
  %i.an = call i32 @rb_io_read_pending(ptr noundef %i.am) #11
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %rsock_strbuf.exit
  %i.ao = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.3) #10
  unreachable

bb.s:                                             ; preds = %rsock_strbuf.exit
  store ptr %i.am, ptr %4, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i32 2048, ptr %i.as, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ai, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.y, ptr %i.au, align 8, !tbaa !50
  %i.av = ptrtoint ptr %4 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  call void @rb_io_check_closed(ptr noundef %i.am) #9
  %i.aw = call i64 @rb_str_locktmp(i64 noundef %i.ai) #9 ; 0 uses
  %i.ax = call i64 @rb_ensure(ptr noundef nonnull @recvfrom_locktmp, i64 noundef %i.av, ptr noundef nonnull @rb_str_unlocktmp, i64 noundef %i.ai) #9 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !12
  %i.ba = call i32 @getsockopt(i32 noundef %i.az, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.v, label %rsock_is_dgram.exit

bb.v:                                             ; preds = %bb.u
  %i.bc = call ptr @rb_errno_ptr() #9
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.bd, ptr noundef nonnull @.str.1) #10
  unreachable

rsock_is_dgram.exit:                              ; preds = %bb.u
  %i.be = load i32, ptr %i.a, align 4, !tbaa !6
  %.not30 = icmp eq i32 %i.be, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not30, label %.thread, label %bb.ae

bb.w:                                             ; preds = %bb.t
  %i.bf = icmp sgt i64 %i.ax, -1
  br i1 %i.bf, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = call ptr @rb_errno_ptr() #9
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !6
  %i.bi = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bh, i64 noundef %0, i64 noundef 4) #9
  %.not25 = icmp eq i32 %i.bi, 0
  br i1 %.not25, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bj = call ptr @rb_errno_ptr() #9
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.bk, ptr noundef nonnull @.str.4) #10
  unreachable

.thread:                                          ; preds = %bb.w, %rsock_is_dgram.exit
  call void @rb_str_set_len(i64 noundef %i.ai, i64 noundef %i.ax) #9
  switch i32 %3, label %bb.ad [
    i32 0, label %bb.ae
    i32 1, label %bb.z
    i32 2, label %bb.ab
    i32 3, label %bb.ac
  ]

bb.z:                                             ; preds = %.thread
  %i.bl = load i32, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %i.bm = and i32 %i.bl, -2049
  %or.cond.not = icmp eq i32 %i.bm, 0
  br i1 %or.cond.not, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !26
  %i.bq = and i32 %i.bp, 256
  %i.br = call i64 @rsock_ipaddr(ptr noundef nonnull %i.bn, i32 noundef %i.bl, i32 noundef %i.bq) #9
  br label %.sink.split

bb.ab:                                            ; preds = %.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bt = load i32, ptr %i.as, align 8, !tbaa !48
  %i.bu = call i64 @rsock_unixaddr(ptr noundef nonnull %i.bs, i32 noundef %i.bt) #9
  br label %.sink.split

bb.ac:                                            ; preds = %.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !48
  %i.bx = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef nonnull %i.bv, i32 noundef %i.bw) #9
  br label %.sink.split

bb.ad:                                            ; preds = %.thread
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.5) #12
  unreachable

.sink.split:                                      ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sink55 = phi i64 [ %i.bx, %bb.ac ], [ %i.bu, %bb.ab ], [ %i.br, %bb.aa ], [ 4, %bb.z ]
  %i.by = call i64 @rb_assoc_new(i64 noundef %i.ai, i64 noundef %.sink55) #9
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %.thread, %rsock_is_dgram.exit
  %.0 = phi i64 [ 4, %rsock_is_dgram.exit ], [ %i.ai, %.thread ], [ %i.by, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i64 %.0
}

declare void @rb_io_check_closed(ptr noundef) local_unnamed_addr #2

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_io_read_pending(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_locktmp(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @recvfrom_locktmp(i64 noundef %0) #5 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i64 @rb_io_blocking_region(ptr noundef %i.b, ptr noundef nonnull @recvfrom_blocking, ptr noundef nonnull %i.a) #9
  ret i64 %i.c
}

declare i64 @rb_str_unlocktmp(i64 noundef) #2

declare i32 @rb_io_maybe_wait_readable(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rsock_ipaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rsock_unixaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rsock_io_socket_addrinfo(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i64 @rsock_s_recvfrom_nonblock(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %union.union_sockaddr, align 8      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 2048, ptr %i.d, align 4, !tbaa !6
  %i.e = trunc i64 %2 to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_fix2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_num2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = trunc i64 %.0.i to i32
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.j = tail call i64 @rb_fix2int(i64 noundef %1) #9
  br label %rb_num2int_inline.exit45

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.k = tail call i64 @rb_num2int(i64 noundef %1) #9
  br label %rb_num2int_inline.exit45

rb_num2int_inline.exit45:                         ; preds = %bb.d, %bb.e
  %.0.i44 = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %sext = shl i64 %.0.i44, 32
  %i.l = ashr exact i64 %sext, 32                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %3, ptr %i.c, align 8, !tbaa !10
  %i.m = icmp eq i64 %3, 4
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2int_inline.exit45
  %i.n = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.l) #9, !callees !42, !inline_history !43
  br label %rsock_strbuf.exit

bb.g:                                             ; preds = %rb_num2int_inline.exit45
  %i.o = call i64 @rb_string_value(ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp slt i64 %i.s, %i.l
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_str_modify(i64 noundef %i.p) #9
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = sub nsw i64 %i.l, %i.s
  call void @rb_str_modify_expand(i64 noundef %i.p, i64 noundef %i.t) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = load i64, ptr %i.c, align 8, !tbaa !10
  br label %rsock_strbuf.exit

rsock_strbuf.exit:                                ; preds = %bb.f, %bb.j
  %.0.i46 = phi i64 [ %i.n, %bb.f ], [ %i.u, %bb.j ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.y) #9
  %i.z = call i32 @rb_io_read_pending(ptr noundef %i.y) #11
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rsock_strbuf.exit
  %i.aa = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.6) #10
  unreachable

bb.l:                                             ; preds = %rsock_strbuf.exit
  %i.ab = or i32 %i.h, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !12
  call void @rb_io_check_closed(ptr noundef %i.y) #9
  %i.ae = inttoptr i64 %.0.i46 to ptr             ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = and i64 %i.af, 8192
  %.not.i47 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  br i1 %.not.i47, label %RSTRING_PTR.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.l, %bb.m
  %i.aj = phi ptr [ %i.ai, %bb.m ], [ %i.ah, %bb.l ]
  %i.ak = call i64 @recvfrom(i32 noundef %i.ad, ptr noundef %i.aj, i64 noundef %i.l, i32 noundef %i.ab, ptr nonnull %6, ptr noundef nonnull %i.d) #9 ; 5 uses
  %.not40 = icmp ne i64 %i.ak, -1
  %i.al = load i32, ptr %i.d, align 4
  %7 = icmp ugt i32 %i.al, 2048
  %or.cond = select i1 %.not40, i1 %7, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RSTRING_PTR.exit
  store i32 2048, ptr %i.d, align 4, !tbaa !6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %RSTRING_PTR.exit
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !12
  %i.ao = call i32 @getsockopt(i32 noundef %i.an, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.q, label %rsock_is_dgram.exit

bb.q:                                             ; preds = %bb.p
  %i.aq = call ptr @rb_errno_ptr() #9
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.ar, ptr noundef nonnull @.str.1) #10
  unreachable

rsock_is_dgram.exit:                              ; preds = %bb.p
  %i.as = load i32, ptr %i.a, align 4, !tbaa !6
  %.not48 = icmp eq i32 %i.as, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not48, label %.thread, label %bb.ae

bb.r:                                             ; preds = %bb.o
  %i.at = icmp slt i64 %i.ak, 0
  br i1 %i.at, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.au = call ptr @rb_errno_ptr() #9
  %i.av = load i32, ptr %i.au, align 4, !tbaa !6  ; 2 uses
  %cond = icmp eq i32 %i.av, 11
  br i1 %cond, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.aw = icmp eq i64 %4, 0
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ax = load i64, ptr @sym_wait_readable, align 8, !tbaa !10
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.7) #10
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @rb_syserr_fail(i32 noundef %i.av, ptr noundef nonnull @.str.4) #10
  unreachable

.thread:                                          ; preds = %rsock_is_dgram.exit, %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !34
  %.not42 = icmp eq i64 %i.ak, %i.az
  br i1 %.not42, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread
  call void @rb_str_set_len(i64 noundef %.0.i46, i64 noundef %i.ak) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  switch i32 %5, label %bb.ac [
    i32 0, label %bb.ae
    i32 1, label %bb.z
    i32 3, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.ba = load i32, ptr %i.d, align 4, !tbaa !6   ; 2 uses
  %i.bb = and i32 %i.ba, -2049
  %or.cond.not = icmp eq i32 %i.bb, 0
  br i1 %or.cond.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !26
  %i.be = and i32 %i.bd, 256
  %i.bf = call i64 @rsock_ipaddr(ptr noundef nonnull %6, i32 noundef %i.ba, i32 noundef %i.be) #9
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !6
  %i.bh = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef nonnull %6, i32 noundef %i.bg) #9
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.8) #12
  unreachable

bb.ad:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.035 = phi i64 [ %i.bf, %bb.aa ], [ 4, %bb.z ], [ %i.bh, %bb.ab ]
  %i.bi = call i64 @rb_assoc_new(i64 noundef %.0.i46, i64 noundef %.035) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %rsock_is_dgram.exit, %bb.ad, %bb.u
  %.0 = phi i64 [ %i.ax, %bb.u ], [ 4, %rsock_is_dgram.exit ], [ %i.bi, %bb.ad ], [ %.0.i46, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i64 %.0
}

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_readwrite_syserr_fail(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_read_nonblock(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %1) #9
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !10
  %i.e = icmp eq i64 %2, 4
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.f = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #9, !callees !42, !inline_history !43
  br label %rsock_strbuf.exit

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.g = call i64 @rb_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp slt i64 %i.k, %.0.i
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @rb_str_modify(i64 noundef %i.h) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = sub nsw i64 %.0.i, %i.k
  call void @rb_str_modify_expand(i64 noundef %i.h, i64 noundef %i.l) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !10
  br label %rsock_strbuf.exit

rsock_strbuf.exit:                                ; preds = %bb.d, %bb.h
  %.0.i36 = phi i64 [ %i.f, %bb.d ], [ %i.m, %bb.h ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 6 uses
  call void @rb_io_check_closed(ptr noundef %i.q) #9
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rsock_strbuf.exit
  call void @rb_str_set_len(i64 noundef %.0.i36, i64 noundef 0) #9
  br label %bb.v

bb.j:                                             ; preds = %rsock_strbuf.exit
  %i.s = inttoptr i64 %.0.i36 to ptr              ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = and i64 %i.t, 8192
  %.not.i37 = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  br i1 %.not.i37, label %RSTRING_PTR.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.j, %bb.k
  %i.x = phi ptr [ %i.w, %bb.k ], [ %i.v, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %read_buffered_data.exit.thread, label %read_buffered_data.exit

read_buffered_data.exit:                          ; preds = %RSTRING_PTR.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.ac = zext nneg i32 %i.z to i64
  %spec.select17.i = call i64 @llvm.smin.i64(i64 range(i64 1, 0) %.0.i, i64 %i.ac) ; 2 uses
  %spec.select.i = trunc i64 %spec.select17.i to i32 ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 76 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !53
end_hunk_0
