Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fib_trie?download=true
inline.NumInlined: 290
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@fib_table_dump:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.sink.split

fn_trie_dump_leaf.exit:                           ; preds = %bb.p, %._crit_edge.loopexit.i
  %.079.lcssa.i = phi i64 [ 0, %bb.p ], [ %i.em, %._crit_edge.loopexit.i ]
  store i64 %.079.lcssa.i, ptr %i.o, align 8
  %i.eq = load i32, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.sink.split, label %bb.af

bb.af:                                            ; preds = %fn_trie_dump_leaf.exit
  %i.es = add i32 %.030, 1                        ; 2 uses
  %i.et = load i32, ptr %.0.i, align 8
  %i.eu = add i32 %i.et, 1                        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.ev = load i32, ptr %.0.i, align 8
  %i.ew = icmp ult i32 %i.eu, %i.ev
  br i1 %i.ew, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %.thread.i, %bb.af, %fn_trie_dump_leaf.exit, %.outer.backedge.i, %fn_trie_dump_leaf.exit.thread
  %.029131.sink = phi i32 [ %.029, %.outer.backedge.i ], [ %.029, %fn_trie_dump_leaf.exit.thread ], [ %i.eu, %bb.af ], [ %.029, %.thread.i ], [ %.029, %fn_trie_dump_leaf.exit ]
  %.030135.sink = phi i32 [ %.030, %.outer.backedge.i ], [ %.030, %fn_trie_dump_leaf.exit.thread ], [ %i.es, %bb.af ], [ %.030, %.thread.i ], [ %.030, %fn_trie_dump_leaf.exit ]
  %.235.ph = phi i32 [ 0, %.outer.backedge.i ], [ %.4111.i, %fn_trie_dump_leaf.exit.thread ], [ 0, %bb.af ], [ 0, %.thread.i ], [ %i.eq, %fn_trie_dump_leaf.exit ]
  %i.ex = zext i32 %.029131.sink to i64
  store i64 %i.ex, ptr %i.e, align 8
  %i.ey = sext i32 %.030135.sink to i64
  store i64 %i.ey, ptr %i.b, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.a
  %.235 = phi i32 [ 0, %bb.a ], [ %.235.ph, %.sink.split ]
  ret i32 %.235
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @fib_trie_init() local_unnamed_addr #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 4 uses
  %1 = alloca %struct.kmem_cache_args, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.a = call ptr @__kmem_cache_create_args(ptr noundef nonnull @.str.2, i32 noundef 56, ptr noundef nonnull %1, i32 noundef 256) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  store ptr %i.a, ptr @fn_alias_kmem, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = call ptr @__kmem_cache_create_args(ptr noundef nonnull @.str.3, i32 noundef 48, ptr noundef nonnull %0, i32 noundef 256) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  store ptr %i.b, ptr @trie_leaf_kmem, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @fib_proc_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 464        ; 5 uses
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %i.b, ptr noundef nonnull @fib_trie_seq_ops, i32 noundef 32, ptr noundef null) #13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 16
  %i.e = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %i.d, ptr noundef nonnull @fib_triestat_seq_show, ptr noundef null) #13
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 16
  %i.g = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %i.f, ptr noundef nonnull @fib_route_seq_ops, i32 noundef 40, ptr noundef null) #13
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 16
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %i.h) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.i = load ptr, ptr %i.a, align 16
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %i.i) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %bb.a ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @fib_triestat_seq_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.trie_stat, align 4          ; 41 uses
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef 48, i64 noundef 40) #13
  tail call void @__rcu_read_lock() #13
  %i.c = getelementptr i8, ptr %i.b, i64 1344
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ao = load ptr, ptr %i.c, align 64
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load volatile ptr, ptr %i.ap, align 8   ; 2 uses
  %.not3451 = icmp eq ptr %i.aq, null
  br i1 %.not3451, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.av
  %.03052 = phi ptr [ %i.gg, %bb.av ], [ %i.aq, %bb.b ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.03052, i64 40
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not35 = icmp eq ptr %i.as, null
  br i1 %.not35, label %bb.av, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.at = getelementptr i8, ptr %.03052, i64 16
  %.030.val = load i32, ptr %i.at, align 8        ; 2 uses
  switch i32 %.030.val, label %bb.f [
    i32 255, label %bb.d
    i32 254, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.au = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef 7) #13 ; 0 uses
  br label %fib_table_print.exit

bb.e:                                             ; preds = %bb.c
  %i.av = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef 6) #13 ; 0 uses
  br label %fib_table_print.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %.030.val) #13
  br label %fib_table_print.exit

fib_table_print.exit:                             ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  tail call void @__rcu_read_lock() #13
  %i.aw = getelementptr i8, ptr %i.as, i64 8
  %i.ax = load volatile ptr, ptr %i.aw, align 8   ; 4 uses
  %.not20.i.i = icmp eq ptr %i.ax, null
  br i1 %.not20.i.i, label %trie_collect_stats.exit.thread, label %.lr.ph57.i

trie_collect_stats.exit.thread:                   ; preds = %fib_table_print.exit
  tail call void @__rcu_read_unlock() #13
  br label %bb.n

.lr.ph57.i:                                       ; preds = %fib_table_print.exit
  %i.ay = getelementptr i8, ptr %i.ax, i64 5
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not21.i.i = icmp ne i8 %i.az, 0               ; 2 uses
  %..i.i = select i1 %.not21.i.i, ptr %i.ax, ptr %i.as
  %.25.i.i = zext i1 %.not21.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %fib_trie_get_next.exit.i, %.lr.ph57.i
  %i.ba = phi i8 [ %i.az, %.lr.ph57.i ], [ %i.cm, %fib_trie_get_next.exit.i ] ; 3 uses
  %.promoted.i49 = phi i32 [ 0, %.lr.ph57.i ], [ %.promoted.i48, %fib_trie_get_next.exit.i ] ; 3 uses
  %i.bb = phi i32 [ 0, %.lr.ph57.i ], [ %i.bu, %fib_trie_get_next.exit.i ] ; 2 uses
  %i.bc = phi i32 [ 0, %.lr.ph57.i ], [ %i.bv, %fib_trie_get_next.exit.i ] ; 2 uses
  %i.bd = phi i32 [ 0, %.lr.ph57.i ], [ %i.bw, %fib_trie_get_next.exit.i ] ; 2 uses
  %i.be = phi i32 [ 0, %.lr.ph57.i ], [ %i.bx, %fib_trie_get_next.exit.i ] ; 3 uses
  %i.bf = phi i32 [ 0, %.lr.ph57.i ], [ %i.by, %fib_trie_get_next.exit.i ] ; 3 uses
  %.056.i = phi ptr [ %i.ax, %.lr.ph57.i ], [ %i.ck, %fib_trie_get_next.exit.i ] ; 2 uses
  %.sroa.13.055.i = phi i32 [ %.25.i.i, %.lr.ph57.i ], [ %.sroa.13.4.i, %fib_trie_get_next.exit.i ] ; 3 uses
  %.sroa.8.054.i = phi i64 [ 0, %.lr.ph57.i ], [ %.sroa.8.2.i, %fib_trie_get_next.exit.i ]
  %.sroa.3.053.i = phi ptr [ %..i.i, %.lr.ph57.i ], [ %.sroa.3.2.i, %fib_trie_get_next.exit.i ] ; 2 uses
  %.not38.i = icmp eq i8 %i.ba, 0
  br i1 %.not38.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = add i32 %i.bd, 1                        ; 3 uses
  store i32 %i.bg, ptr %i.g, align 4
  %i.bh = add i32 %i.bc, %.sroa.13.055.i          ; 3 uses
  store i32 %i.bh, ptr %2, align 4
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.sroa.13.055.i, i32 %i.bb) ; 3 uses
  store i32 %spec.store.select, ptr %i.h, align 4
  %3 = getelementptr i8, ptr %.056.i, i64 8
  %4 = load volatile ptr, ptr %3, align 8         ; 2 uses
  %.not4050.i = icmp eq ptr %4, null
  br i1 %.not4050.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.bi = phi i32 [ %i.bj, %.lr.ph.i ], [ %.promoted.i49, %bb.h ]
  %.03451.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %4, %bb.h ]
  %i.bj = add i32 %i.bi, 1                        ; 3 uses
  %i.bk = load volatile ptr, ptr %.03451.i, align 8 ; 2 uses
  %.not40.i = icmp eq ptr %i.bk, null
  br i1 %.not40.i, label %.loopexit.i.loopexit, label %.lr.ph.i, !llvm.loop !99

bb.i:                                             ; preds = %bb.g
  %i.bl = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bl, ptr %i.d, align 4
  %i.bm = icmp ult i8 %i.ba, 32
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = zext nneg i8 %i.ba to i64
  %i.bo = getelementptr [4 x i8], ptr %i.e, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.br = getelementptr i8, ptr %.056.i, i64 -16
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = add i32 %i.be, %i.bs                    ; 2 uses
  store i32 %i.bt, ptr %i.f, align 4
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %.lr.ph.i
  store i32 %i.bj, ptr %i.i, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.k, %bb.h
  %.promoted.i48 = phi i32 [ %i.bj, %.loopexit.i.loopexit ], [ %.promoted.i49, %bb.k ], [ %.promoted.i49, %bb.h ] ; 3 uses
  %i.bu = phi i32 [ %spec.store.select, %.loopexit.i.loopexit ], [ %i.bb, %bb.k ], [ %spec.store.select, %bb.h ] ; 3 uses
  %i.bv = phi i32 [ %i.bh, %.loopexit.i.loopexit ], [ %i.bc, %bb.k ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bw = phi i32 [ %i.bg, %.loopexit.i.loopexit ], [ %i.bd, %bb.k ], [ %i.bg, %bb.h ] ; 4 uses
  %i.bx = phi i32 [ %i.be, %.loopexit.i.loopexit ], [ %i.bt, %bb.k ], [ %i.be, %bb.h ] ; 3 uses
  %i.by = phi i32 [ %i.bf, %.loopexit.i.loopexit ], [ %i.bl, %bb.k ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bz = getelementptr i8, ptr %.sroa.3.053.i, i64 4
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = icmp ult i8 %i.ca, 32
  br i1 %i.cb, label %.preheader.lr.ph.i.i, label %trie_collect_stats.exit

.preheader.lr.ph.i.i:                             ; preds = %.loopexit.i
  %i.cc = and i64 %.sroa.8.054.i, 4294967295
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge108, %.preheader.lr.ph.i.i
  %.sroa.13.3.i = phi i32 [ %.sroa.13.055.i, %.preheader.lr.ph.i.i ], [ %i.cx, %._crit_edge108 ] ; 2 uses
  %.03344.i.i = phi i64 [ %i.cc, %.preheader.lr.ph.i.i ], [ %i.cw, %._crit_edge108 ] ; 3 uses
  %.03543.i.i = phi ptr [ %.sroa.3.053.i, %.preheader.lr.ph.i.i ], [ %i.cq, %._crit_edge108 ] ; 5 uses
  %i.cd = getelementptr i8, ptr %.03543.i.i, i64 5
  %.035.val.i.i = load i8, ptr %i.cd, align 1
  %i.ce = zext nneg i8 %.035.val.i.i to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, -2                       ; 2 uses
  %i.ch = getelementptr i8, ptr %.03543.i.i, i64 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.03344.i.i, i64 %i.cg)
  %exitcond.not.i.i105.not = icmp ult i64 %.03344.i.i, %i.cg
  br i1 %exitcond.not.i.i105.not, label %.lr.ph107, label %._crit_edge108

bb.l:                                             ; preds = %.lr.ph107
  %exitcond.not.i.i = icmp eq i64 %i.ci, %umax.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge108, label %.lr.ph107, !llvm.loop !7

.lr.ph107:                                        ; preds = %.preheader.i.i, %bb.l
  %.134.i.i106 = phi i64 [ %i.ci, %bb.l ], [ %.03344.i.i, %.preheader.i.i ] ; 2 uses
  %i.ci = add i64 %.134.i.i106, 1                 ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.ch, i64 %.134.i.i106
  %i.ck = load volatile ptr, ptr %i.cj, align 8   ; 4 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %bb.l, label %fib_trie_get_next.exit.i, !llvm.loop !7

fib_trie_get_next.exit.i:                         ; preds = %.lr.ph107
  %i.cl = getelementptr i8, ptr %i.ck, i64 5
  %i.cm = load i8, ptr %i.cl, align 1             ; 2 uses
  %.not38.i.i = icmp ne i8 %i.cm, 0               ; 3 uses
  %.sroa.3.2.i = select i1 %.not38.i.i, ptr %i.ck, ptr %.03543.i.i
  %.sroa.8.2.i = select i1 %.not38.i.i, i64 0, i64 %i.ci
  %i.cn = zext i1 %.not38.i.i to i32
  %.sroa.13.4.i = add i32 %.sroa.13.3.i, %i.cn
  br label %bb.g, !llvm.loop !100

._crit_edge108:                                   ; preds = %bb.l, %.preheader.i.i
  %i.co = load i32, ptr %.03543.i.i, align 8
  %i.cp = getelementptr i8, ptr %.03543.i.i, i64 -8
  %i.cq = load volatile ptr, ptr %i.cp, align 8   ; 3 uses
  %.val.i.i = load i32, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val39.i.i = load i8, ptr %i.cr, align 4       ; 2 uses
  %i.cs = xor i32 %.val.i.i, %i.co
  %i.ct = zext i32 %i.cs to i64
  %i.cu = zext nneg i8 %.val39.i.i to i64
  %i.cv = lshr i64 %i.ct, %i.cu
  %i.cw = add nuw nsw i64 %i.cv, 1
  %i.cx = add i32 %.sroa.13.3.i, -1
  %i.cy = icmp ult i8 %.val39.i.i, 32
  br i1 %i.cy, label %.preheader.i.i, label %trie_collect_stats.exit, !llvm.loop !8

trie_collect_stats.exit:                          ; preds = %.loopexit.i, %._crit_edge108
  tail call void @__rcu_read_unlock() #13
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %trie_collect_stats.exit
  %i.cz = mul i32 %i.bv, 100
  %i.da = udiv i32 %i.cz, %i.bw
  br label %bb.n

bb.n:                                             ; preds = %trie_collect_stats.exit.thread, %bb.m, %trie_collect_stats.exit
  %i.db = phi i32 [ %i.bw, %bb.m ], [ 0, %trie_collect_stats.exit ], [ 0, %trie_collect_stats.exit.thread ] ; 2 uses
  %i.dc = phi i32 [ %i.bu, %bb.m ], [ %i.bu, %trie_collect_stats.exit ], [ 0, %trie_collect_stats.exit.thread ]
  %i.dd = phi i32 [ %.promoted.i48, %bb.m ], [ %.promoted.i48, %trie_collect_stats.exit ], [ 0, %trie_collect_stats.exit.thread ] ; 2 uses
  %i.de = phi i32 [ %i.by, %bb.m ], [ %i.by, %trie_collect_stats.exit ], [ 0, %trie_collect_stats.exit.thread ] ; 2 uses
  %i.df = phi i32 [ %i.bx, %bb.m ], [ %i.bx, %trie_collect_stats.exit ], [ 0, %trie_collect_stats.exit.thread ]
  %.0.i = phi i32 [ %i.da, %bb.m ], [ 0, %trie_collect_stats.exit ], [ 0, %trie_collect_stats.exit.thread ] ; 2 uses
  %i.dg = udiv i32 %.0.i, 100
  %i.dh = urem i32 %.0.i, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %i.dg, i32 noundef %i.dh) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %i.dc) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %i.db) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %i.dd) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %i.de) #13
  %i.di = load i32, ptr %i.j, align 4
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.o, label %.lr.ph.i38

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr %i.k, align 4
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.p, label %.lr.ph.i38

bb.p:                                             ; preds = %bb.o
  %i.dm = load i32, ptr %i.l, align 4
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.q, label %.lr.ph.i38

bb.q:                                             ; preds = %bb.p
  %i.do = load i32, ptr %i.m, align 4
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.r, label %.lr.ph.i38

bb.r:                                             ; preds = %bb.q
  %i.dq = load i32, ptr %i.n, align 4
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.s, label %.lr.ph.i38

bb.s:                                             ; preds = %bb.r
  %i.ds = load i32, ptr %i.o, align 4
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %.lr.ph.i38

bb.t:                                             ; preds = %bb.s
  %i.du = load i32, ptr %i.p, align 4
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.u, label %.lr.ph.i38

bb.u:                                             ; preds = %bb.t
  %i.dw = load i32, ptr %i.q, align 4
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.v, label %.lr.ph.i38

bb.v:                                             ; preds = %bb.u
  %i.dy = load i32, ptr %i.r, align 4
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.w, label %.lr.ph.i38

bb.w:                                             ; preds = %bb.v
  %i.ea = load i32, ptr %i.s, align 4
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.x, label %.lr.ph.i38

bb.x:                                             ; preds = %bb.w
  %i.ec = load i32, ptr %i.t, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.y, label %.lr.ph.i38

bb.y:                                             ; preds = %bb.x
  %i.ee = load i32, ptr %i.u, align 4
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %.lr.ph.i38

bb.z:                                             ; preds = %bb.y
  %i.eg = load i32, ptr %i.v, align 4
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.aa, label %.lr.ph.i38

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i32, ptr %i.w, align 4
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ab, label %.lr.ph.i38

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load i32, ptr %i.x, align 4
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ac, label %.lr.ph.i38

bb.ac:                                            ; preds = %bb.ab
  %i.em = load i32, ptr %i.y, align 4
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ad, label %.lr.ph.i38

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i32, ptr %i.z, align 4
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ae, label %.lr.ph.i38

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load i32, ptr %i.aa, align 4
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.af, label %.lr.ph.i38

bb.af:                                            ; preds = %bb.ae
  %i.es = load i32, ptr %i.ab, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ag, label %.lr.ph.i38

bb.ag:                                            ; preds = %bb.af
  %i.eu = load i32, ptr %i.ac, align 4
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ah, label %.lr.ph.i38

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.ad, align 4
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ai, label %.lr.ph.i38

bb.ai:                                            ; preds = %bb.ah
  %i.ey = load i32, ptr %i.ae, align 4
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %.lr.ph.i38

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load i32, ptr %i.af, align 4
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ak, label %.lr.ph.i38

bb.ak:                                            ; preds = %bb.aj
end_hunk_0
begin_hunk_1_@fib_route_seq_show:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.w
  %.05678 = phi ptr [ %i.i, %.lr.ph ], [ %i.ck, %bb.w ] ; 5 uses
  %i.m = getelementptr i8, ptr %.05678, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 7 uses
  %i.o = getelementptr i8, ptr %.05678, i64 27
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = zext nneg i8 %i.p to i32
  %.not.i = icmp eq i8 %i.p, 32
  %notmask.i = shl nsw i32 -1, %i.q
  %i.r = tail call i32 @llvm.bswap.i32(i32 %notmask.i)
  %.0.i = select i1 %.not.i, i32 0, i32 %i.r      ; 3 uses
  %i.s = getelementptr i8, ptr %.05678, i64 25
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = add i8 %i.t, -7
  %or.cond.i = icmp ult i8 %i.u, 2
  %spec.store.select.i = select i1 %or.cond.i, i32 512, i32 0 ; 3 uses
  %.not.i72 = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %.not.i72, label %fib_flag_trans.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.n, i64 104
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.j, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.w, i64 102
  %i.y = load i8, ptr %i.x, align 2, !range !37, !noundef !38
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.w, i64 128
  %i.ab = load volatile ptr, ptr %i.aa, align 8   ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 10
  %i.ad = load i8, ptr %i.ac, align 2, !range !37, !noundef !38
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %i.ag = load i16, ptr %i.af, align 8
  %.not.i.i.i.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i.not.i, label %fib_info_nhc.exit.i, label %nexthop_mpath_select.exit.i.i.i

nexthop_mpath_select.exit.i.i.i:                  ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.ab, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %fib_info_nhc.exit.i, label %bb.i

bb.i:                                             ; preds = %nexthop_mpath_select.exit.i.i.i, %bb.g, %bb.f
  %.2.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %i.ai, %nexthop_mpath_select.exit.i.i.i ]
  %i.aj = getelementptr i8, ptr %.2.i.i.i, i64 128
  %i.ak = load volatile ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  br label %fib_info_nhc.exit.i

bb.j:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.n, i64 128
  br label %fib_info_nhc.exit.i

fib_info_nhc.exit.i:                              ; preds = %bb.j, %bb.i, %nexthop_mpath_select.exit.i.i.i, %bb.h
  %.0.i.i = phi ptr [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ null, %nexthop_mpath_select.exit.i.i.i ], [ null, %bb.h ]
  %i.an = getelementptr i8, ptr %.0.i.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %.not11.i = icmp eq i32 %i.ao, 0
  %i.ap = or disjoint i32 %spec.store.select.i, 2
  %spec.select.i = select i1 %.not11.i, i32 %spec.store.select.i, i32 %i.ap
  br label %fib_flag_trans.exit

fib_flag_trans.exit:                              ; preds = %bb.d, %fib_info_nhc.exit.i
  %.1.i = phi i32 [ %spec.select.i, %fib_info_nhc.exit.i ], [ %spec.store.select.i, %bb.d ]
  %i.aq = icmp eq i32 %.0.i, -1
  %i.ar = select i1 %i.aq, i32 5, i32 1
  %i.as = or i32 %.1.i, %i.ar                     ; 2 uses
  switch i8 %i.t, label %bb.k [
    i8 3, label %bb.w
    i8 5, label %bb.w
  ]

bb.k:                                             ; preds = %fib_flag_trans.exit
  %i.at = getelementptr i8, ptr %.05678, i64 28
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load i32, ptr %i.j, align 8
  %.not65 = icmp eq i32 %i.au, %i.av
  br i1 %.not65, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %i.k, align 8
  %i.ax = add i64 %i.aw, 127
  store i64 %i.ax, ptr %i.l, align 8
  br i1 %.not.i72, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.n, i64 104
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %.not.i73 = icmp eq ptr %i.az, null
  br i1 %.not.i73, label %bb.r, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %i.az, i64 102
  %i.bb = load i8, ptr %i.ba, align 2, !range !37, !noundef !38
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.az, i64 128
  %i.be = load volatile ptr, ptr %i.bd, align 8   ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 10
  %i.bg = load i8, ptr %i.bf, align 2, !range !37, !noundef !38
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %i.be, i64 8
  %i.bj = load i16, ptr %i.bi, align 8
  %.not.i.i.i75.not = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i75.not, label %fib_info_nhc.exit, label %nexthop_mpath_select.exit.i.i

nexthop_mpath_select.exit.i.i:                    ; preds = %bb.p
  %i.bk = getelementptr i8, ptr %i.be, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i76, label %fib_info_nhc.exit, label %bb.q

bb.q:                                             ; preds = %nexthop_mpath_select.exit.i.i, %bb.o, %bb.n
  %.2.i.i = phi ptr [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.bl, %nexthop_mpath_select.exit.i.i ]
  %i.bm = getelementptr i8, ptr %.2.i.i, i64 128
  %i.bn = load volatile ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 32
  br label %fib_info_nhc.exit

bb.r:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %i.n, i64 128
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %bb.p, %nexthop_mpath_select.exit.i.i, %bb.q, %bb.r
  %.0.i74 = phi ptr [ %i.bp, %bb.r ], [ %i.bo, %bb.q ], [ null, %nexthop_mpath_select.exit.i.i ], [ null, %bb.p ] ; 3 uses
  %i.bq = getelementptr i8, ptr %.0.i74, i64 14
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = icmp eq i8 %i.br, 2
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %fib_info_nhc.exit
  %i.bt = getelementptr i8, ptr %.0.i74, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %fib_info_nhc.exit
  %.057 = phi i32 [ %i.bu, %bb.s ], [ 0, %fib_info_nhc.exit ]
  %i.bv = load ptr, ptr %.0.i74, align 8          ; 2 uses
  %.not67 = icmp eq ptr %i.bv, null
  %i.bw = getelementptr i8, ptr %i.bv, i64 288
  %spec.select70 = select i1 %.not67, ptr @.str.48, ptr %i.bw
  %i.bx = getelementptr i8, ptr %i.n, i64 80
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.n, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 28
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %.not68 = icmp eq i32 %i.cc, 0
  %i.cd = add i32 %i.cc, 40
  %i.ce = select i1 %.not68, i32 0, i32 %i.cd
  %i.cf = getelementptr i8, ptr %i.ca, i64 8
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = getelementptr i8, ptr %i.ca, i64 12
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = lshr i32 %i.ci, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %spec.select70, i32 noundef %i.g, i32 noundef %.057, i32 noundef %i.as, i32 noundef 0, i32 noundef 0, i32 noundef %i.by, i32 noundef %.0.i, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.cj) #13
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %i.g, i32 noundef 0, i32 noundef %i.as, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 10) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.k, %fib_flag_trans.exit, %fib_flag_trans.exit, %bb.v
  %i.ck = load volatile ptr, ptr %.05678, align 8 ; 2 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %.loopexit, label %bb.d, !llvm.loop !116

.loopexit:                                        ; preds = %bb.w, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind }
attributes #15 = { noredzone "no-builtin-wcslen" }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #18 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !19}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!15 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{i32 4, !"SkipRaxSetup", i32 1}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{i64 2163521981, i64 2163521851}
!22 = !{i64 2163522512, i64 2163522988, i64 2163523021, i64 2163523056, i64 2163523072, i64 2163523913, i64 2163523971, i64 2163524020, i64 2163523830, i64 2163523131, i64 2163523163}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{i64 2163525790, i64 2163525660}
!25 = !{i64 2163526321, i64 2163526797, i64 2163526830, i64 2163526865, i64 2163526881, i64 2163527722, i64 2163527780, i64 2163527829, i64 2163527639, i64 2163526940, i64 2163526972}
!26 = !{i64 2163536773}
!27 = !{i64 2163547722}
!28 = !{i64 2163509308}
!29 = !{i64 2148730303, i64 2148730343, i64 2148730460, i64 2148730481, i64 2148730524, i64 2148730539, i64 2148730572, i64 2148730606, i64 2148730630}
!30 = !{i64 2163354036}
!31 = !{i64 2148574108}
!32 = !{i64 2151507754}
!33 = !{i64 2151511056}
!34 = !{i64 2151511478}
!35 = !{i64 2151523260}
!36 = !{!"auto-init"}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{i64 2148919187, i64 2148919226, i64 2148919247, i64 2148919284, i64 2148919307, i64 2148919316}
!40 = distinct !{!40, !19}
!41 = !{i64 2163626855, i64 2163626725}
!42 = !{i64 2163627386, i64 2163628440, i64 2163628473, i64 2163628508, i64 2163628524, i64 2163629451, i64 2163629509, i64 2163629558, i64 2163629368, i64 2163628583, i64 2163628615, i64 2163628698}
!43 = !{i64 2163629863, i64 2163629734}
!44 = distinct !{!44, !19}
!45 = !{i64 2153740153}
!46 = !{i64 34805}
!47 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!48 = !{i64 2163657736, i64 2163657606}
!49 = !{i64 2163658267, i64 2163659307, i64 2163659340, i64 2163659375, i64 2163659391, i64 2163660318, i64 2163660376, i64 2163660425, i64 2163660235, i64 2163659450, i64 2163659482, i64 2163659565}
!50 = !{i64 2163660730, i64 2163660601}
!51 = !{i64 36425}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = !{i64 1071763}
!55 = !{i64 2153817428}
!56 = !{i64 2153835410}
!57 = !{i64 2153783768}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = !{i64 41724}
!64 = !{i64 41986}
!65 = !{i64 42174}
!66 = !{i64 42320}
!67 = !{i64 42714}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{null}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{null}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = !{i64 2163578815, i64 2163578685}
!82 = !{i64 2163579346, i64 2163579822, i64 2163579855, i64 2163579890, i64 2163579906, i64 2163580747, i64 2163580805, i64 2163580854, i64 2163580664, i64 2163579965, i64 2163579997}
!83 = !{i64 15687}
!84 = !{i64 15737}
!85 = !{i64 18173}
!86 = !{i64 13223}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = !{i64 2148924936, i64 2148924975, i64 2148924996, i64 2148925033, i64 2148925056, i64 2148925065}
!97 = !{i64 2150727654}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = !{i64 14265}
!106 = distinct !{!106, !19}
!107 = !{i64 12992}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !19}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
end_hunk_1
