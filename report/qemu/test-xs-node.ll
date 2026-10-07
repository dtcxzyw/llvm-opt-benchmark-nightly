Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test-xs-node?download=true
inline.NumInlined: 88
inline.NumDeleted: 16
begin_hunk_0_@xs_impl_read:bb.a

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext i32 %2 to i64
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call ptr @g_hash_table_lookup(ptr noundef %i.p, ptr noundef nonnull %i.r) #17 ; 3 uses
  %.not37.not.i = icmp eq ptr %i.s, null
  br i1 %.not37.not.i, label %init_walk_op.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 3128
  store i32 %i.u, ptr %i.v, align 8
  store i8 1, ptr %i.h, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.08.ph = phi ptr [ %i.s, %bb.e ], [ %0, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 3088
  store ptr @xs_node_get_content, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 3096
  store ptr %4, ptr %i.x, align 8
  %i.y = call fastcc i32 @xs_node_walk(ptr noundef nonnull %.08.ph, ptr noundef %5)
  br label %init_walk_op.exit

init_walk_op.exit:                                ; preds = %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ %i.y, %bb.f ], [ 2, %bb.d ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @xs_node_get_content(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3096
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3132
  %i.d = load i8, ptr %i.c, align 4, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 358, ptr noundef nonnull @__PRETTY_FUNCTION__.xs_node_get_content) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 359, ptr noundef nonnull @__PRETTY_FUNCTION__.xs_node_get_content) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call ptr @g_byte_array_append(ptr noundef %i.b, ptr noundef %i.i, i32 noundef %i.k) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @xs_node_walk(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = load ptr, ptr %0, align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18 ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @g_hash_table_lookup(ptr noundef %i.g, ptr noundef nonnull %i.c) #17 ; 3 uses
  %i.i = getelementptr i8, ptr %i.c, i64 %i.d     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 1        ; 3 uses
  %i.k = load i8, ptr %i.j, align 1
  %.not108 = icmp eq i8 %i.k, 0
  br i1 %.not108, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 47) #18 ; 2 uses
  %.not109 = icmp eq ptr %i.l, null
  br i1 %.not109, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.l, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 47, ptr %i.i, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.098 = phi ptr [ %i.j, %bb.d ], [ null, %bb.a ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3133 ; 5 uses
  %i.n = load i8, ptr %i.m, align 1, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.b, align 8
  %.not110 = icmp eq i32 %i.p, 1
  br i1 %.not110, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3132
  store i8 0, ptr %i.q, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.not111 = icmp eq ptr %.098, null
  br i1 %.not111, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = select i1 %i.o, ptr @.str.15, ptr @.str.16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call fastcc zeroext i1 @can_access(i32 noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %i.r)
  br i1 %i.w, label %bb.j, label %bb.an

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 %i.y(ptr noundef nonnull %0, ptr noundef nonnull %1) #17 ; 2 uses
  %.not112 = icmp eq i32 %i.z, 0
  br i1 %.not112, label %bb.k, label %bb.an

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @fire_watches(ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %bb.an

bb.l:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3132 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !range !9, !noundef !10 ; 2 uses
  %i.ac = trunc nuw i8 %i.ab to i1
  %.not113 = icmp eq ptr %i.b, null
  br i1 %.not113, label %thread-pre-split.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not114 = icmp eq ptr %i.ae, null
  br i1 %.not114, label %thread-pre-split.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m
  %i.af = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.ae, ptr noundef nonnull %.098) #17 ; 5 uses
  store ptr %i.af, ptr %i.a, align 8
  %.not115 = icmp eq ptr %i.af, null
  br i1 %.not115, label %thread-pre-split.thread, label %bb.n

bb.n:                                             ; preds = %thread-pre-split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !range !9, !noundef !10
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load i32, ptr %i.af, align 8            ; 4 uses
  br i1 %i.ai, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %xs_node_ref.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 642, ptr noundef nonnull @__PRETTY_FUNCTION__.xs_node_walk) #19
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.al = icmp ugt i32 %i.aj, 2147483646
  br i1 %i.al, label %bb.r, label %bb.s, !prof !17

bb.r:                                             ; preds = %bb.q
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 121, ptr noundef nonnull @__func__.xs_node_ref, ptr noundef nonnull @.str.27) #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not.i124 = icmp eq i32 %i.aj, 0
  br i1 %.not.i124, label %bb.t, label %xs_node_ref.exit, !prof !18

bb.t:                                             ; preds = %bb.s
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 123, ptr noundef nonnull @__func__.xs_node_ref, ptr noundef nonnull @.str.28) #19
  unreachable

xs_node_ref.exit:                                 ; preds = %bb.o, %bb.s
  %2 = phi i32 [ %i.aj, %bb.s ], [ 1, %bb.o ]
  %i.am = add nuw nsw i32 %2, 1
  store i32 %i.am, ptr %i.af, align 8
  %i.an = load i8, ptr %i.m, align 1, !range !9, !noundef !10
  %i.ao = and i8 %i.an, %i.ab
  %or.cond.not = icmp eq i8 %i.ao, 0
  br i1 %or.cond.not, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %xs_node_ref.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @g_hash_table_remove(ptr noundef %i.aq, ptr noundef nonnull %.098) #17 ; 0 uses
  br label %bb.aa

thread-pre-split.thread:                          ; preds = %bb.m, %bb.l, %thread-pre-split
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 3134
  %i.at = load i8, ptr %i.as, align 2, !range !9, !noundef !10
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.v, label %bb.an

bb.v:                                             ; preds = %thread-pre-split.thread
  %i.av = load i8, ptr %i.m, align 1, !range !9, !noundef !10
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 657, ptr noundef nonnull @__PRETTY_FUNCTION__.xs_node_walk) #19
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 3120 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call fastcc zeroext i1 @can_access(i32 noundef %i.ay, ptr noundef %i.ba, ptr noundef nonnull @.str.15)
  br i1 %i.bb, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  %i.bc = load i32, ptr %i.ax, align 8
  %.not116 = icmp eq i32 %i.bc, 0
  br i1 %.not116, label %xs_node_create.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 3128
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp ugt i32 %i.be, 999
  br i1 %i.bf, label %bb.an, label %xs_node_create.exit

xs_node_create.exit:                              ; preds = %bb.y, %bb.z
  %i.bg = load ptr, ptr %i.az, align 8
  %i.bh = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #20 ; 5 uses
  store i32 1, ptr %i.bh, align 8
  %i.bi = load i32, ptr @nr_xs_nodes, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @nr_xs_nodes, align 4
  %i.bk = load ptr, ptr @xs_node_list, align 8
  %i.bl = tail call ptr @g_list_prepend(ptr noundef %i.bk, ptr noundef nonnull %i.bh) #17
  store ptr %i.bl, ptr @xs_node_list, align 8
  %i.bm = tail call noalias ptr @g_strdup(ptr noundef nonnull %.098) #17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = tail call ptr @g_list_copy_deep(ptr noundef %i.bg, ptr noundef nonnull @do_perm_copy, ptr noundef null) #17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bo, ptr %i.bp, align 8
  store ptr %i.bh, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8
  store i8 1, ptr %i.aa, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %xs_node_ref.exit, %bb.u, %xs_node_create.exit
  %.097 = phi i1 [ true, %bb.u ], [ false, %xs_node_ref.exit ], [ false, %xs_node_create.exit ] ; 2 uses
  %.not117 = icmp eq ptr %i.h, null
  br i1 %.not117, label %.thread130, label %bb.ab

.thread130:                                       ; preds = %bb.aa
  %i.bt = call fastcc i32 @xs_node_walk(ptr noundef nonnull %i.a, ptr noundef %1)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 3112 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call ptr @g_list_append(ptr noundef %i.bv, ptr noundef nonnull %i.h) #17
  store ptr %i.bw, ptr %i.bu, align 8
  %i.bx = call fastcc i32 @xs_node_walk(ptr noundef nonnull %i.a, ptr noundef %1)
  %i.by = load ptr, ptr %i.bu, align 8
  %i.bz = call ptr @g_list_remove(ptr noundef %i.by, ptr noundef nonnull %i.h) #17
  store ptr %i.bz, ptr %i.bu, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.thread130, %bb.ab
  %i.ca = phi i32 [ %i.bt, %.thread130 ], [ %i.bx, %bb.ab ] ; 3 uses
  %.not118 = icmp eq i32 %i.ca, 0
  br i1 %.not118, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cb = load i8, ptr %i.m, align 1, !range !9, !noundef !10
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %.097, label %g_strdup_inline.exit, label %bb.af

g_strdup_inline.exit:                             ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noalias ptr @g_strdup(ptr noundef nonnull %.098) #17
  %i.cg = load ptr, ptr %i.a, align 8
  %i.ch = call i32 @g_hash_table_replace(ptr noundef %i.ce, ptr noundef %i.cf, ptr noundef %i.cg) #17 ; 0 uses
  br label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.ci = load ptr, ptr %i.a, align 8
  call void @xs_node_unref(ptr noundef %i.ci)
  br label %bb.an

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.ac, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = call fastcc ptr @xs_node_copy(ptr noundef nonnull %i.b)
  store ptr %i.cj, ptr %0, align 8
  call void @xs_node_unref(ptr noundef nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 3134
  %i.cl = load i8, ptr %i.ck, align 2, !range !9, !noundef !10
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.co = icmp ne ptr %i.cn, null
  %or.cond3 = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond3, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !9, !noundef !10
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8
  store i8 0, ptr %i.cp, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.cv = load ptr, ptr %0, align 8
  %i.cw = call fastcc zeroext i1 @xs_node_add_child(ptr noundef %i.cv, ptr noundef nonnull %.098, ptr noundef %i.cn)
  %.not = xor i1 %i.cw, true
  %or.cond5 = or i1 %.097, %.not
  %i.cx = load ptr, ptr %i.a, align 8
  %i.cy = icmp ne ptr %i.cx, null
  %or.cond7 = select i1 %or.cond5, i1 %i.cy, i1 false
  br i1 %or.cond7, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = load ptr, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.da, align 8
  br label %bb.an

bb.an:                                            ; preds = %thread-pre-split.thread, %bb.z, %bb.x, %bb.i, %bb.k, %bb.j, %bb.am, %bb.al, %g_strdup_inline.exit, %bb.af
  %.1 = phi i32 [ %i.ca, %g_strdup_inline.exit ], [ %i.ca, %bb.af ], [ 0, %bb.al ], [ 0, %bb.am ], [ 13, %bb.x ], [ %i.z, %bb.j ], [ 28, %bb.z ], [ 13, %bb.i ], [ 0, %bb.k ], [ 2, %thread-pre-split.thread ] ; 2 uses
  store i8 0, ptr %i.i, align 1
  %.not119 = icmp eq i64 %i.d, 0
  br i1 %.not119, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 3112
  %i.de = load ptr, ptr %i.dd, align 8
  %.not120 = icmp eq ptr %i.de, null
  br i1 %.not120, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 746, ptr noundef nonnull @__PRETTY_FUNCTION__.xs_node_walk) #19
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %.not121 = icmp eq i32 %.1, 0
  br i1 %.not121, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.df = load i8, ptr %i.m, align 1, !range !9, !noundef !10
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 3135
  %i.di = load i8, ptr %i.dh, align 1, !range !9, !noundef !10
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = load ptr, ptr %1, align 8               ; 5 uses
  br i1 %i.dj, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
end_hunk_0
