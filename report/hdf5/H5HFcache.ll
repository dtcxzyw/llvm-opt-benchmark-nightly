Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5HFcache?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@H5HF__cache_iblock_notify:bb.a
  br i1 %.not19, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @H5AC_create_flush_dependency(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #8
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_CANTDEPEND_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_iblock_notify, i32 noundef 1407, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.31) #8 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @H5AC_destroy_flush_dependency(ptr noundef nonnull %i.o, ptr noundef nonnull %1) #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.s = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !18
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_iblock_notify, i32 noundef 1424, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.32) #8 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.n, align 8, !tbaa !90
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.u = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !18
  %i.v = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_iblock_notify, i32 noundef 1430, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.33) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.h, %bb.j, %bb.f, %bb.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.j ], [ -1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ -1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5HF__cache_iblock_free_icr(ptr noundef %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5HF__man_iblock_dest(ptr noundef %0) #8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.j = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_iblock_free_icr, i32 noundef 1465, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.27) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5HF__cache_dblock_get_initial_load_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !91
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f
  %.sink.in = phi ptr [ %i.t, %bb.f ], [ %i.s, %bb.e ], [ %i.m, %bb.d ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !18
  store i64 %.sink, ptr %1, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @H5HF__cache_dblock_verify_chksum(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !104
  %i.e = load i8, ptr @H5HF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %bb.b, label %bb.q, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !75     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 259 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !43, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 252 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !65
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.q = tail call noalias ptr @malloc(i64 noundef %1) #9 ; 3 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !104
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.t = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_verify_chksum, i32 noundef 1570, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.34) #8 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  store i64 %1, ptr %i.c, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !106
  store i32 %i.w, ptr %i.d, align 4, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %0, i64 %1, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.y = call i32 @H5Z_pipeline(ptr noundef nonnull %i.x, i32 noundef 256, ptr noundef nonnull %i.d, i32 noundef 1, ptr null, ptr null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.ab = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !18
  %i.ac = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_verify_chksum, i32 noundef 1580, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.35) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 1, ptr %i.ad, align 8, !tbaa !107
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %.pre = load i8, ptr %i.l, align 1, !tbaa !43, !range !10
  %.pre61 = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.af = shl nuw nsw i8 %.pre, 2
  %3 = add nuw nsw i8 %i.af, 5
  %i.ag = zext nneg i8 %3 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  store ptr %0, ptr %i.b, align 8, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi ptr [ %.pre61, %bb.h ], [ %0, %bb.i ]
  %narrow = phi i64 [ %i.ag, %bb.h ], [ 9, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 618
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !63
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 697
  %i.am = load i8, ptr %i.al, align 1, !tbaa !76
  %i.an = zext i8 %i.am to i64
  %4 = add nuw nsw i64 %i.ak, 4294967292
  %5 = add nuw nsw i64 %4, %narrow
  %6 = add nuw nsw i64 %5, %i.an
  %7 = and i64 %6, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %7 ; 6 uses
  %i.ap = load i16, ptr %i.ao, align 1            ; 3 uses
  %i.aq = zext i16 %i.ap to i32
  %i.ar = trunc i16 %i.ap to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.at = lshr i16 %i.ap, 8
  %i.au = trunc nuw i16 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 3 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw i32 %i.bb, 24
  %i.bd = or disjoint i32 %i.ay, %i.aq
  %i.be = or disjoint i32 %i.bd, %i.bc
  store i32 0, ptr %i.ao, align 1
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bh = call i32 @H5_checksum_metadata(ptr noundef %i.bf, i64 noundef %i.bg, i32 noundef 0) #8
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !19
  store i8 %i.au, ptr %i.as, align 1, !tbaa !19
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !19
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !19
  %.not55 = icmp eq i32 %i.be, %i.bh
  br i1 %.not55, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !65
  %.not56 = icmp eq i32 %i.bi, 0
  br i1 %.not56, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bk = call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_direct_block_blk_free_list, i64 noundef %i.bj) #8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !108
  %i.bm = icmp eq ptr %i.bk, null
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.bo = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.bp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_verify_chksum, i32 noundef 1625, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.br = load i64, ptr %i.a, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.bq, i64 %i.br, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.j, %bb.b, %bb.k, %bb.n, %bb.m
  %.2 = phi i32 [ 1, %bb.b ], [ -1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.k ], [ -1, %.thread ], [ 0, %bb.j ] ; 2 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !104 ; 3 uses
  %.not57 = icmp eq ptr %i.bs, null
  %.not58 = icmp eq ptr %i.bs, %0
  %or.cond = or i1 %.not57, %.not58
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = call ptr @H5MM_xfree(ptr noundef nonnull %i.bs) #8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.o
  %.3 = phi i32 [ %.2, %bb.p ], [ 1, %bb.a ], [ %.2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @H5HF__cache_dblock_deserialize(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %0, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.g = load i8, ptr @H5HF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.b, label %bb.ah, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !75     ; 8 uses
  %i.n = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5HF_direct_t_reg_free_list) #8 ; 17 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.q = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_deserialize, i32 noundef 1682, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.n, i8 0, i64 248, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 600
  store ptr %i.t, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  store ptr %i.m, ptr %i.v, align 8, !tbaa !110
  %i.w = tail call i32 @H5HF__hdr_incr(ptr noundef %i.m) #8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.z = load i64, ptr @H5E_CANTINC_g, align 8, !tbaa !18
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_deserialize, i32 noundef 1691, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !139 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !111
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 252
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !107
  %.not79 = icmp eq i32 %i.ah, 0
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !112
  store ptr null, ptr %i.ai, align 8, !tbaa !108
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.al = tail call noalias ptr @malloc(i64 noundef %1) #9 ; 3 uses
  store ptr %i.al, ptr %i.c, align 8, !tbaa !104
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.ao = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_deserialize, i32 noundef 1724, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.34) #8 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %0, i64 %1, i1 false)
  store i64 %1, ptr %i.e, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !106
  store i32 %i.ar, ptr %i.f, align 4, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.at = call i32 @H5Z_pipeline(ptr noundef nonnull %i.as, i32 noundef 256, ptr noundef nonnull %i.f, i32 noundef 1, ptr null, ptr null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #8
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !18
  %i.aw = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !18
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_deserialize, i32 noundef 1734, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.35) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !112 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.ba, i64 %i.ac, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bb = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_direct_block_blk_free_list, i64 noundef %i.ac) #8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !112
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.bf = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__cache_dblock_deserialize, i32 noundef 1751, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %0, i64 %i.ac, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.p
  %i.bh = phi ptr [ %i.az, %bb.m ], [ %i.aj, %bb.h ], [ %i.bb, %bb.p ] ; 4 uses
end_hunk_0
