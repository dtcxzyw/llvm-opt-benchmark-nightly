Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/arena?download=true
inline.NumInlined: 376
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@duckdb_je_arena_destroy:bb.a
  %i.ag = load ptr, ptr %i.d, align 16, !tbaa !12
  tail call void @duckdb_je_base_delete(ptr noundef %0, ptr noundef %i.ag) #18
  ret void
}

declare void @duckdb_je_pa_shard_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_arena_set(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_base_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_je_arena_bin_choose(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !120
  %i.i = zext i8 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %3, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %i.o = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.p = icmp ult i32 %2, %i.o
  %i.q = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw [648 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.n, i64 %i.q
  %.0.i = select i1 %i.p, ptr %i.r, ptr %i.s
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_cache_bin_fill_small(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %5 = alloca [16 x %struct.bin_remote_free_data_s], align 16 ; 4 uses
  %6 = alloca %struct.arena_bin_flush_batch_state_s, align 8 ; 8 uses
  %i.f = zext i32 %3 to i64                       ; 4 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.f ; 3 uses
  %.val100 = load ptr, ptr %2, align 8, !tbaa !90 ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val101 = load i16, ptr %i.h, align 4, !tbaa !96
  %i.i = ptrtoint ptr %.val100 to i64
  %i.j = trunc i64 %i.i to i16
  %i.k = sub i16 %.val101, %i.j
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.l
  %i.n = zext i16 %4 to i64
  %i.o = sub nsw i64 0, %i.n                      ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.q, label %duckdb_je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !142
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %duckdb_je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !120
  %i.x = zext i8 %i.w to i32
  br label %duckdb_je_arena_bin_choose.exit

duckdb_je_arena_bin_choose.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i111 = phi i32 [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.f
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.ad = icmp ult i32 %3, %i.ac
  %i.ae = zext nneg i32 %.0.i111 to i64           ; 2 uses
  %i.af = getelementptr inbounds nuw [648 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ae
  %.0.i.i = select i1 %i.ad, ptr %i.af, ptr %i.ag ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256 ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i.i, i64 392
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224 ; 7 uses
  %i.aw = getelementptr i8, ptr %1, i64 78952     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 248 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 232 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 184 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 216 ; 2 uses
  %i.be = zext i16 %4 to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %arena_bin_flush_batch_after_unlock.exit, %duckdb_je_arena_bin_choose.exit
  %.077 = phi i16 [ 0, %duckdb_je_arena_bin_choose.exit ], [ %.178166, %arena_bin_flush_batch_after_unlock.exit ] ; 3 uses
  %.074 = phi ptr [ null, %duckdb_je_arena_bin_choose.exit ], [ %i.qx, %arena_bin_flush_batch_after_unlock.exit ] ; 2 uses
  %.073 = phi i1 [ true, %duckdb_je_arena_bin_choose.exit ], [ false, %arena_bin_flush_batch_after_unlock.exit ]
  %i.bj = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ah) #18
  %.not.i113 = icmp eq i32 %i.bj, 0
  br i1 %.not.i113, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i.i) #18
  store atomic i8 1, ptr %i.ai monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !72
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.aj, align 8, !tbaa !72
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.bm, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.ak, align 8, !tbaa !74
  %i.bn = load i64, ptr %i.al, align 8, !tbaa !75
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.al, align 8, !tbaa !75
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.bp = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %.not.i = icmp ult i32 %3, %i.bp
  br i1 %.not.i, label %bb.h, label %arena_bin_flush_batch_after_lock.exit

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  store i32 %i.bq, ptr %6, align 8, !tbaa !3
  %i.br = load i32, ptr %i.an, align 8, !tbaa !144
  store i32 %i.br, ptr %i.ao, align 4, !tbaa !145
  store i64 0, ptr %i.ap, align 8, !tbaa !148
  store i32 0, ptr %i.aq, align 8, !tbaa !149
  store ptr null, ptr %i.ar, align 8, !tbaa !127
  %i.bs = call i64 @duckdb_je_batcher_pop_begin(ptr noundef %0, ptr noundef nonnull %i.at) #18 ; 6 uses
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %arena_bin_flush_batch_after_lock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = call i64 @duckdb_je_batcher_pop_get_pushes(ptr noundef %0, ptr noundef nonnull %i.at) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.not191.a = icmp eq i64 %i.bs, 0
  br i1 %.not191.a, label %._crit_edge.thread, label %.lr.ph163

._crit_edge.thread:                               ; preds = %bb.i
  call void @batcher_pop_end(ptr noundef %0, ptr noundef nonnull %i.at) #18
  br label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.i
  %i.bv = shl nuw i64 %i.bs, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 8 %i.au, i64 %i.bv, i1 false)
  call void @batcher_pop_end(ptr noundef %0, ptr noundef nonnull %i.at) #18
  %i.bw = zext i32 %i.bq to i64
  br label %bb.j

._crit_edge164:                                   ; preds = %arena_dalloc_bin_locked_step.exit, %._crit_edge.thread
  store i64 %i.bs, ptr %i.ap, align 8
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !151
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bb, align 8, !tbaa !151
  %i.bz = load i64, ptr %i.bc, align 8, !tbaa !152
  %i.ca = add i64 %i.bz, %i.bu
  store i64 %i.ca, ptr %i.bc, align 8, !tbaa !152
  %i.cb = load i64, ptr %i.bd, align 8, !tbaa !108
  %i.cc = add i64 %i.cb, %i.bs
  store i64 %i.cc, ptr %i.bd, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %arena_bin_flush_batch_after_lock.exit

bb.j:                                             ; preds = %.lr.ph163, %arena_dalloc_bin_locked_step.exit
  %7 = phi i32 [ 0, %.lr.ph163 ], [ %i.gf, %arena_dalloc_bin_locked_step.exit ] ; 7 uses
  %.0.i96159 = phi i64 [ 0, %.lr.ph163 ], [ %i.gg, %arena_dalloc_bin_locked_step.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.0.i96159 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !153 ; 26 uses
  %i.cg = load ptr, ptr %i.cd, align 16, !tbaa !155
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  %.val = load ptr, ptr %i.ci, align 8, !tbaa !122
  %i.cj = ptrtoint ptr %.val to i64
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = mul i64 %i.ck, %i.bw                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.co = lshr i64 %i.cl, 38
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = and i64 %i.cm, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = xor i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cp, align 8, !tbaa !10
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !124 ; 2 uses
  %i.cv = add i64 %i.cu, 268435456                ; 2 uses
  store i64 %i.cv, ptr %i.cf, align 8, !tbaa !124
  %i.cw = lshr i64 %i.cv, 28
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 1023                     ; 2 uses
  %i.cz = load i32, ptr %i.an, align 8, !tbaa !144
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.db = load ptr, ptr %i.av, align 8, !tbaa !135
  %i.dc = icmp eq ptr %i.cf, %i.db
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.av, align 8, !tbaa !135
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.m:                                             ; preds = %bb.k
  %i.dd = lshr i64 %i.cu, 20
  %i.de = and i64 %i.dd, 255
  %i.df = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !144
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.val10.i.i = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.dj = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.dk = icmp ult i32 %.val10.i.i, %i.dj
  br i1 %i.dk, label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cf
  br i1 %i.dm, label %bb.p, label %.thread.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !120 ; 2 uses
  store ptr %i.do, ptr %i.ax, align 8, !tbaa !127
  %i.dp = icmp eq ptr %i.do, %i.cf
  br i1 %i.dp, label %bb.q, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.p, %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !120
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !120
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !120
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !120
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !120 ; 2 uses
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !120
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !120
  store ptr %i.eb, ptr %i.du, align 8, !tbaa !120
  %i.ec = load ptr, ptr %i.dq, align 8, !tbaa !120 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !120
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !120
  %i.eg = load ptr, ptr %i.du, align 8, !tbaa !120
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  store ptr %i.cf, ptr %i.eh, align 8, !tbaa !120
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ax, align 8, !tbaa !127
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.r:                                             ; preds = %bb.m
  call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.cf) #18
  %i.ei = load i64, ptr %i.az, align 8, !tbaa !156
  %i.ej = add i64 %i.ei, -1
  store i64 %i.ej, ptr %i.az, align 8, !tbaa !156
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit: ; preds = %bb.l, %bb.n, %.thread.i.i.i.i, %bb.q, %bb.r
  %i.ek = load i64, ptr %i.ba, align 8, !tbaa !137
  %i.el = add i64 %i.ek, -1
  store i64 %i.el, ptr %i.ba, align 8, !tbaa !137
  %i.em = icmp ult i32 %7, 8
  br i1 %i.em, label %bb.s, label %bb.t

bb.s:                                             ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit
  %i.en = zext nneg i32 %7 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.en
  store ptr %i.cf, ptr %i.eo, align 8, !tbaa !157
  %i.ep = add nuw nsw i32 %7, 1                   ; 2 uses
  store i32 %i.ep, ptr %i.aq, align 8, !tbaa !3
  br label %arena_dalloc_bin_locked_step.exit

bb.t:                                             ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 3 uses
  store ptr %i.cf, ptr %i.eq, align 8, !tbaa !120
  %i.er = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  store ptr %i.cf, ptr %i.er, align 8, !tbaa !120
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %edata_list_active_append.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !120
  store ptr %i.ev, ptr %i.eq, align 8, !tbaa !120
  store ptr %i.cf, ptr %i.eu, align 8, !tbaa !120
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !120
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !120
  store ptr %i.ey, ptr %i.er, align 8, !tbaa !120
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !120
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store ptr %i.es, ptr %i.fa, align 8, !tbaa !120
  %i.fb = load ptr, ptr %i.er, align 8, !tbaa !120
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store ptr %i.cf, ptr %i.fc, align 8, !tbaa !120
  %.pre.i = load ptr, ptr %i.eq, align 8, !tbaa !120
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.t, %bb.u
  %i.fd = phi ptr [ %.pre.i, %bb.u ], [ %i.cf, %bb.t ]
  store ptr %i.fd, ptr %i.ar, align 8, !tbaa !127
  br label %arena_dalloc_bin_locked_step.exit

bb.v:                                             ; preds = %bb.j
  %i.fe = icmp eq i32 %i.cy, 1
  br i1 %i.fe, label %bb.w, label %arena_dalloc_bin_locked_step.exit

bb.w:                                             ; preds = %bb.v
  %i.ff = load ptr, ptr %i.av, align 8, !tbaa !135
  %.not.i97 = icmp eq ptr %i.cf, %i.ff
  br i1 %.not.i97, label %arena_dalloc_bin_locked_step.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.fg = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.fh = icmp ult i32 %.val.i, %i.fg
  br i1 %i.fh, label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fi = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.cf
  br i1 %i.fj, label %bb.z, label %.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !120 ; 2 uses
  store ptr %i.fl, ptr %i.ax, align 8, !tbaa !127
  %i.fm = icmp eq ptr %i.fl, %i.cf
  br i1 %i.fm, label %bb.aa, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.z, %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !120
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !120
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !120
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !120 ; 2 uses
  %i.fv = load ptr, ptr %i.fn, align 8, !tbaa !120
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !120
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !120
  store ptr %i.fy, ptr %i.fr, align 8, !tbaa !120
  %i.fz = load ptr, ptr %i.fn, align 8, !tbaa !120 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !120
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !120
  %i.gd = load ptr, ptr %i.fr, align 8, !tbaa !120
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  store ptr %i.cf, ptr %i.ge, align 8, !tbaa !120
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.ax, align 8, !tbaa !127
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit

duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit: ; preds = %bb.x, %.thread.i.i.i, %bb.aa
  call fastcc void @arena_bin_lower_slab(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.cf, ptr noundef nonnull %.0.i.i)
  br label %arena_dalloc_bin_locked_step.exit

arena_dalloc_bin_locked_step.exit:                ; preds = %bb.s, %edata_list_active_append.exit, %bb.v, %bb.w, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit
  %i.gf = phi i32 [ %i.ep, %bb.s ], [ %7, %edata_list_active_append.exit ], [ %7, %bb.v ], [ %7, %bb.w ], [ %7, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit ]
  %i.gg = add nuw i64 %.0.i96159, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gg, %i.bs
  br i1 %exitcond.not, label %._crit_edge164, label %bb.j

arena_bin_flush_batch_after_lock.exit:            ; preds = %._crit_edge164, %bb.h, %malloc_mutex_lock.exit
  %i.gh = icmp ult i16 %.077, %4
  br i1 %i.gh, label %.lr.ph169, label %.thread140.thread

.lr.ph169:                                        ; preds = %arena_bin_flush_batch_after_lock.exit, %bb.ah
  %.1168 = phi i1 [ %.2, %bb.ah ], [ %.073, %arena_bin_flush_batch_after_lock.exit ] ; 3 uses
  %.175167 = phi ptr [ %.276, %bb.ah ], [ %.074, %arena_bin_flush_batch_after_lock.exit ] ; 4 uses
  %.178166 = phi i16 [ %.279, %bb.ah ], [ %.077, %arena_bin_flush_batch_after_lock.exit ] ; 7 uses
  %i.gi = zext i16 %.178166 to i32
  %i.gj = load ptr, ptr %i.av, align 8, !tbaa !135 ; 12 uses
  %.not = icmp eq ptr %i.gj, null
  br i1 %.not, label %arena_bin_slabs_full_insert.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph169
  %.val105 = load i64, ptr %i.gj, align 8, !tbaa !124 ; 2 uses
  %i.gk = lshr i64 %.val105, 28
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 1023                     ; 2 uses
  %.not88 = icmp eq i32 %i.gm, 0
  br i1 %.not88, label %bb.ac, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.ab
  %i.gn = sub nsw i32 %i.be, %i.gi
  %i.go = call i32 @llvm.umin.i32(i32 %i.gn, i32 %i.gm) ; 5 uses
  %i.gp = zext i16 %.178166 to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 64 ; 4 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !10
  %i.gt = getelementptr i8, ptr %i.gj, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge47.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge47.i ] ; 2 uses
  %.02951.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa262, %._crit_edge47.i ] ; 5 uses
  %.03750.i = phi i64 [ %i.gs, %.preheader.lr.ph.i ], [ %.lcssa263, %._crit_edge47.i ] ; 2 uses
  %i.gu = icmp eq i64 %.03750.i, 0
  br i1 %i.gu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.139.i = phi i32 [ %i.gv, %.lr.ph.i ], [ %.052.i, %.preheader.i ]
  %i.gv = add i32 %.139.i, 1                      ; 3 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !10 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.138.lcssa.i = phi i64 [ %.03750.i, %.preheader.i ], [ %i.gy, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.052.i, %.preheader.i ], [ %i.gv, %.lr.ph.i ] ; 4 uses
  %i.ha = shl i32 %.1.lcssa.i, 6
  %i.hb = zext i32 %i.ha to i64                   ; 3 uses
  %.val.i114 = load ptr, ptr %i.gt, align 8, !tbaa !122
  %i.hc = ptrtoint ptr %.val.i114 to i64          ; 3 uses
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !158 ; 3 uses
  %.not41.i = icmp eq i32 %i.go, %.02951.i
  br i1 %.not41.i, label %._crit_edge47.thread.i, label %.lr.ph46.preheader.i

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.he = zext i32 %.1.lcssa.i to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.he
  store i64 %.138.lcssa.i, ptr %i.hf, align 8, !tbaa !10
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.hg = sub i32 %i.go, %.02951.i
  %i.hh = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.hg, i32 %i.hi) ; 2 uses
  %.027.i = zext nneg i32 %spec.select.i to i64   ; 3 uses
  %xtraiter = and i64 %.027.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol.loopexit, label %.lr.ph46.i.prol

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.hj = add nsw i64 %.027.i, -1
  %i.hk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.138.lcssa.i, i1 true) ; 2 uses
  %i.hl = shl nuw i64 1, %i.hk
  %i.hm = xor i64 %i.hl, %.138.lcssa.i            ; 2 uses
  %i.hn = or disjoint i64 %i.hk, %i.hb
  %i.ho = mul i64 %i.hn, %i.hd
  %i.hp = add i64 %i.ho, %i.hc
  %i.hq = inttoptr i64 %i.hp to ptr
  %i.hr = zext i32 %.02951.i to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hr
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !103
  %i.ht = add i32 %.02951.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa263.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.hm, %.lr.ph46.i.prol ]
  %.lcssa262.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.ht, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i64 [ %.027.i, %.lr.ph46.preheader.i ], [ %i.hj, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i32 [ %.02951.i, %.lr.ph46.preheader.i ], [ %i.ht, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.hm, %.lr.ph46.i.prol ]
  %i.hu = icmp eq i32 %spec.select.i, 1
  br i1 %i.hu, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i64 [ %i.ig, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.13043.i = phi i32 [ %i.ir, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.242.i = phi i64 [ %i.ik, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.hv = icmp ne i64 %.242.i, 0
  call void @llvm.assume(i1 %i.hv)
  %i.hw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.242.i, i1 true) ; 2 uses
  %i.hx = shl nuw i64 1, %i.hw                    ; 2 uses
  %i.hy = xor i64 %i.hx, %.242.i                  ; 2 uses
  %i.hz = or disjoint i64 %i.hw, %i.hb
  %i.ia = mul i64 %i.hz, %i.hd
  %i.ib = add i64 %i.ia, %i.hc
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = zext i32 %.13043.i to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.id
  store ptr %i.ic, ptr %i.ie, align 8, !tbaa !103
  %i.if = add i32 %.13043.i, 1
  %i.ig = add nsw i64 %.12844.i, -2               ; 2 uses
  %i.ih = icmp ne i64 %i.hx, %.242.i
  call void @llvm.assume(i1 %i.ih)
  %i.ii = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hy, i1 true) ; 2 uses
  %i.ij = shl nuw i64 1, %i.ii
  %i.ik = xor i64 %i.ij, %i.hy                    ; 2 uses
  %i.il = or disjoint i64 %i.ii, %i.hb
  %i.im = mul i64 %i.il, %i.hd
  %i.in = add i64 %i.im, %i.hc
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = zext i32 %i.if to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ip
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !103
  %i.ir = add i32 %.13043.i, 2                    ; 2 uses
  %.not.i115.1 = icmp eq i64 %i.ig, 0
  br i1 %.not.i115.1, label %._crit_edge47.i, label %.lr.ph46.i

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa263 = phi i64 [ %.lcssa263.unr, %.lr.ph46.i.prol.loopexit ], [ %i.ik, %.lr.ph46.i ] ; 2 uses
  %.lcssa262 = phi i32 [ %.lcssa262.unr, %.lr.ph46.i.prol.loopexit ], [ %i.ir, %.lr.ph46.i ] ; 2 uses
  %i.is = zext i32 %.1.lcssa.i to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.is
  store i64 %.lcssa263, ptr %i.it, align 8, !tbaa !10
  %i.iu = icmp ult i32 %.lcssa262, %i.go
  br i1 %i.iu, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %._crit_edge47.thread.i
  %i.iv = zext nneg i32 %i.go to i64
  %i.iw = shl nuw nsw i64 %i.iv, 28
  %i.ix = sub i64 %.val105, %i.iw
  store i64 %i.ix, ptr %i.gj, align 8, !tbaa !124
  %i.iy = trunc nuw nsw i32 %i.go to i16
  %i.iz = add i16 %.178166, %i.iy
  br label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.val.i117 = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.ja = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.jb = icmp ult i32 %.val.i117, %i.ja
  br i1 %i.jb, label %arena_bin_slabs_full_insert.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gj, i64 40 ; 3 uses
  store ptr %i.gj, ptr %i.jc, align 8, !tbaa !120
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 4 uses
  store ptr %i.gj, ptr %i.jd, align 8, !tbaa !120
  %i.je = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %edata_list_active_append.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !120
  store ptr %i.jh, ptr %i.jc, align 8, !tbaa !120
  %i.ji = load ptr, ptr %i.ax, align 8, !tbaa !127
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  store ptr %i.gj, ptr %i.jj, align 8, !tbaa !120
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !120
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !120
  store ptr %i.jm, ptr %i.jd, align 8, !tbaa !120
  %i.jn = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !120
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  store ptr %i.jn, ptr %i.jq, align 8, !tbaa !120
  %i.jr = load ptr, ptr %i.jd, align 8, !tbaa !120
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  store ptr %i.gj, ptr %i.js, align 8, !tbaa !120
  %.pre.i.i.i = load ptr, ptr %i.jc, align 8, !tbaa !120
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.ae, %bb.ad
  %i.jt = phi ptr [ %.pre.i.i.i, %bb.ae ], [ %i.gj, %bb.ad ]
  store ptr %i.jt, ptr %i.ax, align 8, !tbaa !127
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %.lr.ph169, %edata_list_active_append.exit.i.i, %bb.ac
  %i.ju = call ptr @duckdb_je_edata_heap_remove_first(ptr noundef nonnull %i.ay) #18 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.af, label %arena_bin_refill_slabcur_no_fresh_slab.exit

end_hunk_0
