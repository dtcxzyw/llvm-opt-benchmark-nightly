Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/init?download=true
inline.NumInlined: 48
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rsock_is_dgram:bb.a
  ret i32 %i.k
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @rsock_s_recvfrom(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.recvfrom_arg, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.d = icmp slt i32 %1, 1
  br i1 %i.d, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !13     ; 3 uses
  %.not51 = icmp eq i32 %1, 1
  br i1 %.not51, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 4, %.preheader ] ; 4 uses
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  %i.i = icmp samesign ult i32 %.286.i, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %.286.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.l, %bb.d ], [ 4, %bb.c ]    ; 2 uses
  %.286.i.1 = phi i32 [ %i.m, %bb.d ], [ %.286.i, %bb.c ]
  %i.o = icmp eq i32 %.286.i.1, %1
  br i1 %i.o, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %1, i32 noundef 1, i32 noundef 3) #10
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.p = icmp eq i64 %i.h, 4
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.q = trunc i64 %i.h to i1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i64 @rb_fix2int(i64 noundef %i.h) #9
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.s = tail call i64 @rb_num2int(i64 noundef %i.h) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.r, %bb.h ], [ %i.s, %bb.i ]
  %i.t = trunc i64 %.0.i to i32
  br label %bb.j

bb.j:                                             ; preds = %rb_scan_args_set.exit, %rb_num2int_inline.exit
  %.sink = phi i32 [ %i.t, %rb_num2int_inline.exit ], [ 0, %rb_scan_args_set.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sink, ptr %i.u, align 4, !tbaa !41
  %i.v = trunc i64 %i.e to i1
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i64 @rb_fix2int(i64 noundef %i.e) #9
  br label %rb_num2int_inline.exit27

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i64 @rb_num2int(i64 noundef %i.e) #9
  br label %rb_num2int_inline.exit27

rb_num2int_inline.exit27:                         ; preds = %bb.k, %bb.l
  %.0.i26 = phi i64 [ %i.w, %bb.k ], [ %i.x, %bb.l ]
  %i.y = shl i64 %.0.i26, 32
  %i.z = ashr exact i64 %i.y, 32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.n, ptr %i.c, align 8, !tbaa !13
  %i.aa = icmp eq i64 %i.n, 4
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rb_num2int_inline.exit27
  %i.ab = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.z) #9, !callees !0, !inline_history !1
  br label %rsock_strbuf.exit

bb.n:                                             ; preds = %rb_num2int_inline.exit27
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %.not.i28 = icmp slt i64 %i.ag, %i.z
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @rb_str_modify(i64 noundef %i.ad) #9
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ah = sub nsw i64 %i.z, %i.ag
  call void @rb_str_modify_expand(i64 noundef %i.ad, i64 noundef %i.ah) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !13
  br label %rsock_strbuf.exit

rsock_strbuf.exit:                                ; preds = %bb.m, %bb.q
  %i.aj = phi i64 [ %i.ab, %bb.m ], [ %i.ai, %bb.q ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 6 uses
  call void @rb_io_check_closed(ptr noundef %i.an) #9
  %i.ao = call i32 @rb_io_read_pending(ptr noundef %i.an) #11
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %rsock_strbuf.exit
  %i.ap = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.3) #10
  unreachable

bb.s:                                             ; preds = %rsock_strbuf.exit
  store ptr %i.an, ptr %4, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i32 2048, ptr %i.at, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.aj, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.z, ptr %i.av, align 8, !tbaa !48
  %i.aw = ptrtoint ptr %4 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  call void @rb_io_check_closed(ptr noundef %i.an) #9
  %i.ax = call i64 @rb_str_locktmp(i64 noundef %i.aj) #9 ; 0 uses
  %i.ay = call i64 @rb_ensure(ptr noundef nonnull @recvfrom_locktmp, i64 noundef %i.aw, ptr noundef nonnull @rb_str_unlocktmp, i64 noundef %i.aj) #9 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 4, ptr %i.b, align 4, !tbaa !11
  %i.ba = load i32, ptr %i.aq, align 8, !tbaa !27
  %i.bb = call i32 @getsockopt(i32 noundef %i.ba, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.v, label %rsock_is_dgram.exit

bb.v:                                             ; preds = %bb.u
  %i.bd = call ptr @rb_errno_ptr() #9
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !11
  call void @rb_syserr_fail(i32 noundef %i.be, ptr noundef nonnull @.str.1) #10
  unreachable

rsock_is_dgram.exit:                              ; preds = %bb.u
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !11
  %.not30 = icmp eq i32 %i.bf, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not30, label %.thread, label %bb.ae

bb.w:                                             ; preds = %bb.t
  %i.bg = icmp sgt i64 %i.ay, -1
  br i1 %i.bg, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = call ptr @rb_errno_ptr() #9
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %i.bj = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bi, i64 noundef %0, i64 noundef 4) #9
  %.not25 = icmp eq i32 %i.bj, 0
  br i1 %.not25, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bk = call ptr @rb_errno_ptr() #9
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !11
  call void @rb_syserr_fail(i32 noundef %i.bl, ptr noundef nonnull @.str.4) #10
  unreachable

.thread:                                          ; preds = %bb.w, %rsock_is_dgram.exit
  %5 = phi i64 [ 0, %rsock_is_dgram.exit ], [ %i.ay, %bb.w ]
  call void @rb_str_set_len(i64 noundef %i.aj, i64 noundef %5) #9
  switch i32 %3, label %bb.ad [
    i32 0, label %bb.ae
    i32 1, label %bb.z
    i32 2, label %bb.ab
    i32 3, label %bb.ac
  ]

bb.z:                                             ; preds = %.thread
  %i.bm = load i32, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.bn = and i32 %i.bm, -2049
  %or.cond.not = icmp eq i32 %i.bn, 0
  br i1 %or.cond.not, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !28
  %i.br = and i32 %i.bq, 256
  %i.bs = call i64 @rsock_ipaddr(ptr noundef nonnull %i.bo, i32 noundef %i.bm, i32 noundef %i.br) #9
  br label %.sink.split

bb.ab:                                            ; preds = %.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bu = load i32, ptr %i.at, align 8, !tbaa !46
  %i.bv = call i64 @rsock_unixaddr(ptr noundef nonnull %i.bt, i32 noundef %i.bu) #9
  br label %.sink.split

bb.ac:                                            ; preds = %.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bx = load i32, ptr %i.at, align 8, !tbaa !46
  %i.by = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef nonnull %i.bw, i32 noundef %i.bx) #9
  br label %.sink.split

bb.ad:                                            ; preds = %.thread
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.5) #12
  unreachable

.sink.split:                                      ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sink55 = phi i64 [ %i.by, %bb.ac ], [ %i.bv, %bb.ab ], [ %i.bs, %bb.aa ], [ 4, %bb.z ]
  %i.bz = call i64 @rb_assoc_new(i64 noundef %i.aj, i64 noundef %.sink55) #9
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %.thread, %rsock_is_dgram.exit
  %.0 = phi i64 [ 4, %rsock_is_dgram.exit ], [ %i.aj, %.thread ], [ %i.bz, %.sink.split ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
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
  store i32 2048, ptr %i.d, align 4, !tbaa !11
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
  %i.l = shl i64 %.0.i44, 32
  %i.m = ashr exact i64 %i.l, 32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %3, ptr %i.c, align 8, !tbaa !13
  %i.n = icmp eq i64 %3, 4
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2int_inline.exit45
  %i.o = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.m) #9, !callees !0, !inline_history !1
  br label %rsock_strbuf.exit

bb.g:                                             ; preds = %rb_num2int_inline.exit45
  %i.p = call i64 @rb_string_value(ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.q = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp slt i64 %i.t, %i.m
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_str_modify(i64 noundef %i.q) #9
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = sub nsw i64 %i.m, %i.t
  call void @rb_str_modify_expand(i64 noundef %i.q, i64 noundef %i.u) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = load i64, ptr %i.c, align 8, !tbaa !13
  br label %rsock_strbuf.exit

rsock_strbuf.exit:                                ; preds = %bb.f, %bb.j
  %.0.i46 = phi i64 [ %i.o, %bb.f ], [ %i.v, %bb.j ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.z) #9
  %i.aa = call i32 @rb_io_read_pending(ptr noundef %i.z) #11
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rsock_strbuf.exit
  %i.ab = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.6) #10
  unreachable

bb.l:                                             ; preds = %rsock_strbuf.exit
  %i.ac = or i32 %i.h, 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27
  call void @rb_io_check_closed(ptr noundef %i.z) #9
  %i.af = inttoptr i64 %.0.i46 to ptr             ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ah = and i64 %i.ag, 8192
  %.not.i47 = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  br i1 %.not.i47, label %RSTRING_PTR.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.l, %bb.m
  %i.ak = phi ptr [ %i.aj, %bb.m ], [ %i.ai, %bb.l ]
  %i.al = call i64 @recvfrom(i32 noundef %i.ae, ptr noundef %i.ak, i64 noundef %i.m, i32 noundef %i.ac, ptr nonnull %6, ptr noundef nonnull %i.d) #9 ; 5 uses
  %.not40 = icmp ne i64 %i.al, -1
  %i.am = load i32, ptr %i.d, align 4
  %i.an = icmp ugt i32 %i.am, 2048
  %or.cond = select i1 %.not40, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o
end_hunk_0
