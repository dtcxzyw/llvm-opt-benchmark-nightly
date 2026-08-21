Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/regcache-maple?download=true
inline.NumInlined: 24
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ma_state = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, i64, i32, i8, i8, i8, i8, i32 }

@.str = private unnamed_addr constant [6 x i8] c"maple\00", align 1
@regcache_maple_ops = dso_local local_unnamed_addr global { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i32 3, [4 x i8] zeroinitializer, ptr @regcache_maple_init, ptr @regcache_maple_exit, ptr @regcache_maple_populate, ptr null, ptr @regcache_maple_read, ptr @regcache_maple_write, ptr @regcache_maple_sync, ptr @regcache_maple_drop }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @regcache_maple_init(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
__kmalloc_index.exit:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_kmalloc_noprof.exit, label %bb.a, !prof !10

bb.a:                                             ; preds = %__kmalloc_index.exit
  %i.e = and i32 %i.b, 1
  %..i14 = add nuw nsw i32 %i.e, 1
  %i.f = zext nneg i32 %..i14 to i64
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.a, %__kmalloc_index.exit
  %.0.i15 = phi i64 [ 0, %__kmalloc_index.exit ], [ %i.f, %bb.a ]
  %i.g = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i15
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.i, i32 noundef %i.b, i64 noundef 16) #9 ; 5 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_kmalloc_noprof.exit
  %i.k = getelementptr i8, ptr %0, i64 560
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.j, i64 4
  store i32 0, ptr %i.l, align 4
  store i32 0, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 8
  store volatile ptr null, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %_kmalloc_noprof.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @regcache_maple_exit(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.ma_state, align 8           ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store ptr %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 4294967295, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.not = icmp eq ptr %i.b, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, i8 0, i64 12, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock(ptr noundef nonnull %i.b) #11
  %i.j = call ptr @mas_find(ptr noundef nonnull %1, i64 noundef 4294967295) #11 ; 2 uses
  %.not89 = icmp eq ptr %i.j, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.k = phi ptr [ %i.l, %.lr.ph ], [ %i.j, %bb.b ]
  call void @kfree(ptr noundef nonnull %i.k) #11
  %i.l = call ptr @mas_find(ptr noundef nonnull %1, i64 noundef 4294967295) #11 ; 2 uses
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__mt_destroy(ptr noundef nonnull %i.b) #11
  %i.m = load ptr, ptr %1, align 8
  call void @_raw_spin_unlock(ptr noundef %i.m) #11
  call void @kfree(ptr noundef nonnull %i.b) #11
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_maple_populate(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 532        ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 544
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.m, %bb.d ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.01624 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %1 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %2 = load i32, ptr %1, align 4
  %3 = trunc nsw i64 %indvars.iv to i32           ; 2 uses
  %i.g = add i32 %3, -1                           ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, 1
  %.not = icmp eq i32 %2, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc i32 @regcache_maple_insert_block(ptr noundef %0, i32 noundef %.01624, i32 noundef %i.g) #12, !srcloc !13 ; 2 uses
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %._crit_edge29, label %.loopexit

._crit_edge29:                                    ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge29, %bb.b
  %i.m = phi i32 [ %i.e, %bb.b ], [ %.pre, %._crit_edge29 ] ; 3 uses
  %.1 = phi i32 [ %.01624, %bb.b ], [ %3, %._crit_edge29 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = trunc nsw i64 %indvars.iv.next to i32
  %5 = icmp ugt i32 %i.m, %4
  br i1 %5, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.m, %bb.d ]
  %i.n = add i32 %.lcssa, -1
  %i.o = tail call fastcc i32 @regcache_maple_insert_block(ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef %i.n) #12, !srcloc !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.017 = phi i32 [ %i.o, %._crit_edge ], [ %i.l, %bb.c ]
  ret i32 %.017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2, 1) i32 @regcache_maple_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ma_state, align 8           ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 3 uses
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  tail call void @__rcu_read_lock() #11
  %i.k = call ptr @mas_walk(ptr noundef nonnull %3) #11 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8
  %i.m = sub i64 %i.d, %i.l
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  call void @__rcu_read_unlock() #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_maple_write(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ma_state, align 8           ; 16 uses
  %i.a = getelementptr i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.d = zext i32 %1 to i64                       ; 6 uses
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  tail call void @__rcu_read_lock() #11
  %i.k = call ptr @mas_walk(ptr noundef nonnull %3) #11 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %2 to i64
  %i.m = load i64, ptr %i.c, align 8
  %i.n = sub i64 %i.d, %i.m
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %i.n
  store i64 %i.l, ptr %i.o, align 8
  call void @__rcu_read_unlock() #11
  br label %_kmalloc_array_noprof.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.p = add i32 %1, -1
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add i32 %1, 1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  store i32 1, ptr %i.i, align 8
  store ptr null, ptr %i.f, align 8
  store i64 %i.q, ptr %i.c, align 8
  store i64 %i.s, ptr %i.e, align 8
  %i.t = call ptr @mas_find(ptr noundef nonnull %3, i64 noundef %i.q) #11 ; 3 uses
  %.not58 = icmp eq ptr %i.t, null                ; 2 uses
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.c, align 8              ; 2 uses
  %i.v = load i64, ptr %i.e, align 8
  %i.w = sub i64 %i.v, %i.u
  %i.x = shl i64 %i.w, 3
  %i.y = add i64 %i.x, 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.053 = phi i64 [ %i.u, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.051 = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ]
  %i.z = call ptr @mas_find(ptr noundef nonnull %3, i64 noundef %i.s) #11 ; 3 uses
  %.not59 = icmp eq ptr %i.z, null                ; 2 uses
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = shl i64 %i.ac, 3
  %i.ae = add i64 %i.ad, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi i64 [ %i.aa, %bb.f ], [ %i.d, %bb.e ] ; 2 uses
  %.050 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  call void @__rcu_read_unlock() #11
  %i.af = sub i64 %.052, %.053
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, 2305843009213693951
  br i1 %i.ai, label %_kmalloc_array_noprof.exit.thread, label %_kmalloc_array_noprof.exit, !prof !16

_kmalloc_array_noprof.exit:                       ; preds = %bb.g
  %i.aj = load i32, ptr %i.ah, align 8
  %i.ak = shl nuw i64 %i.ag, 3
  %i.al = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.ak, i32 noundef %i.aj) #13 ; 5 uses
  %.not60 = icmp eq ptr %i.al, null
  br i1 %.not60, label %_kmalloc_array_noprof.exit.thread, label %bb.h

bb.h:                                             ; preds = %_kmalloc_array_noprof.exit
  br i1 %.not58, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.t, i64 %.051, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = zext i32 %2 to i64
  %i.an = sub i64 %i.d, %.053
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ap, ptr nonnull align 8 %i.z, i64 %.050, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = load ptr, ptr %3, align 8
  call void @_raw_spin_lock(ptr noundef %i.aq) #11
  store i32 1, ptr %i.i, align 8
  store ptr null, ptr %i.f, align 8
  store i64 %.053, ptr %i.c, align 8
  store i64 %.052, ptr %i.e, align 8
  %i.ar = load i32, ptr %i.ah, align 8
  %i.as = call i32 @mas_store_gfp(ptr noundef nonnull %3, ptr noundef nonnull %i.al, i32 noundef %i.ar) #11 ; 2 uses
  %i.at = load ptr, ptr %3, align 8
  call void @_raw_spin_unlock(ptr noundef %i.at) #11
  %.not61 = icmp eq i32 %i.as, 0
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @kfree(ptr noundef nonnull %i.al) #11
  br label %_kmalloc_array_noprof.exit.thread

bb.n:                                             ; preds = %bb.l
  call void @kfree(ptr noundef %i.t) #11
  call void @kfree(ptr noundef %i.z) #11
  br label %_kmalloc_array_noprof.exit.thread

_kmalloc_array_noprof.exit.thread:                ; preds = %bb.g, %_kmalloc_array_noprof.exit, %bb.n, %bb.m, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.as, %bb.m ], [ 0, %bb.n ], [ -12, %_kmalloc_array_noprof.exit ], [ -12, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_maple_sync(ptr noundef initializes((541, 542)) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ma_state, align 8           ; 14 uses
end_hunk_0
