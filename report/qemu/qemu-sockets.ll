Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-sockets?download=true
inline.NumInlined: 34
inline.NumDeleted: 22
begin_hunk_0_@inet_parse:bb.a
  br label %g_strdup_inline.exit93

bb.i:                                             ; preds = %bb.d
  %i.p = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 58) #15 ; 4 uses
  %.not79 = icmp eq ptr %i.p, null
  br i1 %.not79, label %.critedge91, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #15
  %i.r = icmp ult i64 %i.q, 2
  br i1 %i.r, label %.critedge91, label %bb.k

.critedge91:                                      ; preds = %bb.j, %bb.i
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 732, ptr noundef nonnull @__func__.inet_parse, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b) #13
  br label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.b to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call noalias ptr @g_strndup(ptr noundef nonnull %i.b, i64 noundef %i.u) #13
  store ptr %i.v, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %g_strdup_inline.exit93

g_strdup_inline.exit93:                           ; preds = %bb.k, %bb.h
  %.sink = phi ptr [ %i.w, %bb.k ], [ %i.o, %bb.h ]
  %i.x = tail call noalias ptr @g_strdup(ptr noundef nonnull %.sink) #13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8) #13
  %.not81 = icmp eq ptr %i.z, null
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %g_strdup_inline.exit93
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aa, align 8
  %i.ab = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, i1 noundef zeroext false) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %g_strdup_inline.exit93
  %i.ae = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9) #13
  %.not82 = icmp eq ptr %i.ae, null
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.af, align 2
  %i.ag = tail call i64 @qemu_opt_get_number(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9, i64 noundef 0) #13
  %i.ah = trunc i64 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ah, ptr %i.ai, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10) #13
  %.not83 = icmp eq ptr %i.aj, null
  br i1 %.not83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.ak, align 2
  %i.al = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10, i1 noundef zeroext false) #13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.an = zext i1 %i.al to i8
  store i8 %i.an, ptr %i.am, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11) #13
  %.not84 = icmp eq ptr %i.ao, null
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ap, align 8
  %i.aq = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11, i1 noundef zeroext false) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.as = zext i1 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12) #13
  %.not85 = icmp eq ptr %i.at, null
  br i1 %.not85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.au, align 2
  %i.av = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12, i1 noundef zeroext false) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ax = zext i1 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13) #13
  %.not86 = icmp eq ptr %i.ay, null
  br i1 %.not86, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.az, align 4
  %i.ba = tail call i64 @qemu_opt_get_number(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13, i64 noundef 0) #13
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bb, ptr %i.bc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bd = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14) #13
  %.not87 = icmp eq ptr %i.bd, null
  br i1 %.not87, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.be, align 4
  %i.bf = tail call i64 @qemu_opt_get_number(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, i64 noundef 0) #13
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bg, ptr %i.bh, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bi = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15) #13
  %.not88 = icmp eq ptr %i.bi, null
  br i1 %.not88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.bj, align 4
  %i.bk = tail call i64 @qemu_opt_get_number(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, i64 noundef 0) #13
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bl, ptr %i.bm, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bn = tail call ptr @qemu_opt_find(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16) #13
  %.not89 = icmp eq ptr %i.bn, null
  br i1 %.not89, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 1, ptr %i.bo, align 4
  %i.bp = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16, i1 noundef zeroext false) #13
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.br = zext i1 %i.bp to i8
  store i8 %i.br, ptr %i.bq, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.c, %.critedge, %.critedge91, %bb.ab, %bb.aa, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %.critedge ], [ -1, %.critedge91 ], [ 0, %bb.ab ], [ 0, %bb.aa ]
  ret i32 %.3
}

declare ptr @qemu_opts_parse(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @qemu_opt_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @qemu_opt_find(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @qemu_opt_get_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @qemu_opt_get_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, -2147483648) i32 @unix_listen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
g_strdup_inline.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #16 ; 3 uses
  %i.b = tail call noalias ptr @g_strdup(ptr noundef %0) #13
  store ptr %i.b, ptr %i.a, align 8
  %i.c = tail call fastcc i32 @unix_listen_saddr(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %1)
  tail call void @qapi_free_UnixSocketAddress(ptr noundef nonnull %i.a) #13
  ret i32 %i.c
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @unix_listen_saddr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.sockaddr_un, align 2        ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 9
  %.val = load i8, ptr %i.a, align 1, !range !8, !noundef !9 ; 2 uses
  %i.b = trunc nuw i8 %.val to i1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %3, i8 0, i64 110, i1 false), !annotation !7
  %i.c = tail call i32 @qemu_socket(i32 noundef 1, i32 noundef 1, i32 noundef 0) #13 ; 5 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #14
  %i.f = load i32, ptr %i.e, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 967, ptr noundef nonnull @__func__.unix_listen_saddr, i32 noundef %i.f, ptr noundef nonnull @.str.45) #13
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %4 = or i8 %i.h, %.val
  %or.cond.not = icmp eq i8 %4, 0
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @g_get_tmp_dir() #13
  %i.j = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.46, ptr noundef %i.i) #13 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.047 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 5 uses
  %.046 = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 7 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.046) #15 ; 5 uses
  %i.l = icmp ugt i64 %i.k, 108
  %i.m = icmp eq i64 %i.k, 108
  %or.cond3 = and i1 %i.m, %i.b
  %or.cond53 = select i1 %i.l, i1 true, i1 %or.cond3
  br i1 %or.cond53, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @__func__.unix_listen_saddr, ptr noundef nonnull @.str.47, ptr noundef nonnull %.046) #13
  %i.n = select i1 %i.b, i64 107, i64 108
  tail call void (ptr, ptr, ...) @error_append_hint(ptr noundef %2, ptr noundef nonnull @.str.48, i64 noundef %i.n) #13
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq ptr %.047, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @mkstemp64(ptr noundef nonnull %.047) #13 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @__errno_location() #14
  %i.r = load i32, ptr %i.q, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @__func__.unix_listen_saddr, i32 noundef %i.r, ptr noundef nonnull @.str.49, ptr noundef nonnull %.047) #13
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.s = tail call i32 @close(i32 noundef %i.o) #13 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  br i1 %i.b, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call i32 @unlink(ptr noundef nonnull %.046) #13
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.v = tail call ptr @__errno_location() #14
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not52 = icmp eq i32 %i.w, 2
  br i1 %.not52, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 1007, ptr noundef nonnull @__func__.unix_listen_saddr, i32 noundef %i.w, ptr noundef nonnull @.str.30, ptr noundef nonnull %.046) #13
  br label %bb.v

bb.o:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %i.x, i8 noundef 0, i64 noundef 108, i1 noundef false) #13
  store i16 1, ptr %3, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.z = call ptr @__memcpy_chk(ptr noundef nonnull %i.y, ptr noundef nonnull %.046, i64 noundef %i.k, i64 noundef 107) #13, !alias.scope !19 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ab = load i8, ptr %i.aa, align 2, !range !8, !noundef !9
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %saddr_is_tight.exit, label %saddr_is_tight.exit.thread

saddr_is_tight.exit:                              ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %saddr_is_tight.exit.thread, label %bb.q

saddr_is_tight.exit.thread:                       ; preds = %bb.o, %saddr_is_tight.exit
  %i.ag = trunc nuw nsw i64 %i.k to i32
  %i.ah = add nuw nsw i32 %i.ag, 3
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %i.ai, i8 noundef 0, i64 noundef 108, i1 noundef false) #13
  store i16 1, ptr %3, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ak = call ptr @__memcpy_chk(ptr noundef nonnull %i.aj, ptr noundef nonnull %.046, i64 noundef %i.k, i64 noundef 108) #13, !alias.scope !20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %saddr_is_tight.exit, %saddr_is_tight.exit.thread, %bb.p
  %.045 = phi i32 [ %i.ah, %saddr_is_tight.exit.thread ], [ 110, %saddr_is_tight.exit ], [ 110, %bb.p ]
  %i.al = call i32 @bind(i32 noundef %i.c, ptr nonnull %3, i32 noundef %.045) #13
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = tail call ptr @__errno_location() #14
  %i.ao = load i32, ptr %i.an, align 4
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 1026, ptr noundef nonnull @__func__.unix_listen_saddr, i32 noundef %i.ao, ptr noundef nonnull @.str.50, ptr noundef nonnull %.046) #13
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ap = call i32 @listen(i32 noundef %i.c, i32 noundef %1) #13
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ar = tail call ptr @__errno_location() #14
  %i.as = load i32, ptr %i.ar, align 4
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 1030, ptr noundef nonnull @__func__.unix_listen_saddr, i32 noundef %i.as, ptr noundef nonnull @.str.51) #13
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @g_free(ptr noundef %.047) #13
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.r, %bb.n, %bb.i, %bb.f
  call void @g_free(ptr noundef %.047) #13
  %i.at = call i32 @close(i32 noundef %i.c) #13   ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.v ], [ %i.c, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

declare void @qapi_free_UnixSocketAddress(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, -2147483648) i32 @unix_connect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
g_strdup_inline.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #16 ; 3 uses
  %i.b = tail call noalias ptr @g_strdup(ptr noundef %0) #13
  store ptr %i.b, ptr %i.a, align 8
  %i.c = tail call fastcc i32 @unix_connect_saddr(ptr noundef nonnull %i.a, ptr noundef %1)
  tail call void @qapi_free_UnixSocketAddress(ptr noundef nonnull %i.a) #13
  ret i32 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @unix_connect_saddr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.sockaddr_un, align 2        ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 9
  %.val = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %.val to i1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1052, ptr noundef nonnull @__func__.unix_connect_saddr, ptr noundef nonnull @.str.52) #13
  br label %.thread37

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %2, i8 0, i64 110, i1 false), !annotation !7
  %i.e = tail call i32 @qemu_socket(i32 noundef 1, i32 noundef 1, i32 noundef 0) #13 ; 5 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #14
  %i.h = load i32, ptr %i.g, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1058, ptr noundef nonnull @__func__.unix_connect_saddr, i32 noundef %i.h, ptr noundef nonnull @.str.53) #13
  br label %.thread37

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8                ; 4 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #15 ; 5 uses
  %i.k = icmp ugt i64 %i.j, 108
  %i.l = icmp eq i64 %i.j, 108
  %or.cond = and i1 %i.l, %i.b
  %or.cond34 = select i1 %i.k, i1 true, i1 %or.cond
  br i1 %or.cond34, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1065, ptr noundef nonnull @__func__.unix_connect_saddr, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.i) #13
  %i.m = select i1 %i.b, i64 107, i64 108
  tail call void (ptr, ptr, ...) @error_append_hint(ptr noundef %1, ptr noundef nonnull @.str.48, i64 noundef %i.m) #13
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %i.n, i8 noundef 0, i64 noundef 108, i1 noundef false) #13
  store i16 1, ptr %2, align 2
  br i1 %i.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.p = call ptr @__memcpy_chk(ptr noundef nonnull %i.o, ptr noundef nonnull %i.i, i64 noundef %i.j, i64 noundef 107) #13, !alias.scope !28 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = load i8, ptr %i.q, align 2, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %saddr_is_tight.exit, label %saddr_is_tight.exit.thread

saddr_is_tight.exit:                              ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
end_hunk_0
