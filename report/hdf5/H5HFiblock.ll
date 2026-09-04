Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5HFiblock?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5HF__man_iblock_root_double:bb.a
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !51
  %i.jz = shl i64 %i.jy, 1
  %i.ka = call i32 @H5HF__hdr_adjust_heap(ptr noundef nonnull %0, i64 noundef %i.jz, i64 noundef %.0113.lcssa) #7
  %i.kb = icmp slt i32 %i.ka, 0
  br i1 %i.kb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kc = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.kd = load i64, ptr @H5E_CANTEXTEND_g, align 8, !tbaa !51
  %i.ke = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 631, i64 noundef %i.kc, i64 noundef %i.kd, ptr noundef nonnull @.str.21) #7 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %bb.ah, %bb.a, %bb.an, %bb.ao, %bb.am, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.n, %bb.i, %bb.c
  %.4 = phi i32 [ -1, %bb.c ], [ -1, %bb.n ], [ -1, %bb.s ], [ -1, %bb.y ], [ -1, %bb.ab ], [ -1, %bb.am ], [ -1, %bb.ao ], [ 0, %bb.an ], [ -1, %bb.ak ], [ -1, %bb.ah ], [ -1, %bb.v ], [ -1, %bb.p ], [ -1, %bb.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.4
}

declare i32 @H5HF__man_iter_curr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__dtable_size_to_row(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @H5F_is_tmp_addr(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5MF_xfree(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @H5F_use_tmp_space(ptr noundef) local_unnamed_addr #2

declare i64 @H5MF_alloc_tmp(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5MF_alloc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_resize_entry(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_move_entry(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5FL_seq_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HF__man_iblock_alloc_row(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !113    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = load i8, ptr @H5HF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.q, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !116
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.t = load i8, ptr %i.s, align 8, !tbaa !52, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.v = tail call i32 @H5HF__sect_row_revive(ptr noundef %0, ptr noundef nonnull %i.b) #7
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.y = load i64, ptr @H5E_CANTREVIVE_g, align 8, !tbaa !51
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_alloc_row, i32 noundef 892, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.29) #7 ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.aa = tail call ptr @H5HF__sect_row_get_iblock(ptr noundef nonnull %i.b) #7 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ad = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !51
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_alloc_row, i32 noundef 896, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.30) #7 ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.af = tail call i32 @H5HF__iblock_incr(ptr noundef nonnull %i.aa)
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ai = load i64, ptr @H5E_CANTINC_g, align 8, !tbaa !51
  %i.aj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_alloc_row, i32 noundef 900, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.31) #7 ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ak = call i32 @H5HF__sect_row_reduce(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.an = load i64, ptr @H5E_CANTSHRINK_g, align 8, !tbaa !51
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_alloc_row, i32 noundef 905, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.32) #7 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !56
  %i.aq = call i32 @H5HF__man_dblock_create(ptr noundef %0, ptr noundef nonnull %i.aa, i32 noundef %i.ap, ptr noundef null, ptr noundef nonnull %1) #7
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.at = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !51
  %i.au = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_alloc_row, i32 noundef 909, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.33) #7 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %.0.ph = phi i32 [ 0, %bb.m ], [ -1, %bb.n ], [ -1, %bb.l ]
  %i.av = call i32 @H5HF__iblock_decr(ptr noundef nonnull %i.aa)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ay = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !51
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_alloc_row, i32 noundef 916, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.34) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.h, %bb.j, %bb.p, %bb.o, %bb.a
  %.1 = phi i32 [ -1, %bb.p ], [ %.0.ph, %bb.o ], [ 0, %bb.a ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

declare i32 @H5HF__sect_row_revive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5HF__sect_row_get_iblock(ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__sect_row_reduce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__man_dblock_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @H5HF__hdr_incr(ptr noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_seq_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_seq_calloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_insert_entry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @H5AC_protect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef range(i32 -1, 1) i32 @H5HF__man_iblock_detach(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.H5HF_parent_t, align 8      ; 7 uses
  %3 = alloca %struct.H5HF_iblock_cache_ud_t, align 8 ; 7 uses
  %i.b = load i8, ptr @H5HF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread136, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 26 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  store i64 -1, ptr %i.m, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 264 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = udiv i32 %1, %i.o                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 252 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !76
  %.not = icmp eq i32 %i.r, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !44 ; 3 uses
  br i1 %.not, label %._crit_edge, label %4

4:                                                ; preds = %bb.b
  %5 = icmp ult i32 %i.p, %.pre
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.l ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.not104 = icmp ult i32 %i.p, %.pre
  br i1 %.not104, label %bb.e, label %bb.d

bb.d:                                             ; preds = %4, %._crit_edge
  %i.w = mul i32 %.pre, %i.o
  %i.x = sub i32 %1, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store ptr null, ptr %i.ab, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ae = add i32 %i.ad, -1                       ; 3 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !97
  %i.ah = icmp eq i32 %1, %i.ag
  br i1 %i.ah, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not105 = icmp eq i32 %i.ae, 0
  br i1 %.not105, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %i.ai = phi i32 [ %i.aj, %.lr.ph ], [ %1, %bb.f ]
  %i.aj = add i32 %i.ai, -1                       ; 3 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !93
  %.not106 = icmp eq i64 %i.am, -1
  br i1 %.not106, label %.lr.ph, label %..loopexit_crit_edge, !llvm.loop !117

..loopexit_crit_edge:                             ; preds = %.lr.ph
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !97
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %.thread128

.thread:                                          ; preds = %bb.f
  store i32 0, ptr %i.af, align 4, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.thread120, label %.thread128

bb.g:                                             ; preds = %.loopexit
  %i.at = icmp eq i32 %i.ae, 1
  br i1 %i.at, label %bb.h, label %.thread120

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.k, align 8, !tbaa !93  ; 5 uses
  %.not107 = icmp eq i64 %i.au, -1
  br i1 %.not107, label %.thread120, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = xor i1 %i.aw, true
  %i.ay = select i1 %i.c, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.j, label %.thread120, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %i.bb = tail call ptr @H5HF__man_dblock_protect(ptr noundef nonnull %i.i, i64 noundef %i.au, i64 noundef %i.ba, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #7, !inline_history !118 ; 8 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !76
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !54 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 488
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !80
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 264 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75
  %i.bn = tail call i32 @H5AC_destroy_flush_dependency(ptr noundef %i.bm, ptr noundef nonnull %i.bb) #7, !inline_history !118
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.bq = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !51
  %i.br = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 817, i64 noundef %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.12) #7, !inline_history !118 ; 0 uses
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  store ptr null, ptr %i.bl, align 8, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !73
  %i.bu = tail call i32 @H5HF__man_iblock_detach(ptr noundef %i.bt, i32 noundef 0), !inline_history !118
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.bx = load i64, ptr @H5E_CANTATTACH_g, align 8, !tbaa !51
  %i.by = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 822, i64 noundef %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.50) #7, !inline_history !118 ; 0 uses
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  store ptr null, ptr %i.bs, align 8, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  store i32 0, ptr %i.bz, align 8, !tbaa !74
  %i.ca = tail call i32 @H5AC_create_flush_dependency(ptr noundef nonnull %i.i, ptr noundef nonnull %i.bb) #7, !inline_history !118
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.cd = load i64, ptr @H5E_CANTDEPEND_g, align 8, !tbaa !51
  %i.ce = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 828, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.13) #7, !inline_history !118 ; 0 uses
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  store ptr %i.i, ptr %i.bl, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  store i32 0, ptr %i.cf, align 8, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  store i64 %i.au, ptr %i.cg, align 8, !tbaa !58
  %i.ch = tail call i32 @H5HF__hdr_reset_iter(ptr noundef nonnull %i.i, i64 noundef %i.ba) #7, !inline_history !118
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ck = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !51
  %i.cl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 837, i64 noundef %i.cj, i64 noundef %i.ck, ptr noundef nonnull @.str.51) #7, !inline_history !118 ; 0 uses
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.cm = load i64, ptr %i.az, align 8, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !83
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !51
  %i.cq = tail call i32 @H5HF__hdr_adjust_heap(ptr noundef nonnull %i.i, i64 noundef %i.cm, i64 noundef %i.cp) #7, !inline_history !118
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ct = load i64, ptr @H5E_CANTEXTEND_g, align 8, !tbaa !51
  %i.cu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 842, i64 noundef %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.21) #7, !inline_history !118 ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cv = tail call i32 @H5HF__space_revert_root(ptr noundef nonnull %i.i) #7, !inline_history !118
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.x, label %.thread149

bb.x:                                             ; preds = %bb.w
  %i.cx = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.cy = load i64, ptr @H5E_CANTRESET_g, align 8, !tbaa !51
  %i.cz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 846, i64 noundef %i.cx, i64 noundef %i.cy, ptr noundef nonnull @.str.52) #7, !inline_history !118 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.j
  %i.da = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.db = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !51
  %i.dc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 804, i64 noundef %i.da, i64 noundef %i.db, ptr noundef nonnull @.str.11) #7, !inline_history !118 ; 0 uses
  br label %H5HF__man_iblock_root_revert.exit.thread

bb.z:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.df = tail call i32 @H5AC_unprotect(ptr noundef %i.de, ptr noundef nonnull @H5AC_FHEAP_DBLOCK, i64 noundef %i.au, ptr noundef nonnull %i.bb, i32 noundef 0) #7, !inline_history !118
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.aa, label %H5HF__man_iblock_root_revert.exit.thread

.thread149:                                       ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !63
  %i.dj = tail call i32 @H5AC_unprotect(ptr noundef %i.di, ptr noundef nonnull @H5AC_FHEAP_DBLOCK, i64 noundef %i.au, ptr noundef nonnull %i.bb, i32 noundef 0) #7, !inline_history !118
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.aa, label %.thread120

bb.aa:                                            ; preds = %.thread149, %bb.z
  %i.dl = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.dm = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !51
  %i.dn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_revert, i32 noundef 850, i64 noundef %i.dl, i64 noundef %i.dm, ptr noundef nonnull @.str.16) #7, !inline_history !118 ; 0 uses
  br label %H5HF__man_iblock_root_revert.exit.thread

H5HF__man_iblock_root_revert.exit.thread:         ; preds = %bb.z, %bb.y, %bb.aa
  %i.do = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
end_hunk_0
