Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/char-socket?download=true
inline.NumInlined: 123
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@yank_unregister_function
; Function Attrs: nounwind sspstrong uwtable
define internal void @char_socket_yank_iochannel(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #10
  %i.b = tail call i32 @qio_channel_shutdown(ptr noundef %i.a, i32 noundef 3, ptr noundef null) #10 ; 0 uses
  ret void
}

declare i32 @qio_channel_close(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_source_destroy(ptr noundef) local_unnamed_addr #1

declare void @g_source_unref(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qio_channel_has_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @qio_channel_shutdown(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal void @tcp_chr_parse(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.13) #10 ; 2 uses
  %i.b = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.14) #10 ; 3 uses
  %i.c = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.15) #10 ; 2 uses
  %i.d = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.16) #10 ; 2 uses
  %i.e = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.17, i1 noundef zeroext true) #10
  %i.f = zext i1 %i.e to i8
  %i.g = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.18, i1 noundef zeroext false) #10
  %i.h = zext i1 %i.g to i8
  %i.i = icmp ne ptr %i.a, null                   ; 2 uses
  %i.j = zext i1 %i.i to i32
  %i.k = icmp ne ptr %i.d, null
  %i.l = zext i1 %i.k to i32
  %i.m = icmp ne ptr %i.b, null                   ; 2 uses
  %i.n = zext i1 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, %i.j
  %i.p = add nuw nsw i32 %i.o, %i.l
  %i.q = icmp samesign ugt i32 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1445, ptr noundef nonnull @__func__.tcp_chr_parse, ptr noundef nonnull @.str.19) #10
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %i.b, null
  %i.s = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1450, ptr noundef nonnull @__func__.tcp_chr_parse, ptr noundef nonnull @.str.20) #10
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  store i32 4, ptr %1, align 8
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @g_malloc0(i64 noundef 64) #12 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.t, ptr %i.u, align 8
  tail call void @qemu_chr_parse_common(ptr noundef %0, ptr noundef %i.t) #10
  %i.v = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.21) #10
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.22) #10
  %.not149 = icmp eq ptr %i.w, null
  br i1 %.not149, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1459, ptr noundef nonnull @__func__.tcp_chr_parse, ptr noundef nonnull @.str.23) #10
  br label %bb.p

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.x = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.21) #10
  %.not150 = icmp eq ptr %i.x, null
  br i1 %.not150, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.22) #10
  %i.z = icmp ne ptr %i.y, null
  %i.aa = zext i1 %i.z to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = phi i8 [ 1, %bb.h ], [ %i.aa, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  store i8 %i.ab, ptr %i.ac, align 4
  %i.ad = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.21, i1 noundef zeroext true) #10
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.22, i1 noundef zeroext false) #10
  %i.af = zext i1 %i.ae to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi i8 [ 1, %bb.j ], [ %i.af, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 45
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i8 1, ptr %i.ai, align 8
  %i.aj = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.24, i1 noundef zeroext false) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 41 ; 2 uses
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 1
  %i.am = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.25) #10
  %i.an = icmp ne ptr %i.am, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 46
  %i.ap = zext i1 %i.an to i8
  store i8 %i.ap, ptr %i.ao, align 2
  %i.aq = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.25, i1 noundef zeroext false) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 47
  %i.as = zext i1 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1
  %i.at = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.26) #10
  %i.au = icmp ne ptr %i.at, null
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8
  %i.ax = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.26, i1 noundef zeroext false) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 49
  %i.az = zext i1 %i.ax to i8
  store i8 %i.az, ptr %i.ay, align 1
  %i.ba = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.27) #10
  %i.bb = icmp ne ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 50
  %i.bd = zext i1 %i.bb to i8
  store i8 %i.bd, ptr %i.bc, align 2
  %i.be = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.27, i1 noundef zeroext false) #10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 51
  %i.bg = zext i1 %i.be to i8
  store i8 %i.bg, ptr %i.bf, align 1
  %i.bh = tail call ptr @qemu_opt_find(ptr noundef %0, ptr noundef nonnull @.str.28) #10
  %.not151 = icmp eq ptr %i.bh, null
  br i1 %.not151, label %bb.m, label %g_strdup_inline.exit176

bb.m:                                             ; preds = %bb.l
  %i.bi = load i8, ptr %i.ak, align 1, !range !7, !noundef !8
  br label %g_strdup_inline.exit176

g_strdup_inline.exit176:                          ; preds = %bb.m, %bb.l
  %i.bj = phi i8 [ 1, %bb.l ], [ %i.bi, %bb.m ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 42
  store i8 %i.bj, ptr %i.bk, align 2
  %i.bl = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.28, i1 noundef zeroext true) #10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 43
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 1
  %i.bo = tail call ptr @qemu_opt_find(ptr noundef %0, ptr noundef nonnull @.str.29) #10
  %i.bp = icmp ne ptr %i.bo, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.br = zext i1 %i.bp to i8
  store i8 %i.br, ptr %i.bq, align 4
  %i.bs = tail call i64 @qemu_opt_get_number(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 0) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %i.bs, ptr %i.bt, align 8
  %i.bu = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.30) #10
  %i.bv = tail call noalias ptr @g_strdup(ptr noundef %i.bu) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.31) #10
  %i.by = tail call noalias ptr @g_strdup(ptr noundef %i.bx) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #12 ; 6 uses
  br i1 %i.i, label %g_strdup_inline.exit166, label %bb.n

g_strdup_inline.exit166:                          ; preds = %g_strdup_inline.exit176
  store i32 1, ptr %i.ca, align 8
  %i.cb = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #12 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.cc, align 8
  %i.cd = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.a) #10
  store ptr %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  store i8 1, ptr %i.ce, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 11
  store i8 %i.f, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  store i8 %i.h, ptr %i.ch, align 1
  br label %bb.o

bb.n:                                             ; preds = %g_strdup_inline.exit176
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  br i1 %i.m, label %g_strdup_inline.exit161, label %g_strdup_inline.exit

g_strdup_inline.exit161:                          ; preds = %bb.n
  store i32 0, ptr %i.ca, align 8
  %i.cj = tail call noalias dereferenceable_or_null(56) ptr @g_malloc(i64 noundef 56) #12 ; 17 uses
  store ptr %i.cj, ptr %i.ci, align 8
  %i.ck = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b) #10
  %i.cl = tail call noalias ptr @g_strdup(ptr noundef %i.c) #10
  %i.cm = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  %i.cn = icmp ne ptr %i.cm, null
  %i.co = zext i1 %i.cn to i8
  %i.cp = tail call i64 @qemu_opt_get_number(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 0) #10
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %i.cs = icmp ne ptr %i.cr, null
  %i.ct = zext i1 %i.cs to i8
  %i.cu = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.33, i1 noundef zeroext false) #10
  %i.cv = zext i1 %i.cu to i8
  %i.cw = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.34) #10
  %i.cx = icmp ne ptr %i.cw, null
  %i.cy = zext i1 %i.cx to i8
  %i.cz = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.34, i1 noundef zeroext false) #10
  %i.da = zext i1 %i.cz to i8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx, i8 0, i64 3, i1 false)
  store ptr %i.ck, ptr %i.cj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 17
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.cj, i64 18
  store i8 %i.co, ptr %.sroa.2.0..sroa_idx.a, align 2
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.cj, i64 19
  store i8 0, ptr %.sroa.3.0..sroa_idx.a, align 1
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  store i16 %i.cq, ptr %.sroa.4.0..sroa_idx.a, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 22
  store i8 %i.ct, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 23
  store i8 %i.cv, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i8 %i.cy, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 25
  store i8 %i.da, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 27
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.o

g_strdup_inline.exit:                             ; preds = %bb.n
  store i32 3, ptr %i.ca, align 8
  %i.db = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #12 ; 2 uses
  store ptr %i.db, ptr %i.ci, align 8
  %i.dc = tail call noalias ptr @g_strdup(ptr noundef %i.d) #10
  store ptr %i.dc, ptr %i.db, align 8
  br label %bb.o

bb.o:                                             ; preds = %g_strdup_inline.exit161, %g_strdup_inline.exit, %g_strdup_inline.exit166
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ca, ptr %i.dd, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @tcp_chr_open(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.YankInstance, align 8       ; 4 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 85, ptr noundef nonnull @__func__.SOCKET_CHARDEV) #10 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i8, ptr %i.d, align 4, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  %i.h = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.i = zext nneg i8 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  %i.o = load i8, ptr %i.n, align 1, !range !7, !noundef !8
  %i.p = icmp ne i8 %i.o, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.r = zext i1 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 46
  %i.t = load i8, ptr %i.s, align 2, !range !7, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 47
  %i.w = load i8, ptr %i.v, align 1, !range !7, !noundef !8
  %i.x = icmp ne i8 %i.w, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.y = phi i1 [ %i.x, %bb.f ], [ false, %bb.e ] ; 2 uses
  %i.z = zext i1 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !7, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  %i.ae = load i8, ptr %i.ad, align 1, !range !7, !noundef !8
  %i.af = icmp ne i8 %i.ae, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ag = phi i1 [ %i.af, %bb.h ], [ false, %bb.g ] ; 2 uses
  %i.ah = zext i1 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 2, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 43
  %i.am = load i8, ptr %i.al, align 1, !range !7, !noundef !8
  %i.an = icmp ne i8 %i.am, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ao = phi i1 [ %i.an, %bb.j ], [ false, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 50 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2, !range !7, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 51
  %i.at = load i8, ptr %i.as, align 1, !range !7, !noundef !8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.au = phi i8 [ %i.at, %bb.l ], [ 0, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 4, !range !7, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.az = load i64, ptr %i.ay, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ba = phi i64 [ %i.az, %bb.n ], [ 0, %bb.m ]  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store i8 %i.r, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 257
  store i8 %i.z, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 258
  store i8 %i.ah, ptr %i.bd, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i8 %i.au, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 %i.j, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 8 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = tail call ptr @object_get_objects_root() #10
  %i.bj = load ptr, ptr %i.bg, align 8
  %i.bk = tail call ptr @object_resolve_path_component(ptr noundef %i.bi, ptr noundef %i.bj) #10 ; 2 uses
  %.not67 = icmp eq ptr %i.bk, null
  br i1 %.not67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.bg, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1368, ptr noundef nonnull @__func__.tcp_chr_open, ptr noundef nonnull @.str.35, ptr noundef %i.bl) #10
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.bm = tail call ptr @object_dynamic_cast(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.30) #10 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8
  %.not68 = icmp eq ptr %i.bm, null
  br i1 %.not68, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.bg, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1376, ptr noundef nonnull @__func__.tcp_chr_open, ptr noundef nonnull @.str.36, ptr noundef %i.bo) #10
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.bp = tail call ptr @object_ref(ptr noundef nonnull %i.bm) #10 ; 0 uses
  %i.bq = load ptr, ptr %i.bn, align 8
  %i.br = zext i1 %i.q to i32
  %i.bs = tail call zeroext i1 @qcrypto_tls_creds_check_endpoint(ptr noundef %i.bq, i32 noundef %i.br, ptr noundef %2) #10
  br i1 %i.bs, label %g_strdup_inline.exit, label %.critedge

g_strdup_inline.exit:                             ; preds = %bb.t, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noalias ptr @g_strdup(ptr noundef %i.bu) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call ptr @socket_address_flatten(ptr noundef %i.by) #10 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.bz, ptr %i.ca, align 8
  %.val = load i32, ptr %i.bz, align 8
  switch i32 %.val, label %bb.ae [
    i32 3, label %bb.u
    i32 1, label %bb.aa
    i32 2, label %bb.ac
  ]

bb.u:                                             ; preds = %g_strdup_inline.exit
  %i.cb = load i8, ptr %i.av, align 4, !range !7, !noundef !8
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1278, ptr noundef nonnull @__func__.qmp_chardev_validate_socket, ptr noundef nonnull @.str.37) #10
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.bg, align 8
  %.not25.i = icmp eq ptr %i.cd, null
  br i1 %.not25.i, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z
end_hunk_0
