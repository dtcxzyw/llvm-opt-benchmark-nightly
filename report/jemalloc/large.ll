Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/large?download=true
inline.NumInlined: 99
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.emap_s = type { %struct.rtree_s }
%struct.rtree_s = type { ptr, %struct.malloc_mutex_s, [262144 x %struct.rtree_node_elm_s] }
%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.mutex_prof_data_t, %struct.atomic_b_t, %union.pthread_mutex_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%struct.atomic_b_t = type { i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.arena_config_s = type { ptr, i8 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }

@je_arena_emap_global = external global %struct.emap_s, align 8
@je_sz_large_pad = external local_unnamed_addr global i64, align 8
@je_sz_index2size_tab = external local_unnamed_addr global [232 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@je_opt_disable_large_size_classes = external local_unnamed_addr global i8, align 1
@je_opt_percpu_arena = external local_unnamed_addr global i32, align 4
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@je_arena_config_default = external constant %struct.arena_config_s, align 8
@je_ncpus = external local_unnamed_addr global i32, align 4
@je_manual_arena_base = external local_unnamed_addr global i32, align 4
@je_ticker_geom_table = external local_unnamed_addr constant [64 x i8], align 16
@je_opt_cache_oblivious = external local_unnamed_addr global i8, align 1
@je_opt_lg_tcache_flush_small_div = external local_unnamed_addr global i32, align 4
@je_disabled_bin = external constant i64, align 8
@je_opt_lg_tcache_flush_large_div = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define hidden ptr @je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 64, i1 noundef zeroext %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 14337
  %i.b = icmp ult i64 %3, 4097
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %2, -1
  %i.d = add nsw i64 %i.c, %3
  %i.e = sub nsw i64 0, %3
  %i.f = and i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp ult i64 %i.f, 4097
  br i1 %i.g, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.f, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.f, 8070450532247928832
  br i1 %i.o, label %sz_sa2u.exit.thread, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.p = icmp samesign ugt i64 %i.f, 14336
  %i.q = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !16
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond, label %.thread43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %i.f, 1
  %i.t = add nsw i64 %i.s, -1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.t, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.u
  %i.v = lshr i64 1152921504606846975, %i.u
  %i.w = add nuw nsw i64 %i.f, %i.v
  %i.x = and i64 %i.w, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.f, %bb.c
  %.0.i27 = phi i64 [ %i.n, %bb.c ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = icmp ult i64 %.0.i27, 16384
  br i1 %i.y, label %sz_sa2u.exit, label %.thread43

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.z, label %sz_sa2u.exit.thread, label %bb.h, !prof !94

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ult i64 %2, 16385
  br i1 %i.aa, label %.thread43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.ab, label %sz_s2u.exit29, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !18, !range !16, !noundef !19
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = shl nuw i64 %2, 1
  %i.af = add i64 %i.ae, -1
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.af, i1 true) ; 2 uses
  %notmask.i33 = ashr exact i64 -1152921504606846976, %i.ag
  %i.ah = lshr i64 1152921504606846975, %i.ag
  %5 = add nuw nsw i64 %2, %i.ah
  %6 = and i64 %5, %notmask.i33
  br label %sz_s2u.exit29

7:                                                ; preds = %bb.j
  %8 = add nuw nsw i64 %2, 4095
  %9 = and i64 %8, 9223372036854771712
  br label %sz_s2u.exit29

sz_s2u.exit29:                                    ; preds = %7, %bb.k, %bb.i
  %.0.i30 = phi i64 [ %6, %bb.k ], [ %9, %7 ], [ 0, %bb.i ] ; 2 uses
  %i.ai = icmp ult i64 %.0.i30, %2
  br i1 %i.ai, label %sz_sa2u.exit.thread, label %.thread43

.thread43:                                        ; preds = %bb.e, %sz_s2u.exit, %sz_s2u.exit29, %bb.h
  %.0.i = phi i64 [ %.0.i30, %sz_s2u.exit29 ], [ 16384, %bb.h ], [ 16384, %bb.e ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.aj = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.ak = add nuw nsw i64 %3, 4095
  %i.al = and i64 %i.ak, 9223372036854771712
  %i.am = add nsw i64 %i.al, -4096
  %i.an = add i64 %i.am, %.0.i
  %i.ao = add i64 %i.an, %i.aj
  %i.ap = icmp ult i64 %i.ao, %.0.i
  %..0.i = select i1 %i.ap, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %sz_s2u.exit, %.thread43
  %.018.i = phi i64 [ %..0.i, %.thread43 ], [ %.0.i27, %sz_s2u.exit ]
  %i.aq = add nsw i64 %.018.i, -8070450532247928833
  %i.ar = icmp ult i64 %i.aq, -8070450532247928832
  br i1 %i.ar, label %sz_sa2u.exit.thread, label %bb.l, !prof !95

bb.l:                                             ; preds = %sz_sa2u.exit
  %i.as = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.as, label %arena_choose_maybe_huge.exit, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.n, label %arena_choose_maybe_huge.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.o, label %atomic_load_zu.exit

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.ay = icmp sgt i8 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.r, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.az = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %atomic_load_zu.exit, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #9
  br label %atomic_load_zu.exit

bb.r:                                             ; preds = %bb.o
  %i.bc = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #9 ; 9 uses
  %i.bd = load i8, ptr %0, align 8, !tbaa !18, !range !16, !noundef !19
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not43.i.i = icmp eq ptr %i.bi, %i.bc
  br i1 %.not43.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef %i.bc) #9
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef %i.bc) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %i.bj = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !31 ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 3
  br i1 %i.bk, label %atomic_load_zu.exit, label %percpu_arena_ind_limit.exit.i.i

percpu_arena_ind_limit.exit.i.i:                  ; preds = %bb.w
  %i.bl = getelementptr i8, ptr %i.bc, i64 80640  ; 2 uses
  %.0.val47.i.i = load i32, ptr %i.bl, align 64, !tbaa !79
  %i.bm = icmp eq i32 %i.bj, 4
  %i.bn = load i32, ptr @je_ncpus, align 4        ; 4 uses
  %i.bo = icmp ugt i32 %i.bn, 1
  %or.cond.i.i.i = and i1 %i.bm, %i.bo
  %i.bp = and i32 %i.bn, 1
  %i.bq = lshr i32 %i.bn, 1
  %spec.select.i.i = add nuw i32 %i.bq, %i.bp
  %.0.i.i.i = select i1 %or.cond.i.i.i, i32 %spec.select.i.i, i32 %i.bn
  %i.br = icmp ult i32 %.0.val47.i.i, %.0.i.i.i
  br i1 %i.br, label %bb.x, label %atomic_load_zu.exit

bb.x:                                             ; preds = %percpu_arena_ind_limit.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !98
  %.not44.i.i = icmp eq ptr %i.bt, %0
  br i1 %.not44.i.i, label %atomic_load_zu.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = tail call i32 @sched_getcpu() #9        ; 3 uses
  %i.bv = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !31
  %i.bw = icmp eq i32 %i.bv, 3
  br i1 %i.bw, label %percpu_arena_choose.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = load i32, ptr @je_ncpus, align 4, !tbaa !31
  %i.by = lshr i32 %i.bx, 1                       ; 2 uses
  %i.bz = icmp ult i32 %i.bu, %i.by
  %i.ca = select i1 %i.bz, i32 0, i32 %i.by
  %spec.select.i.i.i = sub nuw i32 %i.bu, %i.ca
  br label %percpu_arena_choose.exit.i.i

percpu_arena_choose.exit.i.i:                     ; preds = %bb.z, %bb.y
  %.0.i46.i.i = phi i32 [ %i.bu, %bb.y ], [ %spec.select.i.i.i, %bb.z ] ; 4 uses
  %.0.val.i.i = load i32, ptr %i.bl, align 64, !tbaa !79
  %.not45.i.i = icmp eq i32 %.0.val.i.i, %.0.i46.i.i
  br i1 %.not45.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %percpu_arena_choose.exit.i.i
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !96 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 80640
  %.val.i.i.i = load i32, ptr %i.cc, align 64, !tbaa !79
  %.not.i49.i.i = icmp eq i32 %.val.i.i.i, %.0.i46.i.i
  br i1 %.not.i49.i.i, label %percpu_arena_update.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = zext i32 %.0.i46.i.i to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cd
  %i.cf = load atomic ptr, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ac, label %arena_get.exit.i.i.i, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.ch = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i46.i.i, ptr noundef nonnull @je_arena_config_default) #9
  br label %arena_get.exit.i.i.i

arena_get.exit.i.i.i:                             ; preds = %bb.ac, %bb.ab
  %.0.i18.i.i.i = phi ptr [ %i.ch, %bb.ac ], [ %i.cf, %bb.ab ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.cb, ptr noundef %.0.i18.i.i.i) #9
  %i.ci = load i8, ptr %0, align 8, !tbaa !18, !range !16, !noundef !19
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ad, label %percpu_arena_update.exit.i.i

bb.ad:                                            ; preds = %arena_get.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.ck, ptr noundef %.0.i18.i.i.i) #9
  br label %percpu_arena_update.exit.i.i

percpu_arena_update.exit.i.i:                     ; preds = %bb.ad, %arena_get.exit.i.i.i, %bb.aa
  %i.cm = load ptr, ptr %i.at, align 8, !tbaa !96
  br label %bb.ae

bb.ae:                                            ; preds = %percpu_arena_update.exit.i.i, %percpu_arena_choose.exit.i.i
  %.1.i.i = phi ptr [ %i.cm, %percpu_arena_update.exit.i.i ], [ %i.bc, %percpu_arena_choose.exit.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store ptr %0, ptr %i.cn, align 16, !tbaa !98
  br label %atomic_load_zu.exit

atomic_load_zu.exit:                              ; preds = %bb.ae, %bb.x, %percpu_arena_ind_limit.exit.i.i, %bb.w, %bb.q, %bb.p, %bb.n
  %.0.i26 = phi ptr [ %i.au, %bb.n ], [ %i.bc, %percpu_arena_ind_limit.exit.i.i ], [ %i.bc, %bb.w ], [ %.1.i.i, %bb.ae ], [ %i.bc, %bb.x ], [ %i.bb, %bb.q ], [ %i.az, %bb.p ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i26, i64 70936
  %i.cp = load atomic i64, ptr %i.co monotonic, align 8
  %.not14.i = icmp ult i64 %2, %i.cp
  br i1 %.not14.i, label %arena_choose_maybe_huge.exit.thread, label %bb.af, !prof !11

bb.af:                                            ; preds = %atomic_load_zu.exit
  %i.cq = getelementptr i8, ptr %.0.i26, i64 80640
  %.0.i26.val = load i32, ptr %i.cq, align 64, !tbaa !79
  %i.cr = load i32, ptr @je_manual_arena_base, align 4, !tbaa !31
  %i.cs = icmp ult i32 %.0.i26.val, %i.cr
  br i1 %i.cs, label %bb.ag, label %arena_choose_maybe_huge.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ct = tail call ptr @je_arena_choose_huge(ptr noundef nonnull %0) #9
  br label %arena_choose_maybe_huge.exit

arena_choose_maybe_huge.exit:                     ; preds = %bb.ag, %bb.l
  %.024 = phi ptr [ %1, %bb.l ], [ %i.ct, %bb.ag ] ; 2 uses
  %i.cu = icmp eq ptr %.024, null
  br i1 %i.cu, label %sz_sa2u.exit.thread, label %arena_choose_maybe_huge.exit.thread, !prof !99

arena_choose_maybe_huge.exit.thread:              ; preds = %atomic_load_zu.exit, %bb.af, %bb.m, %arena_choose_maybe_huge.exit
  %.02446 = phi ptr [ %.024, %arena_choose_maybe_huge.exit ], [ %.0.i26, %atomic_load_zu.exit ], [ %.0.i26, %bb.af ], [ %1, %bb.m ] ; 11 uses
  %i.cv = tail call ptr @je_arena_extent_alloc_large(ptr noundef %0, ptr noundef nonnull %.02446, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #9 ; 9 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %sz_sa2u.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %arena_choose_maybe_huge.exit.thread
  %i.cx = getelementptr i8, ptr %.02446, i64 80640
  %.024.val = load i32, ptr %i.cx, align 64, !tbaa !79
  %i.cy = load i32, ptr @je_manual_arena_base, align 4, !tbaa !31
  %i.cz = icmp ult i32 %.024.val, %i.cy
  br i1 %i.cz, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %.02446, i64 12192 ; 2 uses
  %i.db = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.da) #9
  %.not.i36 = icmp eq i32 %i.db, 0
  br i1 %.not.i36, label %malloc_mutex_trylock_final.exit.i, label %bb.aj

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %.02446, i64 12184
  store atomic i8 1, ptr %i.dc monotonic, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %.02446, i64 12120
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.dd) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %malloc_mutex_trylock_final.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %.02446, i64 12176 ; 2 uses
  %i.df = load i64, ptr %i.de, align 16, !tbaa !81
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 16, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %.02446, i64 12168 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !82
  %.not.i.i37 = icmp eq ptr %i.di, %0
  br i1 %.not.i.i37, label %malloc_mutex_lock.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %0, ptr %i.dh, align 8, !tbaa !82
  %i.dj = getelementptr inbounds nuw i8, ptr %.02446, i64 12160 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 64, !tbaa !83
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dj, align 64, !tbaa !83
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.ak, %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %.02446, i64 12112 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 3 uses
  store ptr %i.cv, ptr %i.dn, align 8, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 4 uses
  store ptr %i.cv, ptr %i.do, align 8, !tbaa !12
  %i.dp = load ptr, ptr %i.dm, align 16, !tbaa !84 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %edata_list_active_append.exit, label %bb.am

bb.am:                                            ; preds = %malloc_mutex_lock.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !12
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !12
  %i.dt = load ptr, ptr %i.dm, align 16, !tbaa !84
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store ptr %i.cv, ptr %i.du, align 8, !tbaa !12
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !12
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !12
  %i.dy = load ptr, ptr %i.dm, align 16, !tbaa !84 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !12
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store ptr %i.cv, ptr %i.ed, align 8, !tbaa !12
  %.pre.i = load ptr, ptr %i.dn, align 8, !tbaa !12
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %malloc_mutex_lock.exit, %bb.am
  %i.ee = phi ptr [ %.pre.i, %bb.am ], [ %i.cv, %malloc_mutex_lock.exit ]
  store ptr %i.ee, ptr %i.dm, align 16, !tbaa !84
  %i.ef = getelementptr inbounds nuw i8, ptr %.02446, i64 12184
  store atomic i8 0, ptr %i.ef monotonic, align 8
  %i.eg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.da) #9 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %edata_list_active_append.exit, %bb.ah
  br i1 %i.as, label %arena_decay_ticks.exit, label %bb.ao, !prof !15

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !12
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !86 ; 2 uses
  %i.em = add nsw i32 %i.el, -1
  store i32 %i.em, ptr %i.eh, align 4, !tbaa !86
  %i.en = icmp slt i32 %i.el, 1
  br i1 %i.en, label %bb.ap, label %arena_decay_ticks.exit, !prof !15

bb.ap:                                            ; preds = %bb.ao
  %i.eo = icmp sgt i8 %i.ek, 0
  br i1 %i.eo, label %ticker_geom_ticks.exit, label %bb.aq

ticker_geom_ticks.exit:                           ; preds = %bb.ap
  store i32 0, ptr %i.eh, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load i64, ptr %i.ei, align 8, !tbaa !14
  %i.eq = mul i64 %i.ep, 6364136223846793005
  %i.er = add i64 %i.eq, 1442695040888963407      ; 2 uses
  store i64 %i.er, ptr %i.ei, align 8, !tbaa !14
  %i.es = lshr i64 %i.er, 58
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !87
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.es
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !12
  %i.ey = zext i8 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, %i.ev
  %i.fa = udiv i64 %i.ez, 61
  %i.fb = trunc i64 %i.fa to i32
  store i32 %i.fb, ptr %i.eh, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.02446, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.ao, %ticker_geom_ticks.exit, %bb.an, %bb.aq
  %i.fc = getelementptr i8, ptr %i.cv, i64 8
  %.val = load ptr, ptr %i.fc, align 8, !tbaa !89
  br label %sz_sa2u.exit.thread

sz_sa2u.exit.thread:                              ; preds = %bb.d, %sz_s2u.exit29, %bb.g, %arena_choose_maybe_huge.exit, %arena_choose_maybe_huge.exit.thread, %sz_sa2u.exit, %arena_decay_ticks.exit
  %.0 = phi ptr [ %.val, %arena_decay_ticks.exit ], [ null, %sz_sa2u.exit ], [ null, %arena_choose_maybe_huge.exit.thread ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.g ], [ null, %sz_s2u.exit29 ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @je_arena_extent_alloc_large(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_large_ralloc_no_move(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %.val.i = load i64, ptr %1, align 8, !tbaa !90
  %i.b = trunc i64 %.val.i to i32
  %i.c = lshr i32 %i.b, 20
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !18, !range !16, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = icmp samesign ugt i32 %i.d, 35
  %or.cond.not.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  br label %edata_usize_get.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12
  %i.m = and i64 %i.l, -4096
  %i.n = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.o = sub i64 %i.m, %i.n
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 4 uses
  %i.p = icmp ugt i64 %3, %.0.i
  br i1 %i.p, label %bb.d, label %bb.o

bb.d:                                             ; preds = %edata_usize_get.exit
  %i.q = tail call fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %3, i1 noundef zeroext %4)
  br i1 %i.q, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val43 = load i64, ptr %1, align 8, !tbaa !90
  %i.r = and i64 %.val43, 4095
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.r
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8
  %i.u = icmp eq ptr %0, null
  br i1 %i.u, label %arena_decay_ticks.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = load i32, ptr %i.v, align 4, !tbaa !86   ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !86
  %i.ab = icmp slt i32 %i.z, 1
  br i1 %i.ab, label %bb.g, label %arena_decay_ticks.exit, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i8 %i.y, 0
  br i1 %i.ac, label %ticker_geom_ticks.exit, label %bb.h

ticker_geom_ticks.exit:                           ; preds = %bb.g
  store i32 0, ptr %i.v, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !14
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, 1442695040888963407      ; 2 uses
  store i64 %i.af, ptr %i.w, align 8, !tbaa !14
  %i.ag = lshr i64 %i.af, 58
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.aj
  %i.ao = udiv i64 %i.an, 61
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.v, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.t, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

bb.i:                                             ; preds = %bb.d
  %i.aq = icmp ult i64 %2, %3
  %i.ar = icmp ugt i64 %2, %.0.i
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.as = tail call fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %4)
  br i1 %i.as, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val42 = load i64, ptr %1, align 8, !tbaa !90
  %i.at = and i64 %.val42, 4095
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.at
  %i.av = load atomic ptr, ptr %i.au monotonic, align 8
  %i.aw = icmp eq ptr %0, null
  br i1 %i.aw, label %arena_decay_ticks.exit, label %bb.l, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !86 ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !86
  %i.bd = icmp slt i32 %i.bb, 1
  br i1 %i.bd, label %bb.m, label %arena_decay_ticks.exit, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.be = icmp sgt i8 %i.ba, 0
  br i1 %i.be, label %ticker_geom_ticks.exit49, label %bb.n

ticker_geom_ticks.exit49:                         ; preds = %bb.m
  store i32 0, ptr %i.ax, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.bg = mul i64 %i.bf, 6364136223846793005
  %i.bh = add i64 %i.bg, 1442695040888963407      ; 2 uses
  store i64 %i.bh, ptr %i.ay, align 8, !tbaa !14
  %i.bi = lshr i64 %i.bh, 58
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = zext i8 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, %i.bl
  %i.bq = udiv i64 %i.bp, 61
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.ax, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.av, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

bb.o:                                             ; preds = %bb.i, %bb.j, %edata_usize_get.exit
  %.not = icmp ult i64 %.0.i, %2
  %.not36 = icmp ugt i64 %.0.i, %3                ; 2 uses
  %or.cond37 = or i1 %.not, %.not36
  br i1 %or.cond37, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val41 = load i64, ptr %1, align 8, !tbaa !90
  %i.bs = and i64 %.val41, 4095
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bs
  %i.bu = load atomic ptr, ptr %i.bt monotonic, align 8
  %i.bv = icmp eq ptr %0, null
  br i1 %i.bv, label %arena_decay_ticks.exit, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !86 ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !86
  %i.cc = icmp slt i32 %i.ca, 1
  br i1 %i.cc, label %bb.r, label %arena_decay_ticks.exit, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp sgt i8 %i.bz, 0
  br i1 %i.cd, label %ticker_geom_ticks.exit54, label %bb.s

ticker_geom_ticks.exit54:                         ; preds = %bb.r
  store i32 0, ptr %i.bw, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.cf = mul i64 %i.ce, 6364136223846793005
  %i.cg = add i64 %i.cf, 1442695040888963407      ; 2 uses
  store i64 %i.cg, ptr %i.bx, align 8, !tbaa !14
  %i.ch = lshr i64 %i.cg, 58
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !87
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.cn = zext i8 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, %i.ck
  %i.cp = udiv i64 %i.co, 61
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.bw, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.bu, i1 noundef zeroext false, i1 noundef zeroext false) #9
end_hunk_0
