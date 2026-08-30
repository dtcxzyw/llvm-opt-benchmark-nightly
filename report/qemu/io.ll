Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/io?download=true
inline.NumInlined: 185
inline.NumDeleted: 42
begin_hunk_0_@bdrv_find_conflicting_request:bb.a
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.d, align 8              ; 3 uses
  %i.m = load i64, ptr %i.e, align 8              ; 2 uses
  %i.n = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.l, i64 noundef %i.m, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, %i.p
  %.not.i = icmp slt i64 %i.l, %i.s
  %i.t = add i64 %i.m, %i.l
  %.not9.i = icmp slt i64 %i.p, %i.t
  %.0.i = and i1 %.not9.i, %.not.i
  br i1 %.0.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @qemu_coroutine_self() #14
  %i.v = getelementptr inbounds nuw i8, ptr %.021, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %.not16 = icmp eq ptr %i.u, %i.w
  br i1 %.not16, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 664, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_find_conflicting_request) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.021, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %.not17 = icmp eq ptr %i.y, null
  br i1 %.not17, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.021, i64 48
  %.0 = load ptr, ptr %i.z, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.h, %bb.i, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %.021, %bb.h ]
  ret ptr %.0.lcssa
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @bdrv_init_padding(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16464
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %i.e = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.f = icmp sgt i32 %i.c, -1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 1483, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_init_padding) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %4, i8 noundef 0, i64 noundef 144, i1 noundef false) #14
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = and i64 %i.g, %1                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add i64 %2, %1
  %i.k = and i64 %i.g, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  %i.m = sub i64 %i.d, %i.k
  %spec.select = select i1 %.not, i64 0, i64 %i.m ; 3 uses
  store i64 %spec.select, ptr %i.l, align 8
  %.not46 = icmp eq i64 %i.h, 0                   ; 2 uses
  %.not47 = icmp eq i64 %spec.select, 0           ; 2 uses
  %or.cond53 = select i1 %.not46, i1 %.not47, i1 false ; 2 uses
  br i1 %or.cond53, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %2, 0
  br i1 %.not48, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 1498, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_init_padding) #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add i64 %i.h, %2
  %i.o = add i64 %i.n, %spec.select               ; 2 uses
  %i.p = icmp sle i64 %i.o, %i.d
  %i.q = or i1 %.not47, %i.p
  %or.cond52 = or i1 %.not46, %i.q
  %not.or.cond52 = xor i1 %or.cond52, true
  %i.r = zext i1 %not.or.cond52 to i64
  %i.s = shl nuw nsw i64 %i.d, %i.r               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8
  %i.u = tail call i64 @bdrv_opt_mem_align(ptr noundef nonnull %0) #14
  %i.v = tail call ptr @qemu_memalign(i64 noundef %i.u, i64 noundef %i.s) #14 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load i64, ptr %i.t, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.o, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.l, align 8
  %.not51 = icmp eq i64 %i.aa, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.ac = sub nsw i64 0, %i.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 %i.a, ptr %i.af, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %.0 = xor i1 %or.cond53, true
  ret i1 %.0
}

declare ptr @qemu_iovec_slice(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_iovec_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @qemu_iovec_concat_iov(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @qemu_iovec_to_buf(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_co_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @bdrv_get_cluster_size(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.BlockDriverInfo, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !31
  %i.a = call i32 @bdrv_co_get_info(ptr noundef %0, ptr noundef nonnull %1) #14
  %i.b = icmp slt i32 %i.a, 0
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16464
  %i.f = load i32, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_wait_serialising_requests(ptr nofree noundef captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16968
  %i.c = load atomic i32, ptr %i.b monotonic, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16984 ; 2 uses
  tail call void %i.d(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1, i32 noundef 792) #14
  tail call void @bdrv_wait_serialising_requests_locked(ptr noundef nonnull %0)
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1, i32 noundef 794) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @bdrv_co_do_copy_on_readv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
bb.a:
  %6 = alloca %struct.BlockDriverInfo, align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 29 uses
  %7 = alloca %struct.QEMUIOVector, align 8       ; 16 uses
  %i.b = load ptr, ptr %0, align 8                ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16504
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %. = tail call i32 @llvm.umin.i32(i32 %i.f, i32 2147483136)
  %i.h = select i1 %i.g, i32 2147483136, i32 %.   ; 2 uses
  %i.i = tail call i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull @error_abort) ; 0 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 8
  %i.k = and i32 %i.j, 2048
  %.not146 = icmp eq i32 %i.k, 0                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !annotation !31
  %i.l = call i32 @bdrv_co_get_info(ptr noundef nonnull %i.b, ptr noundef nonnull %6) #14
  %i.m = icmp slt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i, label %bdrv_round_to_subclusters.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.o to i64                     ; 3 uses
  %i.r = srem i64 %1, %i.q                        ; 2 uses
  %i.s = sub nsw i64 %1, %i.r
  %i.t = add i64 %2, %i.q
  %i.u = add i64 %i.t, %i.r
  %.fr17.i = freeze i64 %i.u
  %i.v = add i64 %.fr17.i, -1                     ; 2 uses
  %i.w = srem i64 %i.v, %i.q
  %i.x = sub nsw i64 %i.v, %i.w
  br label %bdrv_round_to_subclusters.exit

bdrv_round_to_subclusters.exit:                   ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ %i.s, %bb.c ], [ %1, %bb.b ] ; 7 uses
  %storemerge.i = phi i64 [ %i.x, %bb.c ], [ %2, %bb.b ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.y = sub i64 %1, %.sink.i                     ; 5 uses
  %i.z = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %trace_bdrv_co_do_copy_on_readv.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bdrv_round_to_subclusters.exit
  %i.aa = load i16, ptr @_TRACE_BDRV_CO_DO_COPY_ON_READV_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.aa, 0
  br i1 %.not4.i, label %trace_bdrv_co_do_copy_on_readv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr @qemu_loglevel, align 4
  %i.ac = and i32 %i.ab, 32768
  %.not5.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i, label %trace_bdrv_co_do_copy_on_readv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.63, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef %2, i64 noundef %.sink.i, i64 noundef %storemerge.i) #14
  br label %trace_bdrv_co_do_copy_on_readv.exit

trace_bdrv_co_do_copy_on_readv.exit:              ; preds = %bdrv_round_to_subclusters.exit, %bb.d, %bb.e, %bb.f
  %i.ad = zext nneg i32 %i.h to i64               ; 2 uses
  %i.ae = and i32 %5, 512
  %.not149 = icmp eq i32 %i.ae, 0                 ; 4 uses
  %i.af = call i32 @llvm.umin.i32(i32 %i.h, i32 16777216)
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 544 ; 2 uses
  %.not147263 = icmp eq i64 %storemerge.i, 0
  br i1 %.not147263, label %.loopexit, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %trace_bdrv_co_do_copy_on_readv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !31
  %i.aj = call i64 @llvm.smin.i64(i64 %storemerge.i, i64 %i.ad) ; 5 uses
  br i1 %.not146, label %bdrv_co_is_allocated.exit.peel, label %.thread.peel

.thread.peel:                                     ; preds = %.lr.ph.peel
  store i64 %i.aj, ptr %i.a, align 8
  br label %bb.k

bdrv_co_is_allocated.exit.peel:                   ; preds = %.lr.ph.peel
  call void @assert_bdrv_graph_readable() #14
  %i.ak = call i32 @bdrv_co_do_block_status(ptr noundef nonnull %i.b, i32 noundef 16, i64 noundef %.sink.i, i64 noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0                   ; 2 uses
  %i.am = lshr i32 %i.ak, 4
  %.lobit.i.peel = and i32 %i.am, 1
  %.0.i.peel = select i1 %i.al, i32 %i.ak, i32 %.lobit.i.peel ; 2 uses
  br i1 %i.al, label %bb.g, label %bdrv_co_is_allocated.exit._crit_edge.peel

bdrv_co_is_allocated.exit._crit_edge.peel:        ; preds = %bdrv_co_is_allocated.exit.peel
  %.pre.peel = load i64, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %bdrv_co_is_allocated.exit.peel
  store i64 %i.aj, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bdrv_co_is_allocated.exit._crit_edge.peel
  %i.an = phi i64 [ %.pre.peel, %bdrv_co_is_allocated.exit._crit_edge.peel ], [ %i.aj, %bb.g ] ; 4 uses
  %i.ao = icmp eq i32 %.0.i.peel, 0
  %i.ap = icmp eq i64 %i.an, 0
  %or.cond.peel = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.peel, label %.loopexit284, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp slt i64 %i.y, %i.an
  br i1 %i.aq, label %bb.j, label %.loopexit285

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp slt i32 %.0.i.peel, 1
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.peel
  %i.as = phi i64 [ %i.aj, %.thread.peel ], [ %i.an, %bb.j ]
  br i1 %.not149, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.at = sub i64 %i.as, %i.y
  %i.au = call i64 @llvm.smin.i64(i64 %i.at, i64 %2)
  %i.av = call i32 @bdrv_driver_preadv(ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef %i.au, ptr noundef %3, i64 noundef %4, i32 noundef 0) ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.loopexit.sink.split, label %bb.s

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !31
  %i.ax = call i64 @llvm.smin.i64(i64 %i.an, i64 16777216) ; 3 uses
  store i64 %i.ax, ptr %i.a, align 8
  %i.ay = call i64 @bdrv_opt_mem_align(ptr noundef nonnull %i.b) #14 ; 3 uses
  %.not.i156.peel = icmp eq i64 %i.ay, 0
  br i1 %.not.i156.peel, label %.loopexit286, label %qemu_try_blockalign.exit.peel

qemu_try_blockalign.exit.peel:                    ; preds = %bb.m
  %i.az = sub i64 %storemerge.i, %i.ax
  %i.ba = call i64 @llvm.smax.i64(i64 %i.ax, i64 %i.az)
  %i.bb = call i64 @llvm.smin.i64(i64 %i.ba, i64 %i.ag) ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %spec.select.i.peel = select i1 %i.bc, i64 %i.ay, i64 %i.bb
  %i.bd = call ptr @qemu_try_memalign(i64 noundef %i.ay, i64 noundef %spec.select.i.peel) #14 ; 7 uses
  %.not151.not.peel = icmp eq ptr %i.bd, null
  br i1 %.not151.not.peel, label %.loopexit.sink.split.sink.split, label %qemu_try_blockalign.exit._crit_edge.peel

qemu_try_blockalign.exit._crit_edge.peel:         ; preds = %qemu_try_blockalign.exit.peel
  %.pre224.peel = load i64, ptr %i.a, align 8     ; 2 uses
  store ptr %i.ah, ptr %7, align 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %i.bd, ptr %i.ah, align 8
  store i64 %.pre224.peel, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.be = call i32 @bdrv_driver_preadv(ptr noundef nonnull %i.b, i64 noundef %.sink.i, i64 noundef %.pre224.peel, ptr noundef nonnull %7, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.loopexit.sink.split.sink.split, label %bb.n

bb.n:                                             ; preds = %qemu_try_blockalign.exit._crit_edge.peel
  call void @bdrv_co_debug_event(ptr noundef nonnull %i.b, i32 noundef 45) #14
  %i.bg = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ai, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 586, ptr null)
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not152.peel = icmp eq ptr %i.bh, null
  br i1 %.not152.peel, label %buffer_is_zero.exit.thread.peel, label %.split.peel

.split.peel:                                      ; preds = %bb.n
  %i.bi = load i64, ptr %i.a, align 8
  %i.bj = call zeroext i1 @buffer_is_zero_ool(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #14
  br i1 %i.bj, label %bb.o, label %buffer_is_zero.exit.thread.peel

bb.o:                                             ; preds = %.split.peel
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = call i32 @bdrv_co_do_pwrite_zeroes(ptr noundef nonnull %i.b, i64 noundef %.sink.i, i64 noundef %i.bk, i32 noundef 64)
  br label %bb.p

buffer_is_zero.exit.thread.peel:                  ; preds = %.split.peel, %bb.n
  %i.bm = load i64, ptr %i.a, align 8
  %i.bn = call i32 @bdrv_driver_pwritev(ptr noundef nonnull %i.b, i64 noundef %.sink.i, i64 noundef %i.bm, ptr noundef nonnull %7, i64 noundef 0, i32 noundef 64)
  br label %bb.p

bb.p:                                             ; preds = %buffer_is_zero.exit.thread.peel, %bb.o
  %.2130.peel = phi i32 [ %i.bl, %bb.o ], [ %i.bn, %buffer_is_zero.exit.thread.peel ] ; 2 uses
  %i.bo = icmp slt i32 %.2130.peel, 0
  br i1 %i.bo, label %.loopexit.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not149, label %bb.r, label %.thread175.peel

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds i8, ptr %i.bd, i64 %i.y
  %i.bq = load i64, ptr %i.a, align 8
  %i.br = sub i64 %i.bq, %i.y
  %i.bs = call i64 @llvm.smin.i64(i64 %i.br, i64 %2)
  %i.bt = call i64 @qemu_iovec_from_buf(ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.bp, i64 noundef %i.bs) #14 ; 0 uses
  br label %.thread175.peel

.thread175.peel:                                  ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.s

bb.s:                                             ; preds = %.thread175.peel, %bb.l, %bb.k
  %.3.peel = phi ptr [ %i.bd, %.thread175.peel ], [ null, %bb.k ], [ null, %bb.l ] ; 2 uses
  %i.bu = load i64, ptr %i.a, align 8             ; 3 uses
  %i.bv = add i64 %i.bu, %.sink.i
  %i.bw = sub i64 %storemerge.i, %i.bu            ; 2 uses
  %i.bx = sub i64 %i.bu, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not147.peel = icmp eq i64 %i.bw, 0
  br i1 %.not147.peel, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.ai
  %.0125272 = phi ptr [ %.3, %bb.ai ], [ %.3.peel, %bb.s ] ; 6 uses
  %.0135268 = phi i64 [ %i.do, %bb.ai ], [ %i.bx, %bb.s ] ; 7 uses
  %.0170266 = phi i64 [ %i.dn, %bb.ai ], [ %i.bw, %bb.s ] ; 3 uses
  %.0172264 = phi i64 [ %i.dm, %bb.ai ], [ %i.bv, %bb.s ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !31
  %i.by = call i64 @llvm.smin.i64(i64 %.0170266, i64 %i.ad) ; 5 uses
  br i1 %.not146, label %bdrv_co_is_allocated.exit, label %.thread

.thread:                                          ; preds = %.lr.ph
  store i64 %i.by, ptr %i.a, align 8
  br label %bb.ag

bdrv_co_is_allocated.exit:                        ; preds = %.lr.ph
  call void @assert_bdrv_graph_readable() #14
  %i.bz = call i32 @bdrv_co_do_block_status(ptr noundef nonnull %i.b, i32 noundef 16, i64 noundef %.0172264, i64 noundef %i.by, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0                   ; 2 uses
  %i.cb = lshr i32 %i.bz, 4
  %.lobit.i = and i32 %i.cb, 1
  %.0.i = select i1 %i.ca, i32 %i.bz, i32 %.lobit.i ; 2 uses
  br i1 %i.ca, label %bb.t, label %bdrv_co_is_allocated.exit._crit_edge

bdrv_co_is_allocated.exit._crit_edge:             ; preds = %bdrv_co_is_allocated.exit
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.u

bb.t:                                             ; preds = %bdrv_co_is_allocated.exit
  store i64 %i.by, ptr %i.a, align 8
  br label %bb.u

bb.u:                                             ; preds = %bdrv_co_is_allocated.exit._crit_edge, %bb.t
  %i.cc = phi i64 [ %.pre, %bdrv_co_is_allocated.exit._crit_edge ], [ %i.by, %bb.t ] ; 4 uses
  %i.cd = icmp eq i32 %.0.i, 0
  %i.ce = icmp eq i64 %i.cc, 0
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %.loopexit284, label %bb.w

.loopexit284:                                     ; preds = %bb.u, %bb.h
  %.0125272.lcssa = phi ptr [ null, %bb.h ], [ %.0125272, %bb.u ]
  %.0135268.lcssa = phi i64 [ 0, %bb.h ], [ %.0135268, %bb.u ]
  %.not148 = icmp slt i64 %.0135268.lcssa, %2
  br i1 %.not148, label %bb.v, label %.loopexit.sink.split

bb.v:                                             ; preds = %.loopexit284
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef 1238, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_copy_on_readv) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cf = icmp sgt i64 %i.cc, 0
  br i1 %i.cf, label %bb.x, label %.loopexit285

.loopexit285:                                     ; preds = %bb.w, %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 1242, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_copy_on_readv) #15
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cg = icmp slt i32 %.0.i, 1
  br i1 %i.cg, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !31
  %i.ch = call i64 @llvm.smin.i64(i64 %i.cc, i64 16777216) ; 4 uses
  store i64 %i.ch, ptr %i.a, align 8
  %.not150 = icmp eq ptr %.0125272, null
  br i1 %.not150, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = call i64 @bdrv_opt_mem_align(ptr noundef nonnull %i.b) #14 ; 2 uses
  %.not.i156 = icmp eq i64 %i.ci, 0
  br i1 %.not.i156, label %.loopexit286, label %qemu_try_blockalign.exit

.loopexit286:                                     ; preds = %bb.z, %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 3382, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_try_blockalign) #15
  unreachable

qemu_try_blockalign.exit:                         ; preds = %bb.z
  %i.cj = sub i64 %.0170266, %i.ch
  %i.ck = call i64 @llvm.smax.i64(i64 %i.ch, i64 %i.cj)
  %i.cl = call i64 @llvm.smin.i64(i64 %i.ck, i64 %i.ag)
  %i.cm = call ptr @qemu_try_memalign(i64 noundef %i.ci, i64 noundef %i.cl) #14 ; 2 uses
  %.not151.not = icmp eq ptr %i.cm, null
  br i1 %.not151.not, label %.loopexit.sink.split.sink.split, label %qemu_try_blockalign.exit._crit_edge

qemu_try_blockalign.exit._crit_edge:              ; preds = %qemu_try_blockalign.exit
  %.pre224 = load i64, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %qemu_try_blockalign.exit._crit_edge, %bb.y
  %i.cn = phi i64 [ %i.ch, %bb.y ], [ %.pre224, %qemu_try_blockalign.exit._crit_edge ] ; 2 uses
  %.1 = phi ptr [ %.0125272, %bb.y ], [ %i.cm, %qemu_try_blockalign.exit._crit_edge ] ; 6 uses
  store ptr %i.ah, ptr %7, align 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %.1, ptr %i.ah, align 8
  store i64 %i.cn, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.co = call i32 @bdrv_driver_preadv(ptr noundef nonnull %i.b, i64 noundef %.0172264, i64 noundef %i.cn, ptr noundef nonnull %7, i64 noundef 0, i32 noundef 0) ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.loopexit.sink.split.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @bdrv_co_debug_event(ptr noundef nonnull %i.b, i32 noundef 45) #14
  %i.cq = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ai, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 586, ptr null)
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not152 = icmp eq ptr %i.cr, null
  br i1 %.not152, label %buffer_is_zero.exit.thread, label %.split

.split:                                           ; preds = %bb.ab
  %i.cs = load i64, ptr %i.a, align 8
  %i.ct = call zeroext i1 @buffer_is_zero_ool(ptr noundef nonnull %.1, i64 noundef %i.cs) #14
  br i1 %i.ct, label %bb.ac, label %buffer_is_zero.exit.thread

bb.ac:                                            ; preds = %.split
  %i.cu = load i64, ptr %i.a, align 8
  %i.cv = call i32 @bdrv_co_do_pwrite_zeroes(ptr noundef nonnull %i.b, i64 noundef %.0172264, i64 noundef %i.cu, i32 noundef 64)
  br label %bb.ad

buffer_is_zero.exit.thread:                       ; preds = %.split, %bb.ab
  %i.cw = load i64, ptr %i.a, align 8
  %i.cx = call i32 @bdrv_driver_pwritev(ptr noundef nonnull %i.b, i64 noundef %.0172264, i64 noundef %i.cw, ptr noundef nonnull %7, i64 noundef 0, i32 noundef 64)
  br label %bb.ad

bb.ad:                                            ; preds = %buffer_is_zero.exit.thread, %bb.ac
  %.2130 = phi i32 [ %i.cv, %bb.ac ], [ %i.cx, %buffer_is_zero.exit.thread ] ; 2 uses
  %i.cy = icmp slt i32 %.2130, 0
  br i1 %i.cy, label %.loopexit.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not149, label %bb.af, label %.thread175

bb.af:                                            ; preds = %bb.ae
  %i.cz = add i64 %.0135268, %4
  %i.da = load i64, ptr %i.a, align 8
  %i.db = sub i64 %2, %.0135268
  %i.dc = call i64 @llvm.smin.i64(i64 %i.da, i64 %i.db)
  %i.dd = call i64 @qemu_iovec_from_buf(ptr noundef %3, i64 noundef %i.cz, ptr noundef nonnull %.1, i64 noundef %i.dc) #14 ; 0 uses
  br label %.thread175

.thread175:                                       ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ai

bb.ag:                                            ; preds = %.thread, %bb.x
  %i.de = phi i64 [ %i.by, %.thread ], [ %i.cc, %bb.x ]
  br i1 %.not149, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.df = add i64 %.0135268, %1
  %i.dg = sub i64 %2, %.0135268
  %i.dh = call i64 @llvm.smin.i64(i64 %i.de, i64 %i.dg)
  %i.di = add i64 %.0135268, %4
  %i.dj = call i32 @bdrv_driver_preadv(ptr noundef nonnull %i.b, i64 noundef %i.df, i64 noundef %i.dh, ptr noundef %3, i64 noundef %i.di, i32 noundef 0) ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.loopexit.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.thread175
  %.3 = phi ptr [ %.1, %.thread175 ], [ %.0125272, %bb.ag ], [ %.0125272, %bb.ah ] ; 2 uses
  %i.dl = load i64, ptr %i.a, align 8             ; 3 uses
  %i.dm = add i64 %i.dl, %.0172264
  %i.dn = sub i64 %.0170266, %i.dl                ; 2 uses
  %i.do = add i64 %.0135268, %i.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not147 = icmp eq i64 %i.dn, 0
  br i1 %.not147, label %.loopexit, label %.lr.ph, !llvm.loop !53

.loopexit.sink.split.sink.split:                  ; preds = %qemu_try_blockalign.exit, %bb.ad, %bb.aa, %bb.p, %qemu_try_blockalign.exit._crit_edge.peel, %qemu_try_blockalign.exit.peel
  %.6134.ph.ph = phi i32 [ -12, %qemu_try_blockalign.exit.peel ], [ %i.be, %qemu_try_blockalign.exit._crit_edge.peel ], [ %.2130.peel, %bb.p ], [ -12, %qemu_try_blockalign.exit ], [ %.2130, %bb.ad ], [ %i.co, %bb.aa ]
  %.6.ph.ph = phi ptr [ null, %qemu_try_blockalign.exit.peel ], [ %i.bd, %qemu_try_blockalign.exit._crit_edge.peel ], [ %i.bd, %bb.p ], [ null, %qemu_try_blockalign.exit ], [ %.1, %bb.ad ], [ %.1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.l, %bb.ah, %.loopexit.sink.split.sink.split, %.loopexit284
  %.6134.ph = phi i32 [ %.6134.ph.ph, %.loopexit.sink.split.sink.split ], [ 0, %.loopexit284 ], [ %i.av, %bb.l ], [ %i.dj, %bb.ah ]
  %.6.ph = phi ptr [ %.6.ph.ph, %.loopexit.sink.split.sink.split ], [ %.0125272.lcssa, %.loopexit284 ], [ null, %bb.l ], [ %.0125272, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.ai, %trace_bdrv_co_do_copy_on_readv.exit, %.loopexit.sink.split
  %.6134 = phi i32 [ %.6134.ph, %.loopexit.sink.split ], [ 0, %trace_bdrv_co_do_copy_on_readv.exit ], [ 0, %bb.ai ], [ 0, %bb.s ]
  %.6 = phi ptr [ %.6.ph, %.loopexit.sink.split ], [ null, %trace_bdrv_co_do_copy_on_readv.exit ], [ %.3.peel, %bb.s ], [ %.3, %bb.ai ]
  call void @qemu_vfree(ptr noundef %.6) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %.loopexit
  %.0 = phi i32 [ -123, %bb.a ], [ %.6134, %.loopexit ]
  ret i32 %.0
}

declare i64 @qemu_iovec_memset(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @bdrv_co_do_pwrite_zeroes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.QEMUIOVector, align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16488
  %i.e = load i64, ptr %i.d, align 8
  %i.f = freeze i64 %i.e                          ; 2 uses
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 9223372036854775807, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.fr = phi i64 [ 9223372036854775807, %bb.a ], [ %i.f, %bb.b ], [ 9223372036854775807, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16496
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load i32, ptr %i.c, align 8
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.h, i32 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16504
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = add i32 %i.l, -1
  %or.cond191 = icmp ult i32 %i.m, 16777215
  %narrow = select i1 %or.cond191, i32 %i.l, i32 16777216
  %i.n = zext i32 %narrow to i64                  ; 3 uses
  tail call void @assert_bdrv_graph_readable() #14
  %i.o = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %.not169 = icmp eq ptr %i.b, null
  br i1 %.not169, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16592 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = xor i32 %i.q, -1
  %i.s = and i32 %3, 256
  %i.t = and i32 %i.s, %i.r
  %.not170 = icmp eq i32 %i.t, 0
  br i1 %.not170, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %3, 8
  %.not171 = icmp eq i32 %i.u, 0
  br i1 %.not171, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %0, align 8
  %i.w = and i32 %i.v, 16384
  %.not172 = icmp eq i32 %i.w, 0
  %i.x = and i32 %3, -13
  %spec.select = select i1 %.not172, i32 %i.x, i32 %3 ; 5 uses
  tail call void @bdrv_bsc_invalidate_range(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #14
  %i.y = load i32, ptr %i.c, align 8              ; 2 uses
  %i.z = urem i32 %i.j, %i.y
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 1876, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_pwrite_zeroes) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.j to i64                    ; 6 uses
  %i.ac = srem i64 %1, %i.ab
  %i.ad = trunc nsw i64 %i.ac to i32
  %i.ae = add i64 %2, %1
  %i.af = srem i64 %i.ae, %i.ab
  %i.ag = srem i64 %.fr, %i.ab
  %i.ah = sub nsw i64 %.fr, %i.ag                 ; 3 uses
  %i.ai = zext i32 %i.y to i64
  %.not173 = icmp slt i64 %i.ah, %i.ai
  br i1 %.not173, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !31
  %i.aj = icmp sgt i64 %2, 0
  br i1 %i.aj, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.al = and i32 %spec.select, 16
  %.not180 = icmp eq i32 %i.al, 0                 ; 2 uses
  %i.am = and i32 %spec.select, 256
  %.not182 = icmp eq i32 %i.am, 0
  %i.an = and i32 %spec.select, -267              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16588
  %i.ap = and i32 %spec.select, -283
end_hunk_0
