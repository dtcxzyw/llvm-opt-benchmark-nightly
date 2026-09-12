Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/arena?download=true
inline.NumInlined: 376
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@duckdb_je_arena_palloc:bb.a

.critedge.i:                                      ; preds = %sz_size2index.exit
  %i.au = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %arena_malloc.exit

bb.o:                                             ; preds = %bb.a
  %i.av = icmp ult i64 %3, 65
  br i1 %i.av, label %bb.p, label %bb.q, !prof !98

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #18
  br label %arena_malloc.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = tail call ptr @duckdb_je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #18
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %.critedge.i, %.thread, %bb.l, %bb.n, %bb.q, %bb.p
  %.0 = phi ptr [ %i.ax, %bb.q ], [ %i.aw, %bb.p ], [ %i.au, %.critedge.i ], [ %.132.i, %bb.n ], [ null, %bb.l ], [ %.0.i21.ph, %.thread ]
  ret ptr %.0
}

declare ptr @duckdb_je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_bin_locked_handle_newly_empty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = icmp eq ptr %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !111
  br label %arena_dissociate_bin_slab.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %2, align 8, !tbaa !103
  %i.d = lshr i64 %.val.i, 20
  %i.e = and i64 %i.d, 255
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !117
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 78952
  %.val10.i = load i32, ptr %i.j, align 8, !tbaa !94
  %i.k = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.l = icmp ult i32 %.val10.i, %i.k
  br i1 %i.l, label %arena_dissociate_bin_slab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106  ; 2 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99   ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !106
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.g, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !99
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !99
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !99  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %2, ptr %i.aj, align 8, !tbaa !99
  br label %arena_dissociate_bin_slab.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !106
  br label %arena_dissociate_bin_slab.exit

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 232
  tail call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.ak, ptr noundef nonnull %2) #18
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !118
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !118
  br label %arena_dissociate_bin_slab.exit

arena_dissociate_bin_slab.exit:                   ; preds = %bb.b, %bb.d, %.thread.i.i.i, %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !113
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !113
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 78952
  %.val = load i32, ptr %i.a, align 8, !tbaa !94
  %i.b = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.c = icmp ult i32 %.val, %i.b
  br i1 %i.c, label %arena_bin_slabs_full_remove.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = icmp eq ptr %i.e, %2
  br i1 %i.f, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !106
  %i.i = icmp eq ptr %i.h, %2
  br i1 %i.i, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.m, ptr %i.p, align 8, !tbaa !99
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.q, ptr %i.s, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  store ptr %i.u, ptr %i.n, align 8, !tbaa !99
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !99
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %2, ptr %i.aa, align 8, !tbaa !99
  br label %arena_bin_slabs_full_remove.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !106
  br label %arena_bin_slabs_full_remove.exit

arena_bin_slabs_full_remove.exit:                 ; preds = %bb.a, %.thread.i.i, %bb.d
  tail call fastcc void @arena_bin_lower_slab(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !100

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #18
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.d)
  %i.e = load ptr, ptr %3, align 8, !tbaa !133    ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !103 ; 3 uses
  %i.f = and i64 %.val.i, 4095
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 7 uses
  %4 = trunc i64 %.val.i to i32
  %5 = lshr i32 %4, 20
  %i.i = and i32 %5, 255                          ; 2 uses
  %i.j = lshr i64 %.val.i, 38
  %i.k = and i64 %i.j, 63                         ; 2 uses
  %6 = zext nneg i32 %i.i to i64                  ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %6
  %i.m = load i32, ptr %i.l, align 4, !tbaa !6
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n ; 2 uses
  %i.p = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !6
  %i.q = icmp ult i32 %i.i, %i.p
  %i.r = getelementptr inbounds nuw [648 x i8], ptr %i.o, i64 %i.k
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %i.k
  %.0.i.i = select i1 %i.q, ptr %i.r, ptr %i.s    ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 2 uses
  %i.u = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.t) #18
  %.not.i25.i = icmp eq i32 %i.u, 0
  br i1 %.not.i25.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i.i) #18
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store atomic i8 1, ptr %i.v monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %tsdn_rtree_ctx.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.z, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !68
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %6
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr i8, ptr %i.e, i64 8
  %.val.i9 = load ptr, ptr %i.ai, align 8, !tbaa !102
  %i.aj = ptrtoint ptr %.val.i9 to i64
  %i.ak = sub i64 %i.d, %i.aj
  %i.al = zext i32 %i.af to i64
  %i.am = mul i64 %i.ak, %i.al                    ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ap = lshr i64 %i.am, 38
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = and i64 %i.an, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = xor i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !11
  %i.av = load i64, ptr %i.e, align 8, !tbaa !103 ; 2 uses
  %i.aw = add i64 %i.av, 268435456                ; 2 uses
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !103
  %i.ax = lshr i64 %i.aw, 28
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 1023                     ; 2 uses
  %i.ba = load i32, ptr %i.ah, align 8, !tbaa !117
  %.not.i = icmp eq i32 %i.az, %i.ba              ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.p

bb.g:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.bd = icmp eq ptr %i.e, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.bb, align 8, !tbaa !111
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.be = lshr i64 %i.av, 20
  %i.bf = and i64 %i.be, 255
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !117
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr i8, ptr %i.h, i64 78952
  %.val10.i.i.i = load i32, ptr %i.bk, align 8, !tbaa !94
  %i.bl = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.bm = icmp ult i32 %.val10.i.i.i, %i.bl
  br i1 %i.bm, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 248 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !106 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.e
  br i1 %i.bp, label %bb.l, label %.thread.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !99 ; 2 uses
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !106
  %i.bs = icmp eq ptr %i.br, %i.e
  br i1 %i.bs, label %bb.m, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.l, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !99
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !99
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !99 ; 2 uses
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !99
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !99
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !99
  store ptr %i.ce, ptr %i.bx, align 8, !tbaa !99
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !99 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !99
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !99
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !99
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store ptr %i.e, ptr %i.ck, align 8, !tbaa !99
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.bn, align 8, !tbaa !106
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 232
  call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.e) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 184 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !118
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.thread.i.i.i.i.i, %bb.j, %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !113
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !113
  br label %arena_dalloc_bin_locked_step.exit.i

bb.p:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.cs = icmp eq i32 %i.az, 1
  br i1 %i.cs, label %bb.q, label %arena_dalloc_bin_locked_step.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !111
  %.not.i.i = icmp eq ptr %i.e, %i.cu
  br i1 %.not.i.i, label %arena_dalloc_bin_locked_step.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr i8, ptr %i.h, i64 78952
  %.val.i.i = load i32, ptr %i.cv, align 8, !tbaa !94
  %i.cw = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.cx = icmp ult i32 %.val.i.i, %i.cw
  br i1 %i.cx, label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 248 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !106 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.e
  br i1 %i.da, label %bb.t, label %.thread.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !99 ; 2 uses
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !106
  %i.dd = icmp eq ptr %i.dc, %i.e
  br i1 %i.dd, label %bb.u, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.t, %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !99
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !99
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !99
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !99 ; 2 uses
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !99
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !99
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !99
  store ptr %i.dp, ptr %i.di, align 8, !tbaa !99
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !99 ; 2 uses
end_hunk_0
begin_hunk_1_@arena_decay_impl:bb.a
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !68
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10688
  tail call void @duckdb_je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true) #18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  store atomic i8 0, ptr %i.m monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #18 ; 0 uses
  br label %malloc_mutex_trylock.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %malloc_mutex_trylock.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !66
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67
  %.not.i.i36 = icmp eq ptr %i.s, %0
  br i1 %.not.i.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.r, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  br i1 %5, label %arena_decide_unforced_purge_eagerness.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !92, !noundef !93
  %i.x = trunc nuw i8 %i.w to i1
  %..i = select i1 %i.x, i32 1, i32 2
  br label %arena_decide_unforced_purge_eagerness.exit

arena_decide_unforced_purge_eagerness.exit:       ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %..i, %bb.j ], [ 0, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10688
  %i.z = tail call zeroext i1 @duckdb_je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %.0.i) #18 ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %arena_decide_unforced_purge_eagerness.exit
  %i.aa = getelementptr i8, ptr %2, i64 1768
  %.val = load i64, ptr %i.aa, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %arena_decide_unforced_purge_eagerness.exit
  %.0 = phi i64 [ %.val, %bb.k ], [ undef, %arena_decide_unforced_purge_eagerness.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  store atomic i8 0, ptr %i.ab monotonic, align 8
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.ad = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !92, !noundef !93
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = and i1 %i.z, %i.ae
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = or i1 %5, %or.cond.not
  br i1 %or.cond3, label %malloc_mutex_trylock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr i8, ptr %1, i64 78952
  %.val35 = load i32, ptr %i.af, align 8, !tbaa !94
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val35, ptr noundef nonnull %2, i64 noundef %.0)
  br label %malloc_mutex_trylock.exit

malloc_mutex_trylock.exit:                        ; preds = %bb.f, %bb.l, %bb.m, %malloc_mutex_lock.exit
  %.033 = phi i1 [ false, %malloc_mutex_lock.exit ], [ false, %bb.l ], [ false, %bb.m ], [ true, %bb.f ]
  ret i1 %.033
}

declare void @duckdb_je_pac_decay_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pac_maybe_decay_purge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @duckdb_je_pac_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @duckdb_je_eset_npages_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !109
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !98

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !109
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !98

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !109
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110
  store ptr %i.u, ptr %i.r, align 8, !tbaa !110
  store i64 %i.c, ptr %i.d, align 8, !tbaa !109
  store ptr %i.s, ptr %i.t, align 8, !tbaa !110
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !109
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !98

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !98

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !109
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !98

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !109
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !98

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !109
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !98

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !109
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !98

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #18
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !110 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !109
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !109
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !110
  store i64 %i.e, ptr %i.at, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !110
  store i64 %i.c, ptr %i.d, align 8, !tbaa !109
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !110
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !209
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !210, !alias.scope !211
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !212, !alias.scope !211
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = lshr i8 %i.bh, 1
  %i.bl = and i8 %4, 1
  store i8 %i.bl, ptr %i.bk, align 8, !tbaa !213, !alias.scope !211
  %5 = trunc i64 %i.bd to i32
  %6 = lshr i32 %5, 2
  %i.bm = and i32 %6, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !214, !alias.scope !211
  %i.bo = shl i64 %i.bd, 16
  %i.bp = ashr exact i64 %i.bo, 16
  %i.bq = and i64 %i.bp, -128
  %i.br = inttoptr i64 %i.bq to ptr
  store ptr %i.br, ptr %0, align 8, !tbaa !133, !alias.scope !211
  ret void
}

declare void @duckdb_je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @duckdb_je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @batcher_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @duckdb_je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #18
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %malloc_mutex_trylock.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.g, %0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  store atomic i8 0, ptr %i.k monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #18 ; 0 uses
  br label %bb.h

malloc_mutex_trylock.exit:                        ; preds = %bb.a
  %i.m = load i32, ptr %3, align 4, !tbaa !6      ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !114
  %i.q = icmp eq i32 %i.n, 32
  br i1 %i.q, label %.lr.ph.i, label %arena_prepare_base_deletion_sync_finish.exit

.lr.ph.i:                                         ; preds = %malloc_mutex_trylock.exit, %malloc_mutex_lock.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %malloc_mutex_lock.exit.i ], [ 0, %malloc_mutex_trylock.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.t) #18
  %.not.i.i14 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.s) #18
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store atomic i8 1, ptr %i.v monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.z, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !68
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.g, %bb.f
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store atomic i8 0, ptr %i.af monotonic, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #18 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %arena_prepare_base_deletion_sync_finish.exit, label %.lr.ph.i

arena_prepare_base_deletion_sync_finish.exit:     ; preds = %malloc_mutex_lock.exit.i, %malloc_mutex_trylock.exit
  %.0 = phi i32 [ %i.n, %malloc_mutex_trylock.exit ], [ 0, %malloc_mutex_lock.exit.i ]
  store i32 %.0, ptr %3, align 4, !tbaa !6
  br label %bb.h

bb.h:                                             ; preds = %arena_prepare_base_deletion_sync_finish.exit, %bb.d
  ret void
}

declare i64 @duckdb_je_batcher_pop_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @duckdb_je_batcher_pop_get_pushes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @batcher_pop_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

declare void @duckdb_je_bitmap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #16 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !99
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !100

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #18
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !100

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #18 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !97, !range !92, !noundef !93
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129  ; 2 uses
  %.not30.i = icmp eq ptr %i.p, null
  br i1 %.not30.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31.i = icmp eq ptr %i.p, %i.j
  br i1 %.not31.i, label %arena_choose_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #18
  br label %arena_choose_impl.exit

bb.j:                                             ; preds = %bb.g
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #18
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.025.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.025.i
}

declare ptr @duckdb_je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @duckdb_je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
end_hunk_1
