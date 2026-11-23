Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/arena?download=true
inline.NumInlined: 316
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_arena_stats_merge:atomic_load_zu.exit

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.ke, align 8, !tbaa !94
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 40 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !95
  %i.ki = add i64 %i.kh, 1
  store i64 %i.ki, ptr %i.kg, align 8, !tbaa !95
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.p, %bb.o
  call void @je_nstime_add(ptr noundef nonnull %i.ji, ptr noundef nonnull %i.jx) #15
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.kk = call i32 @je_nstime_compare(ptr noundef nonnull %i.kj, ptr noundef nonnull %i.jj) #15
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %malloc_mutex_lock.exit.i
  call void @je_nstime_copy(ptr noundef nonnull %i.jj, ptr noundef nonnull %i.kj) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %malloc_mutex_lock.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kn = load <2 x i64>, ptr %i.km, align 8, !tbaa !38
  %i.ko = load <2 x i64>, ptr %i.jk, align 8, !tbaa !38
  %i.kp = add <2 x i64> %i.ko, %i.kn
  store <2 x i64> %i.kp, ptr %i.jk, align 8, !tbaa !38
  %i.kq = load i32, ptr %i.jl, align 8, !tbaa !198
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !198 ; 2 uses
  %i.kt = icmp ult i32 %i.kq, %i.ks
  br i1 %i.kt, label %bb.s, label %bin_stats_merge.exit

bb.s:                                             ; preds = %bb.r
  store i32 %i.ks, ptr %i.jl, align 8, !tbaa !198
  br label %bin_stats_merge.exit

bin_stats_merge.exit:                             ; preds = %bb.r, %bb.s
  store atomic i32 0, ptr %i.jm monotonic, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !95
  %i.kw = load i64, ptr %i.jn, align 8, !tbaa !95
  %i.kx = add i64 %i.kw, %i.kv
  store i64 %i.kx, ptr %i.jn, align 8, !tbaa !95
  %i.ky = load i64, ptr %i.kb, align 8, !tbaa !93
  %i.kz = load i64, ptr %i.jo, align 8, !tbaa !93
  %i.la = add i64 %i.kz, %i.ky
  store i64 %i.la, ptr %i.jo, align 8, !tbaa !93
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jx, i64 112
  %i.lc = load <2 x i64>, ptr %i.lb, align 8, !tbaa !38
  %i.ld = load <2 x i64>, ptr %i.jg, align 8, !tbaa !38
  %i.le = add <2 x i64> %i.ld, %i.lc
  store <2 x i64> %i.le, ptr %i.jg, align 8, !tbaa !38
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jx, i64 128
  %i.lg = load <2 x i64>, ptr %i.lf, align 8, !tbaa !38
  %i.lh = load <2 x i64>, ptr %i.jp, align 8, !tbaa !38
  %i.li = add <2 x i64> %i.lh, %i.lg
  store <2 x i64> %i.li, ptr %i.jp, align 8, !tbaa !38
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jx, i64 144
  %i.lk = load <2 x i64>, ptr %i.lj, align 8, !tbaa !38
  %i.ll = load <2 x i64>, ptr %i.jq, align 8, !tbaa !38
  %i.lm = add <2 x i64> %i.ll, %i.lk
  store <2 x i64> %i.lm, ptr %i.jq, align 8, !tbaa !38
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jx, i64 160
  %i.lo = load <2 x i64>, ptr %i.ln, align 8, !tbaa !38
  %i.lp = load <2 x i64>, ptr %i.jr, align 8, !tbaa !38
  %i.lq = add <2 x i64> %i.lp, %i.lo
  store <2 x i64> %i.lq, ptr %i.jr, align 8, !tbaa !38
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jx, i64 176
  %i.ls = load <2 x i64>, ptr %i.lr, align 8, !tbaa !38
  %i.lt = load <2 x i64>, ptr %i.js, align 8, !tbaa !38
  %i.lu = add <2 x i64> %i.lt, %i.ls
  store <2 x i64> %i.lu, ptr %i.js, align 8, !tbaa !38
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jx, i64 104
  store atomic i8 0, ptr %i.lv monotonic, align 8
  %i.lw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jy) #15 ; 0 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.lx = load i32, ptr %i.je, align 4, !tbaa !115
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next171, %i.ly
  br i1 %i.lz, label %bb.m, label %._crit_edge, !llvm.loop !175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @je_base_stats_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @je_pa_shard_stats_merge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_pa_shard_mtx_stats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !199 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 69320 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 69440
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.a, label %bb.e

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72896
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10728
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.h) #15
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 1, ptr %i.j monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !93
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 69368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %.not.i.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i.i, label %arena_decay_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 69360 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !95
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !95
  br label %arena_decay_impl.exit

arena_decay_impl.exit:                            ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10672
  tail call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.g, i1 noundef zeroext true) #15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 0, ptr %i.t monotonic, align 8
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %arena_decay_impl.exit, %tsdn_witness_tsdp_get.exit
  %i.v = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !117, !noundef !118
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %arena_background_thread_inactivity_check.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 78928      ; 2 uses
  %.val.i = load i32, ptr %i.x, align 8, !tbaa !119
  %i.y = load ptr, ptr @je_background_thread_info, align 8, !tbaa !121
  %i.z = zext i32 %.val.i to i64
  %i.aa = load i64, ptr @je_max_background_threads, align 8, !tbaa !38
  %i.ab = urem i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  %i.ae = load atomic i8, ptr %i.ad acquire, align 1, !range !117, !noundef !118
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %arena_background_thread_inactivity_check.exit

bb.g:                                             ; preds = %bb.f
  %.val6.i = load i32, ptr %i.x, align 8, !tbaa !119
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i, ptr noundef nonnull %i.a, i64 noundef 0)
  br label %arena_background_thread_inactivity_check.exit

arena_background_thread_inactivity_check.exit:    ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_extent_alloc_large(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 !guid !200 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !122
  %i.c = icmp ult i64 %2, 4097
  br i1 %i.c, label %bb.b, label %bb.c, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !124
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.i, label %sz_size2index.exit, label %bb.d, !prof !125

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.k, i1 true) ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l
  %5 = ashr exact i64 -1152921504606846976, %i.l
  %i.o = add nsw i64 %2, -1
  %6 = and i64 %5, %i.o
  %i.p = lshr i64 %6, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.m, 2
  %reass.sub = sub nsw i32 %i.r, %i.s
  %i.t = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.t, %bb.d ], [ 235, %bb.c ]
  %i.u = load i64, ptr @je_sz_large_pad, align 8, !tbaa !38
  %i.v = add i64 %i.u, %2                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = tail call ptr @je_base_ehooks_get(ptr noundef %i.x) #15
  %i.z = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !38
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %san_large_extent_decide_guard.exit, label %bb.e

bb.e:                                             ; preds = %sz_size2index.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ad = icmp ne ptr %i.ac, @je_ehooks_default_extent_hooks
  %i.ae = icmp eq ptr %0, null
  %or.cond14.i = or i1 %i.ae, %i.ad
  br i1 %or.cond14.i, label %san_large_extent_decide_guard.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2                   ; 2 uses
  br i1 %i.ah, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.ai = add i64 %i.ag, -1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp eq i64 %i.ag, 1
  %i.ak = icmp ult i64 %3, 4097
  %or.cond.i = and i1 %i.ak, %i.aj
  %i.al = add i64 %i.v, 8192
  %i.am = icmp ult i64 %i.al, 8070450532247928833
  %or.cond16.i = and i1 %i.am, %or.cond.i
  br i1 %or.cond16.i, label %bb.h, label %san_large_extent_decide_guard.exit

bb.h:                                             ; preds = %bb.g
  %i.an = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !38
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %.thread.i
  %.sink.i = phi i64 [ %i.ai, %.thread.i ], [ %i.an, %bb.h ]
  store i64 %.sink.i, ptr %i.af, align 8, !tbaa !38
  br label %san_large_extent_decide_guard.exit

san_large_extent_decide_guard.exit:               ; preds = %sz_size2index.exit, %bb.e, %bb.g, %.sink.split.i
  %.1.i = phi i1 [ false, %sz_size2index.exit ], [ false, %bb.g ], [ false, %bb.e ], [ %i.ah, %.sink.split.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10648
  %i.ap = call ptr @je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.ao, i64 noundef %i.v, i64 noundef %3, i1 noundef zeroext false, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.b) #15 ; 3 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %arena_cache_oblivious_randomize.exit, label %bb.i

bb.i:                                             ; preds = %san_large_extent_decide_guard.exit
  %i.aq = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.aq, label %bb.k, label %bb.j, !prof !125

bb.j:                                             ; preds = %bb.i
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %2, i64 16384) ; 2 uses
  %i.ar = shl nuw i64 %spec.store.select.i, 1
  %i.as = add i64 %i.ar, -1
  %i.at = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.as, i1 true) ; 3 uses
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = sub nuw nsw i64 60, %i.at
  %7 = ashr exact i64 -1152921504606846976, %i.at
  %i.aw = add nsw i64 %spec.store.select.i, -1
  %8 = and i64 %7, %i.aw
  %i.ax = lshr i64 %8, %i.av
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 3
  %i.ba = shl nuw nsw i32 %i.au, 2
  %reass.sub29 = sub nsw i32 %i.az, %i.ba
  %i.bb = add nsw i32 %reass.sub29, 232
  %i.bc = call i32 @llvm.usub.sat.i32(i32 %i.bb, i32 39)
  %i.bd = zext nneg i32 %i.bc to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.bd, %bb.j ], [ 196, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %.0.i.i
  %i.bg = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8 ; 0 uses
  %i.bh = load i64, ptr @je_sz_large_pad, align 8
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = icmp ult i64 %3, 4096
  %or.cond = and i1 %i.bj, %i.bi
  br i1 %or.cond, label %bb.l, label %arena_cache_oblivious_randomize.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = add nuw nsw i64 %3, 63
  %i.bl = and i64 %i.bk, 8128                     ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %i.bm)
  %i.bn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bl, i1 true) ; 2 uses
  %i.bo = xor i64 %i.bn, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bp = icmp eq ptr %0, null
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.bs = mul i64 %i.br, 6364136223846793005
  %i.bt = add i64 %i.bs, 1442695040888963407      ; 2 uses
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !38
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bu = ptrtoint ptr %i.a to i64
  %i.bv = mul i64 %i.bu, 6364136223846793005
  %i.bw = add i64 %i.bv, 1442695040888963407
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i25 = phi i64 [ %i.bw, %bb.n ], [ %i.bt, %bb.m ]
  %i.bx = sub nuw nsw i64 115, %i.bn
  %i.by = lshr i64 %.sink.i25, %i.bx
  %i.bz = shl nuw nsw i64 %i.by, %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !127
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.bz, %i.cc
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_cache_oblivious_randomize.exit

arena_cache_oblivious_randomize.exit:             ; preds = %san_large_extent_decide_guard.exit, %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret ptr %i.ap
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_get_ehooks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !201 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 78936
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = tail call ptr @je_base_ehooks_get(ptr noundef %i.b) #15
  ret ptr %i.c
}

declare ptr @je_pa_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_arena_extent_dalloc_large_prep(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 !guid !202 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !128
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.e, label %arena_large_dalloc_stats_update.exit, label %bb.b, !prof !125

bb.b:                                             ; preds = %bb.a
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %3 = ashr exact i64 -1152921504606846976, %i.h
  %i.k = add nsw i64 %spec.store.select.i, -1
  %4 = and i64 %3, %i.k
  %i.l = lshr i64 %4, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.i, 2
  %reass.sub = sub nsw i32 %i.n, %i.o
  %i.p = add nsw i32 %reass.sub, 232
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %i.p, i32 39)
  %i.r = zext nneg i32 %i.q to i64
  br label %arena_large_dalloc_stats_update.exit

arena_large_dalloc_stats_update.exit:             ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.r, %bb.b ], [ 196, %bb.a ]
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 984
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_arena_extent_ralloc_large_shrink(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 !guid !203 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !128
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.e, label %arena_large_malloc_stats_update.exit.i, label %bb.b, !prof !125

bb.b:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %4 = ashr exact i64 -1152921504606846976, %i.h
  %i.k = add nsw i64 %spec.store.select.i.i, -1
  %5 = and i64 %4, %i.k
  %i.l = lshr i64 %5, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.i, 2
  %reass.sub = sub nsw i32 %i.n, %i.o
  %i.p = add nsw i32 %reass.sub, 232
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %i.p, i32 39)
  %i.r = zext nneg i32 %i.q to i64
  br label %arena_large_malloc_stats_update.exit.i

arena_large_malloc_stats_update.exit.i:           ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.r, %bb.b ], [ 196, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.0.i.i.i
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  %i.v = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.v, label %arena_large_ralloc_stats_update.exit, label %bb.c, !prof !125

bb.c:                                             ; preds = %arena_large_malloc_stats_update.exit.i
  %spec.store.select.i5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 16384) ; 2 uses
  %i.w = shl nuw i64 %spec.store.select.i5.i, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.x, i1 true) ; 3 uses
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = sub nuw nsw i64 60, %i.y
  %6 = ashr exact i64 -1152921504606846976, %i.y
  %i.ab = add nsw i64 %spec.store.select.i5.i, -1
  %7 = and i64 %6, %i.ab
  %i.ac = lshr i64 %7, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 3
  %i.af = shl nuw nsw i32 %i.z, 2
  %reass.sub6 = sub nsw i32 %i.ae, %i.af
  %i.ag = add nsw i32 %reass.sub6, 232
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 39)
  %i.ai = zext nneg i32 %i.ah to i64
  br label %arena_large_ralloc_stats_update.exit

arena_large_ralloc_stats_update.exit:             ; preds = %arena_large_malloc_stats_update.exit.i, %bb.c
  %.0.i.i7.i = phi i64 [ %i.ai, %bb.c ], [ 196, %arena_large_malloc_stats_update.exit.i ]
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0.i.i7.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 984
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_arena_extent_ralloc_large_expand(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 !guid !204 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !128
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.e, label %arena_large_malloc_stats_update.exit.i, label %bb.b, !prof !125

bb.b:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 16384) ; 2 uses
  %i.f = shl nuw i64 %spec.store.select.i.i, 1
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.g, i1 true) ; 3 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = sub nuw nsw i64 60, %i.h
  %4 = ashr exact i64 -1152921504606846976, %i.h
  %i.k = add nsw i64 %spec.store.select.i.i, -1
  %5 = and i64 %4, %i.k
  %i.l = lshr i64 %5, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.i, 2
  %reass.sub = sub nsw i32 %i.n, %i.o
  %i.p = add nsw i32 %reass.sub, 232
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %i.p, i32 39)
  %i.r = zext nneg i32 %i.q to i64
  br label %arena_large_malloc_stats_update.exit.i

arena_large_malloc_stats_update.exit.i:           ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.r, %bb.b ], [ 196, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.0.i.i.i
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  %i.v = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.v, label %arena_large_ralloc_stats_update.exit, label %bb.c, !prof !125

bb.c:                                             ; preds = %arena_large_malloc_stats_update.exit.i
  %spec.store.select.i5.i = tail call i64 @llvm.umax.i64(i64 %3, i64 16384) ; 2 uses
  %i.w = shl nuw i64 %spec.store.select.i5.i, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.x, i1 true) ; 3 uses
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = sub nuw nsw i64 60, %i.y
  %6 = ashr exact i64 -1152921504606846976, %i.y
  %i.ab = add nsw i64 %spec.store.select.i5.i, -1
  %7 = and i64 %6, %i.ab
  %i.ac = lshr i64 %7, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 3
  %i.af = shl nuw nsw i32 %i.z, 2
  %reass.sub6 = sub nsw i32 %i.ae, %i.af
  %i.ag = add nsw i32 %reass.sub6, 232
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 39)
  %i.ai = zext nneg i32 %i.ah to i64
  br label %arena_large_ralloc_stats_update.exit

arena_large_ralloc_stats_update.exit:             ; preds = %arena_large_malloc_stats_update.exit.i, %bb.c
  %.0.i.i7.i = phi i64 [ %i.ai, %bb.c ], [ 196, %arena_large_malloc_stats_update.exit.i ]
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0.i.i7.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 984
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_decay_ms_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 !guid !205 {
bb.a:
  %i.a = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !117, !noundef !118
  %i.b = trunc nuw i8 %i.a to i1
  %..i = select i1 %i.b, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10648
  %i.d = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2, i64 noundef %3, i32 noundef %..i) #15
  ret i1 %i.d
}

declare zeroext i1 @je_pa_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @je_pa_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_decay(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 !guid !206 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72912
  tail call void @je_sec_flush(ptr noundef %0, ptr noundef nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 69320
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72896 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10728
  %i.f = tail call fastcc noundef zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull %i.e, i1 noundef zeroext %2, i1 noundef zeroext %3)
  br i1 %i.f, label %arena_decay_muzzy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 30280
  %i.h = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.g) #15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 39936
  %i.j = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.i) #15
  %i.k = sub i64 0, %i.h
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %pa_shard_dont_decay_muzzy.exit.i, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.i:                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10672
  %i.n = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 2) #15
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %arena_decay_muzzy.exit, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.thread.i:          ; preds = %pa_shard_dont_decay_muzzy.exit.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 71104
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 30168
  %i.t = tail call fastcc zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i1 noundef zeroext %2, i1 noundef zeroext %3) ; 0 uses
  br label %arena_decay_muzzy.exit

arena_decay_muzzy.exit:                           ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i, %pa_shard_dont_decay_muzzy.exit.i, %bb.c
  ret void
}

declare void @je_sec_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_do_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !207 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 69320
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72896 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10728
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #15
  %.not.i.i4 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4, label %bb.b, label %arena_decay_impl.exit12.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 69368 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %.not.i.i36.i7 = icmp eq ptr %i.k, %0
  br i1 %.not.i.i36.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.j, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 69360 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !95
  br label %bb.d

arena_decay_impl.exit12.thread:                   ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 1, ptr %i.o monotonic, align 8
  br label %je_arena_decay.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10672 ; 3 uses
  %i.q = tail call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #15 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 69424
  store atomic i8 0, ptr %i.r monotonic, align 8
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #15 ; 0 uses
  %i.t = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !117, !noundef !118 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 30280
  %i.v = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.u) #15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 39936
  %i.x = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.w) #15
  %i.y = sub i64 0, %i.v
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %pa_shard_dont_decay_muzzy.exit.i.i, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.i.i:               ; preds = %bb.d
  %i.aa = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.p, i32 noundef 2) #15
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %je_arena_decay.exit, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.thread.i.i:        ; preds = %pa_shard_dont_decay_muzzy.exit.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 71104
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 30168
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 71168 ; 2 uses
  %i.ah = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ag) #15
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.e, label %malloc_mutex_trylock.exit.i

bb.e:                                             ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 71160 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !93
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 71152 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !94
  %.not.i.i36.i = icmp eq ptr %i.am, %0
  br i1 %.not.i.i36.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.al, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 71144 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !95
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !95
  br label %bb.g

malloc_mutex_trylock.exit.i:                      ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 71208
  store atomic i8 1, ptr %i.aq monotonic, align 8
  br label %je_arena_decay.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = tail call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i32 noundef 0) #15 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 71208
  store atomic i8 0, ptr %i.as monotonic, align 8
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #15 ; 0 uses
  %i.au = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !117, !noundef !118 ; 0 uses
  br label %je_arena_decay.exit

je_arena_decay.exit:                              ; preds = %bb.g, %malloc_mutex_trylock.exit.i, %arena_decay_impl.exit12.thread, %pa_shard_dont_decay_muzzy.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_do_deferred_work(ptr noundef %0, ptr noundef nonnull %i.av) #15
  ret void
}

declare void @je_pa_shard_do_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_slab_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !208 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %i.a) #15
  %i.c = load i8, ptr %i.a, align 1, !tbaa !122, !range !117, !noundef !118
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@je_arena_malloc_hard:bb.a
  %.not.i53.i = icmp eq i32 %i.be, 0
  br i1 %.not.i53.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.am) #15
  store atomic i8 1, ptr %i.bb monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !93
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.aq, align 8, !tbaa !93
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !94
  %.not.i.i54.i = icmp eq ptr %i.bh, %0
  br i1 %.not.i.i54.i, label %malloc_mutex_lock.exit55.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %0, ptr %i.at, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !95
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !95
  br label %malloc_mutex_lock.exit55.i

malloc_mutex_lock.exit55.i:                       ; preds = %bb.q, %bb.p
  %i.bl = tail call fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr noundef nonnull %.014202428, ptr noundef nonnull %i.am, i32 noundef %3) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.u

bb.r:                                             ; preds = %malloc_mutex_lock.exit55.i
  %i.bn = icmp eq ptr %i.bd, null
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store atomic i8 0, ptr %i.bb monotonic, align 8
  %i.bo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #15 ; 0 uses
  br label %arena_malloc_small.exit

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !145
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !145
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !138
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !138
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  store ptr %i.bd, ptr %i.bv, align 8, !tbaa !136
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 3 uses
  %.0101.i.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %i.bx = icmp eq i64 %.0101.i.i.i.i, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %arena_bin_malloc_with_fresh_slab.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %.lr.ph.i.i.i.i
  %.02.i.i.i.i = phi i32 [ %i.by, %.lr.ph.i.i.i.i ], [ 0, %bb.t ]
  %i.by = add i32 %.02.i.i.i.i, 1                 ; 3 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bz
  %.010.i.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !38 ; 2 uses
  %i.cb = icmp eq i64 %.010.i.i.i.i, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.cc = shl i32 %i.by, 6
  %i.cd = zext i32 %i.cc to i64
  br label %arena_bin_malloc_with_fresh_slab.exit.i

arena_bin_malloc_with_fresh_slab.exit.i:          ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.t
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cd, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.010.lcssa.i.i.i.i = phi i64 [ %.0101.i.i.i.i, %bb.t ], [ %.010.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ]
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i.i.i, i1 true) ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, %.0.lcssa.i.i.i.i
  %i.cg = lshr exact i64 %.0.lcssa.i.i.i.i, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !38
  %i.cj = shl nuw i64 1, %i.ce
  %i.ck = xor i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !38
  %i.cl = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cm = ptrtoint ptr %.val.i.i.i to i64
  %i.cn = load i64, ptr %i.ba, align 8, !tbaa !142
  %i.co = mul i64 %i.cn, %i.cf
  %i.cp = add i64 %i.co, %i.cm
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.bd, align 8, !tbaa !128
  %i.cs = add i64 %i.cr, -268435456
  store i64 %i.cs, ptr %i.bd, align 8, !tbaa !128
  br label %bb.u

bb.u:                                             ; preds = %arena_bin_malloc_with_fresh_slab.exit.i, %malloc_mutex_lock.exit55.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bd, %malloc_mutex_lock.exit55.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i15 = phi ptr [ %i.cq, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bl, %malloc_mutex_lock.exit55.i ], [ %i.ay, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !146
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !146
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 8, !tbaa !38
  %i.cy = add <2 x i64> %i.cx, splat (i64 1)
  store <2 x i64> %i.cy, ptr %i.cw, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store atomic i8 0, ptr %i.cz monotonic, align 8
  %i.da = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #15 ; 0 uses
  %.not.i16 = icmp eq ptr %.048.i, null
  br i1 %.not.i16, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !122
  %i.db = getelementptr inbounds nuw i8, ptr %.014202428, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.db, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #15
  %i.dc = load i8, ptr %i.a, align 1, !tbaa !122, !range !117, !noundef !118
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.w, label %je_arena_slab_dalloc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.014202428)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.x

bb.x:                                             ; preds = %je_arena_slab_dalloc.exit.i, %bb.u
  br i1 %4, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i15, i8 0, i64 %i.ad, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.b, label %arena_malloc_small.exit, label %bb.aa, !prof !125

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !149 ; 2 uses
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !149
  %i.dh = icmp slt i32 %i.df, 1
  br i1 %i.dh, label %bb.ab, label %arena_malloc_small.exit, !prof !125

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !38
  %i.dk = mul i64 %i.dj, 6364136223846793005
  %i.dl = add i64 %i.dk, 1442695040888963407      ; 2 uses
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !38
  %i.dm = lshr i64 %i.dl, 58
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !150
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !124
  %i.ds = zext i8 %i.dr to i64
  %i.dt = mul nsw i64 %i.ds, %i.dp
  %i.du = udiv i64 %i.dt, 61
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.de, align 8, !tbaa !149
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.014202428, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

bb.ac:                                            ; preds = %.thread21, %bb.g
  %.0142023 = phi ptr [ %1, %.thread21 ], [ %.014, %bb.g ]
  %i.dw = zext i32 %3 to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.dz = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %.0142023, i64 noundef %i.dy, i1 noundef zeroext %4) #15
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.ab, %bb.aa, %bb.z, %bb.s, %arena_choose_maybe_huge.exit, %bb.ac
  %.0 = phi ptr [ %i.dz, %bb.ac ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.s ], [ %.0.i15, %bb.aa ], [ %.0.i15, %bb.z ], [ %.0.i15, %bb.ab ]
  ret ptr %.0
}

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 !guid !235 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp ult i64 %2, 14337
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %2, 4097
  br i1 %i.c, label %bb.c, label %sz_size2index_compute.exit, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !124
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.b
  %i.i = shl nuw nsw i64 %2, 1
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %6 = ashr exact i64 -1152921504606846976, %i.k
  %i.n = add nsw i64 %2, -1
  %7 = and i64 %6, %i.n
  %i.o = lshr i64 %7, %i.m
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %i.r = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.q, %i.r
  %i.s = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.c, %sz_size2index_compute.exit
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.s, %sz_size2index_compute.exit ] ; 5 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.m, label %bb.d, !prof !125

bb.d:                                             ; preds = %sz_size2index.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !152 ; 2 uses
  %i.ac = trunc i64 %i.y to i16
  %.not.i22 = icmp eq i16 %i.ab, %i.ac
  br i1 %.not.i22, label %bb.f, label %bb.e, !prof !125

bb.e:                                             ; preds = %bb.d
  store ptr %i.z, ptr %i.v, align 8, !tbaa !105
  br label %cache_bin_alloc_impl.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !106
  %.not21.i = icmp eq i16 %i.ae, %i.ab
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.g, !prof !125

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr %i.v, align 8, !tbaa !105
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.aa, align 8, !tbaa !152
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ah = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %bb.h, !prof !125

bb.h:                                             ; preds = %cache_bin_alloc_impl.exit
  %i.aj = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !154
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.u
  %.val = load i16, ptr %i.ak, align 2, !tbaa !108
  %i.al = icmp eq i16 %.val, 0
  br i1 %i.al, label %bb.i, label %bb.j, !prof !125

bb.i:                                             ; preds = %bb.h
  %i.am = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.ah, i64 noundef range(i64 0, 14337) %2, i32 noundef %.0.i, i1 noundef zeroext %4)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.i
  %.0.i20.ph = phi ptr [ %i.am, %bb.i ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_malloc.exit

bb.j:                                             ; preds = %bb.h
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %i.v, i32 noundef %.0.i, i1 noundef zeroext true) #15
  %i.an = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %5, ptr noundef nonnull %i.v, i32 noundef %.0.i, ptr noundef nonnull %i.a) #15
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !122, !range !117, !noundef !118
  %.not = icmp eq i8 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not, label %arena_malloc.exit, label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit.thread:                 ; preds = %bb.g, %bb.e, %bb.j
  %.131.i = phi ptr [ %i.an, %bb.j ], [ %i.x, %bb.e ], [ %i.x, %bb.g ] ; 2 uses
  br i1 %4, label %bb.k, label %bb.l, !prof !125

bb.k:                                             ; preds = %cache_bin_alloc_impl.exit.thread
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.u
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i, i8 0, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %cache_bin_alloc_impl.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !147
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !147
  br label %arena_malloc.exit

bb.m:                                             ; preds = %sz_size2index.exit
  %i.au = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4)
  br label %arena_malloc.exit

bb.n:                                             ; preds = %bb.a
  %i.av = icmp ult i64 %3, 65
  br i1 %i.av, label %bb.o, label %bb.p, !prof !123

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #15
  br label %arena_malloc.exit

bb.p:                                             ; preds = %bb.n
  %i.ax = tail call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #15
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %bb.m, %.thread, %bb.j, %bb.l, %bb.o, %bb.p
  %.0 = phi ptr [ %i.ax, %bb.p ], [ %i.aw, %bb.o ], [ %i.au, %bb.m ], [ %.0.i20.ph, %.thread ], [ %.131.i, %bb.l ], [ null, %bb.j ]
  ret ptr %.0
}

declare ptr @je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_arena_prof_promote(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #7 !guid !236 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_arena_dalloc_promoted(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #7 !guid !237 {
bb.a:
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_dalloc_bin_locked_handle_newly_empty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !238 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = icmp eq ptr %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !136
  br label %arena_dissociate_bin_slab.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %2, align 8, !tbaa !128
  %i.d = lshr i64 %.val.i, 20
  %i.e = and i64 %i.d, 255
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !151
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 78928
  %.val10.i = load i32, ptr %i.j, align 8, !tbaa !119
  %i.k = load i32, ptr @je_manual_arena_base, align 4, !tbaa !15
  %i.l = icmp ult i32 %.val10.i, %i.k
  br i1 %i.l, label %arena_dissociate_bin_slab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129  ; 2 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !129
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.g, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !124
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !124  ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !124
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !124
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !124 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !124
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %2, ptr %i.aj, align 8, !tbaa !124
  br label %arena_dissociate_bin_slab.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !129
  br label %arena_dissociate_bin_slab.exit

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 200
  tail call void @je_edata_heap_remove(ptr noundef nonnull %i.ak, ptr noundef nonnull %2) #15
end_hunk_1
begin_hunk_2_@je_arena_dalloc_small:bb.a
  store ptr %i.dq, ptr %i.dj, align 8, !tbaa !124
  %i.dr = load ptr, ptr %i.df, align 8, !tbaa !124 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !124
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !124
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store ptr %i.e, ptr %i.dw, align 8, !tbaa !124
  br label %je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.cz, align 8, !tbaa !129
  br label %je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i

je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i: ; preds = %bb.t, %.thread.i.i.i.i, %bb.q
  call fastcc void @arena_bin_lower_slab(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.s)
  br label %arena_dalloc_bin_locked_step.exit.i

arena_dalloc_bin_locked_step.exit.i:              ; preds = %je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i, %bb.p, %bb.o, %je_arena_dalloc_bin_locked_handle_newly_empty.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !241
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !241
  %i.ea = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !137
  %i.ec = add i64 %i.eb, -1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !137
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store atomic i8 0, ptr %i.ed monotonic, align 8
  %i.ee = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #15 ; 0 uses
  br i1 %i.bb, label %bb.u, label %arena_dalloc_bin.exit

bb.u:                                             ; preds = %arena_dalloc_bin_locked_step.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !122
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #15
  %i.eg = load i8, ptr %i.a, align 1, !tbaa !122, !range !117, !noundef !118
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.v, label %je_arena_slab_dalloc.exit.i

bb.v:                                             ; preds = %bb.u
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.h)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_dalloc_bin.exit

arena_dalloc_bin.exit:                            ; preds = %arena_dalloc_bin_locked_step.exit.i, %je_arena_slab_dalloc.exit.i
  br i1 %i.b, label %arena_decay_ticks.exit, label %bb.w, !prof !125

bb.w:                                             ; preds = %arena_dalloc_bin.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !149 ; 2 uses
  %i.ek = add nsw i32 %i.ej, -1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !149
  %i.el = icmp slt i32 %i.ej, 1
  br i1 %i.el, label %bb.x, label %arena_decay_ticks.exit, !prof !125

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !38
  %i.eo = mul i64 %i.en, 6364136223846793005
  %i.ep = add i64 %i.eo, 1442695040888963407      ; 2 uses
  store i64 %i.ep, ptr %i.em, align 8, !tbaa !38
  %i.eq = lshr i64 %i.ep, 58
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.es = load i32, ptr %i.er, align 4, !tbaa !150
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !124
  %i.ew = zext i8 %i.ev to i64
  %i.ex = mul nsw i64 %i.ew, %i.et
  %i.ey = udiv i64 %i.ex, 61
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.ei, align 8, !tbaa !149
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.w, %arena_dalloc_bin.exit, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 !guid !242 {
bb.a:
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c, !prof !125

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #15
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i37 = phi ptr [ %7, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i37, i64 noundef %i.c)
  %i.d = load ptr, ptr %8, align 8, !tbaa !157    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.e = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.e, label %arena_decay_ticks.exit, label %bb.d, !prof !125

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.f = icmp samesign ult i64 %3, 4097
  br i1 %i.f, label %bb.e, label %sz_s2u_compute.exit, !prof !123

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw nsw i64 %3, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !124
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38
  br label %sz_s2u.exit36

sz_s2u_compute.exit:                              ; preds = %bb.d
  %i.n = shl nuw i64 %3, 1
  %i.o = add i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.o, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.p
  %i.q = lshr i64 1152921504606846975, %i.p
  %i.r = add nuw nsw i64 %3, %i.q
  %i.s = and i64 %i.r, %notmask.i
  br label %sz_s2u.exit36

sz_s2u.exit36:                                    ; preds = %bb.e, %sz_s2u_compute.exit
  %.0.i35 = phi i64 [ %i.m, %bb.e ], [ %i.s, %sz_s2u_compute.exit ] ; 3 uses
  %i.t = add i64 %4, %3                           ; 5 uses
  %i.u = icmp ult i64 %i.t, 4097
  br i1 %i.u, label %bb.f, label %bb.g, !prof !123

bb.f:                                             ; preds = %sz_s2u.exit36
  %i.v = add nuw nsw i64 %i.t, 7
  %i.w = lshr i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !124
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  br label %sz_s2u.exit

bb.g:                                             ; preds = %sz_s2u.exit36
  %i.ac = icmp ugt i64 %i.t, 8070450532247928832
  br i1 %i.ac, label %sz_s2u.exit.thread, label %bb.h, !prof !125

bb.h:                                             ; preds = %bb.g
  %i.ad = shl nuw i64 %i.t, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %notmask.i39 = ashr exact i64 -1152921504606846976, %i.af
  %i.ag = lshr i64 1152921504606846975, %i.af
  %i.ah = add nuw nsw i64 %i.t, %i.ag
  %i.ai = and i64 %i.ah, %notmask.i39
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.h, %bb.f
  %.0.i34 = phi i64 [ %i.ab, %bb.f ], [ %i.ai, %bb.h ] ; 9 uses
  %i.aj = icmp ult i64 %2, 14337
  %i.ak = icmp ult i64 %.0.i35, 14337
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false, !prof !123
  br i1 %i.al, label %bb.i, label %bb.p, !prof !123

sz_s2u.exit.thread:                               ; preds = %bb.g
  %i.am = icmp ult i64 %2, 14337
  %i.an = icmp ult i64 %.0.i35, 14337
  %i.ao = select i1 %i.am, i1 %i.an, i1 false, !prof !123
  br i1 %i.ao, label %.thread52, label %arena_decay_ticks.exit, !prof !123

bb.i:                                             ; preds = %sz_s2u.exit
  %i.ap = icmp ugt i64 %.0.i34, 14336
  br i1 %i.ap, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp samesign ult i64 %.0.i34, 4097
  br i1 %i.aq, label %.thread52, label %sz_size2index_compute.exit, !prof !243

.thread52:                                        ; preds = %sz_s2u.exit.thread, %bb.j
  %.0.i34475055 = phi i64 [ %.0.i34, %bb.j ], [ 0, %sz_s2u.exit.thread ] ; 2 uses
  %i.ar = add nuw nsw i64 %.0.i34475055, 7
  %i.as = lshr i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !124
  %i.av = zext i8 %i.au to i32
  br label %sz_size2index.exit33

sz_size2index_compute.exit:                       ; preds = %bb.j
  %i.aw = shl nuw nsw i64 %.0.i34, 1
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ax, i1 true) ; 3 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = sub nuw nsw i64 60, %i.ay
  %9 = ashr exact i64 -1152921504606846976, %i.ay
  %i.bb = add nsw i64 %.0.i34, -1
  %10 = and i64 %9, %i.bb
  %i.bc = lshr i64 %10, %i.ba
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 3
  %i.bf = shl nuw nsw i32 %i.az, 2
  %reass.sub = sub nsw i32 %i.be, %i.bf
  %i.bg = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit33

sz_size2index.exit33:                             ; preds = %.thread52, %sz_size2index_compute.exit
  %.0.i34475054 = phi i64 [ %.0.i34475055, %.thread52 ], [ %.0.i34, %sz_size2index_compute.exit ]
  %.0.i32 = phi i32 [ %i.av, %.thread52 ], [ %i.bg, %sz_size2index_compute.exit ]
  %i.bh = icmp samesign ult i64 %2, 4097
  br i1 %i.bh, label %bb.k, label %sz_size2index_compute.exit45, !prof !123

bb.k:                                             ; preds = %sz_size2index.exit33
  %i.bi = add nuw nsw i64 %2, 7
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !124
  %i.bm = zext i8 %i.bl to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit45:                     ; preds = %sz_size2index.exit33
  %i.bn = shl nuw nsw i64 %2, 1
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bo, i1 true) ; 3 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = sub nuw nsw i64 60, %i.bp
  %11 = ashr exact i64 -1152921504606846976, %i.bp
  %i.bs = add nsw i64 %2, -1
  %12 = and i64 %11, %i.bs
  %i.bt = lshr i64 %12, %i.br
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
  %i.bw = shl nuw nsw i32 %i.bq, 2
  %reass.sub61 = sub nsw i32 %i.bv, %i.bw
  %i.bx = add nsw i32 %reass.sub61, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.k, %sz_size2index_compute.exit45
  %.0.i = phi i32 [ %i.bm, %bb.k ], [ %i.bx, %sz_size2index_compute.exit45 ]
  %.not = icmp eq i32 %.0.i32, %.0.i
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sz_size2index.exit, %bb.i
  %.0.i344751 = phi i64 [ %.0.i34475054, %sz_size2index.exit ], [ %.0.i34, %bb.i ]
  %i.by = icmp samesign ugt i64 %3, %2
  %i.bz = icmp ult i64 %.0.i344751, %2
  %or.cond31 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond31, label %arena_decay_ticks.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %sz_size2index.exit
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !128
  %i.ca = and i64 %.val.i, 4095
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ca
  %i.cc = load atomic ptr, ptr %i.cb monotonic, align 8
  br i1 %i.a, label %arena_decay_ticks.exit, label %bb.n, !prof !125

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !149 ; 2 uses
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !149
  %i.cg = icmp slt i32 %i.ce, 1
  br i1 %i.cg, label %bb.o, label %arena_decay_ticks.exit, !prof !125

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !38
  %i.cj = mul i64 %i.ci, 6364136223846793005
  %i.ck = add i64 %i.cj, 1442695040888963407      ; 2 uses
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !38
  %i.cl = lshr i64 %i.ck, 58
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !150
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.cl
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !124
  %i.cr = zext i8 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, %i.co
  %i.ct = udiv i64 %i.cs, 61
  %i.cu = trunc i64 %i.ct to i32
  store i32 %i.cu, ptr %i.cd, align 8, !tbaa !149
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.cc, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

bb.p:                                             ; preds = %sz_s2u.exit
  %i.cv = icmp ugt i64 %2, 16383
  %i.cw = icmp ugt i64 %.0.i34, 16383
  %or.cond = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.q, label %arena_decay_ticks.exit

bb.q:                                             ; preds = %bb.p
  %i.cx = call zeroext i1 @je_large_ralloc_no_move(ptr noundef %0, ptr noundef %i.d, i64 noundef %.0.i35, i64 noundef %.0.i34, i1 noundef zeroext %5) #15
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %sz_s2u.exit.thread, %bb.o, %bb.m, %bb.n, %bb.p, %bb.l, %tsdn_rtree_ctx.exit, %bb.q
  %.0 = phi i1 [ true, %bb.l ], [ true, %tsdn_rtree_ctx.exit ], [ true, %bb.p ], [ %i.cx, %bb.q ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.o ], [ true, %sz_s2u.exit.thread ]
  %.val = load i64, ptr %i.d, align 8, !tbaa !128
  %i.cy = lshr i64 %.val, 20
  %i.cz = and i64 %i.cy, 255
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !38
  store i64 %i.db, ptr %6, align 8, !tbaa !38
  ret i1 %.0
}

declare zeroext i1 @je_large_ralloc_no_move(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 !guid !244 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %9 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %10 = alloca %struct.rtree_contents_s, align 8  ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %5, 0                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, 4097
  br i1 %i.d, label %bb.c, label %bb.d, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %4, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !124
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.l, label %arena_sdalloc.exit, label %bb.e, !prof !125

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %4, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %notmask.i65 = ashr exact i64 -1152921504606846976, %i.o
  %i.p = lshr i64 1152921504606846975, %i.o
  %i.q = add nuw nsw i64 %4, %i.p
  %i.r = and i64 %i.q, %notmask.i65
  br label %sz_s2u.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %4, 14337
  %i.t = icmp ult i64 %5, 4097
  %or.cond.i = and i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i64 %5, -1
  %i.v = add nuw nsw i64 %i.u, %4
  %i.w = sub nsw i64 0, %5
  %i.x = and i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp samesign ult i64 %i.x, 4097
  br i1 %i.y, label %bb.h, label %sz_s2u_compute.exit, !prof !123

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw nsw i64 %i.x, 7
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !124
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %i.x, 1
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ah, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  %i.ak = add nuw nsw i64 %i.x, %i.aj
  %i.al = and i64 %i.ak, %notmask.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit, %bb.h
  %.0.i24.i = phi i64 [ %i.af, %bb.h ], [ %i.al, %sz_s2u_compute.exit ] ; 2 uses
  %i.am = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.am, label %sz_s2u.exit, label %.thread78

bb.i:                                             ; preds = %bb.f
  %i.an = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.an, label %arena_sdalloc.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i64 %4, 16385
  br i1 %i.ao, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.ap, label %sz_s2u_compute.exit64, label %bb.l, !prof !125

bb.l:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %4, 1
  %i.ar = add i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i62 = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %4, %i.at
  %i.av = and i64 %i.au, %notmask.i62
  br label %sz_s2u_compute.exit64

sz_s2u_compute.exit64:                            ; preds = %bb.k, %bb.l
  %.0.i63 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i63, %4
  br i1 %i.aw, label %arena_sdalloc.exit, label %.thread78

.thread78:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit64, %bb.j
  %.0.i60 = phi i64 [ %.0.i63, %sz_s2u_compute.exit64 ], [ 16384, %bb.j ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ax = load i64, ptr @je_sz_large_pad, align 8, !tbaa !38
  %i.ay = add nuw nsw i64 %5, 4095
  %i.az = and i64 %i.ay, 9223372036854771712
  %i.ba = add nsw i64 %i.az, -4096
  %i.bb = add nuw i64 %i.ba, %.0.i60
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = icmp ult i64 %i.bc, %.0.i60
  %..0.i = select i1 %i.bd, i64 0, i64 %.0.i60
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %.thread78, %sz_s2u.exit25.i, %bb.c, %bb.e
  %i.be = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %..0.i, %.thread78 ] ; 24 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = icmp samesign ugt i64 %4, 8070450532247928832
  %i.bh = or i1 %i.bg, %i.bf
  br i1 %i.bh, label %arena_sdalloc.exit, label %bb.m, !prof !246

bb.m:                                             ; preds = %sz_s2u.exit
  %i.bi = icmp ult i64 %i.be, 14337               ; 3 uses
  br i1 %i.bi, label %bb.n, label %bb.p, !prof !123

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bj = call zeroext i1 @je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef 0, i1 noundef zeroext %6, ptr noundef nonnull %i.b)
  br i1 %i.bj, label %.thread79, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load i8, ptr %8, align 8, !tbaa !248, !range !117, !noundef !118
  %i.bl = xor i8 %i.bk, 1
  %not. = zext nneg i8 %i.bl to i32
  %i.bm = ptrtoint ptr %2 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  tail call void @je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef %i.bm, ptr noundef nonnull %i.bn) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %arena_sdalloc.exit

.thread79:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bo = icmp ugt i64 %3, 16383
  %i.bp = icmp ugt i64 %i.be, 16383
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call ptr @je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.be, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8) #15
  br label %arena_sdalloc.exit

bb.r:                                             ; preds = %.thread79, %bb.p
  br i1 %i.c, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r
  %i.br = icmp ult i64 %i.be, 4097
  br i1 %i.br, label %bb.t, label %bb.u, !prof !123

bb.t:                                             ; preds = %bb.s
  %i.bs = add nuw nsw i64 %i.be, 7
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !124
  %i.bw = zext i8 %i.bv to i32
  br label %sz_size2index.exit.i75

bb.u:                                             ; preds = %bb.s
  %i.bx = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.bx, label %sz_size2index.exit.i75, label %bb.v, !prof !125

bb.v:                                             ; preds = %bb.u
  %i.by = shl nuw i64 %i.be, 1
  %i.bz = add i64 %i.by, -1
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bz, i1 true) ; 3 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = sub nuw nsw i64 60, %i.ca
  %11 = ashr exact i64 -1152921504606846976, %i.ca
  %i.cd = add nsw i64 %i.be, -1
  %12 = and i64 %11, %i.cd
  %i.ce = lshr i64 %12, %i.cc
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = and i32 %i.cf, 3
  %i.ch = shl nuw nsw i32 %i.cb, 2
  %reass.sub = sub nsw i32 %i.cg, %i.ch
  %i.ci = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i75

sz_size2index.exit.i75:                           ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.bw, %bb.t ], [ %i.ci, %bb.v ], [ 235, %bb.u ] ; 7 uses
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %bb.aq, label %bb.w, !prof !125

bb.w:                                             ; preds = %sz_size2index.exit.i75
  br i1 %i.bi, label %bb.x, label %bb.ag, !prof !123

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = zext nneg i32 %.0.i.i to i64            ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ck ; 8 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !105 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !152 ; 2 uses
  %i.cs = trunc i64 %i.co to i16
  %.not.i23.i = icmp eq i16 %i.cr, %i.cs
  br i1 %.not.i23.i, label %bb.z, label %bb.y, !prof !125

bb.y:                                             ; preds = %bb.x
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !105
  br label %cache_bin_alloc_impl.exit.thread.i

bb.z:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !106
  %.not21.i.i = icmp eq i16 %i.cu, %i.cr
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.aa, !prof !125

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !105
  %i.cv = ptrtoint ptr %i.cp to i64
  %i.cw = trunc i64 %i.cv to i16
  store i16 %i.cw, ptr %i.cq, align 8, !tbaa !152
  br label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cx = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.thread.i, label %bb.ab, !prof !125

bb.ab:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.cz = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !154
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ck
  %.val.i = load i16, ptr %i.da, align 2, !tbaa !108
  %i.db = icmp eq i16 %.val.i, 0
  br i1 %i.db, label %bb.ac, label %bb.ad, !prof !125

bb.ac:                                            ; preds = %bb.ab
  %i.dc = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.cx, i64 noundef range(i64 1, 14337) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %cache_bin_alloc_impl.exit.i
  %.0.i21.ph.i = phi ptr [ %i.dc, %bb.ac ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %arena_ralloc_move_helper.exit

bb.ad:                                            ; preds = %bb.ab
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.cl, i32 noundef %.0.i.i, i1 noundef zeroext true) #15
  %i.dd = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.cx, ptr noundef nonnull %7, ptr noundef nonnull %i.cl, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #15
  %i.de = load i8, ptr %i.a, align 1, !tbaa !122, !range !117, !noundef !118
  %.not.i = icmp eq i8 %i.de, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not.i, label %arena_sdalloc.exit, label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.thread.i:               ; preds = %bb.ad, %bb.aa, %bb.y
  %.131.i.i = phi ptr [ %i.dd, %bb.ad ], [ %i.cn, %bb.y ], [ %i.cn, %bb.aa ] ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af, !prof !125

bb.ae:                                            ; preds = %cache_bin_alloc_impl.exit.thread.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ck
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.dg, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cache_bin_alloc_impl.exit.thread.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !147
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !147
  br label %arena_ralloc_move_helper.exit

bb.ag:                                            ; preds = %bb.w
  %i.dk = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !38
  %.not24.i.i = icmp ugt i64 %i.be, %i.dk
  br i1 %.not24.i.i, label %bb.aq, label %bb.ah, !prof !125

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dm ; 7 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !105 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !112 ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !152 ; 2 uses
  %i.du = trunc i64 %i.dq to i16
  %.not.i25.i = icmp eq i16 %i.dt, %i.du
  br i1 %.not.i25.i, label %bb.aj, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !105
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.dw = load i16, ptr %i.dv, align 4, !tbaa !106
  %.not21.i27.i = icmp eq i16 %i.dw, %i.dt
  br i1 %.not21.i27.i, label %cache_bin_alloc_impl.exit28.i, label %bb.ak, !prof !125

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !105
  %i.dx = ptrtoint ptr %i.dr to i64
  %i.dy = trunc i64 %i.dx to i16
  store i16 %i.dy, ptr %i.ds, align 8, !tbaa !152
  br label %bb.an

cache_bin_alloc_impl.exit28.i:                    ; preds = %bb.aj
  %i.dz = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %arena_sdalloc.exit, label %bb.al, !prof !125

bb.al:                                            ; preds = %cache_bin_alloc_impl.exit28.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.dn, i32 noundef %.0.i.i, i1 noundef zeroext false) #15
  %i.eb = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.eb, label %sz_s2u_compute.exit.i, label %bb.am, !prof !125

bb.am:                                            ; preds = %bb.al
  %i.ec = shl nuw i64 %i.be, 1
  %i.ed = add i64 %i.ec, -1
  %i.ee = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ed, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ee
  %i.ef = lshr i64 1152921504606846975, %i.ee
  %i.eg = add nuw nsw i64 %i.ef, %i.be
  %i.eh = and i64 %i.eg, %notmask.i.i
  br label %sz_s2u_compute.exit.i

sz_s2u_compute.exit.i:                            ; preds = %bb.am, %bb.al
  %.0.i29.i = phi i64 [ %i.eh, %bb.am ], [ 0, %bb.al ]
  %i.ei = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %i.dz, i64 noundef %.0.i29.i, i1 noundef zeroext %6) #15
  br label %arena_ralloc_move_helper.exit

bb.an:                                            ; preds = %bb.ak, %bb.ai
  br i1 %6, label %bb.ao, label %bb.ap, !prof !125

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dm
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %i.ek, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !147
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.el, align 8, !tbaa !147
  br label %arena_ralloc_move_helper.exit

bb.aq:                                            ; preds = %bb.ag, %sz_size2index.exit.i75
  %i.eo = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6)
  br label %arena_ralloc_move_helper.exit

bb.ar:                                            ; preds = %bb.r
  %i.ep = icmp samesign ult i64 %5, 4097
  %or.cond.i.i = and i1 %i.ep, %i.bi
  br i1 %or.cond.i.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.eq = add nsw i64 %5, -1
  %i.er = add nuw nsw i64 %i.eq, %i.be
  %i.es = sub nsw i64 0, %5
  %i.et = and i64 %i.er, %i.es                    ; 4 uses
  %i.eu = icmp samesign ult i64 %i.et, 4097
  br i1 %i.eu, label %bb.at, label %sz_s2u_compute.exit32.i, !prof !123

bb.at:                                            ; preds = %bb.as
  %i.ev = add nuw nsw i64 %i.et, 7
  %i.ew = lshr i64 %i.ev, 3
  %i.ex = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !124
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !38
  br label %sz_s2u.exit25.i.i

sz_s2u_compute.exit32.i:                          ; preds = %bb.as
  %i.fc = shl nuw nsw i64 %i.et, 1
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.fd, i1 true) ; 2 uses
  %notmask.i30.i = ashr exact i64 -1152921504606846976, %i.fe
  %i.ff = lshr i64 1152921504606846975, %i.fe
  %i.fg = add nuw nsw i64 %i.ff, %i.et
  %i.fh = and i64 %i.fg, %notmask.i30.i
  br label %sz_s2u.exit25.i.i

sz_s2u.exit25.i.i:                                ; preds = %sz_s2u_compute.exit32.i, %bb.at
  %.0.i24.i.i = phi i64 [ %i.fb, %bb.at ], [ %i.fh, %sz_s2u_compute.exit32.i ] ; 2 uses
  %i.fi = icmp ult i64 %.0.i24.i.i, 16384
  br i1 %i.fi, label %sz_sa2u.exit.i, label %.thread49.i

bb.au:                                            ; preds = %bb.ar
  %i.fj = icmp ult i64 %i.be, 16385
  br i1 %i.fj, label %.thread49.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.fk, label %arena_sdalloc.exit, label %sz_s2u_compute.exit35.i, !prof !125

sz_s2u_compute.exit35.i:                          ; preds = %bb.av
  %i.fl = shl nuw i64 %i.be, 1
  %i.fm = add i64 %i.fl, -1
  %i.fn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.fm, i1 true) ; 2 uses
  %notmask.i33.i = ashr exact i64 -1152921504606846976, %i.fn
  %i.fo = lshr i64 1152921504606846975, %i.fn
  %i.fp = add nuw nsw i64 %i.fo, %i.be
  %i.fq = and i64 %i.fp, %notmask.i33.i           ; 2 uses
  %i.fr = icmp samesign ult i64 %i.fq, %i.be
  br i1 %i.fr, label %arena_sdalloc.exit, label %.thread49.i

.thread49.i:                                      ; preds = %sz_s2u_compute.exit35.i, %bb.au, %sz_s2u.exit25.i.i
  %.0.i20.i = phi i64 [ %i.fq, %sz_s2u_compute.exit35.i ], [ 16384, %bb.au ], [ 16384, %sz_s2u.exit25.i.i ] ; 3 uses
  %i.fs = load i64, ptr @je_sz_large_pad, align 8, !tbaa !38
  %i.ft = add nuw nsw i64 %5, 4095
  %i.fu = and i64 %i.ft, 9223372036854771712
  %i.fv = add nsw i64 %i.fu, -4096
  %i.fw = add nuw i64 %i.fv, %.0.i20.i
  %i.fx = add i64 %i.fw, %i.fs
  %i.fy = icmp ult i64 %i.fx, %.0.i20.i
  %..0.i.i = select i1 %i.fy, i64 0, i64 %.0.i20.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread49.i, %sz_s2u.exit25.i.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread49.i ], [ %.0.i24.i.i, %sz_s2u.exit25.i.i ] ; 2 uses
  %i.fz = add nsw i64 %.018.i.i, -8070450532247928833
  %i.ga = icmp ult i64 %i.fz, -8070450532247928832
  br i1 %i.ga, label %arena_sdalloc.exit, label %ipallocztm.exit.i, !prof !246

ipallocztm.exit.i:                                ; preds = %sz_sa2u.exit.i
  %i.gb = tail call ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef range(i64 1, 0) %5, i1 noundef zeroext %6, ptr noundef %7)
  br label %arena_ralloc_move_helper.exit

arena_ralloc_move_helper.exit:                    ; preds = %.thread.i, %bb.af, %sz_s2u_compute.exit.i, %bb.ap, %bb.aq, %ipallocztm.exit.i
  %.0.i74 = phi ptr [ %i.ei, %sz_s2u_compute.exit.i ], [ %i.gb, %ipallocztm.exit.i ], [ %i.eo, %bb.aq ], [ %.0.i21.ph.i, %.thread.i ], [ %.131.i.i, %bb.af ], [ %i.dp, %bb.ap ] ; 13 uses
  %i.gc = icmp eq ptr %.0.i74, null
  br i1 %i.gc, label %arena_sdalloc.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %arena_ralloc_move_helper.exit
  %i.gd = load i8, ptr %8, align 8, !tbaa !248, !range !117, !noundef !118
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = select i1 %i.ge, i32 7, i32 8
  %i.gg = ptrtoint ptr %.0.i74 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @je_hook_invoke_alloc(i32 noundef %i.gf, ptr noundef nonnull %.0.i74, i64 noundef %i.gg, ptr noundef nonnull %i.gh) #15
  %i.gi = load i8, ptr %8, align 8, !tbaa !248, !range !117, !noundef !118
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = select i1 %i.gj, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.gk, ptr noundef %2, ptr noundef nonnull %i.gh) #15
  %i.gl = call i64 @llvm.umin.i64(i64 %i.be, i64 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i74, ptr align 1 %2, i64 %i.gl, i1 false)
  %i.gm = icmp eq ptr %0, null
  %i.gn = icmp eq ptr %7, null
  br i1 %i.gn, label %bb.aw, label %bb.ax, !prof !125

bb.aw:                                            ; preds = %isdalloct.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %2, i64 noundef %3)
  br label %arena_sdalloc.exit

bb.ax:                                            ; preds = %isdalloct.exit
  %i.go = icmp ult i64 %3, 4097
  br i1 %i.go, label %bb.ay, label %bb.az, !prof !123

bb.ay:                                            ; preds = %bb.ax
  %i.gp = add nuw nsw i64 %3, 7
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !124
  %i.gt = zext i8 %i.gs to i32
  br label %sz_size2index.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.gu = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.gu, label %sz_size2index.exit.i.thread, label %bb.ba, !prof !125

bb.ba:                                            ; preds = %bb.az
  %i.gv = shl nuw i64 %3, 1
  %i.gw = add i64 %i.gv, -1
  %i.gx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.gw, i1 true) ; 3 uses
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = sub nuw nsw i64 60, %i.gx
  %13 = ashr exact i64 -1152921504606846976, %i.gx
  %i.ha = add nsw i64 %3, -1
  %14 = and i64 %13, %i.ha
  %i.hb = lshr i64 %14, %i.gz
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 3
  %i.he = shl nuw nsw i32 %i.gy, 2
  %reass.sub88 = sub nsw i32 %i.hd, %i.he
  %i.hf = add nsw i32 %reass.sub88, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.ba, %bb.ay
  %.0.i.i68 = phi i32 [ %i.gt, %bb.ay ], [ %i.hf, %bb.ba ] ; 4 uses
  %i.hg = icmp samesign ult i32 %.0.i.i68, 39
  br i1 %i.hg, label %bb.bb, label %sz_size2index.exit.i.thread, !prof !158

bb.bb:                                            ; preds = %sz_size2index.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hi = zext nneg i32 %.0.i.i68 to i64          ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %i.hi ; 6 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !105 ; 2 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 18 ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !109
  %i.ho = trunc i64 %i.hl to i16
  %i.hp = icmp eq i16 %i.hn, %i.ho
  br i1 %i.hp, label %cache_bin_dalloc_easy.exit22.i, label %cache_bin_dalloc_easy.exit22.i.thread, !prof !125

cache_bin_dalloc_easy.exit22.i.thread:            ; preds = %bb.bb
  %i.hq = getelementptr inbounds i8, ptr %i.hk, i64 -8 ; 2 uses
  store ptr %i.hq, ptr %i.hj, align 8, !tbaa !105
  store ptr %2, ptr %i.hq, align 8, !tbaa !112
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit22.i:                   ; preds = %bb.bb
  %i.hr = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !154
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %i.hi
  %.val73 = load i16, ptr %i.hs, align 2, !tbaa !108 ; 2 uses
  %i.ht = icmp eq i16 %.val73, 0
  br i1 %i.ht, label %bb.bc, label %bb.bd, !prof !125

bb.bc:                                            ; preds = %cache_bin_dalloc_easy.exit22.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %2)
  br label %arena_sdalloc.exit

bb.bd:                                            ; preds = %cache_bin_dalloc_easy.exit22.i
  %i.hu = zext i16 %.val73 to i32
  %i.hv = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !15
  %i.hw = lshr i32 %i.hu, %i.hv
  call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.hj, i32 noundef %.0.i.i68, i32 noundef %i.hw) #15
  %i.hx = load ptr, ptr %i.hj, align 8, !tbaa !105 ; 2 uses
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = load i16, ptr %i.hm, align 2, !tbaa !109
  %i.ia = trunc i64 %i.hy to i16
  %i.ib = icmp eq i16 %i.hz, %i.ia
  br i1 %i.ib, label %arena_sdalloc.exit, label %bb.be, !prof !125

bb.be:                                            ; preds = %bb.bd
  %i.ic = getelementptr inbounds i8, ptr %i.hx, i64 -8 ; 2 uses
  store ptr %i.ic, ptr %i.hj, align 8, !tbaa !105
  store ptr %2, ptr %i.ic, align 8, !tbaa !112
  br label %arena_sdalloc.exit

sz_size2index.exit.i.thread:                      ; preds = %bb.az, %sz_size2index.exit.i
  %.0.i.i6883 = phi i32 [ %.0.i.i68, %sz_size2index.exit.i ], [ 235, %bb.az ] ; 3 uses
  %i.id = load i32, ptr @je_nhbins, align 4, !tbaa !15
  %i.ie = icmp ult i32 %.0.i.i6883, %i.id
  br i1 %i.ie, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %sz_size2index.exit.i.thread
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ig = zext nneg i32 %.0.i.i6883 to i64        ; 2 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %i.ig ; 6 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !105 ; 2 uses
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 18 ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !109
  %i.im = trunc i64 %i.ij to i16
  %i.in = icmp eq i16 %i.il, %i.im
  br i1 %i.in, label %cache_bin_dalloc_easy.exit14.i, label %cache_bin_dalloc_easy.exit14.i.thread, !prof !125

cache_bin_dalloc_easy.exit14.i.thread:            ; preds = %bb.bf
  %i.io = getelementptr inbounds i8, ptr %i.ii, i64 -8 ; 2 uses
  store ptr %i.io, ptr %i.ih, align 8, !tbaa !105
  store ptr %2, ptr %i.io, align 8, !tbaa !112
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit14.i:                   ; preds = %bb.bf
  %i.ip = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !154
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.ig
  %.val = load i16, ptr %i.iq, align 2, !tbaa !108
  %i.ir = zext i16 %.val to i32
  %i.is = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !15
  %i.it = lshr i32 %i.ir, %i.is
  call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.ih, i32 noundef %.0.i.i6883, i32 noundef %i.it) #15
  %i.iu = load ptr, ptr %i.ih, align 8, !tbaa !105 ; 2 uses
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = load i16, ptr %i.ik, align 2, !tbaa !109
  %i.ix = trunc i64 %i.iv to i16
  %i.iy = icmp eq i16 %i.iw, %i.ix
  br i1 %i.iy, label %arena_sdalloc.exit, label %bb.bg, !prof !125

bb.bg:                                            ; preds = %cache_bin_dalloc_easy.exit14.i
  %i.iz = getelementptr inbounds i8, ptr %i.iu, i64 -8 ; 2 uses
  store ptr %i.iz, ptr %i.ih, align 8, !tbaa !105
  store ptr %2, ptr %i.iz, align 8, !tbaa !112
  br label %arena_sdalloc.exit

bb.bh:                                            ; preds = %sz_size2index.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  br i1 %i.gm, label %bb.bi, label %bb.bj, !prof !125

bb.bi:                                            ; preds = %bb.bh
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %9) #15
  br label %tsdn_rtree_ctx.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.bj, %bb.bi
  %.0.i.i70 = phi ptr [ %9, %bb.bi ], [ %i.ja, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.jb = ptrtoint ptr %2 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef %0, ptr noundef nonnull %.0.i.i70, i64 noundef %i.jb)
  %i.jc = load ptr, ptr %10, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.jc) #15
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %sz_s2u_compute.exit35.i, %bb.av, %cache_bin_alloc_impl.exit28.i, %bb.ad, %sz_sa2u.exit.i, %sz_s2u_compute.exit64, %bb.i, %bb.d, %bb.aw, %bb.bd, %bb.be, %cache_bin_dalloc_easy.exit22.i.thread, %bb.bc, %cache_bin_dalloc_easy.exit14.i.thread, %bb.bg, %cache_bin_dalloc_easy.exit14.i, %tsdn_rtree_ctx.exit.i, %bb.o, %arena_ralloc_move_helper.exit, %sz_s2u.exit, %bb.q
  %.2 = phi ptr [ %2, %bb.o ], [ %i.bq, %bb.q ], [ null, %sz_s2u.exit ], [ null, %sz_s2u_compute.exit64 ], [ null, %arena_ralloc_move_helper.exit ], [ %.0.i74, %bb.aw ], [ %.0.i74, %tsdn_rtree_ctx.exit.i ], [ %.0.i74, %cache_bin_dalloc_easy.exit14.i ], [ %.0.i74, %bb.bg ], [ %.0.i74, %cache_bin_dalloc_easy.exit14.i.thread ], [ %.0.i74, %bb.bc ], [ %.0.i74, %cache_bin_dalloc_easy.exit22.i.thread ], [ %.0.i74, %bb.be ], [ %.0.i74, %bb.bd ], [ null, %bb.d ], [ null, %bb.i ], [ null, %sz_sa2u.exit.i ], [ null, %bb.ad ], [ null, %cache_bin_alloc_impl.exit28.i ], [ null, %bb.av ], [ null, %sz_s2u_compute.exit35.i ]
  ret ptr %.2
}

declare void @je_hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_large_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @je_base_ehooks_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_set_extent_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !249 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 78928
  %.val = load i32, ptr %i.a, align 8, !tbaa !119
  %i.b = load ptr, ptr @je_background_thread_info, align 8, !tbaa !121
  %i.c = zext i32 %.val to i64
  %i.d = load i64, ptr @je_max_background_threads, align 8, !tbaa !38
  %i.e = urem i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.b, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #15
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #15
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !93
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %.not.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !95
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !95
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10648
  tail call void @je_pa_shard_disable_hpa(ptr noundef %0, ptr noundef nonnull %i.s) #15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.v = tail call ptr @je_base_extent_hooks_set(ptr noundef %i.u, ptr noundef %2) #15
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store atomic i8 0, ptr %i.w monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #15 ; 0 uses
  ret ptr %i.v
}

declare void @je_pa_shard_disable_hpa(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_base_extent_hooks_set(ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_2
begin_hunk_3_@arena_bin_malloc_no_fresh_slab:bb.a

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.at = shl i32 %i.ap, 6
  %i.au = zext i32 %i.at to i64
  br label %arena_slab_reg_alloc.exit

arena_slab_reg_alloc.exit:                        ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.au, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.010.lcssa.i.i = phi i64 [ %.0101.i.i, %bb.f ], [ %.010.i.i, %._crit_edge.loopexit.i.i ]
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i, i1 true) ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %.0.lcssa.i.i
  %i.ax = lshr exact i64 %.0.lcssa.i.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !38
  %i.ba = shl nuw i64 1, %i.av
  %i.bb = xor i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !38
  %i.bc = getelementptr i8, ptr %i.ak, i64 8
  %.val.i10 = load ptr, ptr %i.bc, align 8, !tbaa !127
  %i.bd = ptrtoint ptr %.val.i10 to i64
  %i.be = load i64, ptr %i.am, align 8, !tbaa !142
  %i.bf = mul i64 %i.be, %i.aw
  %i.bg = add i64 %i.bf, %i.bd
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !128
  %i.bj = add i64 %i.bi, -268435456
  store i64 %i.bj, ptr %i.ak, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, %arena_slab_reg_alloc.exit
  %.0 = phi ptr [ %i.bh, %arena_slab_reg_alloc.exit ], [ null, %arena_bin_refill_slabcur_no_fresh_slab.exit.thread ]
  ret ptr %.0
}

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #13 !guid !306 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !132  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !132
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !123

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !132
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !123

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !133  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !132
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  store ptr %i.u, ptr %i.r, align 8, !tbaa !133
  store i64 %i.c, ptr %i.d, align 8, !tbaa !132
  store ptr %i.s, ptr %i.t, align 8, !tbaa !133
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !132
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !123

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !132
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !123

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !132
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !123

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !132
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !123

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !132
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !123

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !132
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !123

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #15
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !133 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !132
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !132
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !133
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !133
  store i64 %i.e, ptr %i.at, align 8, !tbaa !132
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !133
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !133
  store i64 %i.c, ptr %i.d, align 8, !tbaa !132
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !133
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !307
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !308, !alias.scope !309
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !310, !alias.scope !309
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !311, !alias.scope !309
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !312, !alias.scope !309
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !157, !alias.scope !309
  ret void
}

declare void @je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_edata_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #13 !guid !313 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !124
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread, label %bb.d, !prof !125

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.m = add nsw i64 %2, -1
  %4 = and i64 %3, %i.m
  %i.n = lshr i64 %4, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.p, %i.q
  %i.r = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.r, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 39
  br i1 %i.s, label %bb.e, label %sz_size2index.exit.thread, !prof !158

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1)
  br label %bb.f

sz_size2index.exit.thread:                        ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit.thread, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !guid !314 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !125

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #15
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #15
  ret void
}

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !110}
!1 = distinct !{!1, !110}
!2 = distinct !{!2, !110}
!3 = distinct !{!3, !110}
!4 = distinct !{!4, !110}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i64 -9178317682480167086}
!17 = !{i64 8424049642761583794}
!18 = !{i64 219086139857607001}
!19 = !{i64 5403409133567088745}
!20 = !{i64 8514641104721467613}
!21 = !{i64 -4322943052365562791}
!22 = !{i64 822383556330146716}
!23 = !{i64 -4214741741379886009}
!24 = !{i64 -6295610505424881072}
!25 = !{i64 7060691864950100416}
!26 = !{i64 8956516481561944098}
!27 = !{i64 -9123131479699381796}
!28 = !{i64 1689515918257151638}
!29 = !{i64 6150041428035271508}
!30 = !{i64 2663607957952974581}
!31 = !{i64 -4904001800148973491}
!32 = !{i64 -183879744643810544}
!33 = !{i64 8463614351400608385}
!34 = !{!"any pointer", !13, i64 0}
!35 = !{!"p1 omnipotent char", !34, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"long", !13, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"", !14, i64 0}
!40 = !{!"p1 _ZTS6tsdn_s", !34, i64 0}
!41 = !{!"", !37, i64 0}
!42 = !{!"locked_u64_s", !41, i64 0}
!43 = !{!"pac_decay_stats_s", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"pac_stats_s", !43, i64 0, !43, i64 24, !37, i64 48, !41, i64 56, !41, i64 64}
!45 = !{!"pa_shard_stats_s", !37, i64 0, !44, i64 8}
!46 = !{!"arena_stats_s", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !45, i64 88, !37, i64 168, !37, i64 176, !13, i64 184, !13, i64 952, !41, i64 10360}
!47 = !{!"p1 _ZTS13tcache_slow_s", !34, i64 0}
!48 = !{!"", !47, i64 0}
!49 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !34, i64 0}
!50 = !{!"", !49, i64 0}
!51 = !{!"malloc_mutex_s", !13, i64 0}
!52 = !{!"p1 _ZTS7edata_s", !34, i64 0}
!53 = !{!"", !52, i64 0}
!54 = !{!"", !53, i64 0}
!55 = !{!"p1 _ZTS12pa_central_s", !34, i64 0}
!56 = !{!"_Bool", !13, i64 0}
!57 = !{!"", !56, i64 0}
!58 = !{!"pai_s", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48}
!59 = !{!"eset_s", !13, i64 0, !13, i64 32, !13, i64 6432, !54, i64 9632, !41, i64 9640, !14, i64 9648}
!60 = !{!"ecache_s", !51, i64 0, !59, i64 112, !59, i64 9768, !14, i64 19424, !14, i64 19428, !56, i64 19432}
!61 = !{!"p1 _ZTS6base_s", !34, i64 0}
!62 = !{!"p1 _ZTS6emap_s", !34, i64 0}
!63 = !{!"p1 _ZTS13edata_cache_s", !34, i64 0}
!64 = !{!"exp_grow_s", !14, i64 0, !14, i64 4}
!65 = !{!"san_bump_alloc_s", !51, i64 0, !52, i64 112}
!66 = !{!"decay_s", !51, i64 0, !56, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !37, i64 144, !41, i64 152, !37, i64 160, !37, i64 168, !13, i64 176, !37, i64 1776}
!67 = !{!"p1 _ZTS14malloc_mutex_s", !34, i64 0}
!68 = !{!"p1 _ZTS11pac_stats_s", !34, i64 0}
!69 = !{!"pac_s", !58, i64 0, !60, i64 56, !60, i64 19496, !60, i64 38936, !61, i64 58376, !62, i64 58384, !63, i64 58392, !64, i64 58400, !51, i64 58408, !65, i64 58520, !41, i64 58640, !66, i64 58648, !66, i64 60432, !67, i64 62216, !68, i64 62224, !41, i64 62232}
!70 = !{!"p1 _ZTS5pai_s", !34, i64 0}
!71 = !{!"sec_opts_s", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!72 = !{!"p1 _ZTS11sec_shard_s", !34, i64 0}
!73 = !{!"sec_s", !58, i64 0, !70, i64 56, !71, i64 64, !72, i64 104, !14, i64 112}
!74 = !{!"p1 _ZTS13hpa_central_s", !34, i64 0}
!75 = !{!"edata_cache_fast_s", !54, i64 0, !63, i64 8, !56, i64 16}
!76 = !{!"psset_bin_stats_s", !37, i64 0, !37, i64 8, !37, i64 16}
!77 = !{!"psset_stats_s", !13, i64 0, !13, i64 3072, !13, i64 3120}
!78 = !{!"p1 _ZTS8hpdata_s", !34, i64 0}
!79 = !{!"", !78, i64 0}
!80 = !{!"", !79, i64 0}
!81 = !{!"psset_s", !13, i64 0, !13, i64 1024, !76, i64 1032, !77, i64 1056, !80, i64 4224, !13, i64 4232, !13, i64 5256, !80, i64 5272}
!82 = !{!"hpa_shard_opts_s", !37, i64 0, !37, i64 8, !14, i64 16, !56, i64 20, !37, i64 24, !37, i64 32}
!83 = !{!"hpa_shard_nonderived_stats_s", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!84 = !{!"hpa_shard_s", !58, i64 0, !74, i64 56, !51, i64 64, !51, i64 176, !61, i64 288, !75, i64 296, !81, i64 320, !37, i64 5600, !14, i64 5608, !62, i64 5616, !82, i64 5624, !37, i64 5664, !83, i64 5672, !41, i64 5704}
!85 = !{!"ph_s", !34, i64 0, !37, i64 8}
!86 = !{!"", !85, i64 0}
!87 = !{!"edata_cache_s", !86, i64 0, !41, i64 16, !51, i64 24, !61, i64 136}
!88 = !{!"p1 _ZTS16pa_shard_stats_s", !34, i64 0}
!89 = !{!"pa_shard_s", !55, i64 0, !41, i64 8, !57, i64 16, !56, i64 17, !69, i64 24, !73, i64 62264, !84, i64 62384, !87, i64 68096, !14, i64 68240, !67, i64 68248, !88, i64 68256, !62, i64 68264, !61, i64 68272}
!90 = !{!"arena_s", !13, i64 0, !39, i64 8, !40, i64 16, !46, i64 24, !48, i64 10392, !50, i64 10400, !51, i64 10408, !39, i64 10520, !54, i64 10528, !51, i64 10536, !89, i64 10648, !14, i64 78928, !61, i64 78936, !41, i64 78944, !13, i64 78952}
!91 = !{!90, !61, i64 78936}
!92 = !{!"", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 24, !14, i64 32, !39, i64 36, !37, i64 40, !40, i64 48, !37, i64 56}
!93 = !{!92, !37, i64 56}
!94 = !{!92, !40, i64 48}
!95 = !{!92, !37, i64 40}
!96 = !{!90, !49, i64 10400}
!97 = !{!"", !49, i64 0, !49, i64 8}
!98 = !{!"p1 _ZTS11cache_bin_s", !34, i64 0}
!99 = !{!"cache_bin_array_descriptor_s", !97, i64 0, !98, i64 16}
!100 = !{!99, !98, i64 16}
!101 = !{!"any p2 pointer", !34, i64 0}
end_hunk_3
