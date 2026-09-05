Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_malloc:bb.a
  %i.d = tail call ptr %i.b(i64 noundef %0, ptr noundef %i.c) #61
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %0) #74
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define hidden ptr @ma_copy_string_w(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @ma_wcslen(ptr noundef %0)
  %i.b = add nsw i64 %i.a, 1                      ; 2 uses
  %i.c = shl i64 %i.b, 2                          ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.e, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8
  %i.g = tail call ptr %i.e(i64 noundef %i.c, ptr noundef %i.f) #61, !inline_history !29
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = icmp eq ptr %.0.i, null
  br i1 %i.i, label %ma_malloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %ma_malloc.exit
  %i.j = tail call i32 @ma_wcscpy_s(ptr noundef nonnull %.0.i, i64 noundef %i.b, ptr noundef %0) ; 0 uses
  br label %ma_malloc.exit.thread

ma_malloc.exit.thread:                            ; preds = %bb.b, %ma_malloc.exit, %bb.e
  %.0 = phi ptr [ %.0.i, %bb.e ], [ null, %ma_malloc.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -51, 1) i32 @ma_fopen(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #75
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.f) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %spec.store.select = select i1 %i.h, i32 -1, i32 %i.g
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ -2, %bb.b ], [ %spec.store.select, %bb.d ], [ 0, %bb.c ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -51, 1) i32 @ma_result_from_errno(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 126
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.drwav_result_from_errno, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden range(i32 -51, 1) i32 @ma_wfopen(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.__mbstate_t, align 8        ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 0, ptr %4, align 8
  %i.e = call i64 @wcsrtombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef nonnull %4) #61 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #75
  %i.h = load i32, ptr %i.g, align 4
  %i.i = call fastcc i32 @ma_result_from_errno(i32 noundef %i.h)
  br label %ma_free.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.e, 1                      ; 3 uses
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %3, align 8
  %i.n = call ptr %i.l(i64 noundef %i.j, ptr noundef %i.m) #61, !inline_history !29
  br label %ma_malloc.exit

bb.h:                                             ; preds = %bb.e
  %i.o = call noalias noundef ptr @malloc(i64 noundef %i.j) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.n, %bb.g ], [ %i.o, %bb.h ] ; 5 uses
  %i.p = icmp eq ptr %.0.i, null
  br i1 %i.p, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %ma_malloc.exit
  store ptr %1, ptr %i.a, align 8
  store i64 0, ptr %4, align 8
  %i.q = call i64 @wcsrtombs(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.j, ptr noundef nonnull %4) #61 ; 0 uses
  %i.r = load i32, ptr %2, align 4                ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %.0.lcssa = phi i64 [ 0, %bb.i ], [ %i.ab, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa
  store i8 0, ptr %i.t, align 1
  %i.u = call noalias ptr @fopen(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b)
  store ptr %i.u, ptr %0, align 8
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.w, null
  br i1 %.not9.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %3, align 8
  call void %i.w(ptr noundef nonnull %.0.i, ptr noundef %i.x) #61, !inline_history !30
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.0.i) #61
  br label %bb.m

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %i.y = phi i32 [ %i.ad, %.lr.ph ], [ %i.r, %bb.i ]
  %.044 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.044
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = add i64 %.044, 1                        ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

ma_free.exit:                                     ; preds = %bb.f, %ma_malloc.exit, %bb.d
  %.030 = phi i32 [ %i.i, %bb.d ], [ -4, %ma_malloc.exit ], [ -4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %.thread

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %i.af = load ptr, ptr %0, align 8
  %i.ag = icmp eq ptr %i.af, null
  %. = sext i1 %i.ag to i32
  br label %.thread

.thread:                                          ; preds = %bb.a, %ma_free.exit, %bb.m, %bb.b
  %.1 = phi i32 [ %.030, %ma_free.exit ], [ %., %bb.m ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare i64 @wcsrtombs(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define hidden void @ma_free(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef %i.d) #61
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #61
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @ma_log_level_to_string(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_log_level_to_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.4, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, ptr } @ma_log_callback_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -51, 1) i32 @ma_log_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_mutex_init.exit, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @ma__malloc_default, ptr %.sroa.416.0..sroa_idx.i, align 8
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @ma__realloc_default, ptr %.sroa.517.0..sroa_idx.i, align 8
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @ma__free_default, ptr %.sroa.618.0..sroa_idx.i, align 8
  br label %ma_allocation_callbacks_init_copy.exit

bb.c:                                             ; preds = %ma_zero_memory_default.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %.thread22.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %ma_allocation_callbacks_init_copy.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %ma_allocation_callbacks_init_copy.exit

bb.g:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %ma_allocation_callbacks_init_copy.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.h, label %ma_allocation_callbacks_init_copy.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.h, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread22.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ma_allocation_callbacks_init_copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %ma_allocation_callbacks_init_copy.exit

ma_allocation_callbacks_init_copy.exit:           ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %i.v = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.u, ptr noundef null) #61 ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit, label %bb.k

bb.k:                                             ; preds = %ma_allocation_callbacks_init_copy.exit
  %i.w = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.v)
  br label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %bb.k, %ma_allocation_callbacks_init_copy.exit, %bb.a
  %.1 = phi i32 [ -2, %bb.a ], [ 0, %ma_allocation_callbacks_init_copy.exit ], [ %i.w, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -51, 1) i32 @ma_mutex_init(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_mutex_init__posix.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull %0, ptr noundef null) #61 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %ma_mutex_init__posix.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.b)
  br label %ma_mutex_init__posix.exit

ma_mutex_init__posix.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @ma_log_uninit(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
end_hunk_0
begin_hunk_1_@ma_channel_map_apply_f32:bb.a
  %i.sx = zext i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sx
  %i.sz = load float, ptr %i.sy, align 4
  %i.ta = zext i8 %i.su to i64
  %i.tb = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.ta ; 5 uses
  %i.tc = load float, ptr %i.tb, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.te = load float, ptr %i.td, align 4
  %i.tf = fmul float %i.pp, %i.te
  %i.tg = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.tc, float %i.tf)
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.ti = load float, ptr %i.th, align 8
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.ti, float %i.tg)
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  %i.tl = load float, ptr %i.tk, align 4
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.tl, float %i.tj)
  %i.tn = fadd float %i.tm, 0.000000e+00
  %i.to = getelementptr inbounds nuw i8, ptr %i.tb, i64 20
  %i.tp = load float, ptr %i.to, align 4
  %i.tq = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.tp, float %i.tn)
  %i.tr = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.tq, float %.0394.us399.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %ma_channel_map_get_channel.exit353.us398.us

._crit_edge.us.us:                                ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel546, %ma_channel_map_get_channel.exit353.us398.us, %ma_channel_map_get_channel.exit353.us.us.us.peel320, %ma_channel_map_get_channel.exit353.us.us.us.peel, %ma_channel_map_get_channel.exit353.us.us.us.peel285, %ma_channel_map_get_channel.exit353.us.us.us, %.lr.ph.split.us.us.us.preheader
  %.us-phi.us.us = phi float [ %i.uz, %ma_channel_map_get_channel.exit353.us.us.us ], [ %i.qq, %ma_channel_map_get_channel.exit353.us.us.us.peel546 ], [ %i.qi, %.lr.ph.split.us.us.us.preheader ], [ %i.ss, %ma_channel_map_get_channel.exit353.us.us.us.peel320 ], [ %i.ri, %ma_channel_map_get_channel.exit353.us.us.us.peel ], [ %i.sa, %ma_channel_map_get_channel.exit353.us.us.us.peel285 ], [ %i.tr, %ma_channel_map_get_channel.exit353.us398.us ]
  %i.ts = trunc nuw nsw i64 %indvars.iv551 to i32
  %i.tt = add i32 %i.my, %i.ts
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tu
  store float %.us-phi.us.us, ptr %i.tv, align 4
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  br i1 %exitcond555.not, label %._crit_edge397.us, label %.lr.ph396.split.us.us

.lr.ph.split.us.us.us:                            ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel320, %ma_channel_map_get_channel.exit353.us.us.us
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %ma_channel_map_get_channel.exit353.us.us.us ], [ 5, %ma_channel_map_get_channel.exit353.us.us.us.peel320 ] ; 11 uses
  %.0394.us.us.us = phi float [ %i.uz, %ma_channel_map_get_channel.exit353.us.us.us ], [ %i.ss, %ma_channel_map_get_channel.exit353.us.us.us.peel320 ]
  switch i32 %5, label %bb.w [
    i32 7, label %bb.v
    i32 1, label %ma_channel_map_get_channel.exit353.us.us.us
    i32 2, label %.thread.i67.i.us.us.us
    i32 3, label %switch.lookup.i68.i.us.us.us
    i32 4, label %.thread.i67.i.us.us.us
    i32 5, label %.thread.i67.i.us.us.us
    i32 6, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.split.us.us.us
  %i.tw = icmp samesign ult i64 %indvars.iv530, 6
  br i1 %i.tw, label %switch.lookup, label %.thread.i67.i.us.us.us

switch.lookup.i68.i.us.us.us:                     ; preds = %.lr.ph.split.us.us.us
  %switch.offset.i70.i.us.us.us = add nuw nsw i64 %indvars.iv530, 2
  br label %ma_channel_map_get_channel.exit353.us.us.us

bb.v:                                             ; preds = %.lr.ph.split.us.us.us
  %i.tx = icmp samesign ult i64 %indvars.iv530, 7
  br i1 %i.tx, label %switch.lookup161, label %.thread.i67.i.us.us.us

.thread.i67.i.us.us.us:                           ; preds = %.lr.ph.split.us.us.us, %.lr.ph.split.us.us.us, %bb.v, %bb.u, %.lr.ph.split.us.us.us
  br label %ma_channel_map_get_channel.exit353.us.us.us

bb.w:                                             ; preds = %.lr.ph.split.us.us.us
  %i.ty = icmp samesign ult i64 %indvars.iv530, 8
  br i1 %i.ty, label %switch.lookup165, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.tz = icmp samesign ult i64 %indvars.iv530, 32
  %or.cond.i73.i.us.us.us = and i1 %i.mm, %i.tz
  %i.ua = add nuw nsw i64 %indvars.iv530, 12
  %spec.select689 = select i1 %or.cond.i73.i.us.us.us, i64 %i.ua, i64 0
  br label %ma_channel_map_get_channel.exit353.us.us.us

switch.lookup:                                    ; preds = %bb.u
  %switch.tableidx = add nuw nsw i64 %indvars.iv530, 4294967295
  %i.ub = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32, i64 %i.ub
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %ma_channel_map_get_channel.exit353.us.us.us

switch.lookup161:                                 ; preds = %bb.v
  %switch.tableidx160 = add nuw nsw i64 %indvars.iv530, 4294967295
  %i.uc = and i64 %switch.tableidx160, 4294967295
  %switch.gep162 = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32.47, i64 %i.uc
  %switch.load163 = load i8, ptr %switch.gep162, align 1
  %switch.ext164 = zext i8 %switch.load163 to i64
  br label %ma_channel_map_get_channel.exit353.us.us.us

switch.lookup165:                                 ; preds = %bb.w
  %switch.gep166 = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32.48, i64 %indvars.iv530
  %switch.load167 = load i8, ptr %switch.gep166, align 1
  %switch.ext168 = zext i8 %switch.load167 to i64
  br label %ma_channel_map_get_channel.exit353.us.us.us

ma_channel_map_get_channel.exit353.us.us.us:      ; preds = %switch.lookup165, %switch.lookup161, %switch.lookup, %bb.x, %.thread.i67.i.us.us.us, %switch.lookup.i68.i.us.us.us, %.lr.ph.split.us.us.us
  %.0.i352.us.us.us = phi i64 [ 0, %.thread.i67.i.us.us.us ], [ %switch.offset.i70.i.us.us.us, %switch.lookup.i68.i.us.us.us ], [ 1, %.lr.ph.split.us.us.us ], [ %switch.ext164, %switch.lookup161 ], [ %switch.ext168, %switch.lookup165 ], [ %switch.ext, %switch.lookup ], [ %spec.select689, %bb.x ]
  %i.ud = trunc nuw i64 %indvars.iv530 to i32
  %i.ue = add i32 %i.mx, %i.ud
  %i.uf = zext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.uf
  %i.uh = load float, ptr %i.ug, align 4
  %i.ui = and i64 %.0.i352.us.us.us, 255
  %i.uj = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.ui ; 5 uses
  %i.uk = load float, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.um = load float, ptr %i.ul, align 4
  %i.un = fmul float %i.pp, %i.um
  %i.uo = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.uk, float %i.un)
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.uq = load float, ptr %i.up, align 8
  %i.ur = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.uq, float %i.uo)
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  %i.ut = load float, ptr %i.us, align 4
  %i.uu = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.ut, float %i.ur)
  %i.uv = fadd float %i.uu, 0.000000e+00
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  %i.ux = load float, ptr %i.uw, align 4
  %i.uy = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.ux, float %i.uv)
  %i.uz = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.uy, float %.0394.us.us.us) ; 2 uses
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !677

ma_channel_map_get_channel.exit350.us405.us:      ; preds = %ma_channel_map_get_channel.exit350.us405.us, %ma_channel_map_get_channel.exit350.us405.us.preheader186.new
  %indvars.iv561 = phi i64 [ %indvars.iv561.unr, %ma_channel_map_get_channel.exit350.us405.us.preheader186.new ], [ %indvars.iv.next562.3, %ma_channel_map_get_channel.exit350.us405.us ] ; 5 uses
  %i.va = trunc nuw nsw i64 %indvars.iv561 to i32
  %i.vb = add i32 %i.my, %i.va
  %i.vc = zext i32 %i.vb to i64
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vc
  store float 0.000000e+00, ptr %i.vd, align 4
  %i.ve = trunc i64 %indvars.iv561 to i32
  %.reass367 = add i32 %i.ve, %invariant.op366
  %i.vf = zext i32 %.reass367 to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vf
  store float 0.000000e+00, ptr %i.vg, align 4
  %i.vh = trunc i64 %indvars.iv561 to i32
  %.reass369 = add i32 %i.vh, %invariant.op368
  %i.vi = zext i32 %.reass369 to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vi
  store float 0.000000e+00, ptr %i.vj, align 4
  %i.vk = trunc i64 %indvars.iv561 to i32
  %.reass371 = add i32 %i.vk, %invariant.op370
  %i.vl = zext i32 %.reass371 to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vl
  store float 0.000000e+00, ptr %i.vm, align 4
  %indvars.iv.next562.3 = add nuw nsw i64 %indvars.iv561, 4 ; 2 uses
  %exitcond565.not.3 = icmp eq i64 %indvars.iv.next562.3, %wide.trip.count564
  br i1 %exitcond565.not.3, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us, !llvm.loop !678

.preheader369:                                    ; preds = %bb.r
  %.not471 = icmp eq i32 %2, 0
  br i1 %.not471, label %.loopexit362.thread, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader369
  %i.vn = icmp eq ptr %1, null
  %.not472 = icmp eq i32 %5, 0
  %i.vo = icmp eq ptr %4, null
  %wide.trip.count579 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count569 = zext nneg i32 %5 to i64   ; 3 uses
  %wide.trip.count574 = zext nneg i32 %5 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph415, %._crit_edge
  %indvars.iv576 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next577, %._crit_edge ] ; 4 uses
  br i1 %i.vn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.vp = trunc nuw nsw i64 %indvars.iv576 to i32
  %i.vq = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.vp)
  br label %ma_channel_map_get_channel.exit

bb.aa:                                            ; preds = %bb.y
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv576
  %i.vs = load i8, ptr %i.vr, align 1
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.z, %bb.aa
  %.0.i344 = phi i8 [ %i.vq, %bb.z ], [ %i.vs, %bb.aa ]
  br i1 %.not472, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_channel_map_get_channel.exit
  %i.vt = zext i8 %.0.i344 to i64
  %i.vu = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vt ; 5 uses
  %i.vv = load float, ptr %i.vu, align 8          ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vx = load float, ptr %i.vw, align 4          ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vz = load float, ptr %i.vy, align 8          ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vu, i64 12
  %i.wb = load float, ptr %i.wa, align 4          ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vu, i64 20
  %i.wd = load float, ptr %i.wc, align 4          ; 2 uses
  %i.we = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv576 ; 2 uses
  br i1 %i.vo, label %ma_channel_map_get_channel.exit347.us, label %ma_channel_map_get_channel.exit347

ma_channel_map_get_channel.exit347.us:            ; preds = %.lr.ph, %ma_channel_map_get_channel.exit347.us
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %ma_channel_map_get_channel.exit347.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.wf = trunc nuw i64 %indvars.iv571 to i32
  %i.wg = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %i.wf)
  %i.wh = zext nneg i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.wh ; 5 uses
  %i.wj = load float, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wl = load float, ptr %i.wk, align 4
  %i.wm = fmul float %i.vx, %i.wl
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.wj, float %i.wm)
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wp = load float, ptr %i.wo, align 8
  %i.wq = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.wp, float %i.wn)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  %i.ws = load float, ptr %i.wr, align 4
  %i.wt = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.ws, float %i.wq)
  %i.wu = fadd float %i.wt, 0.000000e+00
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  %i.ww = load float, ptr %i.wv, align 4
  %i.wx = tail call float @llvm.fmuladd.f32(float %i.wd, float %i.ww, float %i.wu)
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv571
  store float %i.wx, ptr %i.wy, align 4
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count574
  br i1 %exitcond575.not, label %._crit_edge, label %ma_channel_map_get_channel.exit347.us

ma_channel_map_get_channel.exit347:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit347
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %ma_channel_map_get_channel.exit347 ], [ 0, %.lr.ph ] ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv566
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.xb ; 5 uses
  %i.xd = load float, ptr %i.xc, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.xf = load float, ptr %i.xe, align 4
  %i.xg = fmul float %i.vx, %i.xf
  %i.xh = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.xd, float %i.xg)
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xj = load float, ptr %i.xi, align 8
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.xj, float %i.xh)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xc, i64 12
  %i.xm = load float, ptr %i.xl, align 4
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.xm, float %i.xk)
  %i.xo = fadd float %i.xn, 0.000000e+00
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xc, i64 20
  %i.xq = load float, ptr %i.xp, align 4
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.wd, float %i.xq, float %i.xo)
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv566
  store float %i.xr, ptr %i.xs, align 4
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count569
  br i1 %exitcond570.not, label %._crit_edge, label %ma_channel_map_get_channel.exit347

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit347, %ma_channel_map_get_channel.exit347.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 2 uses
  %exitcond580.not = icmp eq i64 %indvars.iv.next577, %wide.trip.count579
  br i1 %exitcond580.not, label %._crit_edge416, label %bb.y

._crit_edge416:                                   ; preds = %._crit_edge
  switch i32 %2, label %.loopexit362 [
    i32 8, label %bb.ab
    i32 6, label %.preheader367
  ]

.preheader367:                                    ; preds = %._crit_edge416
  %.not473 = icmp eq i64 %6, 0
  br i1 %.not473, label %.loopexit362, label %.preheader366.lr.ph

.preheader366.lr.ph:                              ; preds = %.preheader367
  %.not474 = icmp eq i32 %5, 0
  %i.xt = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.xu = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.xv = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %wide.trip.count584 = zext nneg i32 %5 to i64
  br label %.preheader366

bb.ab:                                            ; preds = %._crit_edge416
  %i.xy = icmp eq i32 %5, 2
  %.not477 = icmp eq i64 %6, 0                    ; 2 uses
  br i1 %i.xy, label %.preheader361, label %.preheader364

.preheader364:                                    ; preds = %bb.ab
  br i1 %.not477, label %.loopexit362, label %.preheader363.lr.ph

.preheader363.lr.ph:                              ; preds = %.preheader364
  %.not476 = icmp eq i32 %5, 0
  %i.xz = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ya = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.yb = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.yc = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %wide.trip.count589 = zext nneg i32 %5 to i64
  br label %.preheader363

.preheader361:                                    ; preds = %bb.ab
  br i1 %.not477, label %.loopexit362, label %.lr.ph455

.lr.ph455:                                        ; preds = %.preheader361
  %i.yg = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.yi = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.ym = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.yn = load <2 x float>, ptr %i.b, align 16    ; 4 uses
  %i.yo = load <2 x float>, ptr %i.yg, align 16   ; 4 uses
  %i.yp = load <2 x float>, ptr %i.yh, align 16   ; 3 uses
  %i.yq = load <2 x float>, ptr %i.yi, align 16   ; 3 uses
  %i.yr = load <2 x float>, ptr %i.yj, align 16   ; 4 uses
  %i.ys = load <2 x float>, ptr %i.yk, align 16   ; 4 uses
  %i.yt = load <2 x float>, ptr %i.yl, align 16   ; 3 uses
  %i.yu = load <2 x float>, ptr %i.ym, align 16   ; 3 uses
  %i.yv = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check96 = icmp ult i32 %i.yv, 4
  br i1 %min.iters.check96, label %scalar.ph95.preheader, label %vector.scevcheck92

vector.scevcheck92:                               ; preds = %.lr.ph455
  %i.yw = add i64 %6, -1                          ; 2 uses
  %i.yx = and i64 %i.yw, 4294967295
  %i.yy = icmp eq i64 %i.yx, 4294967295
  %i.yz = icmp ugt i64 %i.yw, 536870911
  %i.za = or i1 %i.yy, %i.yz
  br i1 %i.za, label %scalar.ph95.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck92
  %i.zb = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.zb
  %i.zc = shl nuw nsw i64 %6, 3
  %scevgep94 = getelementptr i8, ptr %3, i64 %i.zc
  %bound0 = icmp ult ptr %0, %scevgep94
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph95.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck
  %n.vec98 = and i32 %i.yv, 1073741820            ; 4 uses
  %i.zd = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.ze = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zf = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zg = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zh = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zi = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zj = shufflevector <2 x float> %i.yt, <2 x float> %i.yu, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zk = shufflevector <2 x float> %i.yt, <2 x float> %i.yu, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zl = shufflevector <8 x float> %i.zd, <8 x float> %i.zf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zm = shufflevector <8 x float> %i.ze, <8 x float> %i.zg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zn = shufflevector <8 x float> %i.zh, <8 x float> %i.zj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zo = shufflevector <8 x float> %i.zi, <8 x float> %i.zk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph97
  %index132 = phi i32 [ 0, %vector.ph97 ], [ %index.next134, %vector.body131 ] ; 3 uses
  %i.zp = shl i32 %index132, 1
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zq
  %wide.vec = load <8 x float>, ptr %i.zr, align 4, !alias.scope !692 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec133 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.zs = shl i32 %index132, 3
  %i.zt = zext i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zt
  %i.zv = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zw = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zx = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zy = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zz = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aaa = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aab = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aac = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aad = shufflevector <8 x float> %i.zv, <8 x float> %i.zx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aae = shufflevector <8 x float> %i.zw, <8 x float> %i.zy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaf = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aae, <16 x float> %i.zm, <16 x float> zeroinitializer)
  %i.aag = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aad, <16 x float> %i.zl, <16 x float> %i.aaf)
  %i.aah = shufflevector <8 x float> %i.zz, <8 x float> %i.aab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aai = shufflevector <8 x float> %i.aaa, <8 x float> %i.aac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaj = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aai, <16 x float> %i.zo, <16 x float> zeroinitializer)
  %i.aak = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aah, <16 x float> %i.zn, <16 x float> %i.aaj)
  %interleaved.vec = shufflevector <16 x float> %i.aag, <16 x float> %i.aak, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.zu, align 4, !alias.scope !693, !noalias !692
  %index.next134 = add nuw i32 %index132, 4       ; 2 uses
  %i.aal = icmp eq i32 %index.next134, %n.vec98
  br i1 %i.aal, label %middle.block135, label %vector.body131, !llvm.loop !682

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i32 %n.vec98, %i.yv
  br i1 %cmp.n136, label %.loopexit362, label %scalar.ph95.preheader

scalar.ph95.preheader:                            ; preds = %vector.memcheck, %vector.scevcheck92, %.lr.ph455, %middle.block135
  %.0314454.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck92 ], [ 0, %.lr.ph455 ], [ %n.vec98, %middle.block135 ]
  %i.aam = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aan = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aao = shufflevector <4 x float> %i.aam, <4 x float> %i.aan, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aap = shufflevector <2 x float> %i.yq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaq = shufflevector <4 x float> %i.aao, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aar = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> %i.aan, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aau = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aav = shufflevector <2 x float> %i.yt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaw = shufflevector <4 x float> %i.aau, <4 x float> %i.aav, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aax = shufflevector <2 x float> %i.yu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aay = shufflevector <4 x float> %i.aaw, <4 x float> %i.aax, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aaz = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> %i.aav, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> %i.aax, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.preheader, %scalar.ph95
  %.0314454 = phi i32 [ %i.abs, %scalar.ph95 ], [ %.0314454.ph, %scalar.ph95.preheader ] ; 3 uses
  %i.abc = shl i32 %.0314454, 1
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abd
  %i.abf = shl i32 %.0314454, 3                   ; 2 uses
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abg
  %i.abi = load <2 x float>, ptr %i.abe, align 4  ; 2 uses
  %i.abj = shufflevector <2 x float> %i.abi, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abj, <4 x float> %i.aaq, <4 x float> zeroinitializer)
  %i.abl = shufflevector <2 x float> %i.abi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.abm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abl, <4 x float> %i.aat, <4 x float> %i.abk)
  store <4 x float> %i.abm, ptr %i.abh, align 4
  %i.abn = or disjoint i32 %i.abf, 4
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abo
  %i.abq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abj, <4 x float> %i.aay, <4 x float> zeroinitializer)
  %i.abr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abl, <4 x float> %i.abb, <4 x float> %i.abq)
  store <4 x float> %i.abr, ptr %i.abp, align 4
  %i.abs = add i32 %.0314454, 1                   ; 3 uses
  %i.abt = zext i32 %i.abs to i64
  %i.abu = icmp ugt i64 %6, %i.abt
  br i1 %i.abu, label %scalar.ph95, label %.loopexit362, !llvm.loop !683

.preheader363:                                    ; preds = %.preheader363.lr.ph, %._crit_edge443
  %.1315452 = phi i32 [ 0, %.preheader363.lr.ph ], [ %i.adn, %._crit_edge443 ] ; 3 uses
  br i1 %.not476, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader363
  %i.abv = mul i32 %.1315452, %5
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph442, %bb.ac
  %indvars.iv586 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next587, %bb.ac ] ; 10 uses
  %i.abw = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.acr, %bb.ac ]
  %i.abx = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.ade, %bb.ac ]
  %i.aby = trunc nuw i64 %indvars.iv586 to i32
  %i.abz = add i32 %i.abv, %i.aby
  %i.aca = zext i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aca
  %i.acc = load float, ptr %i.acb, align 4
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv586
  %i.ace = load float, ptr %i.acd, align 4
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv586
  %i.acg = load float, ptr %i.acf, align 4
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv586
  %i.aci = load float, ptr %i.ach, align 4
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv586
  %i.ack = load float, ptr %i.acj, align 4
  %i.acl = insertelement <4 x float> poison, float %i.acc, i64 0
  %i.acm = shufflevector <4 x float> %i.acl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acn = insertelement <4 x float> poison, float %i.ace, i64 0
  %i.aco = insertelement <4 x float> %i.acn, float %i.acg, i64 1
  %i.acp = insertelement <4 x float> %i.aco, float %i.aci, i64 2
  %i.acq = insertelement <4 x float> %i.acp, float %i.ack, i64 3
  %i.acr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> %i.acq, <4 x float> %i.abw) ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv586
  %i.act = load float, ptr %i.acs, align 4
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv586
  %i.acv = load float, ptr %i.acu, align 4
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv586
  %i.acx = load float, ptr %i.acw, align 4
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv586
  %i.acz = load float, ptr %i.acy, align 4
  %i.ada = insertelement <4 x float> poison, float %i.act, i64 0
  %i.adb = insertelement <4 x float> %i.ada, float %i.acv, i64 1
  %i.adc = insertelement <4 x float> %i.adb, float %i.acx, i64 2
  %i.add = insertelement <4 x float> %i.adc, float %i.acz, i64 3
  %i.ade = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> %i.add, <4 x float> %i.abx) ; 2 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge443, label %bb.ac

._crit_edge443:                                   ; preds = %bb.ac, %.preheader363
  %i.adf = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.acr, %bb.ac ]
  %i.adg = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.ade, %bb.ac ]
  %i.adh = shl i32 %.1315452, 3                   ; 2 uses
  %i.adi = zext i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adi
  store <4 x float> %i.adf, ptr %i.adj, align 4
  %i.adk = or disjoint i32 %i.adh, 4
  %i.adl = zext i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adl
  store <4 x float> %i.adg, ptr %i.adm, align 4
  %i.adn = add i32 %.1315452, 1                   ; 3 uses
  %i.ado = zext i32 %i.adn to i64
  %i.adp = icmp ugt i64 %6, %i.ado
  br i1 %i.adp, label %.preheader363, label %.loopexit362

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge425
  %.2431 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.afi, %._crit_edge425 ] ; 3 uses
  br i1 %.not474, label %._crit_edge425, label %.lr.ph424

.lr.ph424:                                        ; preds = %.preheader366
  %i.adq = mul i32 %.2431, %5
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph424, %bb.ad
  %indvars.iv581 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next582, %bb.ad ] ; 8 uses
  %i.adr = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aev, %bb.ad ]
  %i.ads = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aeo, %bb.ad ]
  %i.adt = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aeh, %bb.ad ]
  %i.adu = trunc nuw i64 %indvars.iv581 to i32
  %i.adv = add i32 %i.adq, %i.adu
  %i.adw = zext i32 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adw
  %i.ady = load float, ptr %i.adx, align 4
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv581
  %i.aea = load float, ptr %i.adz, align 4
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv581
  %i.aec = load float, ptr %i.aeb, align 4
  %i.aed = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aef = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.aeg = insertelement <2 x float> %i.aef, float %i.aec, i64 1
  %i.aeh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aee, <2 x float> %i.aeg, <2 x float> %i.adt) ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv581
  %i.aej = load float, ptr %i.aei, align 4
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv581
  %i.ael = load float, ptr %i.aek, align 4
  %i.aem = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.aen = insertelement <2 x float> %i.aem, float %i.ael, i64 1
  %i.aeo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aee, <2 x float> %i.aen, <2 x float> %i.ads) ; 2 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv581
  %i.aeq = load float, ptr %i.aep, align 4
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv581
  %i.aes = load float, ptr %i.aer, align 4
  %i.aet = insertelement <2 x float> poison, float %i.aeq, i64 0
  %i.aeu = insertelement <2 x float> %i.aet, float %i.aes, i64 1
  %i.aev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aee, <2 x float> %i.aeu, <2 x float> %i.adr) ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %._crit_edge425, label %bb.ad

._crit_edge425:                                   ; preds = %bb.ad, %.preheader366
  %i.aew = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aev, %bb.ad ]
  %i.aex = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aeo, %bb.ad ]
  %i.aey = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aeh, %bb.ad ]
  %i.aez = mul i32 %.2431, 6                      ; 3 uses
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afa
  store <2 x float> %i.aey, ptr %i.afb, align 4
  %i.afc = add i32 %i.aez, 2
  %i.afd = zext i32 %i.afc to i64
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afd
  store <2 x float> %i.aex, ptr %i.afe, align 4
  %i.aff = add i32 %i.aez, 4
  %i.afg = zext i32 %i.aff to i64
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afg
  store <2 x float> %i.aew, ptr %i.afh, align 4
  %i.afi = add i32 %.2431, 1                      ; 3 uses
  %i.afj = zext i32 %i.afi to i64
  %i.afk = icmp ugt i64 %6, %i.afj
  br i1 %i.afk, label %.preheader366, label %.loopexit362

.loopexit362:                                     ; preds = %._crit_edge425, %._crit_edge443, %scalar.ph95, %middle.block135, %.preheader367, %.preheader364, %.preheader361, %._crit_edge416
  %.3 = phi i32 [ 0, %._crit_edge416 ], [ %i.abs, %scalar.ph95 ], [ %i.adn, %._crit_edge443 ], [ 0, %.preheader361 ], [ 0, %.preheader364 ], [ 0, %.preheader367 ], [ %n.vec98, %middle.block135 ], [ %i.afi, %._crit_edge425 ] ; 2 uses
  %i.afl = zext i32 %.3 to i64
  %i.afm = icmp ugt i64 %6, %i.afl
  br i1 %i.afm, label %.preheader360.lr.ph, label %.loopexit

.loopexit362.thread:                              ; preds = %.preheader369
  %.not690 = icmp eq i64 %6, 0
  br i1 %.not690, label %.loopexit, label %.preheader360

.preheader360.lr.ph:                              ; preds = %.loopexit362
  %.not479 = icmp eq i32 %5, 0
  %wide.trip.count599 = zext nneg i32 %2 to i64
  %wide.trip.count604 = zext nneg i32 %2 to i64
  %i.afn = add nsw i64 %wide.trip.count579, -1    ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count569, 3   ; 3 uses
  %i.afo = add nsw i32 %5, -1
  %i.afp = icmp ult i32 %i.afo, 3
  %unroll_iter336 = and i64 %wide.trip.count569, 60
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod335 = icmp ne i64 %xtraiter331, 0
  %min.iters.check140 = icmp ult i32 %2, 8
  %i.afq = trunc nsw i64 %i.afn to i32
  %i.afr = icmp ugt i64 %i.afn, 4294967295
  %n.vec142 = and i64 %wide.trip.count579, 56     ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec142, %wide.trip.count579
  %xtraiter338 = and i64 %wide.trip.count579, 3   ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br label %.preheader360.us

.preheader360.us:                                 ; preds = %.preheader360.lr.ph, %._crit_edge463.us
  %.4464.us = phi i32 [ %i.agw, %._crit_edge463.us ], [ %.3, %.preheader360.lr.ph ] ; 3 uses
  %i.afs = mul i32 %.4464.us, %5                  ; 5 uses
  %i.aft = mul i32 %.4464.us, %2                  ; 8 uses
  br i1 %.not479, label %.preheader.us465.preheader, label %.preheader.us.us

.preheader.us465.preheader:                       ; preds = %.preheader360.us
  br i1 %min.iters.check140, label %.preheader.us465.preheader169, label %vector.scevcheck138

vector.scevcheck138:                              ; preds = %.preheader.us465.preheader
  %i.afu = xor i32 %i.aft, -1
  %i.afv = icmp ult i32 %i.afu, %i.afq
  %i.afw = or i1 %i.afv, %i.afr
  br i1 %i.afw, label %.preheader.us465.preheader169, label %vector.body143

vector.body143:                                   ; preds = %vector.scevcheck138, %vector.body143
  %index144 = phi i64 [ %index.next145, %vector.body143 ], [ 0, %vector.scevcheck138 ] ; 2 uses
  %i.afx = trunc nuw nsw i64 %index144 to i32
  %i.afy = add i32 %i.aft, %i.afx
  %i.afz = zext i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afz ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  store <4 x float> zeroinitializer, ptr %i.aga, align 4
  store <4 x float> zeroinitializer, ptr %i.agb, align 4
  %index.next145 = add nuw i64 %index144, 8       ; 2 uses
  %i.agc = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.agc, label %middle.block146, label %vector.body143, !llvm.loop !684

middle.block146:                                  ; preds = %vector.body143
  br i1 %cmp.n147, label %._crit_edge463.us, label %.preheader.us465.preheader169

.preheader.us465.preheader169:                    ; preds = %vector.scevcheck138, %.preheader.us465.preheader, %middle.block146
  %indvars.iv601.ph = phi i64 [ 0, %vector.scevcheck138 ], [ 0, %.preheader.us465.preheader ], [ %n.vec142, %middle.block146 ] ; 3 uses
  br i1 %lcmp.mod339.not, label %.preheader.us465.prol.loopexit, label %.preheader.us465.prol

.preheader.us465.prol:                            ; preds = %.preheader.us465.preheader169, %.preheader.us465.prol
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %.preheader.us465.prol ], [ %indvars.iv601.ph, %.preheader.us465.preheader169 ] ; 2 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.preheader.us465.prol ], [ 0, %.preheader.us465.preheader169 ]
  %i.agd = trunc nuw nsw i64 %indvars.iv601.prol to i32
  %i.age = add i32 %i.aft, %i.agd
  %i.agf = zext i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agf
  store float 0.000000e+00, ptr %i.agg, align 4
  %indvars.iv.next602.prol = add nuw nsw i64 %indvars.iv601.prol, 1 ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.preheader.us465.prol.loopexit, label %.preheader.us465.prol, !llvm.loop !685

.preheader.us465.prol.loopexit:                   ; preds = %.preheader.us465.prol, %.preheader.us465.preheader169
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %.preheader.us465.preheader169 ], [ %indvars.iv.next602.prol, %.preheader.us465.prol ]
  %i.agh = sub nsw i64 %indvars.iv601.ph, %wide.trip.count579
  %i.agi = icmp ugt i64 %i.agh, -4
  br i1 %i.agi, label %._crit_edge463.us, label %.preheader.us465.preheader169.new

.preheader.us465.preheader169.new:                ; preds = %.preheader.us465.prol.loopexit
  %invariant.op372 = add i32 1, %i.aft
  %invariant.op374 = add i32 2, %i.aft
  %invariant.op376 = add i32 3, %i.aft
  br label %.preheader.us465

.preheader.us465:                                 ; preds = %.preheader.us465, %.preheader.us465.preheader169.new
  %indvars.iv601 = phi i64 [ %indvars.iv601.unr, %.preheader.us465.preheader169.new ], [ %indvars.iv.next602.3, %.preheader.us465 ] ; 5 uses
  %i.agj = trunc nuw nsw i64 %indvars.iv601 to i32
  %i.agk = add i32 %i.aft, %i.agj
  %i.agl = zext i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agl
  store float 0.000000e+00, ptr %i.agm, align 4
  %i.agn = trunc i64 %indvars.iv601 to i32
  %.reass373 = add i32 %i.agn, %invariant.op372
  %i.ago = zext i32 %.reass373 to i64
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ago
  store float 0.000000e+00, ptr %i.agp, align 4
  %i.agq = trunc i64 %indvars.iv601 to i32
  %.reass375 = add i32 %i.agq, %invariant.op374
  %i.agr = zext i32 %.reass375 to i64
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agr
  store float 0.000000e+00, ptr %i.ags, align 4
  %i.agt = trunc i64 %indvars.iv601 to i32
  %.reass377 = add i32 %i.agt, %invariant.op376
  %i.agu = zext i32 %.reass377 to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agu
  store float 0.000000e+00, ptr %i.agv, align 4
  %indvars.iv.next602.3 = add nuw nsw i64 %indvars.iv601, 4 ; 2 uses
  %exitcond605.not.3 = icmp eq i64 %indvars.iv.next602.3, %wide.trip.count604
  br i1 %exitcond605.not.3, label %._crit_edge463.us, label %.preheader.us465, !llvm.loop !686

._crit_edge463.us:                                ; preds = %._crit_edge460.us.us, %.preheader.us465.prol.loopexit, %.preheader.us465, %middle.block146
  %i.agw = add i32 %.4464.us, 1                   ; 2 uses
  %i.agx = zext i32 %i.agw to i64
  %i.agy = icmp ugt i64 %6, %i.agx
  br i1 %i.agy, label %.preheader360.us, label %.loopexit

.preheader.us.us:                                 ; preds = %.preheader360.us, %._crit_edge460.us.us
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %._crit_edge460.us.us ], [ 0, %.preheader360.us ] ; 3 uses
  %i.agz = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv596 ; 5 uses
  br i1 %i.afp, label %.epil.preheader330, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv591 = phi i64 [ %indvars.iv.next592.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 6 uses
  %.0312458.us.us = phi float [ %i.aif, %.preheader.us.us.new ], [ 0.000000e+00, %.preheader.us.us ]
  %niter337 = phi i64 [ %niter337.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.aha = trunc nuw i64 %indvars.iv591 to i32
  %i.ahb = add i32 %i.afs, %i.aha
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahc
  %i.ahe = load float, ptr %i.ahd, align 4
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv591
  %i.ahg = load float, ptr %i.ahf, align 16
  %i.ahh = tail call float @llvm.fmuladd.f32(float %i.ahe, float %i.ahg, float %.0312458.us.us)
  %indvars.iv.next592 = or disjoint i64 %indvars.iv591, 1 ; 2 uses
  %i.ahi = trunc nuw i64 %indvars.iv.next592 to i32
  %i.ahj = add i32 %i.afs, %i.ahi
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahk
  %i.ahm = load float, ptr %i.ahl, align 4
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next592
  %i.aho = load float, ptr %i.ahn, align 4
  %i.ahp = tail call float @llvm.fmuladd.f32(float %i.ahm, float %i.aho, float %i.ahh)
  %indvars.iv.next592.1 = or disjoint i64 %indvars.iv591, 2 ; 2 uses
  %i.ahq = trunc nuw i64 %indvars.iv.next592.1 to i32
  %i.ahr = add i32 %i.afs, %i.ahq
  %i.ahs = zext i32 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahs
  %i.ahu = load float, ptr %i.aht, align 4
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next592.1
  %i.ahw = load float, ptr %i.ahv, align 8
  %i.ahx = tail call float @llvm.fmuladd.f32(float %i.ahu, float %i.ahw, float %i.ahp)
  %indvars.iv.next592.2 = or disjoint i64 %indvars.iv591, 3 ; 2 uses
  %i.ahy = trunc nuw i64 %indvars.iv.next592.2 to i32
  %i.ahz = add i32 %i.afs, %i.ahy
  %i.aia = zext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aia
  %i.aic = load float, ptr %i.aib, align 4
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next592.2
  %i.aie = load float, ptr %i.aid, align 4
  %i.aif = tail call float @llvm.fmuladd.f32(float %i.aic, float %i.aie, float %i.ahx) ; 3 uses
  %indvars.iv.next592.3 = add nuw nsw i64 %indvars.iv591, 4 ; 2 uses
  %niter337.next.3 = add i64 %niter337, 4         ; 2 uses
  %niter337.ncmp.3 = icmp eq i64 %niter337.next.3, %unroll_iter336
  br i1 %niter337.ncmp.3, label %._crit_edge460.us.us.unr-lcssa, label %.preheader.us.us.new

._crit_edge460.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod333.not, label %._crit_edge460.us.us, label %.epil.preheader330

.epil.preheader330:                               ; preds = %._crit_edge460.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv591.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next592.3, %._crit_edge460.us.us.unr-lcssa ]
  %.0312458.us.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.us ], [ %i.aif, %._crit_edge460.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod335)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader330
  %indvars.iv591.epil = phi i64 [ %indvars.iv.next592.epil, %bb.ae ], [ %indvars.iv591.epil.init, %.epil.preheader330 ] ; 3 uses
  %.0312458.us.us.epil = phi float [ %i.ain, %bb.ae ], [ %.0312458.us.us.epil.init, %.epil.preheader330 ]
  %epil.iter332 = phi i64 [ %epil.iter332.next, %bb.ae ], [ 0, %.epil.preheader330 ]
  %i.aig = trunc nuw i64 %indvars.iv591.epil to i32
  %i.aih = add i32 %i.afs, %i.aig
  %i.aii = zext i32 %i.aih to i64
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aii
  %i.aik = load float, ptr %i.aij, align 4
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv591.epil
  %i.aim = load float, ptr %i.ail, align 4
  %i.ain = tail call float @llvm.fmuladd.f32(float %i.aik, float %i.aim, float %.0312458.us.us.epil) ; 2 uses
  %indvars.iv.next592.epil = add nuw nsw i64 %indvars.iv591.epil, 1
  %epil.iter332.next = add i64 %epil.iter332, 1   ; 2 uses
  %epil.iter332.cmp.not = icmp eq i64 %epil.iter332.next, %xtraiter331
  br i1 %epil.iter332.cmp.not, label %._crit_edge460.us.us, label %bb.ae, !llvm.loop !687

._crit_edge460.us.us:                             ; preds = %bb.ae, %._crit_edge460.us.us.unr-lcssa
  %.lcssa = phi float [ %i.aif, %._crit_edge460.us.us.unr-lcssa ], [ %i.ain, %bb.ae ]
  %i.aio = trunc nuw nsw i64 %indvars.iv596 to i32
  %i.aip = add i32 %i.aft, %i.aio
  %i.aiq = zext i32 %i.aip to i64
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aiq
  store float %.lcssa, ptr %i.air, align 4
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge463.us, label %.preheader.us.us

.preheader360:                                    ; preds = %.loopexit362.thread, %.preheader360
  %.4464 = phi i32 [ %i.ais, %.preheader360 ], [ 0, %.loopexit362.thread ]
  %i.ais = add i32 %.4464, 1                      ; 2 uses
  %i.ait = zext i32 %i.ais to i64
  %i.aiu = icmp ugt i64 %6, %i.ait
  br i1 %i.aiu, label %.preheader360, label %.loopexit

.preheader370:                                    ; preds = %.preheader370.lr.ph, %.preheader370
  %.5406 = phi i32 [ %i.aiv, %.preheader370 ], [ 0, %.preheader370.lr.ph ]
  %i.aiv = add i32 %.5406, 1                      ; 2 uses
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = icmp ugt i64 %6, %i.aiw
  br i1 %i.aix, label %.preheader370, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge397.us, %.preheader370, %._crit_edge463.us, %.preheader360, %.loopexit362.thread, %.preheader371, %.loopexit362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %ma_copy_pcm_frames.exit

bb.af:                                            ; preds = %bb.q
  %i.aiy = shl i32 %2, 2
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = mul i64 %6, %i.aiz                     ; 2 uses
  %.not.i13.i = icmp eq i64 %i.aja, 0
  br i1 %.not.i13.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %bb.af, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ajc, %ma_zero_memory_default.exit.i.i ], [ %0, %bb.af ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.ajb, %ma_zero_memory_default.exit.i.i ], [ %i.aja, %bb.af ] ; 2 uses
  %spec.store.select.i.i355 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i356 = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i356, label %ma_zero_memory_default.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i355, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.ag, %.lr.ph.i354
  %i.ajb = sub nuw i64 %.08.i14.i, %spec.store.select.i.i355 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i355
  %.not.i.i357 = icmp eq i64 %i.ajb, 0
  br i1 %.not.i.i357, label %ma_copy_pcm_frames.exit, label %.lr.ph.i354

ma_copy_pcm_frames.exit:                          ; preds = %.split.i, %.split.us.us.i, %._crit_edge.split.us85.i, %._crit_edge.split.us.us.us.i, %.lr.ph.i.i, %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.af, %.loopexit.i, %.preheader274.i, %bb.f, %bb.e, %.preheader64.i, %bb.d, %bb.c, %bb.b, %.loopexit
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_min_distance(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_max_distance(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_rolloff(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define hidden float @ma_spatializer_get_doppler_factor(ptr nofree noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden i32 @ma_spatializer_get_positioning(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @ma_spatializer_get_position(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.24.0.copyload.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_get.exit
  %.pn = phi { <2 x float>, float } [ %.fca.1.insert.i, %ma_atomic_vec3f_get.exit ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: nounwind uwtable
define hidden void @ma_spatializer_get_relative_position_and_direction(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #36 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
end_hunk_1
begin_hunk_2_@ma_channel_converter_init_preallocated:bb.a

bb.o:                                             ; preds = %bb.s, %.peel.next139.i.split.us
  %.03651.us.us.us.us75.i.us = phi i32 [ 2, %.peel.next139.i.split.us ], [ %i.ck, %bb.s ] ; 7 uses
  %i.ce = icmp ult i32 %.03651.us.us.us.us75.i.us, 8
  br i1 %i.ce, label %switch.lookup, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp ult i32 %.03651.us.us.us.us75.i.us, 32
  br i1 %i.cf, label %bb.q, label %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us

bb.q:                                             ; preds = %bb.p
  %i.cg = trunc nuw nsw i32 %.03651.us.us.us.us75.i.us to i8
  %i.ch = add nuw nsw i8 %i.cg, 12
  br label %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us

switch.lookup:                                    ; preds = %bb.o
  %switch.tableidx = add nsw i32 %.03651.us.us.us.us75.i.us, -1
  %switch.cast = zext i32 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 3389824514196483, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us

ma_channel_map_get_channel.exit45.us.us.us.us84.i.us: ; preds = %switch.lookup, %bb.q, %bb.p
  %.0.i44.us.us.us.us85.i.us = phi i8 [ 0, %bb.p ], [ %switch.masked, %switch.lookup ], [ %i.ch, %bb.q ] ; 2 uses
  %i.ci = icmp eq i8 %.0.i.us.us.us.i, %.0.i44.us.us.us.us85.i.us
  br i1 %i.ci, label %.split.us.us.us.split.us86.loopexit.i, label %bb.r

bb.r:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us
  switch i8 %.0.i44.us.us.us.us85.i.us, label %bb.s [
    i8 2, label %.sink.split.i.us
    i8 11, label %.sink.split.i.us
  ]

.sink.split.i.us:                                 ; preds = %bb.r, %bb.r
  %i.cj = trunc i32 %.03651.us.us.us.us75.i.us to i8
  store i8 %i.cj, ptr %i.bz, align 1
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.us, %bb.r
  %i.ck = add nuw i32 %.03651.us.us.us.us75.i.us, 1 ; 2 uses
  %exitcond136.not.i.us = icmp eq i32 %i.ck, %i.bp
  br i1 %exitcond136.not.i.us, label %..loopexit_crit_edge.split.us.us.us.split.us88.i, label %bb.o, !llvm.loop !714

.peel.next139.i.split.us429:                      ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.peel.i
  store i8 1, ptr %i.bz, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.peel.next139.i.split.us429
  %.03651.us.us.us.us75.i.us430 = phi i32 [ 2, %.peel.next139.i.split.us429 ], [ %i.cr, %bb.x ] ; 7 uses
  %i.cl = icmp ult i32 %.03651.us.us.us.us75.i.us430, 8
  br i1 %i.cl, label %switch.lookup679, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = icmp ult i32 %.03651.us.us.us.us75.i.us430, 32
  br i1 %i.cm, label %bb.v, label %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431

bb.v:                                             ; preds = %bb.u
  %i.cn = trunc nuw nsw i32 %.03651.us.us.us.us75.i.us430 to i8
  %i.co = add nuw nsw i8 %i.cn, 12
  br label %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431

switch.lookup679:                                 ; preds = %bb.t
  %switch.tableidx678 = add nsw i32 %.03651.us.us.us.us75.i.us430, -1
  %switch.cast680 = zext i32 %switch.tableidx678 to i56
  %switch.shiftamt681 = shl nuw nsw i56 %switch.cast680, 3
  %switch.downshift682 = lshr i56 3389824514196483, %switch.shiftamt681
  %switch.masked683 = trunc i56 %switch.downshift682 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431

ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431: ; preds = %switch.lookup679, %bb.v, %bb.u
  %.0.i44.us.us.us.us85.i.us432 = phi i8 [ 0, %bb.u ], [ %switch.masked683, %switch.lookup679 ], [ %i.co, %bb.v ] ; 2 uses
  %i.cp = icmp eq i8 %.0.i.us.us.us.i, %.0.i44.us.us.us.us85.i.us432
  br i1 %i.cp, label %.split.us.us.us.split.us86.loopexit.i, label %bb.w

bb.w:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431
  switch i8 %.0.i44.us.us.us.us85.i.us432, label %bb.x [
    i8 3, label %.sink.split.i.us433
    i8 12, label %.sink.split.i.us433
  ]

.sink.split.i.us433:                              ; preds = %bb.w, %bb.w
  %i.cq = trunc i32 %.03651.us.us.us.us75.i.us430 to i8
  store i8 %i.cq, ptr %i.bz, align 1
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i.us433, %bb.w
  %i.cr = add nuw i32 %.03651.us.us.us.us75.i.us430, 1 ; 2 uses
  %exitcond136.not.i.us434 = icmp eq i32 %i.cr, %i.bp
  br i1 %exitcond136.not.i.us434, label %..loopexit_crit_edge.split.us.us.us.split.us88.i, label %bb.t, !llvm.loop !714

..loopexit_crit_edge.split.us.us.us.split.us88.i: ; preds = %bb.x, %bb.s, %bb.aa, %.split.us.us.us.split.us86.i
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, %wide.trip.count155.i
  br i1 %exitcond156.not.i, label %ma_channel_map_build_shuffle_table.exitthread-pre-split, label %.preheader.split.us.split.us.split.us.i

.peel.next139.i.split:                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.peel.i, %bb.aa
  %.03651.us.us.us.us75.i = phi i32 [ %i.cx, %bb.aa ], [ 2, %ma_channel_map_get_channel.exit45.us.us.us.us84.peel.i ] ; 6 uses
  %i.cs = icmp ult i32 %.03651.us.us.us.us75.i, 8
  br i1 %i.cs, label %switch.lookup685, label %bb.y

bb.y:                                             ; preds = %.peel.next139.i.split
  %i.ct = icmp ult i32 %.03651.us.us.us.us75.i, 32
  br i1 %i.ct, label %bb.z, label %ma_channel_map_get_channel.exit45.us.us.us.us84.i

bb.z:                                             ; preds = %bb.y
  %i.cu = trunc nuw nsw i32 %.03651.us.us.us.us75.i to i8
  %i.cv = add nuw nsw i8 %i.cu, 12
  br label %ma_channel_map_get_channel.exit45.us.us.us.us84.i

switch.lookup685:                                 ; preds = %.peel.next139.i.split
  %switch.tableidx684 = add nsw i32 %.03651.us.us.us.us75.i, -1
  %switch.cast686 = zext i32 %switch.tableidx684 to i56
  %switch.shiftamt687 = shl nuw nsw i56 %switch.cast686, 3
  %switch.downshift688 = lshr i56 3389824514196483, %switch.shiftamt687
  %switch.masked689 = trunc i56 %switch.downshift688 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us84.i

ma_channel_map_get_channel.exit45.us.us.us.us84.i: ; preds = %switch.lookup685, %bb.z, %bb.y
  %.0.i44.us.us.us.us85.i = phi i8 [ 0, %bb.y ], [ %switch.masked689, %switch.lookup685 ], [ %i.cv, %bb.z ]
  %i.cw = icmp eq i8 %.0.i.us.us.us.i, %.0.i44.us.us.us.us85.i
  br i1 %i.cw, label %.split.us.us.us.split.us86.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.i
  %i.cx = add nuw i32 %.03651.us.us.us.us75.i, 1  ; 2 uses
  %exitcond136.not.i = icmp eq i32 %i.cx, %i.bp
  br i1 %exitcond136.not.i, label %..loopexit_crit_edge.split.us.us.us.split.us88.i, label %.peel.next139.i.split, !llvm.loop !714

.split.us.us.us.split.us86.loopexit.i:            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431, %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us, %ma_channel_map_get_channel.exit45.us.us.us.us84.i
  %.us-phi = phi i32 [ %.03651.us.us.us.us75.i.us, %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us ], [ %.03651.us.us.us.us75.i, %ma_channel_map_get_channel.exit45.us.us.us.us84.i ], [ %.03651.us.us.us.us75.i.us430, %ma_channel_map_get_channel.exit45.us.us.us.us84.i.us431 ]
  %i.cy = trunc i32 %.us-phi to i8
  br label %.split.us.us.us.split.us86.i

.split.us.us.us.split.us86.fold.split.i:          ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.peel.i
  br label %.split.us.us.us.split.us86.i

.split.us.us.us.split.us86.i:                     ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us84.peel.i, %.split.us.us.us.split.us86.fold.split.i, %.split.us.us.us.split.us86.loopexit.i
  %.03651.us.us.us.us75.lcssa.i = phi i8 [ %i.cy, %.split.us.us.us.split.us86.loopexit.i ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us84.peel.i ], [ 1, %.split.us.us.us.split.us86.fold.split.i ]
  store i8 %.03651.us.us.us.us75.lcssa.i, ptr %i.bz, align 1
  br label %..loopexit_crit_edge.split.us.us.us.split.us88.i

.preheader.split.us.split.us.split.i:             ; preds = %..loopexit_crit_edge.split.us.us.us.split.us.i, %.preheader.split.us.split.us.split.preheader.i
  %indvars.iv131.i = phi i64 [ 0, %.preheader.split.us.split.us.split.preheader.i ], [ %indvars.iv.next132.i, %..loopexit_crit_edge.split.us.us.us.split.us.i ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv131.i ; 4 uses
  store i8 -1, ptr %i.cz, align 1
  br i1 %i.bw, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.split.us.split.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv131.i
  %i.db = load i8, ptr %i.da, align 1
  br label %ma_channel_map_get_channel.exit.us.us.i

bb.ac:                                            ; preds = %.preheader.split.us.split.us.split.i
  %i.dc = trunc nuw i64 %indvars.iv131.i to i32
  %i.dd = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.bs, i32 noundef %i.dc)
  br label %ma_channel_map_get_channel.exit.us.us.i

ma_channel_map_get_channel.exit.us.us.i:          ; preds = %bb.ac, %bb.ab
  %.0.i.us.us.i = phi i8 [ %i.dd, %bb.ac ], [ %i.db, %bb.ab ] ; 4 uses
  br i1 %exitcond117.peel.not.i, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i: ; preds = %ma_channel_map_get_channel.exit.us.us.i
  %i.de = icmp eq i8 %.0.i.us.us.i, 1
  br i1 %i.de, label %.split.us.us.us.split.us.i, label %..loopexit_crit_edge.split.us.us.us.split.us.i

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i: ; preds = %ma_channel_map_get_channel.exit.us.us.i
  switch i8 %.0.i.us.us.i, label %bb.ae [
    i8 2, label %.split.us.us.us.split.us.i
    i8 11, label %.sink.split
    i8 3, label %.split.us.us.us.split.us.i.fold.split
    i8 12, label %bb.ad
  ]

bb.ad:                                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i
  br label %.sink.split

.sink.split:                                      ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i, %bb.ad
  %.sink = phi i8 [ 1, %bb.ad ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i ]
  store i8 %.sink, ptr %i.cz, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i
  br i1 %exitcond117.peel129.not.i, label %..loopexit_crit_edge.split.us.us.us.split.us.i, label %.peel.next118.i

..loopexit_crit_edge.split.us.us.us.split.us.i:   ; preds = %bb.an, %.split.us.us.us.split.us.i, %bb.ae, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next132.i, %wide.trip.count155.i
  br i1 %exitcond135.not.i, label %ma_channel_map_build_shuffle_table.exitthread-pre-split, label %.preheader.split.us.split.us.split.i

.peel.next118.i:                                  ; preds = %bb.ae, %bb.an
  %.03651.us.us.us.us.i = phi i32 [ %i.dq, %bb.an ], [ 2, %bb.ae ] ; 14 uses
  switch i32 %i.bp, label %bb.aj [
    i32 7, label %bb.ai
    i32 6, label %bb.af
    i32 5, label %bb.ag
    i32 3, label %switch.lookup.i68.i.us.us.us.us.i
    i32 4, label %bb.ah
  ]

bb.af:                                            ; preds = %.peel.next118.i
  %i.df = icmp ult i32 %.03651.us.us.us.us.i, 6
  br i1 %i.df, label %switch.lookup690, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.ag:                                            ; preds = %.peel.next118.i
  %i.dg = icmp ult i32 %.03651.us.us.us.us.i, 5
  br i1 %i.dg, label %switch.lookup695, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.ah:                                            ; preds = %.peel.next118.i
  %i.dh = icmp ult i32 %.03651.us.us.us.us.i, 4
  br i1 %i.dh, label %switch.lookup700, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup.i68.i.us.us.us.us.i:                ; preds = %.peel.next118.i
  %switch.idx.cast.i69.i.us.us.us.us.i = trunc nuw nsw i32 %.03651.us.us.us.us.i to i8
  %switch.offset.i70.i.us.us.us.us.i = add nuw nsw i8 %switch.idx.cast.i69.i.us.us.us.us.i, 2
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.ai:                                            ; preds = %.peel.next118.i
  %i.di = icmp ult i32 %.03651.us.us.us.us.i, 7
  br i1 %i.di, label %switch.lookup704, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.aj:                                            ; preds = %.peel.next118.i
  %i.dj = icmp ult i32 %.03651.us.us.us.us.i, 8
  br i1 %i.dj, label %switch.lookup709, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup690:                                 ; preds = %bb.af
  %i.dk = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt692 = zext nneg i32 %i.dk to i48
  %switch.downshift693 = lshr i48 13241468322562, %switch.shiftamt692
  %switch.masked694 = trunc i48 %switch.downshift693 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup695:                                 ; preds = %bb.ag
  %i.dl = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt697 = zext nneg i32 %i.dl to i40
  %switch.downshift698 = lshr i40 30165697282, %switch.shiftamt697
  %switch.masked699 = trunc i40 %switch.downshift698 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup700:                                 ; preds = %bb.ah
  %switch.shiftamt701 = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.downshift702 = lshr i32 168035074, %switch.shiftamt701
  %switch.masked703 = trunc i32 %switch.downshift702 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup704:                                 ; preds = %bb.ai
  %i.dm = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt706 = zext nneg i32 %i.dm to i56
  %switch.downshift707 = lshr i56 3389837382255362, %switch.shiftamt706
  %switch.masked708 = trunc i56 %switch.downshift707 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup709:                                 ; preds = %bb.aj
  %i.dn = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt711 = zext nneg i32 %i.dn to i64
  %switch.downshift712 = lshr i64 867795075634299650, %switch.shiftamt711
  %switch.masked713 = trunc i64 %switch.downshift712 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

ma_channel_map_get_channel.exit45.us.us.us.us.i:  ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %switch.lookup709, %switch.lookup704, %switch.lookup700, %switch.lookup695, %switch.lookup690, %switch.lookup.i68.i.us.us.us.us.i
  %.0.i44.us.us.us.us.i = phi i8 [ %switch.masked699, %switch.lookup695 ], [ %switch.offset.i70.i.us.us.us.us.i, %switch.lookup.i68.i.us.us.us.us.i ], [ %switch.masked703, %switch.lookup700 ], [ %switch.masked713, %switch.lookup709 ], [ %switch.masked694, %switch.lookup690 ], [ %switch.masked708, %switch.lookup704 ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.do = icmp eq i8 %.0.i.us.us.i, %.0.i44.us.us.us.us.i
  br i1 %i.do, label %.split.us.us.us.split.us.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.i
  switch i8 %.0.i.us.us.i, label %bb.an [
    i8 2, label %bb.am
    i8 11, label %bb.am
    i8 3, label %bb.al
    i8 12, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  switch i8 %.0.i44.us.us.us.us.i, label %bb.an [
    i8 3, label %.sink.split183.i
    i8 12, label %.sink.split183.i
  ]

bb.am:                                            ; preds = %bb.ak, %bb.ak
  switch i8 %.0.i44.us.us.us.us.i, label %bb.an [
    i8 2, label %.sink.split183.i
    i8 11, label %.sink.split183.i
  ]

.sink.split183.i:                                 ; preds = %bb.am, %bb.am, %bb.al, %bb.al
  %i.dp = trunc i32 %.03651.us.us.us.us.i to i8
  store i8 %i.dp, ptr %i.cz, align 1
  br label %bb.an

bb.an:                                            ; preds = %.sink.split183.i, %bb.am, %bb.al, %bb.ak
  %i.dq = add nuw i32 %.03651.us.us.us.us.i, 1    ; 2 uses
  %exitcond117.not.i = icmp eq i32 %i.dq, %i.bp
  br i1 %exitcond117.not.i, label %..loopexit_crit_edge.split.us.us.us.split.us.i, label %.peel.next118.i, !llvm.loop !715

.split.us.us.us.split.us.loopexit.i:              ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.i
  %i.dr = trunc i32 %.03651.us.us.us.us.i to i8
  br label %.split.us.us.us.split.us.i

.split.us.us.us.split.us.i.fold.split:            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i
  br label %.split.us.us.us.split.us.i

.split.us.us.us.split.us.i:                       ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i, %.split.us.us.us.split.us.i.fold.split, %.split.us.us.us.split.us.loopexit.i, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i
  %.03651.us.us.us.us.lcssa.i = phi i8 [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i ], [ %i.dr, %.split.us.us.us.split.us.loopexit.i ], [ 1, %.split.us.us.us.split.us.i.fold.split ]
  store i8 %.03651.us.us.us.us.lcssa.i, ptr %i.cz, align 1
  br label %..loopexit_crit_edge.split.us.us.us.split.us.i

.preheader.split.us.split.i:                      ; preds = %..loopexit_crit_edge.split.us70.i, %.preheader.split.us.split.preheader.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader.split.us.split.preheader.i ], [ %indvars.iv.next113.i, %..loopexit_crit_edge.split.us70.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv112.i ; 4 uses
  store i8 -1, ptr %i.ds, align 1
  br i1 %i.bw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.preheader.split.us.split.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv112.i
  %i.du = load i8, ptr %i.dt, align 1
  br label %ma_channel_map_get_channel.exit.us.i

bb.ap:                                            ; preds = %.preheader.split.us.split.i
  %i.dv = trunc nuw i64 %indvars.iv112.i to i32
  %i.dw = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.bs, i32 noundef %i.dv)
  br label %ma_channel_map_get_channel.exit.us.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %bb.ap, %bb.ao
  %.0.i.us.i = phi i8 [ %i.dw, %bb.ap ], [ %i.du, %bb.ao ]
  %.0.i.fr.us.i = freeze i8 %.0.i.us.i            ; 4 uses
  switch i8 %.0.i.fr.us.i, label %ma_channel_map_get_channel.exit45.us62.i [
    i8 2, label %ma_channel_map_get_channel.exit45.us52.us.i.preheader
    i8 11, label %ma_channel_map_get_channel.exit45.us52.us.i.preheader
    i8 3, label %ma_channel_map_get_channel.exit45.us57.us.i.preheader
    i8 12, label %ma_channel_map_get_channel.exit45.us57.us.i.preheader
  ]

ma_channel_map_get_channel.exit45.us57.us.i.preheader: ; preds = %ma_channel_map_get_channel.exit.us.i, %ma_channel_map_get_channel.exit.us.i
  br label %ma_channel_map_get_channel.exit45.us57.us.i

ma_channel_map_get_channel.exit45.us52.us.i.preheader: ; preds = %ma_channel_map_get_channel.exit.us.i, %ma_channel_map_get_channel.exit.us.i
  br label %ma_channel_map_get_channel.exit45.us52.us.i

ma_channel_map_get_channel.exit45.us62.i:         ; preds = %ma_channel_map_get_channel.exit.us.i, %bb.aq
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %bb.aq ], [ 0, %ma_channel_map_get_channel.exit.us.i ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv107.i
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp eq i8 %.0.i.fr.us.i, %i.dy
  br i1 %i.dz, label %.split.us69.i, label %bb.aq

bb.aq:                                            ; preds = %ma_channel_map_get_channel.exit45.us62.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i
  br i1 %exitcond111.not.i, label %..loopexit_crit_edge.split.us70.i, label %ma_channel_map_get_channel.exit45.us62.i

..loopexit_crit_edge.split.us70.i:                ; preds = %bb.aw, %bb.at, %bb.aq, %.split.us69.i
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next113.i, %wide.trip.count115.i
  br i1 %exitcond116.not.i, label %ma_channel_map_build_shuffle_table.exitthread-pre-split, label %.preheader.split.us.split.i

.split.us69.i:                                    ; preds = %ma_channel_map_get_channel.exit45.us57.us.i, %ma_channel_map_get_channel.exit45.us52.us.i, %ma_channel_map_get_channel.exit45.us62.i
  %.us-phi55.us.in.i = phi i64 [ %indvars.iv107.i, %ma_channel_map_get_channel.exit45.us62.i ], [ %indvars.iv102.i, %ma_channel_map_get_channel.exit45.us52.us.i ], [ %indvars.iv.i, %ma_channel_map_get_channel.exit45.us57.us.i ]
  %i.ea = trunc i64 %.us-phi55.us.in.i to i8
  store i8 %i.ea, ptr %i.ds, align 1
  br label %..loopexit_crit_edge.split.us70.i

ma_channel_map_get_channel.exit45.us52.us.i:      ; preds = %ma_channel_map_get_channel.exit45.us52.us.i.preheader, %bb.at
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %bb.at ], [ 0, %ma_channel_map_get_channel.exit45.us52.us.i.preheader ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv102.i
  %i.ec = load i8, ptr %i.eb, align 1             ; 2 uses
  %i.ed = icmp eq i8 %.0.i.fr.us.i, %i.ec
  br i1 %i.ed, label %.split.us69.i, label %bb.ar

bb.ar:                                            ; preds = %ma_channel_map_get_channel.exit45.us52.us.i
  switch i8 %i.ec, label %bb.at [
    i8 2, label %bb.as
    i8 11, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.ee = trunc i64 %indvars.iv102.i to i8
  store i8 %i.ee, ptr %i.ds, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count.i
  br i1 %exitcond106.not.i, label %..loopexit_crit_edge.split.us70.i, label %ma_channel_map_get_channel.exit45.us52.us.i

ma_channel_map_get_channel.exit45.us57.us.i:      ; preds = %ma_channel_map_get_channel.exit45.us57.us.i.preheader, %bb.aw
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aw ], [ 0, %ma_channel_map_get_channel.exit45.us57.us.i.preheader ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.i
  %i.eg = load i8, ptr %i.ef, align 1             ; 2 uses
  %i.eh = icmp eq i8 %.0.i.fr.us.i, %i.eg
  br i1 %i.eh, label %.split.us69.i, label %bb.au

bb.au:                                            ; preds = %ma_channel_map_get_channel.exit45.us57.us.i
  switch i8 %i.eg, label %bb.aw [
    i8 3, label %bb.av
    i8 12, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.ei = trunc i64 %indvars.iv.i to i8
  store i8 %i.ei, ptr %i.ds, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.split.us70.i, label %ma_channel_map_get_channel.exit45.us57.us.i

ma_channel_map_build_shuffle_table.exitthread-pre-split: ; preds = %..loopexit_crit_edge.split.us70.i, %..loopexit_crit_edge.split.us.us.us.split.us.i, %..loopexit_crit_edge.split.us.us.us.split.us88.i, %bb.l
  %.pr = load i32, ptr %i.bh, align 8
  br label %ma_channel_map_build_shuffle_table.exit

ma_channel_map_build_shuffle_table.exit:          ; preds = %ma_channel_map_build_shuffle_table.exitthread-pre-split, %ma_channel_map_copy_or_default.exit265
  %i.ej = phi i32 [ %.pr, %ma_channel_map_build_shuffle_table.exitthread-pre-split ], [ %i.bg, %ma_channel_map_copy_or_default.exit265 ]
  %i.ek = icmp eq i32 %i.ej, 5
  br i1 %i.ek, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %ma_channel_map_build_shuffle_table.exit
  %i.el = load i32, ptr %2, align 8
  %i.em = icmp eq i32 %i.el, 5
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr i8, ptr %1, i64 %i.eo     ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = load i32, ptr %i.k, align 4             ; 3 uses
  %.not468 = icmp eq i32 %i.er, 0                 ; 2 uses
  br i1 %i.em, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not468, label %._crit_edge448, label %.lr.ph439

.lr.ph439:                                        ; preds = %bb.ay, %.lr.ph439
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %.lr.ph439 ], [ 0, %bb.ay ] ; 3 uses
  %i.es = phi i32 [ %i.fd, %.lr.ph439 ], [ %i.er, %bb.ay ]
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = load i32, ptr %i.n, align 8
  %i.ew = zext i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %indvars.iv511, 2
  %i.ey = mul i64 %i.ex, %i.ew
  %i.ez = getelementptr i8, ptr %i.ep, i64 %i.eu
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ey
  %i.fb = load ptr, ptr %i.eq, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv511
  store ptr %i.fa, ptr %i.fc, align 8
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.fd = load i32, ptr %i.k, align 4             ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next512, %i.fe
  br i1 %i.ff, label %.lr.ph439, label %.loopexit416

bb.az:                                            ; preds = %bb.ax
  br i1 %.not468, label %._crit_edge448, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.az ] ; 3 uses
  %i.fg = phi i32 [ %i.fr, %.lr.ph ], [ %i.er, %bb.az ]
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = load i32, ptr %i.n, align 8
  %i.fk = zext i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %indvars.iv, 2
  %i.fm = mul i64 %i.fl, %i.fk
  %i.fn = getelementptr i8, ptr %i.ep, i64 %i.fi
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = load ptr, ptr %i.eq, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv
  store ptr %i.fo, ptr %i.fq, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fr = load i32, ptr %i.k, align 4             ; 3 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next, %i.fs
  br i1 %i.ft, label %.lr.ph, label %.loopexit416

.loopexit416:                                     ; preds = %.lr.ph, %.lr.ph439
  %i.fu = phi i32 [ %i.fd, %.lr.ph439 ], [ %i.fr, %.lr.ph ] ; 3 uses
  %.not469 = icmp eq i32 %i.fu, 0
  br i1 %.not469, label %._crit_edge448, label %.preheader415.lr.ph

.preheader415.lr.ph:                              ; preds = %.loopexit416
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fw = load i32, ptr %i.n, align 8
  %.not470 = icmp eq i32 %i.fw, 0
  br i1 %.not470, label %.lr.ph447, label %.preheader415

.preheader415:                                    ; preds = %.preheader415.lr.ph, %._crit_edge
  %i.fx = phi i32 [ %i.gk, %._crit_edge ], [ %i.fu, %.preheader415.lr.ph ]
  %i.fy = phi i32 [ %i.gl, %._crit_edge ], [ 1, %.preheader415.lr.ph ]
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %._crit_edge ], [ 0, %.preheader415.lr.ph ] ; 2 uses
  %.not471 = icmp eq i32 %i.fy, 0
  br i1 %.not471, label %._crit_edge, label %.lr.ph441
end_hunk_2
begin_hunk_3_@drwav_init_file_w:bb.a
  %.sroa.6.0.copyload27.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload29.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i.i.i, align 8 ; 2 uses
  %.sroa.5.0.copyload25.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i.i.i, align 8
  %i.j = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.j, ptr %i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %i.k = icmp eq ptr %.sroa.7.0.copyload29.i.i.i, null
  br i1 %i.k, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i.i.i
  %i.l = icmp eq ptr %.sroa.5.0.copyload25.i.i.i, null
  %i.m = icmp eq ptr %.sroa.6.0.copyload27.i.i.i, null
  %or.cond39.i.i.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond39.i.i.i, label %.sink.split.i.i, label %drwav_preinit.exit.i.i

drwav_preinit.exit.i.i:                           ; preds = %bb.d, %.thread.i.i.i
  %i.n = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %0, ptr noundef readonly null, ptr noundef null, i32 noundef 0)
  %.not.not15.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.not15.i.i, label %.sink.split.i.i, label %drwav_init_file_ex_w.exit

.sink.split.i.i:                                  ; preds = %drwav_preinit.exit.i.i, %bb.d, %drwav_copy_allocation_callbacks_or_defaults.exit.i.i.i, %bb.b
  %i.o = tail call i32 @fclose(ptr noundef %i.c)  ; 0 uses
  br label %drwav_init_file_ex_w.exit

drwav_init_file_ex_w.exit:                        ; preds = %bb.a, %drwav_preinit.exit.i.i, %.sink.split.i.i
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %drwav_preinit.exit.i.i ], [ 0, %.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drwav_init_file_ex_w(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = call fastcc i32 @drwav_wfopen(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef %5)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %drwav_init_file__internal_FILE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.e, i8 0, i64 400, i1 false)
  store ptr @drwav__on_read_stdio, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @drwav__on_seek_stdio, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @drwav__on_tell_stdio, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %drwav_copy_allocation_callbacks_or_defaults.exit.i.i

.thread.i.i:                                      ; preds = %bb.c
  %.sroa.5.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i.i, align 8
  %.sroa.6.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i.i, align 8
  %.sroa.7.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx38.i.i, align 8
  br label %drwav_preinit.exit.i

drwav_copy_allocation_callbacks_or_defaults.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0.copyload27.i.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7.0.copyload29.i.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i.i, align 8 ; 2 uses
  %.sroa.5.0.copyload25.i.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i.i, align 8
  %i.j = load <2 x ptr>, ptr %5, align 8
  store <2 x ptr> %i.j, ptr %i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.k = icmp eq ptr %.sroa.7.0.copyload29.i.i, null
  br i1 %i.k, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i.i
  %i.l = icmp eq ptr %.sroa.5.0.copyload25.i.i, null
  %i.m = icmp eq ptr %.sroa.6.0.copyload27.i.i, null
  %or.cond39.i.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond39.i.i, label %.sink.split.i, label %drwav_preinit.exit.i

drwav_preinit.exit.i:                             ; preds = %bb.d, %.thread.i.i
  %i.n = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %0, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4)
  %.not.not15.i = icmp eq i32 %i.n, 0
  br i1 %.not.not15.i, label %.sink.split.i, label %drwav_init_file__internal_FILE.exit

.sink.split.i:                                    ; preds = %drwav_preinit.exit.i, %bb.d, %drwav_copy_allocation_callbacks_or_defaults.exit.i.i, %bb.b
  %i.o = tail call i32 @fclose(ptr noundef %i.c)  ; 0 uses
  br label %drwav_init_file__internal_FILE.exit

drwav_init_file__internal_FILE.exit:              ; preds = %.sink.split.i, %drwav_preinit.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %drwav_preinit.exit.i ], [ 0, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -51, 1) i32 @drwav_wfopen(ptr nofree noundef nonnull captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.__mbstate_t, align 8        ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  store ptr null, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 0, ptr %4, align 8
  %i.e = call i64 @wcsrtombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef nonnull %4) #61 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #75
  %i.h = load i32, ptr %i.g, align 4
  %i.i = call fastcc i32 @drwav_result_from_errno(i32 noundef %i.h)
  br label %drwav__free_from_callbacks.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.e, 1                      ; 3 uses
  %i.k = icmp eq ptr %3, null
  br i1 %i.k, label %drwav__free_from_callbacks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %3, align 8
  %i.o = call ptr %i.m(i64 noundef %i.j, ptr noundef %i.n) #61, !inline_history !11
  br label %drwav__malloc_from_callbacks.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.q, null
  br i1 %.not12.i, label %drwav__free_from_callbacks.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %3, align 8
  %i.s = call ptr %i.q(ptr noundef null, i64 noundef %i.j, ptr noundef %i.r) #61, !inline_history !11
  br label %drwav__malloc_from_callbacks.exit

drwav__malloc_from_callbacks.exit:                ; preds = %bb.f, %bb.h
  %.0.i = phi ptr [ %i.s, %bb.h ], [ %i.o, %bb.f ] ; 4 uses
  %i.t = icmp eq ptr %.0.i, null
  br i1 %i.t, label %drwav__free_from_callbacks.exit, label %bb.i

bb.i:                                             ; preds = %drwav__malloc_from_callbacks.exit
  store ptr %1, ptr %i.a, align 8
  store i64 0, ptr %4, align 8
  %i.u = call i64 @wcsrtombs(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.j, ptr noundef nonnull %4) #61 ; 0 uses
  %i.v = load i32, ptr %2, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %.0.lcssa = phi i64 [ 0, %bb.i ], [ %i.af, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa
  store i8 0, ptr %i.x, align 1
  %i.y = call noalias ptr @fopen(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b) ; 2 uses
  store ptr %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i38 = icmp eq ptr %i.aa, null
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr %3, align 8
  call void %i.aa(ptr noundef nonnull %.0.i, ptr noundef %i.ab) #61, !inline_history !12
  %.pre = load ptr, ptr %0, align 8
  br label %bb.k

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %i.ac = phi i32 [ %i.ah, %.lr.ph ], [ %i.v, %bb.i ]
  %.042 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %.042
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = add i64 %.042, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

drwav__free_from_callbacks.exit:                  ; preds = %bb.g, %bb.d, %drwav__malloc_from_callbacks.exit, %bb.c
  %.030 = phi i32 [ %i.i, %bb.c ], [ -4, %drwav__malloc_from_callbacks.exit ], [ -4, %bb.d ], [ -4, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.aj = phi ptr [ %i.y, %._crit_edge ], [ %.pre, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %i.ak = icmp eq ptr %i.aj, null
  %. = sext i1 %i.ak to i32
  br label %bb.l

bb.l:                                             ; preds = %drwav__free_from_callbacks.exit, %bb.k, %bb.a
  %.1 = phi i32 [ %.030, %drwav__free_from_callbacks.exit ], [ %., %bb.k ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drwav_init_file_with_metadata(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %drwav_init_file__internal_FILE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.170) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %drwav_init_file__internal_FILE.exit, label %drwav_fopen.exit

drwav_fopen.exit:                                 ; preds = %bb.b
  %i.d = or i32 %2, 2
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %drwav_fopen.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.f, i8 0, i64 400, i1 false)
  store ptr @drwav__on_read_stdio, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @drwav__on_seek_stdio, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @drwav__on_tell_stdio, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.i, align 8
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %drwav_copy_allocation_callbacks_or_defaults.exit.i.i

.thread.i.i:                                      ; preds = %bb.c
  %.sroa.5.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i.i, align 8
  %.sroa.6.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i.i, align 8
  %.sroa.7.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx38.i.i, align 8
  br label %drwav_preinit.exit.i

drwav_copy_allocation_callbacks_or_defaults.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6.0.copyload27.i.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload29.i.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i.i, align 8 ; 2 uses
  %.sroa.5.0.copyload25.i.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i.i, align 8
  %i.k = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.k, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.l = icmp eq ptr %.sroa.7.0.copyload29.i.i, null
  br i1 %i.l, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i.i
  %i.m = icmp eq ptr %.sroa.5.0.copyload25.i.i, null
  %i.n = icmp eq ptr %.sroa.6.0.copyload27.i.i, null
  %or.cond39.i.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond39.i.i, label %.sink.split.i, label %drwav_preinit.exit.i

drwav_preinit.exit.i:                             ; preds = %bb.d, %.thread.i.i
  %i.o = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, i32 noundef %i.d)
  %.not.not15.i = icmp eq i32 %i.o, 0
  br i1 %.not.not15.i, label %.sink.split.i, label %drwav_init_file__internal_FILE.exit

.sink.split.i:                                    ; preds = %drwav_preinit.exit.i, %bb.d, %drwav_copy_allocation_callbacks_or_defaults.exit.i.i, %drwav_fopen.exit
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %drwav_init_file__internal_FILE.exit

drwav_init_file__internal_FILE.exit:              ; preds = %bb.b, %bb.a, %.sink.split.i, %drwav_preinit.exit.i
  %.0 = phi i32 [ 0, %.sink.split.i ], [ 1, %drwav_preinit.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drwav_init_file_with_metadata_w(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = call fastcc i32 @drwav_wfopen(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef %3)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %drwav_init_file__internal_FILE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = or i32 %2, 2
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.f, i8 0, i64 400, i1 false)
  store ptr @drwav__on_read_stdio, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @drwav__on_seek_stdio, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @drwav__on_tell_stdio, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.i, align 8
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %drwav_copy_allocation_callbacks_or_defaults.exit.i.i

.thread.i.i:                                      ; preds = %bb.c
  %.sroa.5.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i.i, align 8
  %.sroa.6.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i.i, align 8
  %.sroa.7.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx38.i.i, align 8
  br label %drwav_preinit.exit.i

drwav_copy_allocation_callbacks_or_defaults.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6.0.copyload27.i.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload29.i.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i.i, align 8 ; 2 uses
  %.sroa.5.0.copyload25.i.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i.i, align 8
  %i.k = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.k, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.l = icmp eq ptr %.sroa.7.0.copyload29.i.i, null
  br i1 %i.l, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i.i
  %i.m = icmp eq ptr %.sroa.5.0.copyload25.i.i, null
  %i.n = icmp eq ptr %.sroa.6.0.copyload27.i.i, null
  %or.cond39.i.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond39.i.i, label %.sink.split.i, label %drwav_preinit.exit.i

drwav_preinit.exit.i:                             ; preds = %bb.d, %.thread.i.i
  %i.o = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, i32 noundef %i.d)
  %.not.not15.i = icmp eq i32 %i.o, 0
  br i1 %.not.not15.i, label %.sink.split.i, label %drwav_init_file__internal_FILE.exit

.sink.split.i:                                    ; preds = %drwav_preinit.exit.i, %bb.d, %drwav_copy_allocation_callbacks_or_defaults.exit.i.i, %bb.b
  %i.p = tail call i32 @fclose(ptr noundef %i.c)  ; 0 uses
  br label %drwav_init_file__internal_FILE.exit

drwav_init_file__internal_FILE.exit:              ; preds = %.sink.split.i, %drwav_preinit.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %drwav_preinit.exit.i ], [ 0, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drwav_init_file_write(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %drwav_init_file_write__internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.173) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %drwav_init_file_write__internal.exit, label %drwav_fopen.exit.i

drwav_fopen.exit.i:                               ; preds = %bb.b
  %i.d = tail call fastcc i32 @drwav_init_file_write__internal_FILE(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef readonly %2, i64 noundef 0, i32 noundef 0, ptr noundef readonly %3)
  br label %drwav_init_file_write__internal.exit

drwav_init_file_write__internal.exit:             ; preds = %bb.a, %bb.b, %drwav_fopen.exit.i
  %.0.i = phi i32 [ %i.d, %drwav_fopen.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drwav_init_file_write_sequential(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
end_hunk_3
begin_hunk_4_@drwav_read_pcm_frames_s16:bb.a
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i16, ptr %i.i, align 4
  switch i16 %i.j, label %bb.ax [
    i16 1, label %bb.e
    i16 3, label %bb.r
    i16 6, label %bb.af
    i16 7, label %bb.an
    i16 2, label %bb.av
    i16 17, label %bb.aw
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = icmp eq i16 %i.l, 16
  br i1 %i.m, label %.split.i, label %._crit_edge.i

.split.i:                                         ; preds = %bb.e
  %i.n = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_s16__pcm.exit

._crit_edge.i:                                    ; preds = %bb.e
  %i.o = zext i16 %i.l to i32                     ; 2 uses
  %i.p = and i32 %i.o, 7
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = mul nuw nsw i32 %i.t, %i.o
  %i.v = lshr exact i32 %i.u, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i16, ptr %i.w, align 4
  %i.y = zext i16 %i.x to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.v, %bb.f ], [ %i.y, %bb.g ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.h

bb.h:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = udiv i32 %.0.i.i, %i.ab                 ; 5 uses
  %i.ad = urem i32 %.0.i.i, %i.ab
  %i.ae = icmp samesign uge i32 %.0.i.i, %i.ab
  %.not.i = icmp eq i32 %i.ad, 0
  %or.cond218 = and i1 %i.ae, %.not.i
  br i1 %or.cond218, label %.preheader.i, label %drwav_read_pcm_frames_s16__pcm.exit

.preheader.i:                                     ; preds = %bb.h
  %i.af = udiv i32 4096, %.0.i.i
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ai = icmp samesign ugt i32 %i.ac, 8
  %i.aj = shl nuw nsw i32 %i.ac, 3
  %i.ak = sub nuw nsw i32 64, %i.aj               ; 2 uses
  %xtraiter206 = and i64 %i.ah, 3                 ; 3 uses
  %i.al = add nsw i32 %i.ac, -1
  %i.am = icmp ult i32 %i.al, 3
  %unroll_iter211 = and i64 %i.ah, 12
  %lcmp.mod208.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod210 = icmp ne i64 %xtraiter206, 0
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03761.i = phi i64 [ 0, %.preheader.i ], [ %i.ga, %.loopexit.i ] ; 3 uses
  %.03860.i = phi ptr [ %2, %.preheader.i ], [ %i.fy, %.loopexit.i ] ; 11 uses
  %.04059.i = phi i64 [ %1, %.preheader.i ], [ %i.fz, %.loopexit.i ] ; 2 uses
  %.040..i = call i64 @llvm.umin.i64(i64 %.04059.i, i64 %i.ag)
  %i.an = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.040..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i16, ptr %i.z, align 8
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = mul i64 %i.an, %i.aq                    ; 25 uses
  %i.as = mul i64 %i.ar, %i.ah
  %i.at = icmp ugt i64 %i.as, 4096
  br i1 %i.at, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ac, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %.preheader51.i.i
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

.preheader51.i.i:                                 ; preds = %bb.k
  %.not.i49.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i49.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader51.i.i
  %i.au = shl i64 %i.an, 1
  %i.av = mul i64 %i.au, %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03860.i, ptr nonnull align 16 %i.d, i64 %i.av, i1 false)
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %min.iters.check150 = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check151 = icmp ult i64 %i.ar, 16
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.ar, 12
  %n.vec153 = and i64 %i.ar, -16                  ; 4 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next158, %vector.body154 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %index155 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %wide.load156 = load <8 x i8>, ptr %i.ax, align 16
  %wide.load157 = load <8 x i8>, ptr %i.ay, align 8
  %i.az = zext <8 x i8> %wide.load156 to <8 x i16>
  %i.ba = zext <8 x i8> %wide.load157 to <8 x i16>
  %i.bb = shl nuw <8 x i16> %i.az, splat (i16 8)
  %i.bc = shl nuw <8 x i16> %i.ba, splat (i16 8)
  %i.bd = xor <8 x i16> %i.bb, splat (i16 -32768)
  %i.be = xor <8 x i16> %i.bc, splat (i16 -32768)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index155 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %i.bd, ptr %i.bf, align 2
  store <8 x i16> %i.be, ptr %i.bg, align 2
  %index.next158 = add nuw i64 %index155, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.bh, label %middle.block159, label %vector.body154, !llvm.loop !862

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %i.ar, %n.vec153
  br i1 %cmp.n160, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block159
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec153, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.ar, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %index162
  %wide.load163 = load <4 x i8>, ptr %i.bi, align 4
  %i.bj = zext <4 x i8> %wide.load163 to <4 x i16>
  %i.bk = shl nuw <4 x i16> %i.bj, splat (i16 8)
  %i.bl = xor <4 x i16> %i.bk, splat (i16 -32768)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index162
  store <4 x i16> %i.bl, ptr %i.bm, align 2
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next164, %n.vec161
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !863

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n165 = icmp eq i64 %i.ar, %n.vec161
  br i1 %cmp.n165, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec153, %vec.epilog.iter.check ], [ %n.vec161, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = xor i16 %i.br, -32768
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bu, %i.ar
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !864

bb.m:                                             ; preds = %bb.k
  %.not.i44.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check168 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check168, label %.lr.ph.i45.i.i.preheader190, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec170 = and i64 %i.ar, -8                   ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next173, %vector.body171 ] ; 10 uses
  %i.bv = mul i64 %index172, 3
  %i.bw = mul i64 %index172, 3
  %i.bx = mul i64 %index172, 3
  %i.by = mul i64 %index172, 3
  %i.bz = mul i64 %index172, 3
  %i.ca = mul i64 %index172, 3
  %i.cb = mul i64 %index172, 3
  %i.cc = mul i64 %index172, 3
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bv
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bx
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.by
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.cd, i64 1
  %i.cm = getelementptr i8, ptr %i.ce, i64 4
  %i.cn = getelementptr i8, ptr %i.cf, i64 7
  %i.co = getelementptr i8, ptr %i.cg, i64 10
  %i.cp = getelementptr i8, ptr %i.ch, i64 13
  %i.cq = getelementptr i8, ptr %i.ci, i64 16
  %i.cr = getelementptr i8, ptr %i.cj, i64 19
  %i.cs = getelementptr i8, ptr %i.ck, i64 22
  %i.ct = load i16, ptr %i.cl, align 1
  %i.cu = load i16, ptr %i.cm, align 4
  %i.cv = load i16, ptr %i.cn, align 1
  %i.cw = load i16, ptr %i.co, align 2
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 8
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 1
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 2
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 3
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 4
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 5
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 6
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 7
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index172
  store <8 x i16> %i.di, ptr %i.dj, align 2
  %index.next173 = add nuw i64 %index172, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next173, %n.vec170
  br i1 %i.dk, label %middle.block174, label %vector.body171, !llvm.loop !865

middle.block174:                                  ; preds = %vector.body171
  %cmp.n175 = icmp eq i64 %i.ar, %n.vec170
  br i1 %cmp.n175, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader190

.lr.ph.i45.i.i.preheader190:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block174
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec170, %middle.block174 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader190, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.dq, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader190 ] ; 3 uses
  %i.dl = mul i64 %.012.i.i.i, 3
  %i.dm = getelementptr i8, ptr %i.d, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.do, ptr %i.dp, align 2
  %i.dq = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.dq, %i.ar
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !866

bb.n:                                             ; preds = %bb.k
  %.not.i47.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check178 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check178, label %.lr.ph.i48.i.i.preheader192, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec180 = and i64 %i.ar, -8                   ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next185, %vector.body181 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index182 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load183 = load <4 x i32>, ptr %i.dr, align 16
  %wide.load184 = load <4 x i32>, ptr %i.ds, align 16
  %i.dt = lshr <4 x i32> %wide.load183, splat (i32 16)
  %i.du = lshr <4 x i32> %wide.load184, splat (i32 16)
  %i.dv = trunc nuw <4 x i32> %i.dt to <4 x i16>
  %i.dw = trunc nuw <4 x i32> %i.du to <4 x i16>
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index182 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store <4 x i16> %i.dv, ptr %i.dx, align 2
  store <4 x i16> %i.dw, ptr %i.dy, align 2
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.dz, label %middle.block186, label %vector.body181, !llvm.loop !867

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %i.ar, %n.vec180
  br i1 %cmp.n187, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader192

.lr.ph.i48.i.i.preheader192:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block186
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec180, %middle.block186 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader192, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ef, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader192 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  %i.ef = add nuw i64 %.08.i.i.i, 1               ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ef, %i.ar
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !868

bb.o:                                             ; preds = %bb.k
  br i1 %i.ai, label %bb.p, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %.not64.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph63.i.i

bb.p:                                             ; preds = %bb.o
  %i.eg = shl i64 %i.ar, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03860.i, i8 0, i64 %i.eg, i1 false)
  br label %.loopexit.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.162.i.i = phi i64 [ %i.fx, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14161.i.i = phi ptr [ %i.fw, %.epilog-lcssa ], [ %.03860.i, %.preheader.i.i ] ; 2 uses
  %.04260.i.i = phi ptr [ %i.ft, %.epilog-lcssa ], [ %i.d, %.preheader.i.i ] ; 6 uses
  br i1 %i.am, label %.epil.preheader, label %.lr.ph63.i.i.new

.lr.ph63.i.i.new:                                 ; preds = %.lr.ph63.i.i, %.lr.ph63.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ] ; 5 uses
  %.03758.i.i = phi i32 [ %i.fl, %.lr.ph63.i.i.new ], [ %i.ak, %.lr.ph63.i.i ] ; 5 uses
  %.03857.i.i = phi i64 [ %i.fk, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %niter212 = phi i64 [ %niter212.next.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i64
  %i.ek = zext nneg i32 %.03758.i.i to i64
  %i.el = shl i64 %i.ej, %i.ek
  %i.em = or i64 %i.el, %.03857.i.i
  %i.en = add i32 %.03758.i.i, 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i64
  %i.es = zext nneg i32 %i.en to i64
  %i.et = shl i64 %i.er, %i.es
  %i.eu = or i64 %i.et, %i.em
  %i.ev = add i32 %.03758.i.i, 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i64
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = shl i64 %i.ez, %i.fa
  %i.fc = or i64 %i.fb, %i.eu
  %i.fd = add i32 %.03758.i.i, 24
  %i.fe = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = zext i8 %i.fg to i64
  %i.fi = zext nneg i32 %i.fd to i64
  %i.fj = shl i64 %i.fh, %i.fi
  %i.fk = or i64 %i.fj, %i.fc                     ; 3 uses
  %i.fl = add i32 %.03758.i.i, 32                 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter212.next.3 = add i64 %niter212, 4         ; 2 uses
  %niter212.ncmp.3 = icmp eq i64 %niter212.next.3, %unroll_iter211
  br i1 %niter212.ncmp.3, label %.unr-lcssa, label %.lr.ph63.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph63.i.i.new
  br i1 %lcmp.mod208.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph63.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03758.i.i.epil.init = phi i32 [ %i.ak, %.lr.ph63.i.i ], [ %i.fl, %.unr-lcssa ]
  %.03857.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %i.fk, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.q ] ; 2 uses
  %.03758.i.i.epil = phi i32 [ %.03758.i.i.epil.init, %.epil.preheader ], [ %i.fs, %bb.q ] ; 2 uses
  %.03857.i.i.epil = phi i64 [ %.03857.i.i.epil.init, %.epil.preheader ], [ %i.fr, %bb.q ]
  %epil.iter207 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter207.next, %bb.q ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.epil
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i64
  %i.fp = zext nneg i32 %.03758.i.i.epil to i64
  %i.fq = shl i64 %i.fo, %i.fp
  %i.fr = or i64 %i.fq, %.03857.i.i.epil          ; 2 uses
  %i.fs = add i32 %.03758.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter207.next = add i64 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i64 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %.epilog-lcssa, label %bb.q, !llvm.loop !869

.epilog-lcssa:                                    ; preds = %bb.q, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fk, %.unr-lcssa ], [ %i.fr, %bb.q ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %i.ah
  %i.fu = lshr i64 %.lcssa, 48
  %i.fv = trunc nuw i64 %i.fu to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %.14161.i.i, i64 2
  store i16 %i.fv, ptr %.14161.i.i, align 2
  %i.fx = add nuw i64 %.162.i.i, 1                ; 2 uses
  %exitcond72.not.i.i = icmp eq i64 %i.fx, %i.ar
  br i1 %exitcond72.not.i.i, label %.loopexit.i, label %.lr.ph63.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i48.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block186, %middle.block174, %middle.block159, %vec.epilog.middle.block, %bb.p, %.preheader.i.i, %bb.n, %bb.m, %bb.l, %.lr.ph.i.preheader.i, %.preheader51.i.i
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %i.ar
  %i.fz = sub i64 %.04059.i, %i.an                ; 2 uses
  %i.ga = add i64 %i.an, %.03761.i                ; 2 uses
  %.not48.i = icmp eq i64 %i.fz, 0
  br i1 %.not48.i, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.i

drwav_read_pcm_frames_s16__pcm.exit:              ; preds = %bb.i, %bb.j, %.loopexit.i, %.split.i, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.h
  %.042.i = phi i64 [ %i.n, %.split.i ], [ 0, %bb.h ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03761.i, %bb.i ], [ %i.ga, %.loopexit.i ], [ %.03761.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.ax

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = zext i16 %i.gc to i32                   ; 2 uses
  %i.ge = and i32 %i.gd, 7
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32
  %i.gj = mul nuw nsw i32 %i.gi, %i.gd
  %i.gk = lshr exact i32 %i.gj, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i40

bb.t:                                             ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gm = load i16, ptr %i.gl, align 4
  %i.gn = zext i16 %i.gm to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i40

drwav_get_bytes_per_pcm_frame.exit.i40:           ; preds = %bb.s, %bb.t
  %.0.i.i38 = phi i32 [ %i.gk, %bb.s ], [ %i.gn, %bb.t ] ; 5 uses
  %.old.i41 = icmp eq i32 %.0.i.i38, 0
  br i1 %.old.i41, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.u

bb.u:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i40
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gp = load i16, ptr %i.go, align 8
  %i.gq = zext i16 %i.gp to i32                   ; 3 uses
  %i.gr = udiv i32 %.0.i.i38, %i.gq
  %i.gs = urem i32 %.0.i.i38, %i.gq
  %.fr.i = freeze i32 %i.gr                       ; 2 uses
  %i.gt = icmp samesign uge i32 %.0.i.i38, %i.gq
  %.not.i42 = icmp eq i32 %i.gs, 0
  %or.cond219 = and i1 %i.gt, %.not.i42
  br i1 %or.cond219, label %.preheader.i43, label %drwav_read_pcm_frames_s16__ieee.exit

.preheader.i43:                                   ; preds = %bb.u
  %i.gu = udiv i32 4096, %.0.i.i38
  %i.gv = zext nneg i32 %i.gu to i64              ; 3 uses
  %i.gw = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us54.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i43, %.loopexit.us.i
  %.03353.us.i = phi i64 [ %i.ie, %.loopexit.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us.i = phi ptr [ %i.ic, %.loopexit.us.i ], [ %2, %.preheader.i43 ] ; 3 uses
  %.03651.us.i = phi i64 [ %i.id, %.loopexit.us.i ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..us.i = call i64 @llvm.umin.i64(i64 %.03651.us.i, i64 %i.gv)
  %i.gx = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.v

bb.v:                                             ; preds = %.preheader.split.us.i
  %i.gz = load i16, ptr %i.go, align 8
  %i.ha = zext i16 %i.gz to i64
  %i.hb = mul i64 %i.gx, %i.ha                    ; 7 uses
  %i.hc = mul i64 %i.hb, %i.gw
  %i.hd = icmp ugt i64 %i.hc, 4096
  br i1 %i.hd, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.us.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.hb, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader194, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.hb, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x float>, ptr %i.he, align 16 ; 3 uses
  %i.hf = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.hg = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.hh = select <4 x i1> %i.hg, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.hi = fadd <4 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = fmul <4 x float> %i.hi, splat (float 3.276750e+04)
  %i.hk = fptosi <4 x float> %i.hj to <4 x i32>
  %i.hl = trunc <4 x i32> %i.hk to <4 x i16>
  %i.hm = xor <4 x i16> %i.hl, splat (i16 -32768)
  %predphi = select <4 x i1> %i.hf, <4 x i16> splat (i16 -32768), <4 x i16> %i.hm
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %index
  store <4 x i16> %predphi, ptr %i.hn, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader194

.lr.ph.i.i.us.i.preheader194:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.014.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader194, %bb.y
  %.014.i.i.us.i = phi i64 [ %i.ib, %bb.y ], [ %.014.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader194 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.014.i.i.us.i
  %i.hq = load float, ptr %i.hp, align 4          ; 3 uses
  %i.hr = fcmp olt float %i.hq, -1.000000e+00
  br i1 %i.hr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.us.i
  %i.hs = fcmp ogt float %i.hq, 1.000000e+00
  %i.ht = select i1 %i.hs, float 1.000000e+00, float %i.hq
  %i.hu = fadd float %i.ht, 1.000000e+00
  %i.hv = fmul float %i.hu, 3.276750e+04
  %i.hw = fptosi float %i.hv to i32
  %i.hx = trunc i32 %i.hw to i16
  %i.hy = xor i16 %i.hx, -32768
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.us.i
  %i.hz = phi i16 [ %i.hy, %bb.x ], [ -32768, %.lr.ph.i.i.us.i ]
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %.014.i.i.us.i
  store i16 %i.hz, ptr %i.ia, align 2
  %i.ib = add nuw i64 %.014.i.i.us.i, 1           ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.ib, %i.hb
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !871

.loopexit.us.i:                                   ; preds = %bb.y, %middle.block, %bb.w
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %i.hb
  %i.id = sub i64 %.03651.us.i, %i.gx             ; 2 uses
  %i.ie = add i64 %i.gx, %.03353.us.i             ; 2 uses
  %.not44.us.i = icmp eq i64 %i.id, 0
  br i1 %.not44.us.i, label %drwav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us.i

.preheader.split.us54.i:                          ; preds = %.preheader.i43, %.loopexit50.us.i
  %.03353.us55.i = phi i64 [ %i.jb, %.loopexit50.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us56.i = phi ptr [ %i.iz, %.loopexit50.us.i ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.us57.i = phi i64 [ %i.ja, %.loopexit50.us.i ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..us58.i = call i64 @llvm.umin.i64(i64 %.03651.us57.i, i64 %i.gv)
  %i.if = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us58.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us54.i
  %i.ih = load i16, ptr %i.go, align 8
  %i.ii = zext i16 %i.ih to i64
  %i.ij = mul i64 %i.if, %i.ii                    ; 4 uses
  %i.ik = mul i64 %i.ij, %i.gw
  %i.il = icmp ugt i64 %i.ik, 4096
  br i1 %i.il, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i9.i.us.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i9.i.us.i, label %.loopexit50.us.i, label %.lr.ph.i10.i.us.i

.lr.ph.i10.i.us.i:                                ; preds = %bb.aa, %bb.ac
  %.014.i11.i.us.i = phi i64 [ %i.iy, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.014.i11.i.us.i
  %i.in = load double, ptr %i.im, align 8         ; 3 uses
  %i.io = fcmp olt double %i.in, -1.000000e+00
  br i1 %i.io, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i10.i.us.i
  %i.ip = fcmp ogt double %i.in, 1.000000e+00
  %i.iq = select i1 %i.ip, double 1.000000e+00, double %i.in
  %i.ir = fadd double %i.iq, 1.000000e+00
  %i.is = fmul double %i.ir, 3.276750e+04
  %i.it = fptosi double %i.is to i32
  %i.iu = trunc i32 %i.it to i16
  %i.iv = xor i16 %i.iu, -32768
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i10.i.us.i
  %i.iw = phi i16 [ %i.iv, %bb.ab ], [ -32768, %.lr.ph.i10.i.us.i ]
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %.03452.us56.i, i64 %.014.i11.i.us.i
  store i16 %i.iw, ptr %i.ix, align 2
  %i.iy = add nuw i64 %.014.i11.i.us.i, 1         ; 2 uses
  %exitcond.not.i12.i.us.i = icmp eq i64 %i.iy, %i.ij
  br i1 %exitcond.not.i12.i.us.i, label %.loopexit50.us.i, label %.lr.ph.i10.i.us.i

.loopexit50.us.i:                                 ; preds = %bb.ac, %bb.aa
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.03452.us56.i, i64 %i.ij
  %i.ja = sub i64 %.03651.us57.i, %i.if           ; 2 uses
  %i.jb = add i64 %i.if, %.03353.us55.i           ; 2 uses
  %.not44.us59.i = icmp eq i64 %i.ja, 0
  br i1 %.not44.us59.i, label %drwav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us54.i

.preheader.split.i:                               ; preds = %.preheader.i43, %bb.ae
  %.03353.i = phi i64 [ %i.jm, %bb.ae ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.i = phi ptr [ %i.jk, %bb.ae ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.i = phi i64 [ %i.jl, %bb.ae ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..i = call i64 @llvm.umin.i64(i64 %.03651.i, i64 %i.gv)
  %i.jc = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..i, ptr noundef nonnull %i.c) ; 4 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.ad

bb.ad:                                            ; preds = %.preheader.split.i
  %i.je = load i16, ptr %i.go, align 8
  %i.jf = zext i16 %i.je to i64
  %i.jg = mul i64 %i.jc, %i.jf                    ; 3 uses
  %i.jh = mul i64 %i.jg, %i.gw
  %i.ji = icmp ugt i64 %i.jh, 4096
  br i1 %i.ji, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jj = shl i64 %i.jg, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03452.i, i8 0, i64 %i.jj, i1 false)
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %.03452.i, i64 %i.jg
  %i.jl = sub i64 %.03651.i, %i.jc                ; 2 uses
  %i.jm = add i64 %i.jc, %.03353.i                ; 2 uses
  %.not44.i = icmp eq i64 %i.jl, 0
  br i1 %.not44.i, label %drwav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.i

drwav_read_pcm_frames_s16__ieee.exit:             ; preds = %.preheader.split.us54.i, %bb.z, %.loopexit50.us.i, %.preheader.split.us.i, %bb.v, %.loopexit.us.i, %.preheader.split.i, %bb.ad, %bb.ae, %drwav_get_bytes_per_pcm_frame.exit.i40, %bb.u
  %.038.i = phi i64 [ 0, %bb.u ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i40 ], [ %.03353.us.i, %bb.v ], [ %i.jm, %bb.ae ], [ %.03353.i, %bb.ad ], [ %.03353.i, %.preheader.split.i ], [ %i.ie, %.loopexit.us.i ], [ %.03353.us.i, %.preheader.split.us.i ], [ %i.jb, %.loopexit50.us.i ], [ %.03353.us55.i, %.preheader.split.us54.i ], [ %.03353.us55.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  br label %bb.ax

bb.af:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.jo = load i16, ptr %i.jn, align 2
  %i.jp = zext i16 %i.jo to i32                   ; 2 uses
  %i.jq = and i32 %i.jp, 7
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = zext i16 %i.jt to i32                   ; 2 uses
  %i.jv = mul nuw nsw i32 %i.ju, %i.jp
  %i.jw = lshr exact i32 %i.jv, 3
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jy = load i16, ptr %i.jx, align 4
  %i.jz = zext i16 %i.jy to i32
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %0, i64 78
  %.pre102 = load i16, ptr %.phi.trans.insert101, align 2
  %.pre103 = zext i16 %.pre102 to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.pre-phi = phi i32 [ %i.ju, %bb.ag ], [ %.pre103, %bb.ah ]
  %.0.i.i46 = phi i32 [ %i.jw, %bb.ag ], [ %i.jz, %bb.ah ] ; 4 uses
  %.not.i.i53 = icmp ne i32 %.0.i.i46, %.pre-phi
  %i.ka = icmp eq i32 %.0.i.i46, 0
  %or.cond.i54 = or i1 %i.ka, %.not.i.i53
  br i1 %or.cond.i54, label %drwav_read_pcm_frames_s16__alaw.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 8            ; 3 uses
  %i.kd = zext i16 %i.kc to i32
  %.lhs.trunc = trunc nuw i32 %.0.i.i46 to i16    ; 3 uses
  %i.ke = udiv i16 %.lhs.trunc, %i.kc
  %i.kf = urem i16 %.lhs.trunc, %i.kc
  %i.kg = icmp samesign uge i32 %.0.i.i46, %i.kd
  %.not.i50 = icmp eq i16 %i.kf, 0
  %or.cond220 = select i1 %i.kg, i1 %.not.i50, i1 false
  br i1 %or.cond220, label %.preheader.i51, label %drwav_read_pcm_frames_s16__alaw.exit

.preheader.i51:                                   ; preds = %bb.aj
  %i.kh = udiv i16 4096, %.lhs.trunc
  %i.ki = zext nneg i16 %i.kh to i64
  %i.kj = zext i16 %i.ke to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i52, %.preheader.i51
  %.03252.i = phi i64 [ 0, %.preheader.i51 ], [ %i.md, %.loopexit.i52 ] ; 3 uses
  %.03351.i = phi ptr [ %2, %.preheader.i51 ], [ %i.mb, %.loopexit.i52 ] ; 6 uses
  %.03550.i = phi i64 [ %1, %.preheader.i51 ], [ %i.mc, %.loopexit.i52 ] ; 2 uses
  %.035..i = call i64 @llvm.umin.i64(i64 %.03550.i, i64 %i.ki)
  %i.kk = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.035..i, ptr noundef nonnull %i.b) ; 4 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %drwav_read_pcm_frames_s16__alaw.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.km = load i16, ptr %i.kb, align 8
  %i.kn = zext i16 %i.km to i64
  %i.ko = mul i64 %i.kk, %i.kn                    ; 6 uses
  %i.kp = mul i64 %i.ko, %i.kj
  %i.kq = icmp ugt i64 %i.kp, 4096
  br i1 %i.kq, label %drwav_read_pcm_frames_s16__alaw.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i44.i = icmp eq i64 %i.ko, 0
  br i1 %.not.i44.i, label %.loopexit.i52, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.am
  %xtraiter200 = and i64 %i.ko, 3                 ; 3 uses
  %i.kr = icmp ult i64 %i.ko, 4
  br i1 %i.kr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter204 = and i64 %i.ko, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.06.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.lt, %.lr.ph.i.i ] ; 6 uses
  %niter205 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter205.next.3, %.lr.ph.i.i ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 %.06.i.i
  %i.kt = load i8, ptr %i.ks, align 4
  %i.ku = zext i8 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.03351.i, i64 %.06.i.i
  store i16 %i.kw, ptr %i.kx, align 2
  %i.ky = or disjoint i64 %.06.i.i, 1             ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.03351.i, i64 %i.ky
  store i16 %i.ld, ptr %i.le, align 2
  %i.lf = or disjoint i64 %.06.i.i, 2             ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 2
  %i.li = zext i8 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.li
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.03351.i, i64 %i.lf
  store i16 %i.lk, ptr %i.ll, align 2
  %i.lm = or disjoint i64 %.06.i.i, 3             ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.03351.i, i64 %i.lm
  store i16 %i.lr, ptr %i.ls, align 2
  %i.lt = add nuw i64 %.06.i.i, 4                 ; 2 uses
  %niter205.next.3 = add i64 %niter205, 4         ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %.loopexit.i52.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i52.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod202.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202.not, label %.loopexit.i52, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i52.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.06.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.lt, %.loopexit.i52.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter200, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.06.i.i.epil = phi i64 [ %i.ma, %.lr.ph.i.i.epil ], [ %.06.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %epil.iter201 = phi i64 [ %epil.iter201.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 %.06.i.i.epil
  %i.lv = load i8, ptr %i.lu, align 1
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.03351.i, i64 %.06.i.i.epil
  store i16 %i.ly, ptr %i.lz, align 2
  %i.ma = add nuw i64 %.06.i.i.epil, 1
  %epil.iter201.next = add i64 %epil.iter201, 1   ; 2 uses
  %epil.iter201.cmp.not = icmp eq i64 %epil.iter201.next, %xtraiter200
  br i1 %epil.iter201.cmp.not, label %.loopexit.i52, label %.lr.ph.i.i.epil, !llvm.loop !872

.loopexit.i52:                                    ; preds = %.loopexit.i52.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.am
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.03351.i, i64 %i.ko
  %i.mc = sub i64 %.03550.i, %i.kk                ; 2 uses
  %i.md = add i64 %i.kk, %.03252.i                ; 2 uses
  %.not43.i = icmp eq i64 %i.mc, 0
  br i1 %.not43.i, label %drwav_read_pcm_frames_s16__alaw.exit, label %bb.ak

drwav_read_pcm_frames_s16__alaw.exit:             ; preds = %bb.ak, %bb.al, %.loopexit.i52, %bb.ai, %bb.aj
  %.037.i = phi i64 [ 0, %bb.aj ], [ 0, %bb.ai ], [ %.03252.i, %bb.ak ], [ %i.md, %.loopexit.i52 ], [ %.03252.i, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %bb.ax

bb.an:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.mf = load i16, ptr %i.me, align 2
  %i.mg = zext i16 %i.mf to i32                   ; 2 uses
  %i.mh = and i32 %i.mg, 7
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.mk = load i16, ptr %i.mj, align 2
  %i.ml = zext i16 %i.mk to i32                   ; 2 uses
  %i.mm = mul nuw nsw i32 %i.ml, %i.mg
  %i.mn = lshr exact i32 %i.mm, 3
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mp = load i16, ptr %i.mo, align 4
  %i.mq = zext i16 %i.mp to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 78
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre104 = zext i16 %.pre to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.pre-phi105 = phi i32 [ %i.ml, %bb.ao ], [ %.pre104, %bb.ap ]
  %.0.i.i55 = phi i32 [ %i.mn, %bb.ao ], [ %i.mq, %bb.ap ] ; 4 uses
  %.not.i.i72 = icmp ne i32 %.0.i.i55, %.pre-phi105
  %i.mr = icmp eq i32 %.0.i.i55, 0
  %or.cond.i73 = or i1 %i.mr, %.not.i.i72
  br i1 %or.cond.i73, label %drwav_read_pcm_frames_s16__mulaw.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.mt = load i16, ptr %i.ms, align 8            ; 3 uses
  %i.mu = zext i16 %i.mt to i32
  %.lhs.trunc79 = trunc nuw i32 %.0.i.i55 to i16  ; 3 uses
  %i.mv = udiv i16 %.lhs.trunc79, %i.mt
  %i.mw = urem i16 %.lhs.trunc79, %i.mt
  %i.mx = icmp samesign uge i32 %.0.i.i55, %i.mu
  %.not.i59 = icmp eq i16 %i.mw, 0
  %or.cond221 = select i1 %i.mx, i1 %.not.i59, i1 false
  br i1 %or.cond221, label %.preheader.i61, label %drwav_read_pcm_frames_s16__mulaw.exit

.preheader.i61:                                   ; preds = %bb.ar
  %i.my = udiv i16 4096, %.lhs.trunc79
  %i.mz = zext nneg i16 %i.my to i64
  %i.na = zext i16 %i.mv to i64
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i70, %.preheader.i61
  %.03252.i62 = phi i64 [ 0, %.preheader.i61 ], [ %i.ou, %.loopexit.i70 ] ; 3 uses
  %.03351.i63 = phi ptr [ %2, %.preheader.i61 ], [ %i.os, %.loopexit.i70 ] ; 6 uses
  %.03550.i64 = phi i64 [ %1, %.preheader.i61 ], [ %i.ot, %.loopexit.i70 ] ; 2 uses
  %.035..i65 = call i64 @llvm.umin.i64(i64 %.03550.i64, i64 %i.mz)
  %i.nb = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.035..i65, ptr noundef nonnull %i.a) ; 4 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %drwav_read_pcm_frames_s16__mulaw.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nd = load i16, ptr %i.ms, align 8
  %i.ne = zext i16 %i.nd to i64
  %i.nf = mul i64 %i.nb, %i.ne                    ; 6 uses
  %i.ng = mul i64 %i.nf, %i.na
  %i.nh = icmp ugt i64 %i.ng, 4096
  br i1 %i.nh, label %drwav_read_pcm_frames_s16__mulaw.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i44.i66 = icmp eq i64 %i.nf, 0
  br i1 %.not.i44.i66, label %.loopexit.i70, label %.lr.ph.i.i67.preheader

.lr.ph.i.i67.preheader:                           ; preds = %bb.au
  %xtraiter = and i64 %i.nf, 3                    ; 3 uses
  %i.ni = icmp ult i64 %i.nf, 4
  br i1 %i.ni, label %.lr.ph.i.i67.epil.preheader, label %.lr.ph.i.i67.preheader.new

.lr.ph.i.i67.preheader.new:                       ; preds = %.lr.ph.i.i67.preheader
  %unroll_iter = and i64 %i.nf, -4
  br label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67, %.lr.ph.i.i67.preheader.new
  %.06.i.i68 = phi i64 [ 0, %.lr.ph.i.i67.preheader.new ], [ %i.ok, %.lr.ph.i.i67 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i67.preheader.new ], [ %niter.next.3, %.lr.ph.i.i67 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i68
  %i.nk = load i8, ptr %i.nj, align 4
  %i.nl = zext i8 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.nl
  %i.nn = load i16, ptr %i.nm, align 2
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %.06.i.i68
  store i16 %i.nn, ptr %i.no, align 2
  %i.np = or disjoint i64 %.06.i.i68, 1           ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.np
  store i16 %i.nu, ptr %i.nv, align 2
  %i.nw = or disjoint i64 %.06.i.i68, 2           ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 2
  %i.nz = zext i8 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.nz
  %i.ob = load i16, ptr %i.oa, align 2
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nw
  store i16 %i.ob, ptr %i.oc, align 2
  %i.od = or disjoint i64 %.06.i.i68, 3           ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = zext i8 %i.of to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.og
  %i.oi = load i16, ptr %i.oh, align 2
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.od
  store i16 %i.oi, ptr %i.oj, align 2
  %i.ok = add nuw i64 %.06.i.i68, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i70.loopexit.unr-lcssa, label %.lr.ph.i.i67

.loopexit.i70.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i67
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i70, label %.lr.ph.i.i67.epil.preheader

.lr.ph.i.i67.epil.preheader:                      ; preds = %.loopexit.i70.loopexit.unr-lcssa, %.lr.ph.i.i67.preheader
  %.06.i.i68.epil.init = phi i64 [ 0, %.lr.ph.i.i67.preheader ], [ %i.ok, %.loopexit.i70.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i.i67.epil

.lr.ph.i.i67.epil:                                ; preds = %.lr.ph.i.i67.epil, %.lr.ph.i.i67.epil.preheader
  %.06.i.i68.epil = phi i64 [ %i.or, %.lr.ph.i.i67.epil ], [ %.06.i.i68.epil.init, %.lr.ph.i.i67.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i67.epil ], [ 0, %.lr.ph.i.i67.epil.preheader ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i68.epil
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = zext i8 %i.om to i64
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.on
  %i.op = load i16, ptr %i.oo, align 2
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %.06.i.i68.epil
  store i16 %i.op, ptr %i.oq, align 2
  %i.or = add nuw i64 %.06.i.i68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i70, label %.lr.ph.i.i67.epil, !llvm.loop !873

.loopexit.i70:                                    ; preds = %.loopexit.i70.loopexit.unr-lcssa, %.lr.ph.i.i67.epil, %bb.au
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nf
  %i.ot = sub i64 %.03550.i64, %i.nb              ; 2 uses
  %i.ou = add i64 %i.nb, %.03252.i62              ; 2 uses
  %.not43.i71 = icmp eq i64 %i.ot, 0
  br i1 %.not43.i71, label %drwav_read_pcm_frames_s16__mulaw.exit, label %bb.as

drwav_read_pcm_frames_s16__mulaw.exit:            ; preds = %bb.as, %bb.at, %.loopexit.i70, %bb.aq, %bb.ar
  %.037.i60 = phi i64 [ 0, %bb.ar ], [ 0, %bb.aq ], [ %.03252.i62, %bb.as ], [ %i.ou, %.loopexit.i70 ], [ %.03252.i62, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.ax

bb.av:                                            ; preds = %bb.d
  %i.ov = tail call fastcc i64 @drwav_read_pcm_frames_s16__msadpcm(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.d
  %i.ow = tail call fastcc i64 @drwav_read_pcm_frames_s16__ima(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.d, %bb.a, %bb.aw, %bb.av, %drwav_read_pcm_frames_s16__mulaw.exit, %drwav_read_pcm_frames_s16__alaw.exit, %drwav_read_pcm_frames_s16__ieee.exit, %drwav_read_pcm_frames_s16__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.c ], [ %.042.i, %drwav_read_pcm_frames_s16__pcm.exit ], [ %.038.i, %drwav_read_pcm_frames_s16__ieee.exit ], [ %.037.i, %drwav_read_pcm_frames_s16__alaw.exit ], [ %.037.i60, %drwav_read_pcm_frames_s16__mulaw.exit ], [ %i.ov, %bb.av ], [ %i.ow, %bb.aw ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s16le(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @drwav_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s16be(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @drwav_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %drwav__bswap_samples_s16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %i.a, %i.d                       ; 9 uses
  %.not8 = icmp eq i64 %i.e, 0
  br i1 %.not8, label %drwav__bswap_samples_s16.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 12
  %n.vec = and i64 %i.e, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.g, align 2
  %wide.load11 = load <8 x i16>, ptr %i.h, align 2
  %i.i = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.j = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load11)
  store <8 x i16> %i.i, ptr %i.g, align 2
  store <8 x i16> %i.j, ptr %i.h, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !874

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %drwav__bswap_samples_s16.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.e, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13 ; 2 uses
  %wide.load14 = load <4 x i16>, ptr %i.l, align 2
  %i.m = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load14)
  store <4 x i16> %i.m, ptr %i.l, align 2
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !875

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.e, %n.vec12
  br i1 %cmp.n16, label %drwav__bswap_samples_s16.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i7.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i7 = phi i64 [ %i.r, %.lr.ph ], [ %.0.i7.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0.i7 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.p)
  store i16 %i.q, ptr %i.o, align 2
  %i.r = add nuw i64 %.0.i7, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.e
  br i1 %exitcond.not, label %drwav__bswap_samples_s16.exit, label %.lr.ph, !llvm.loop !876

drwav__bswap_samples_s16.exit:                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_u8_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.a = shl i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep10 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep10
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %2, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load = load <8 x i8>, ptr %i.c, align 1, !alias.scope !884
  %wide.load12 = load <8 x i8>, ptr %i.d, align 1, !alias.scope !884
  %i.e = zext <8 x i8> %wide.load to <8 x i16>
  %i.f = zext <8 x i8> %wide.load12 to <8 x i16>
  %i.g = shl nuw <8 x i16> %i.e, splat (i16 8)
  %i.h = shl nuw <8 x i16> %i.f, splat (i16 8)
  %i.i = xor <8 x i16> %i.g, splat (i16 -32768)
  %i.j = xor <8 x i16> %i.h, splat (i16 -32768)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <8 x i16> %i.i, ptr %i.k, align 2, !alias.scope !885, !noalias !884
  store <8 x i16> %i.j, ptr %i.l, align 2, !alias.scope !885, !noalias !884
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !880

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.n, align 1, !alias.scope !884
  %i.o = zext <4 x i8> %wide.load15 to <4 x i16>
  %i.p = shl nuw <4 x i16> %i.o, splat (i16 8)
  %i.q = xor <4 x i16> %i.p, splat (i16 -32768)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index14
  store <4 x i16> %i.q, ptr %i.r, align 2, !alias.scope !885, !noalias !884
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !881

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %2, %n.vec13
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader
end_hunk_4
begin_hunk_5_@drwav_mulaw_to_s16:bb.a
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.06.epil
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.epil
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !910

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i16, ptr %i.j, align 4
  switch i16 %i.k, label %bb.av [
    i16 1, label %bb.e
    i16 2, label %bb.s
    i16 17, label %bb.s
    i16 3, label %bb.v
    i16 6, label %bb.af
    i16 7, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = and i32 %i.n, 7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, %i.n
  %i.u = lshr exact i32 %i.t, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i16, ptr %i.v, align 4
  %i.x = zext i16 %i.w to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.u, %bb.f ], [ %i.x, %bb.g ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.h

bb.h:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = udiv i32 %.0.i.i, %i.aa                 ; 5 uses
  %i.ac = urem i32 %.0.i.i, %i.aa
  %i.ad = icmp samesign uge i32 %.0.i.i, %i.aa
  %.not.i = icmp eq i32 %i.ac, 0
  %or.cond278 = and i1 %i.ad, %.not.i
  br i1 %or.cond278, label %.preheader.i, label %drwav_read_pcm_frames_f32__pcm.exit

.preheader.i:                                     ; preds = %bb.h
  %i.ae = udiv i32 4096, %.0.i.i
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = zext nneg i32 %i.ab to i64              ; 4 uses
  %i.ah = icmp samesign ugt i32 %i.ab, 8
  %i.ai = shl nuw nsw i32 %i.ab, 3
  %i.aj = sub nuw nsw i32 64, %i.ai               ; 2 uses
  %xtraiter264 = and i64 %i.ag, 3                 ; 3 uses
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = icmp ult i32 %i.ak, 3
  %unroll_iter269 = and i64 %i.ag, 12
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03053.i = phi i64 [ 0, %.preheader.i ], [ %i.gw, %.loopexit.i ] ; 3 uses
  %.03152.i = phi ptr [ %2, %.preheader.i ], [ %i.gu, %.loopexit.i ] ; 15 uses
  %.03351.i = phi i64 [ %1, %.preheader.i ], [ %i.gv, %.loopexit.i ] ; 2 uses
  %.033..i = call i64 @llvm.umin.i64(i64 %.03351.i, i64 %i.af)
  %i.am = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i16, ptr %i.y, align 8
  %i.ap = zext i16 %i.ao to i64
  %i.aq = mul i64 %i.am, %i.ap                    ; 25 uses
  %i.ar = mul i64 %i.aq, %i.ag
  %i.as = icmp ugt i64 %i.ar, 4096
  br i1 %i.as, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ab, label %bb.p [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not50.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not50.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %min.iters.check190 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader242, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.aq, -8                   ; 4 uses
  %i.at = shl i64 %n.vec192, 2
  %i.au = getelementptr i8, ptr %.03152.i, i64 %i.at
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.av = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03152.i, i64 %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.aw, align 8
  %wide.load197 = load <4 x i8>, ptr %i.ax, align 4
  %i.ay = uitofp <4 x i8> %wide.load196 to <4 x float>
  %i.az = uitofp <4 x i8> %wide.load197 to <4 x float>
  %i.ba = fmul nnan <4 x float> %i.ay, splat (float f0x3C008081)
  %i.bb = fmul nnan <4 x float> %i.az, splat (float f0x3C008081)
  %i.bc = fadd <4 x float> %i.ba, splat (float -1.000000e+00)
  %i.bd = fadd <4 x float> %i.bb, splat (float -1.000000e+00)
  %i.be = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x float> %i.bc, ptr %next.gep195, align 4
  store <4 x float> %i.bd, ptr %i.be, align 4
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bf, label %middle.block199, label %vector.body193, !llvm.loop !911

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.aq, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader242

.lr.ph.i.i.i.preheader242:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.015.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i.i.i.preheader ], [ %i.au, %middle.block199 ]
  %.01114.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader242, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %.01114.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %.01114.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01114.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fmul nnan float %i.bi, f0x3C008081
  %i.bk = fadd float %i.bj, -1.000000e+00
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  store float %i.bk, ptr %.015.i.i.i, align 4
  %i.bm = add nuw i64 %.01114.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !912

bb.m:                                             ; preds = %bb.k
  %.not49.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not49.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader

.lr.ph.i40.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check204 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check204, label %.lr.ph.i40.i.i.preheader244, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i40.i.i.preheader
  %n.vec206 = and i64 %i.aq, -8                   ; 4 uses
  %i.bn = shl i64 %n.vec206, 2
  %i.bo = getelementptr i8, ptr %.03152.i, i64 %i.bn
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.bp = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03152.i, i64 %i.bp ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.bq, align 16
  %wide.load211 = load <4 x i16>, ptr %i.br, align 8
  %i.bs = sitofp <4 x i16> %wide.load210 to <4 x float>
  %i.bt = sitofp <4 x i16> %wide.load211 to <4 x float>
  %i.bu = fmul nnan <4 x float> %i.bs, splat (float f0x38000000)
  %i.bv = fmul nnan <4 x float> %i.bt, splat (float f0x38000000)
  %i.bw = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x float> %i.bu, ptr %next.gep209, align 4
  store <4 x float> %i.bv, ptr %i.bw, align 4
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.bx, label %middle.block213, label %vector.body207, !llvm.loop !913

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.aq, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader244

.lr.ph.i40.i.i.preheader244:                      ; preds = %.lr.ph.i40.i.i.preheader, %middle.block213
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i40.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i40.i.i.preheader ], [ %i.bo, %middle.block213 ]
  br label %.lr.ph.i40.i.i

.lr.ph.i40.i.i:                                   ; preds = %.lr.ph.i40.i.i.preheader244, %.lr.ph.i40.i.i
  %.012.i.i.i = phi i64 [ %i.cd, %.lr.ph.i40.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i.i.i
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sitofp i16 %i.bz to float
  %i.cb = fmul nnan float %i.ca, f0x38000000
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store float %i.cb, ptr %.0811.i.i.i, align 4
  %i.cd = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i41.i.i = icmp eq i64 %i.cd, %i.aq
  br i1 %exitcond.not.i41.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i, !llvm.loop !914

bb.n:                                             ; preds = %bb.k
  %.not48.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader

.lr.ph.i42.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check218 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check218, label %.lr.ph.i42.i.i.preheader246, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i42.i.i.preheader
  %n.vec220 = and i64 %i.aq, -4                   ; 4 uses
  %i.ce = shl i64 %n.vec220, 2
  %i.cf = getelementptr i8, ptr %.03152.i, i64 %i.ce
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.cg = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03152.i, i64 %i.cg
  %i.ch = mul i64 %index222, 3
  %i.ci = mul i64 %index222, 3
  %i.cj = mul i64 %index222, 3
  %i.ck = mul i64 %index222, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ch ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ci ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.co = getelementptr i8, ptr %i.e, i64 %i.cj   ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 6
  %i.cq = getelementptr i8, ptr %i.e, i64 %i.ck   ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 9
  %i.cs = load i16, ptr %i.cl, align 4
  %i.ct = load i16, ptr %i.cn, align 1
  %i.cu = load i16, ptr %i.cp, align 2
  %i.cv = load i16, ptr %i.cr, align 1
  %i.cw = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.cx = insertelement <4 x i16> %i.cw, i16 %i.ct, i64 1
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 2
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 3
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  %i.db = shl nuw nsw <4 x i32> %i.da, splat (i32 8)
  %i.dc = getelementptr i8, ptr %i.cl, i64 2
  %i.dd = getelementptr i8, ptr %i.cm, i64 5
  %i.de = getelementptr i8, ptr %i.co, i64 8
  %i.df = getelementptr i8, ptr %i.cq, i64 11
  %i.dg = load i8, ptr %i.dc, align 2
  %i.dh = load i8, ptr %i.dd, align 1
  %i.di = load i8, ptr %i.de, align 4
  %i.dj = load i8, ptr %i.df, align 1
  %i.dk = insertelement <4 x i8> poison, i8 %i.dg, i64 0
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dh, i64 1
  %i.dm = insertelement <4 x i8> %i.dl, i8 %i.di, i64 2
  %i.dn = insertelement <4 x i8> %i.dm, i8 %i.dj, i64 3
  %i.do = zext <4 x i8> %i.dn to <4 x i32>
  %i.dp = shl nuw <4 x i32> %i.do, splat (i32 24)
  %i.dq = or disjoint <4 x i32> %i.dp, %i.db
  %i.dr = ashr exact <4 x i32> %i.dq, splat (i32 8)
  %i.ds = sitofp <4 x i32> %i.dr to <4 x float>
  %i.dt = fmul nnan <4 x float> %i.ds, splat (float f0x34000000)
  store <4 x float> %i.dt, ptr %next.gep223, align 4
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.du, label %middle.block225, label %vector.body221, !llvm.loop !915

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.aq, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader246

.lr.ph.i42.i.i.preheader246:                      ; preds = %.lr.ph.i42.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i42.i.i.preheader ], [ %i.cf, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i42.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i.preheader246, %.lr.ph.i42.i.i
  %.020.i.i.i = phi ptr [ %i.ei, %.lr.ph.i42.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.ej, %.lr.ph.i42.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %i.dv = mul i64 %.01619.i.i.i, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 1
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr i8, ptr %i.dw, i64 2
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 24
  %i.ee = or disjoint i32 %i.ed, %i.dz
  %i.ef = ashr exact i32 %i.ee, 8
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fmul nnan float %i.eg, f0x34000000
  %i.ei = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store float %i.eh, ptr %.020.i.i.i, align 4
  %i.ej = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.ej, %i.aq
  br i1 %exitcond.not.i43.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i, !llvm.loop !916

bb.o:                                             ; preds = %bb.k
  %.not.i41.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader

.lr.ph.i44.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check230 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check230, label %.lr.ph.i44.i.i.preheader248, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i44.i.i.preheader
  %n.vec232 = and i64 %i.aq, -4                   ; 4 uses
  %i.ek = shl i64 %n.vec232, 2
  %i.el = getelementptr i8, ptr %.03152.i, i64 %i.ek
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.em = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03152.i, i64 %i.em
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.en, align 16
  %i.eo = sitofp <4 x i32> %wide.load236 to <4 x double>
  %i.ep = fmul nnan <4 x double> %i.eo, splat (double f0x3E00000000000000)
  %i.eq = fptrunc <4 x double> %i.ep to <4 x float>
  store <4 x float> %i.eq, ptr %next.gep235, align 4
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.er, label %middle.block238, label %vector.body233, !llvm.loop !917

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.aq, %n.vec232
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader248

.lr.ph.i44.i.i.preheader248:                      ; preds = %.lr.ph.i44.i.i.preheader, %middle.block238
  %.012.i45.i.i.ph = phi i64 [ 0, %.lr.ph.i44.i.i.preheader ], [ %n.vec232, %middle.block238 ]
  %.0811.i46.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i44.i.i.preheader ], [ %i.el, %middle.block238 ]
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %.lr.ph.i44.i.i.preheader248, %.lr.ph.i44.i.i
  %.012.i45.i.i = phi i64 [ %i.ey, %.lr.ph.i44.i.i ], [ %.012.i45.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %.0811.i46.i.i = phi ptr [ %i.ex, %.lr.ph.i44.i.i ], [ %.0811.i46.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.012.i45.i.i
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = sitofp i32 %i.et to double
  %i.ev = fmul nnan double %i.eu, f0x3E00000000000000
  %i.ew = fptrunc double %i.ev to float
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i46.i.i, i64 4
  store float %i.ew, ptr %.0811.i46.i.i, align 4
  %i.ey = add nuw i64 %.012.i45.i.i, 1            ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.ey, %i.aq
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i44.i.i, !llvm.loop !918

bb.p:                                             ; preds = %bb.k
  br i1 %i.ah, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.not61.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not61.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.p
  %i.ez = shl i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03152.i, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.epilog-lcssa
  %.03660.i.i = phi i32 [ %i.gr, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.03759.i.i = phi ptr [ %i.gq, %.epilog-lcssa ], [ %.03152.i, %.preheader.i.i ] ; 2 uses
  %.03858.i.i = phi ptr [ %i.gm, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.03456.i.i = phi i32 [ %i.ge, %.lr.ph.i.i.new ], [ %i.aj, %.lr.ph.i.i ] ; 5 uses
  %.03555.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i64
  %i.fd = zext nneg i32 %.03456.i.i to i64
  %i.fe = shl i64 %i.fc, %i.fd
  %i.ff = or i64 %i.fe, %.03555.i.i
  %i.fg = add i32 %.03456.i.i, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = shl i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %i.ff
  %i.fo = add i32 %.03456.i.i, 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i64
  %i.ft = zext nneg i32 %i.fo to i64
  %i.fu = shl i64 %i.fs, %i.ft
  %i.fv = or i64 %i.fu, %i.fn
  %i.fw = add i32 %.03456.i.i, 24
  %i.fx = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i64
  %i.gb = zext nneg i32 %i.fw to i64
  %i.gc = shl i64 %i.ga, %i.gb
  %i.gd = or i64 %i.gc, %i.fv                     ; 3 uses
  %i.ge = add i32 %.03456.i.i, 32                 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03456.i.i.epil.init = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %i.ge, %.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gd, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.r ] ; 2 uses
  %.03456.i.i.epil = phi i32 [ %.03456.i.i.epil.init, %.epil.preheader ], [ %i.gl, %bb.r ] ; 2 uses
  %.03555.i.i.epil = phi i64 [ %.03555.i.i.epil.init, %.epil.preheader ], [ %i.gk, %bb.r ]
  %epil.iter265 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter265.next, %bb.r ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.epil
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = zext nneg i32 %.03456.i.i.epil to i64
  %i.gj = shl i64 %i.gh, %i.gi
  %i.gk = or i64 %i.gj, %.03555.i.i.epil          ; 2 uses
  %i.gl = add i32 %.03456.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.epilog-lcssa, label %bb.r, !llvm.loop !919

.epilog-lcssa:                                    ; preds = %bb.r, %.unr-lcssa
  %.lcssa = phi i64 [ %i.gd, %.unr-lcssa ], [ %i.gk, %bb.r ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %i.ag
  %i.gn = sitofp i64 %.lcssa to double
  %i.go = fmul nnan double %i.gn, f0x3C00000000000000
  %i.gp = fptrunc double %i.go to float
  %i.gq = getelementptr inbounds nuw i8, ptr %.03759.i.i, i64 4
  store float %i.gp, ptr %.03759.i.i, align 4
  %i.gr = add i32 %.03660.i.i, 1                  ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = icmp ugt i64 %i.aq, %i.gs
  br i1 %i.gt, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i44.i.i, %.lr.ph.i42.i.i, %.lr.ph.i40.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block225, %middle.block213, %middle.block199, %bb.q, %.preheader.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.03152.i, i64 %i.aq
  %i.gv = sub i64 %.03351.i, %i.am                ; 2 uses
  %i.gw = add i64 %i.am, %.03053.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.gv, 0
  br i1 %.not40.i, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.i

drwav_read_pcm_frames_f32__pcm.exit:              ; preds = %bb.i, %bb.j, %.loopexit.i, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.h
  %.035.i = phi i64 [ 0, %bb.h ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03053.i, %bb.i ], [ %i.gw, %.loopexit.i ], [ %.03053.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %bb.av

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.pre.i = load i16, ptr %i.gx, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i37, %bb.s
  %i.gy = phi i16 [ %.pre.i, %bb.s ], [ %i.hx, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.s ], [ %i.ia, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.s ], [ %i.hy, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %1, %bb.s ], [ %i.hz, %.loopexit.i37 ] ; 2 uses
  %i.gz = udiv i16 2048, %i.gy
  %i.ha = zext nneg i16 %i.gz to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.ha)
  %i.hb = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %drwav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hd = load i16, ptr %i.gx, align 8            ; 2 uses
  %i.he = zext i16 %i.hd to i64
  %i.hf = mul i64 %i.hb, %i.he                    ; 5 uses
  %.not39.i = icmp eq i64 %i.hf, 0
  br i1 %.not39.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.u
  %min.iters.check176 = icmp ult i64 %i.hf, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader250, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.hf, -8                   ; 4 uses
  %i.hg = shl i64 %n.vec178, 2
  %i.hh = getelementptr i8, ptr %.02031.i, i64 %i.hg
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.hi = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.hi ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.hj, align 16
  %wide.load183 = load <4 x i16>, ptr %i.hk, align 8
  %i.hl = sitofp <4 x i16> %wide.load182 to <4 x float>
  %i.hm = sitofp <4 x i16> %wide.load183 to <4 x float>
  %i.hn = fmul nnan <4 x float> %i.hl, splat (float f0x38000000)
  %i.ho = fmul nnan <4 x float> %i.hm, splat (float f0x38000000)
  %i.hp = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.hn, ptr %next.gep181, align 4
  store <4 x float> %i.ho, ptr %i.hp, align 4
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hq, label %middle.block185, label %vector.body179, !llvm.loop !920

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.hf, %n.vec178
  br i1 %cmp.n186, label %.loopexit.loopexit.i, label %.lr.ph.i.i35.preheader250

.lr.ph.i.i35.preheader250:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.hh, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader250, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hw, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hv, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = sitofp i16 %i.hs to float
  %i.hu = fmul nnan float %i.ht, f0x38000000
  %i.hv = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store float %i.hu, ptr %.0811.i.i, align 4
  %i.hw = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hw, %i.hf
  br i1 %exitcond.not.i.i36, label %.loopexit.loopexit.i, label %.lr.ph.i.i35, !llvm.loop !921

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i35, %middle.block185
  %.pre33.i = load i16, ptr %i.gx, align 8        ; 2 uses
  %.pre34.i = zext i16 %.pre33.i to i64
  %.pre35.i = mul i64 %i.hb, %.pre34.i
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.loopexit.loopexit.i, %bb.u
  %.pre-phi36.i = phi i64 [ %.pre35.i, %.loopexit.loopexit.i ], [ 0, %bb.u ]
  %i.hx = phi i16 [ %.pre33.i, %.loopexit.loopexit.i ], [ %i.hd, %bb.u ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %.pre-phi36.i
  %i.hz = sub i64 %.02230.i, %i.hb                ; 2 uses
  %i.ia = add i64 %i.hb, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hz, 0
  br i1 %.not.i38, label %drwav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.t

drwav_read_pcm_frames_f32__msadpcm_ima.exit:      ; preds = %bb.t, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.t ], [ %i.ia, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.av

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ic = load i16, ptr %i.ib, align 2            ; 2 uses
  %i.id = icmp eq i16 %i.ic, 32
  br i1 %i.id, label %bb.w, label %._crit_edge.i

bb.w:                                             ; preds = %bb.v
  %i.ie = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_f32__ieee.exit

._crit_edge.i:                                    ; preds = %bb.v
  %i.if = zext i16 %i.ic to i32                   ; 2 uses
  %i.ig = and i32 %i.if, 7
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ij = load i16, ptr %i.ii, align 2
  %i.ik = zext i16 %i.ij to i32
  %i.il = mul nuw nsw i32 %i.ik, %i.if
  %i.im = lshr exact i32 %i.il, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

bb.y:                                             ; preds = %._crit_edge.i
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.io = load i16, ptr %i.in, align 4
  %i.ip = zext i16 %i.io to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

drwav_get_bytes_per_pcm_frame.exit.i41:           ; preds = %bb.x, %bb.y
  %.0.i.i39 = phi i32 [ %i.im, %bb.x ], [ %i.ip, %bb.y ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.z

bb.z:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i41
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ir = load i16, ptr %i.iq, align 8
  %i.is = zext i16 %i.ir to i32                   ; 3 uses
  %i.it = udiv i32 %.0.i.i39, %i.is
  %i.iu = urem i32 %.0.i.i39, %i.is
  %.fr.i = freeze i32 %i.it                       ; 2 uses
  %i.iv = icmp samesign uge i32 %.0.i.i39, %i.is
  %.not.i43 = icmp eq i32 %i.iu, 0
  %or.cond279 = and i1 %i.iv, %.not.i43
  br i1 %or.cond279, label %.preheader.i44, label %drwav_read_pcm_frames_f32__ieee.exit

.preheader.i44:                                   ; preds = %bb.z
  %i.iw = udiv i32 4096, %.0.i.i39
  %i.ix = zext nneg i32 %i.iw to i64              ; 3 uses
  %i.iy = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us56.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03555.us.i = phi i64 [ %i.kc, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.us.i = phi ptr [ %i.ka, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 5 uses
  %.03853.us.i = phi i64 [ %i.kb, %.loopexit.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.038..us.i = call i64 @llvm.umin.i64(i64 %.03853.us.i, i64 %i.ix)
  %i.iz = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %.preheader.split.us.i
  %i.jb = load i16, ptr %i.iq, align 8
  %i.jc = zext i16 %i.jb to i64
  %i.jd = mul i64 %i.iz, %i.jc                    ; 8 uses
  %i.je = mul i64 %i.jd, %i.iy
  %i.jf = icmp ugt i64 %i.je, 4096
  br i1 %i.jf, label %drwav_read_pcm_frames_f32__ieee.exit, label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %bb.aa
  %.not18.i.us.i = icmp eq i64 %i.jd, 0
  br i1 %.not18.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %.preheader.i.us.i
  %min.iters.check161 = icmp ult i64 %i.jd, 16
  br i1 %min.iters.check161, label %.lr.ph.i.us.i.preheader251, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.us.i.preheader
  %i.jg = add i64 %i.jd, -1                       ; 2 uses
  %i.jh = and i64 %i.jg, 4294967295
  %i.ji = icmp eq i64 %i.jh, 4294967295
  %i.jj = icmp ugt i64 %i.jg, 4294967295
  %i.jk = or i1 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph.i.us.i.preheader251, label %vector.ph162

vector.ph162:                                     ; preds = %vector.scevcheck
  %n.vec163 = and i64 %i.jd, 8589934584           ; 5 uses
  %i.jl = trunc i64 %n.vec163 to i32
  %i.jm = shl nuw nsw i64 %n.vec163, 2
  %i.jn = getelementptr i8, ptr %.03654.us.i, i64 %i.jm
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next169, %vector.body164 ] ; 3 uses
  %i.jo = shl i64 %index165, 2
  %next.gep166 = getelementptr i8, ptr %.03654.us.i, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index165 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load167 = load <4 x float>, ptr %i.jp, align 16
  %wide.load168 = load <4 x float>, ptr %i.jq, align 16
  %i.jr = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x float> %wide.load167, ptr %next.gep166, align 4
  store <4 x float> %wide.load168, ptr %i.jr, align 4
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next169, %n.vec163
  br i1 %i.js, label %middle.block170, label %vector.body164, !llvm.loop !922

middle.block170:                                  ; preds = %vector.body164
  %cmp.n171 = icmp eq i64 %i.jd, %n.vec163
  br i1 %cmp.n171, label %.loopexit.us.i, label %.lr.ph.i.us.i.preheader251

.lr.ph.i.us.i.preheader251:                       ; preds = %vector.scevcheck, %.lr.ph.i.us.i.preheader, %middle.block170
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.us.i.preheader ], [ %n.vec163, %middle.block170 ]
  %.017.i.us.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.us.i.preheader ], [ %i.jl, %middle.block170 ]
  %.01216.i.us.i.ph = phi ptr [ %.03654.us.i, %vector.scevcheck ], [ %.03654.us.i, %.lr.ph.i.us.i.preheader ], [ %i.jn, %middle.block170 ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader251, %.lr.ph.i.us.i
  %i.jt = phi i64 [ %i.jy, %.lr.ph.i.us.i ], [ %.ph, %.lr.ph.i.us.i.preheader251 ]
  %.017.i.us.i = phi i32 [ %i.jx, %.lr.ph.i.us.i ], [ %.017.i.us.i.ph, %.lr.ph.i.us.i.preheader251 ]
  %.01216.i.us.i = phi ptr [ %i.jw, %.lr.ph.i.us.i ], [ %.01216.i.us.i.ph, %.lr.ph.i.us.i.preheader251 ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.01216.i.us.i, i64 4
  store float %i.jv, ptr %.01216.i.us.i, align 4
  %i.jx = add i32 %.017.i.us.i, 1                 ; 2 uses
  %i.jy = zext i32 %i.jx to i64                   ; 2 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy
  br i1 %i.jz, label %.lr.ph.i.us.i, label %.loopexit.us.i, !llvm.loop !923

.loopexit.us.i:                                   ; preds = %.lr.ph.i.us.i, %middle.block170, %.preheader.i.us.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.03654.us.i, i64 %i.jd
  %i.kb = sub i64 %.03853.us.i, %i.iz             ; 2 uses
  %i.kc = add i64 %i.iz, %.03555.us.i             ; 2 uses
  %.not45.us.i = icmp eq i64 %i.kb, 0
  br i1 %.not45.us.i, label %drwav_read_pcm_frames_f32__ieee.exit, label %.preheader.split.us.i

.preheader.split.us56.i:                          ; preds = %.preheader.i44, %.loopexit52.us.i
  %.03555.us57.i = phi i64 [ %i.la, %.loopexit52.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.us58.i = phi ptr [ %i.ky, %.loopexit52.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03853.us59.i = phi i64 [ %i.kz, %.loopexit52.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.038..us60.i = call i64 @llvm.umin.i64(i64 %.03853.us59.i, i64 %i.ix)
  %i.kd = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..us60.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us56.i
  %i.kf = load i16, ptr %i.iq, align 8
  %i.kg = zext i16 %i.kf to i64
  %i.kh = mul i64 %i.kd, %i.kg                    ; 7 uses
  %i.ki = mul i64 %i.kh, %i.iy
  %i.kj = icmp ugt i64 %i.ki, 4096
  br i1 %i.kj, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i46.us.i = icmp eq i64 %i.kh, 0
  br i1 %.not.i46.us.i, label %.loopexit52.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.ac
  %min.iters.check = icmp ult i64 %i.kh, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.kh, -4                      ; 4 uses
  %i.kk = shl i64 %n.vec, 2
  %i.kl = getelementptr i8, ptr %.03654.us58.i, i64 %i.kk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.03654.us58.i, i64 %i.km ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load = load <2 x double>, ptr %i.kn, align 16
  %wide.load158 = load <2 x double>, ptr %i.ko, align 16
  %i.kp = fptrunc <2 x double> %wide.load to <2 x float>
  %i.kq = fptrunc <2 x double> %wide.load158 to <2 x float>
  %i.kr = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.kp, ptr %next.gep, align 4
  store <2 x float> %i.kq, ptr %i.kr, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kh, %n.vec
  br i1 %cmp.n, label %.loopexit52.us.i, label %.lr.ph.i.i.us.i.preheader254

.lr.ph.i.i.us.i.preheader254:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.012.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  %.0811.i.i.us.i.ph = phi ptr [ %.03654.us58.i, %.lr.ph.i.i.us.i.preheader ], [ %i.kl, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader254, %.lr.ph.i.i.us.i
  %.012.i.i.us.i = phi i64 [ %i.kx, %.lr.ph.i.i.us.i ], [ %.012.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader254 ] ; 2 uses
  %.0811.i.i.us.i = phi ptr [ %i.kw, %.lr.ph.i.i.us.i ], [ %.0811.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader254 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.012.i.i.us.i
  %i.ku = load double, ptr %i.kt, align 8
  %i.kv = fptrunc double %i.ku to float
  %i.kw = getelementptr inbounds nuw i8, ptr %.0811.i.i.us.i, i64 4
  store float %i.kv, ptr %.0811.i.i.us.i, align 4
  %i.kx = add nuw i64 %.012.i.i.us.i, 1           ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.kx, %i.kh
  br i1 %exitcond.not.i.i.us.i, label %.loopexit52.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !925

.loopexit52.us.i:                                 ; preds = %.lr.ph.i.i.us.i, %middle.block, %bb.ac
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.03654.us58.i, i64 %i.kh
  %i.kz = sub i64 %.03853.us59.i, %i.kd           ; 2 uses
  %i.la = add i64 %i.kd, %.03555.us57.i           ; 2 uses
  %.not45.us61.i = icmp eq i64 %i.kz, 0
  br i1 %.not45.us61.i, label %drwav_read_pcm_frames_f32__ieee.exit, label %.preheader.split.us56.i

.preheader.split.i:                               ; preds = %.preheader.i44, %bb.ae
  %.03555.i = phi i64 [ %i.ll, %bb.ae ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.i = phi ptr [ %i.lj, %bb.ae ], [ %2, %.preheader.i44 ] ; 2 uses
  %.03853.i = phi i64 [ %i.lk, %bb.ae ], [ %1, %.preheader.i44 ] ; 2 uses
  %.038..i = call i64 @llvm.umin.i64(i64 %.03853.i, i64 %i.ix)
  %i.lb = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..i, ptr noundef nonnull %i.c) ; 4 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.ad

bb.ad:                                            ; preds = %.preheader.split.i
  %i.ld = load i16, ptr %i.iq, align 8
  %i.le = zext i16 %i.ld to i64
  %i.lf = mul i64 %i.lb, %i.le                    ; 3 uses
  %i.lg = mul i64 %i.lf, %i.iy
  %i.lh = icmp ugt i64 %i.lg, 4096
  br i1 %i.lh, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.li = shl i64 %i.lf, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03654.i, i8 0, i64 %i.li, i1 false)
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.03654.i, i64 %i.lf
  %i.lk = sub i64 %.03853.i, %i.lb                ; 2 uses
  %i.ll = add i64 %i.lb, %.03555.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.lk, 0
  br i1 %.not45.i, label %drwav_read_pcm_frames_f32__ieee.exit, label %.preheader.split.i

drwav_read_pcm_frames_f32__ieee.exit:             ; preds = %.preheader.split.us56.i, %bb.ab, %.loopexit52.us.i, %.preheader.split.us.i, %bb.aa, %.loopexit.us.i, %.preheader.split.i, %bb.ad, %bb.ae, %bb.w, %drwav_get_bytes_per_pcm_frame.exit.i41, %bb.z
  %.040.i = phi i64 [ %i.ie, %bb.w ], [ 0, %bb.z ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i41 ], [ %.03555.us.i, %bb.aa ], [ %i.ll, %bb.ae ], [ %.03555.i, %bb.ad ], [ %.03555.i, %.preheader.split.i ], [ %i.kc, %.loopexit.us.i ], [ %.03555.us.i, %.preheader.split.us.i ], [ %i.la, %.loopexit52.us.i ], [ %.03555.us57.i, %.preheader.split.us56.i ], [ %.03555.us57.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  br label %bb.av

bb.af:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ln = load i16, ptr %i.lm, align 2
  %i.lo = zext i16 %i.ln to i32                   ; 2 uses
  %i.lp = and i32 %i.lo, 7
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ls = load i16, ptr %i.lr, align 2
  %i.lt = zext i16 %i.ls to i32                   ; 2 uses
  %i.lu = mul nuw nsw i32 %i.lt, %i.lo
  %i.lv = lshr exact i32 %i.lu, 3
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lx = load i16, ptr %i.lw, align 4
  %i.ly = zext i16 %i.lx to i32
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %0, i64 78
  %.pre111 = load i16, ptr %.phi.trans.insert110, align 2
  %.pre112 = zext i16 %.pre111 to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.pre-phi = phi i32 [ %i.lt, %bb.ag ], [ %.pre112, %bb.ah ]
  %.0.i.i47 = phi i32 [ %i.lv, %bb.ag ], [ %i.ly, %bb.ah ] ; 4 uses
  %.not.i.i59 = icmp ne i32 %.0.i.i47, %.pre-phi
  %i.lz = icmp eq i32 %.0.i.i47, 0
  %or.cond.i60 = or i1 %i.lz, %.not.i.i59
  br i1 %or.cond.i60, label %drwav_read_pcm_frames_f32__alaw.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.mb = load i16, ptr %i.ma, align 8            ; 3 uses
  %i.mc = zext i16 %i.mb to i32
  %.lhs.trunc = trunc nuw i32 %.0.i.i47 to i16    ; 3 uses
  %i.md = udiv i16 %.lhs.trunc, %i.mb
  %i.me = urem i16 %.lhs.trunc, %i.mb
  %i.mf = icmp samesign uge i32 %.0.i.i47, %i.mc
  %.not.i51 = icmp eq i16 %i.me, 0
  %or.cond280 = select i1 %i.mf, i1 %.not.i51, i1 false
  br i1 %or.cond280, label %.preheader.i52, label %drwav_read_pcm_frames_f32__alaw.exit

.preheader.i52:                                   ; preds = %bb.aj
  %i.mg = udiv i16 4096, %.lhs.trunc
  %i.mh = zext nneg i16 %i.mg to i64
  %i.mi = zext i16 %i.md to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i57, %.preheader.i52
  %.02947.i = phi i64 [ 0, %.preheader.i52 ], [ %i.om, %.loopexit.i57 ] ; 3 uses
  %.03046.i = phi ptr [ %2, %.preheader.i52 ], [ %i.ok, %.loopexit.i57 ] ; 3 uses
  %.03245.i = phi i64 [ %1, %.preheader.i52 ], [ %i.ol, %.loopexit.i57 ] ; 2 uses
  %.032..i = call i64 @llvm.umin.i64(i64 %.03245.i, i64 %i.mh)
  %i.mj = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.032..i, ptr noundef nonnull %i.b) ; 4 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %drwav_read_pcm_frames_f32__alaw.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ml = load i16, ptr %i.ma, align 8
  %i.mm = zext i16 %i.ml to i64
  %i.mn = mul i64 %i.mj, %i.mm                    ; 6 uses
  %i.mo = mul i64 %i.mn, %i.mi
  %i.mp = icmp ugt i64 %i.mo, 4096
  br i1 %i.mp, label %drwav_read_pcm_frames_f32__alaw.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not51.i = icmp eq i64 %i.mn, 0
  br i1 %.not51.i, label %.loopexit.i57, label %.lr.ph.i.i53.preheader

.lr.ph.i.i53.preheader:                           ; preds = %bb.am
  %xtraiter258 = and i64 %i.mn, 3                 ; 3 uses
  %i.mq = icmp ult i64 %i.mn, 4
  br i1 %i.mq, label %.lr.ph.i.i53.epil.preheader, label %.lr.ph.i.i53.preheader.new

.lr.ph.i.i53.preheader.new:                       ; preds = %.lr.ph.i.i53.preheader
  %unroll_iter262 = and i64 %i.mn, -4
  br label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %.lr.ph.i.i53, %.lr.ph.i.i53.preheader.new
  %.012.i.i54 = phi i64 [ 0, %.lr.ph.i.i53.preheader.new ], [ %i.oa, %.lr.ph.i.i53 ] ; 5 uses
  %.0811.i.i55 = phi ptr [ %.03046.i, %.lr.ph.i.i53.preheader.new ], [ %i.nz, %.lr.ph.i.i53 ] ; 5 uses
  %niter263 = phi i64 [ 0, %.lr.ph.i.i53.preheader.new ], [ %niter263.next.3, %.lr.ph.i.i53 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.ms = load i8, ptr %i.mr, align 4
  %i.mt = zext i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.mt
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = sitofp i16 %i.mv to float
  %i.mx = fmul nnan float %i.mw, f0x38000000
  %i.my = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 4
  store float %i.mx, ptr %.0811.i.i55, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.nb = load i8, ptr %i.na, align 1
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 2
  %i.nf = sitofp i16 %i.ne to float
  %i.ng = fmul nnan float %i.nf, f0x38000000
  %i.nh = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 8
  store float %i.ng, ptr %i.my, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  %i.nk = load i8, ptr %i.nj, align 2
  %i.nl = zext i8 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.nl
  %i.nn = load i16, ptr %i.nm, align 2
  %i.no = sitofp i16 %i.nn to float
  %i.np = fmul nnan float %i.no, f0x38000000
  %i.nq = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 12
  store float %i.np, ptr %i.nh, align 4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 3
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.nu
  %i.nw = load i16, ptr %i.nv, align 2
  %i.nx = sitofp i16 %i.nw to float
  %i.ny = fmul nnan float %i.nx, f0x38000000
  %i.nz = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 16 ; 2 uses
  store float %i.ny, ptr %i.nq, align 4
  %i.oa = add nuw i64 %.012.i.i54, 4              ; 2 uses
  %niter263.next.3 = add i64 %niter263, 4         ; 2 uses
  %niter263.ncmp.3 = icmp eq i64 %niter263.next.3, %unroll_iter262
  br i1 %niter263.ncmp.3, label %.loopexit.i57.loopexit.unr-lcssa, label %.lr.ph.i.i53

.loopexit.i57.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i53
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod260.not, label %.loopexit.i57, label %.lr.ph.i.i53.epil.preheader

.lr.ph.i.i53.epil.preheader:                      ; preds = %.loopexit.i57.loopexit.unr-lcssa, %.lr.ph.i.i53.preheader
  %.012.i.i54.epil.init = phi i64 [ 0, %.lr.ph.i.i53.preheader ], [ %i.oa, %.loopexit.i57.loopexit.unr-lcssa ]
  %.0811.i.i55.epil.init = phi ptr [ %.03046.i, %.lr.ph.i.i53.preheader ], [ %i.nz, %.loopexit.i57.loopexit.unr-lcssa ]
  %lcmp.mod261 = icmp ne i64 %xtraiter258, 0
  call void @llvm.assume(i1 %lcmp.mod261)
  br label %.lr.ph.i.i53.epil

.lr.ph.i.i53.epil:                                ; preds = %.lr.ph.i.i53.epil, %.lr.ph.i.i53.epil.preheader
  %.012.i.i54.epil = phi i64 [ %i.oj, %.lr.ph.i.i53.epil ], [ %.012.i.i54.epil.init, %.lr.ph.i.i53.epil.preheader ] ; 2 uses
  %.0811.i.i55.epil = phi ptr [ %i.oi, %.lr.ph.i.i53.epil ], [ %.0811.i.i55.epil.init, %.lr.ph.i.i53.epil.preheader ] ; 2 uses
  %epil.iter259 = phi i64 [ %epil.iter259.next, %.lr.ph.i.i53.epil ], [ 0, %.lr.ph.i.i53.epil.preheader ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54.epil
  %i.oc = load i8, ptr %i.ob, align 1
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.od
  %i.of = load i16, ptr %i.oe, align 2
  %i.og = sitofp i16 %i.of to float
  %i.oh = fmul nnan float %i.og, f0x38000000
  %i.oi = getelementptr inbounds nuw i8, ptr %.0811.i.i55.epil, i64 4
  store float %i.oh, ptr %.0811.i.i55.epil, align 4
  %i.oj = add nuw i64 %.012.i.i54.epil, 1
  %epil.iter259.next = add i64 %epil.iter259, 1   ; 2 uses
  %epil.iter259.cmp.not = icmp eq i64 %epil.iter259.next, %xtraiter258
  br i1 %epil.iter259.cmp.not, label %.loopexit.i57, label %.lr.ph.i.i53.epil, !llvm.loop !926

.loopexit.i57:                                    ; preds = %.loopexit.i57.loopexit.unr-lcssa, %.lr.ph.i.i53.epil, %bb.am
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.03046.i, i64 %i.mn
  %i.ol = sub i64 %.03245.i, %i.mj                ; 2 uses
  %i.om = add i64 %i.mj, %.02947.i                ; 2 uses
  %.not39.i58 = icmp eq i64 %i.ol, 0
  br i1 %.not39.i58, label %drwav_read_pcm_frames_f32__alaw.exit, label %bb.ak

drwav_read_pcm_frames_f32__alaw.exit:             ; preds = %bb.ak, %bb.al, %.loopexit.i57, %bb.ai, %bb.aj
  %.034.i = phi i64 [ 0, %bb.aj ], [ 0, %bb.ai ], [ %.02947.i, %bb.ak ], [ %i.om, %.loopexit.i57 ], [ %.02947.i, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %bb.av

bb.an:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.oo = load i16, ptr %i.on, align 2
  %i.op = zext i16 %i.oo to i32                   ; 2 uses
  %i.oq = and i32 %i.op, 7
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ot = load i16, ptr %i.os, align 2
  %i.ou = zext i16 %i.ot to i32                   ; 2 uses
  %i.ov = mul nuw nsw i32 %i.ou, %i.op
  %i.ow = lshr exact i32 %i.ov, 3
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oy = load i16, ptr %i.ox, align 4
  %i.oz = zext i16 %i.oy to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 78
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre113 = zext i16 %.pre to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.pre-phi114 = phi i32 [ %i.ou, %bb.ao ], [ %.pre113, %bb.ap ]
  %.0.i.i61 = phi i32 [ %i.ow, %bb.ao ], [ %i.oz, %bb.ap ] ; 4 uses
  %.not.i.i79 = icmp ne i32 %.0.i.i61, %.pre-phi114
  %i.pa = icmp eq i32 %.0.i.i61, 0
  %or.cond.i80 = or i1 %i.pa, %.not.i.i79
  br i1 %or.cond.i80, label %drwav_read_pcm_frames_f32__mulaw.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.pc = load i16, ptr %i.pb, align 8            ; 3 uses
  %i.pd = zext i16 %i.pc to i32
  %.lhs.trunc86 = trunc nuw i32 %.0.i.i61 to i16  ; 3 uses
  %i.pe = udiv i16 %.lhs.trunc86, %i.pc
  %i.pf = urem i16 %.lhs.trunc86, %i.pc
  %i.pg = icmp samesign uge i32 %.0.i.i61, %i.pd
  %.not.i65 = icmp eq i16 %i.pf, 0
  %or.cond281 = select i1 %i.pg, i1 %.not.i65, i1 false
  br i1 %or.cond281, label %.preheader.i67, label %drwav_read_pcm_frames_f32__mulaw.exit

.preheader.i67:                                   ; preds = %bb.ar
  %i.ph = udiv i16 4096, %.lhs.trunc86
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = zext i16 %i.pe to i64
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i77, %.preheader.i67
  %.02947.i68 = phi i64 [ 0, %.preheader.i67 ], [ %i.rn, %.loopexit.i77 ] ; 3 uses
  %.03046.i69 = phi ptr [ %2, %.preheader.i67 ], [ %i.rl, %.loopexit.i77 ] ; 3 uses
  %.03245.i70 = phi i64 [ %1, %.preheader.i67 ], [ %i.rm, %.loopexit.i77 ] ; 2 uses
  %.032..i71 = call i64 @llvm.umin.i64(i64 %.03245.i70, i64 %i.pi)
  %i.pk = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.032..i71, ptr noundef nonnull %i.a) ; 4 uses
  %i.pl = icmp eq i64 %i.pk, 0
  br i1 %i.pl, label %drwav_read_pcm_frames_f32__mulaw.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pm = load i16, ptr %i.pb, align 8
  %i.pn = zext i16 %i.pm to i64
  %i.po = mul i64 %i.pk, %i.pn                    ; 6 uses
  %i.pp = mul i64 %i.po, %i.pj
  %i.pq = icmp ugt i64 %i.pp, 4096
  br i1 %i.pq, label %drwav_read_pcm_frames_f32__mulaw.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not51.i72 = icmp eq i64 %i.po, 0
  br i1 %.not51.i72, label %.loopexit.i77, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.au
  %xtraiter = and i64 %i.po, 3                    ; 3 uses
  %i.pr = icmp ult i64 %i.po, 4
  br i1 %i.pr, label %.lr.ph.i.i73.epil.preheader, label %.lr.ph.i.i73.preheader.new

.lr.ph.i.i73.preheader.new:                       ; preds = %.lr.ph.i.i73.preheader
  %unroll_iter = and i64 %i.po, -4
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73, %.lr.ph.i.i73.preheader.new
  %.012.i.i74 = phi i64 [ 0, %.lr.ph.i.i73.preheader.new ], [ %i.rb, %.lr.ph.i.i73 ] ; 5 uses
  %.0811.i.i75 = phi ptr [ %.03046.i69, %.lr.ph.i.i73.preheader.new ], [ %i.ra, %.lr.ph.i.i73 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i73.preheader.new ], [ %niter.next.3, %.lr.ph.i.i73 ]
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.pt = load i8, ptr %i.ps, align 4
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.pu
  %i.pw = load i16, ptr %i.pv, align 2
  %i.px = sitofp i16 %i.pw to float
  %i.py = fmul nnan float %i.px, f0x38000000
  %i.pz = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 4
  store float %i.py, ptr %.0811.i.i75, align 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %i.qc = load i8, ptr %i.qb, align 1
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 2
  %i.qg = sitofp i16 %i.qf to float
  %i.qh = fmul nnan float %i.qg, f0x38000000
  %i.qi = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 8
  store float %i.qh, ptr %i.pz, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %i.ql = load i8, ptr %i.qk, align 2
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.qm
  %i.qo = load i16, ptr %i.qn, align 2
  %i.qp = sitofp i16 %i.qo to float
  %i.qq = fmul nnan float %i.qp, f0x38000000
  %i.qr = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 12
  store float %i.qq, ptr %i.qi, align 4
  %i.qs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 3
  %i.qu = load i8, ptr %i.qt, align 1
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2
  %i.qy = sitofp i16 %i.qx to float
  %i.qz = fmul nnan float %i.qy, f0x38000000
  %i.ra = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 16 ; 2 uses
  store float %i.qz, ptr %i.qr, align 4
  %i.rb = add nuw i64 %.012.i.i74, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i77.loopexit.unr-lcssa, label %.lr.ph.i.i73

.loopexit.i77.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i77, label %.lr.ph.i.i73.epil.preheader

.lr.ph.i.i73.epil.preheader:                      ; preds = %.loopexit.i77.loopexit.unr-lcssa, %.lr.ph.i.i73.preheader
  %.012.i.i74.epil.init = phi i64 [ 0, %.lr.ph.i.i73.preheader ], [ %i.rb, %.loopexit.i77.loopexit.unr-lcssa ]
  %.0811.i.i75.epil.init = phi ptr [ %.03046.i69, %.lr.ph.i.i73.preheader ], [ %i.ra, %.loopexit.i77.loopexit.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %.lr.ph.i.i73.epil

.lr.ph.i.i73.epil:                                ; preds = %.lr.ph.i.i73.epil, %.lr.ph.i.i73.epil.preheader
  %.012.i.i74.epil = phi i64 [ %i.rk, %.lr.ph.i.i73.epil ], [ %.012.i.i74.epil.init, %.lr.ph.i.i73.epil.preheader ] ; 2 uses
  %.0811.i.i75.epil = phi ptr [ %i.rj, %.lr.ph.i.i73.epil ], [ %.0811.i.i75.epil.init, %.lr.ph.i.i73.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i73.epil ], [ 0, %.lr.ph.i.i73.epil.preheader ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74.epil
  %i.rd = load i8, ptr %i.rc, align 1
  %i.re = zext i8 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.re
  %i.rg = load i16, ptr %i.rf, align 2
  %i.rh = sitofp i16 %i.rg to float
  %i.ri = fmul nnan float %i.rh, f0x38000000
  %i.rj = getelementptr inbounds nuw i8, ptr %.0811.i.i75.epil, i64 4
  store float %i.ri, ptr %.0811.i.i75.epil, align 4
  %i.rk = add nuw i64 %.012.i.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i77, label %.lr.ph.i.i73.epil, !llvm.loop !927

.loopexit.i77:                                    ; preds = %.loopexit.i77.loopexit.unr-lcssa, %.lr.ph.i.i73.epil, %bb.au
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.03046.i69, i64 %i.po
  %i.rm = sub i64 %.03245.i70, %i.pk              ; 2 uses
  %i.rn = add i64 %i.pk, %.02947.i68              ; 2 uses
  %.not39.i78 = icmp eq i64 %i.rm, 0
  br i1 %.not39.i78, label %drwav_read_pcm_frames_f32__mulaw.exit, label %bb.as

drwav_read_pcm_frames_f32__mulaw.exit:            ; preds = %bb.as, %bb.at, %.loopexit.i77, %bb.aq, %bb.ar
  %.034.i66 = phi i64 [ 0, %bb.ar ], [ 0, %bb.aq ], [ %.02947.i68, %bb.as ], [ %i.rn, %.loopexit.i77 ], [ %.02947.i68, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.av

bb.av:                                            ; preds = %bb.d, %bb.a, %drwav_read_pcm_frames_f32__mulaw.exit, %drwav_read_pcm_frames_f32__alaw.exit, %drwav_read_pcm_frames_f32__ieee.exit, %drwav_read_pcm_frames_f32__msadpcm_ima.exit, %drwav_read_pcm_frames_f32__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %.035.i, %drwav_read_pcm_frames_f32__pcm.exit ], [ %.019.lcssa.i, %drwav_read_pcm_frames_f32__msadpcm_ima.exit ], [ %.040.i, %drwav_read_pcm_frames_f32__ieee.exit ], [ %.034.i, %drwav_read_pcm_frames_f32__alaw.exit ], [ %.034.i66, %drwav_read_pcm_frames_f32__mulaw.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_f32le(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @drwav_read_pcm_frames_f32(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_f32be(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @drwav_read_pcm_frames_f32(ptr noundef %0, i64 noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %drwav__bswap_samples_f32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %i.a, %i.d                       ; 5 uses
  %.not8 = icmp eq i64 %i.e, 0
  br i1 %.not8, label %drwav__bswap_samples_f32.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.f, align 4
  %wide.load10 = load <4 x i32>, ptr %i.g, align 4
  %i.h = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.i = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load10)
  store <4 x i32> %i.h, ptr %i.f, align 4
  store <4 x i32> %i.i, ptr %i.g, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !928

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %drwav__bswap_samples_f32.exit, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i7.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.0.i7 = phi i64 [ %i.n, %.lr.ph ], [ %.0.i7.ph, %.lr.ph.preheader11 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i7 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %i.k, align 4
  %i.n = add nuw i64 %.0.i7, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not, label %drwav__bswap_samples_f32.exit, label %.lr.ph, !llvm.loop !929

drwav__bswap_samples_f32.exit:                    ; preds = %.lr.ph, %middle.block, %bb.b, %bb.a
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_u8_to_f32(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not18 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond16 = and i1 %or.cond.not18, %i.c
  br i1 %or.cond16, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = shl i64 %2, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  %scevgep21 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep21
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.e = shl i64 %n.vec, 2
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.g  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %wide.load = load <4 x i8>, ptr %i.h, align 1, !alias.scope !936
  %wide.load22 = load <4 x i8>, ptr %i.i, align 1, !alias.scope !936
  %i.j = uitofp <4 x i8> %wide.load to <4 x float>
  %i.k = uitofp <4 x i8> %wide.load22 to <4 x float>
  %i.l = fmul nnan <4 x float> %i.j, splat (float f0x3C008081)
  %i.m = fmul nnan <4 x float> %i.k, splat (float f0x3C008081)
  %i.n = fadd <4 x float> %i.l, splat (float -1.000000e+00)
  %i.o = fadd <4 x float> %i.m, splat (float -1.000000e+00)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.n, ptr %next.gep, align 4, !alias.scope !937, !noalias !936
  store <4 x float> %i.o, ptr %i.p, align 4, !alias.scope !937, !noalias !936
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !933

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.015.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 2 uses
  %.01114.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader24, %.lr.ph.prol
  %.015.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %.015.ph, %.lr.ph.preheader24 ] ; 2 uses
  %.01114.prol = phi i64 [ %i.x, %.lr.ph.prol ], [ %.01114.ph, %.lr.ph.preheader24 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader24 ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.01114.prol
  %i.s = load i8, ptr %i.r, align 1
  %i.t = uitofp i8 %i.s to float
  %i.u = fmul nnan float %i.t, f0x3C008081
  %i.v = fadd float %i.u, -1.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %.015.prol, i64 4 ; 2 uses
  store float %i.v, ptr %.015.prol, align 4
  %i.x = add nuw i64 %.01114.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !934

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader24
  %.015.unr = phi ptr [ %.015.ph, %.lr.ph.preheader24 ], [ %i.w, %.lr.ph.prol ]
  %.01114.unr = phi i64 [ %.01114.ph, %.lr.ph.preheader24 ], [ %i.x, %.lr.ph.prol ]
  %i.y = sub i64 %.01114.ph, %2
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi ptr [ %i.ba, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01114 = phi i64 [ %i.bb, %.lr.ph ], [ %.01114.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.01114
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = fmul nnan float %i.ac, f0x3C008081
  %i.ae = fadd float %i.ad, -1.000000e+00
  %i.af = getelementptr inbounds nuw i8, ptr %.015, i64 4
  store float %i.ae, ptr %.015, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.01114
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = uitofp i8 %i.ai to float
  %i.ak = fmul nnan float %i.aj, f0x3C008081
  %i.al = fadd float %i.ak, -1.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %.015, i64 8
  store float %i.al, ptr %i.af, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.01114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = uitofp i8 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x3C008081
  %i.as = fadd float %i.ar, -1.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %.015, i64 12
  store float %i.as, ptr %i.am, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.01114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.aw = load i8, ptr %i.av, align 1
end_hunk_5
begin_hunk_6_@drwav_read_pcm_frames_s32:bb.a
  %i.k = load i16, ptr %i.j, align 4
  switch i16 %i.k, label %bb.av [
    i16 1, label %bb.e
    i16 2, label %bb.s
    i16 17, label %bb.s
    i16 3, label %bb.v
    i16 6, label %bb.af
    i16 7, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 32
  br i1 %i.n, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_s32__pcm.exit

._crit_edge.i:                                    ; preds = %bb.e
  %i.p = zext i16 %i.m to i32                     ; 2 uses
  %i.q = and i32 %i.p, 7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = mul nuw nsw i32 %i.u, %i.p
  %i.w = lshr exact i32 %i.v, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i16, ptr %i.x, align 4
  %i.z = zext i16 %i.y to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.i

bb.i:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = zext i16 %i.ab to i32                   ; 3 uses
  %i.ad = udiv i32 %.0.i.i, %i.ac                 ; 5 uses
  %i.ae = urem i32 %.0.i.i, %i.ac
  %i.af = icmp samesign uge i32 %.0.i.i, %i.ac
  %.not.i = icmp eq i32 %i.ae, 0
  %or.cond279 = and i1 %i.af, %.not.i
  br i1 %or.cond279, label %.preheader.i, label %drwav_read_pcm_frames_s32__pcm.exit

.preheader.i:                                     ; preds = %bb.i
  %i.ag = udiv i32 4096, %.0.i.i
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.aj = icmp samesign ugt i32 %i.ad, 8
  %i.ak = shl nuw nsw i32 %i.ad, 3
  %i.al = sub nuw nsw i32 64, %i.ak               ; 2 uses
  %xtraiter265 = and i64 %i.ai, 3                 ; 3 uses
  %i.am = add nsw i32 %i.ad, -1
  %i.an = icmp ult i32 %i.am, 3
  %unroll_iter270 = and i64 %i.ai, 12
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod269 = icmp ne i64 %xtraiter265, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03558.i = phi i64 [ 0, %.preheader.i ], [ %i.gw, %.loopexit.i ] ; 3 uses
  %.03657.i = phi ptr [ %2, %.preheader.i ], [ %i.gu, %.loopexit.i ] ; 16 uses
  %.03856.i = phi i64 [ %1, %.preheader.i ], [ %i.gv, %.loopexit.i ] ; 2 uses
  %.038..i = call i64 @llvm.umin.i64(i64 %.03856.i, i64 %i.ah)
  %i.ao = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i16, ptr %i.aa, align 8
  %i.ar = zext i16 %i.aq to i64
  %i.as = mul i64 %i.ao, %i.ar                    ; 26 uses
  %i.at = mul i64 %i.as, %i.ai
  %i.au = icmp ugt i64 %i.at, 4096
  br i1 %i.au, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %i.ad, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %.preheader56.i.i
  ]

.preheader56.i.i:                                 ; preds = %bb.l
  %.not67.i.i = icmp eq i64 %i.as, 0
  br i1 %.not67.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader56.i.i
  %min.iters.check229 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check229, label %.lr.ph.i.i.preheader249, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.av = add i64 %i.as, -1                       ; 2 uses
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = icmp eq i64 %i.aw, 4294967295
  %i.ay = icmp ugt i64 %i.av, 4294967295
  %i.az = or i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.preheader249, label %vector.ph230

vector.ph230:                                     ; preds = %vector.scevcheck
  %n.vec231 = and i64 %i.as, 8589934584           ; 5 uses
  %i.ba = trunc i64 %n.vec231 to i32
  %i.bb = shl nuw nsw i64 %n.vec231, 2
  %i.bc = getelementptr i8, ptr %.03657.i, i64 %i.bb
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next237, %vector.body232 ] ; 3 uses
  %i.bd = shl i64 %index233, 2
  %next.gep234 = getelementptr i8, ptr %.03657.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index233 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.be, align 16
  %wide.load236 = load <4 x i32>, ptr %i.bf, align 16
  %i.bg = getelementptr i8, ptr %next.gep234, i64 16
  store <4 x i32> %wide.load235, ptr %next.gep234, align 4
  store <4 x i32> %wide.load236, ptr %i.bg, align 4
  %index.next237 = add nuw i64 %index233, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.bh, label %middle.block238, label %vector.body232, !llvm.loop !966

middle.block238:                                  ; preds = %vector.body232
  %cmp.n239 = icmp eq i64 %i.as, %n.vec231
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i.i.preheader249

.lr.ph.i.i.preheader249:                          ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block238
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec231, %middle.block238 ]
  %.03959.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.ba, %middle.block238 ]
  %.04058.i.i.ph = phi ptr [ %.03657.i, %vector.scevcheck ], [ %.03657.i, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block238 ]
  br label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %.not52.i.i = icmp eq i64 %i.as, 0
  br i1 %.not52.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %min.iters.check189 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.preheader243, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec191 = and i64 %i.as, -8                   ; 4 uses
  %i.bi = shl i64 %n.vec191, 2
  %i.bj = getelementptr i8, ptr %.03657.i, i64 %i.bi
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body192 ] ; 3 uses
  %i.bk = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.03657.i, i64 %i.bk ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %index193 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %wide.load195 = load <4 x i8>, ptr %i.bl, align 8
  %wide.load196 = load <4 x i8>, ptr %i.bm, align 4
  %i.bn = zext <4 x i8> %wide.load195 to <4 x i32>
  %i.bo = zext <4 x i8> %wide.load196 to <4 x i32>
  %i.bp = shl nuw <4 x i32> %i.bn, splat (i32 24)
  %i.bq = shl nuw <4 x i32> %i.bo, splat (i32 24)
  %i.br = xor <4 x i32> %i.bp, splat (i32 -2147483648)
  %i.bs = xor <4 x i32> %i.bq, splat (i32 -2147483648)
  %i.bt = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %i.br, ptr %next.gep194, align 4
  store <4 x i32> %i.bs, ptr %i.bt, align 4
  %index.next197 = add nuw i64 %index193, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.bu, label %middle.block198, label %vector.body192, !llvm.loop !967

middle.block198:                                  ; preds = %vector.body192
  %cmp.n199 = icmp eq i64 %i.as, %n.vec191
  br i1 %cmp.n199, label %.loopexit.i, label %.lr.ph.i.i.i.preheader243

.lr.ph.i.i.i.preheader243:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block198
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec191, %middle.block198 ]
  %.0811.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i.i.i.preheader ], [ %i.bj, %middle.block198 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader243, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.012.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw i32 %i.bx, 24
  %i.bz = xor i32 %i.by, -2147483648
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store i32 %i.bz, ptr %.0811.i.i.i, align 4
  %i.cb = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.as
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !968

bb.n:                                             ; preds = %bb.l
  %.not51.i.i = icmp eq i64 %i.as, 0
  br i1 %.not51.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check203 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check203, label %.lr.ph.i45.i.i.preheader245, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec205 = and i64 %i.as, -8                   ; 4 uses
  %i.cc = shl i64 %n.vec205, 2
  %i.cd = getelementptr i8, ptr %.03657.i, i64 %i.cc
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next211, %vector.body206 ] ; 3 uses
  %i.ce = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %.03657.i, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index207 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %wide.load209 = load <4 x i16>, ptr %i.cf, align 16
  %wide.load210 = load <4 x i16>, ptr %i.cg, align 8
  %i.ch = sext <4 x i16> %wide.load209 to <4 x i32>
  %i.ci = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.cj = shl nsw <4 x i32> %i.ch, splat (i32 16)
  %i.ck = shl nsw <4 x i32> %i.ci, splat (i32 16)
  %i.cl = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %i.cj, ptr %next.gep208, align 4
  store <4 x i32> %i.ck, ptr %i.cl, align 4
  %index.next211 = add nuw i64 %index207, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.cm, label %middle.block212, label %vector.body206, !llvm.loop !969

middle.block212:                                  ; preds = %vector.body206
  %cmp.n213 = icmp eq i64 %i.as, %n.vec205
  br i1 %cmp.n213, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader245

.lr.ph.i45.i.i.preheader245:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block212
  %.012.i46.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec205, %middle.block212 ]
  %.0811.i47.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i45.i.i.preheader ], [ %i.cd, %middle.block212 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader245, %.lr.ph.i45.i.i
  %.012.i46.i.i = phi i64 [ %i.cs, %.lr.ph.i45.i.i ], [ %.012.i46.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %.0811.i47.i.i = phi ptr [ %i.cr, %.lr.ph.i45.i.i ], [ %.0811.i47.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i46.i.i
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = sext i16 %i.co to i32
  %i.cq = shl nsw i32 %i.cp, 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i47.i.i, i64 4
  store i32 %i.cq, ptr %.0811.i47.i.i, align 4
  %i.cs = add nuw i64 %.012.i46.i.i, 1            ; 2 uses
  %exitcond.not.i48.i.i = icmp eq i64 %i.cs, %i.as
  br i1 %exitcond.not.i48.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !970

bb.o:                                             ; preds = %bb.l
  %.not.i46.i = icmp eq i64 %i.as, 0
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader

.lr.ph.i49.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check217 = icmp ult i64 %i.as, 4
  br i1 %min.iters.check217, label %.lr.ph.i49.i.i.preheader247, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i49.i.i.preheader
  %n.vec219 = and i64 %i.as, -4                   ; 4 uses
  %i.ct = shl i64 %n.vec219, 2
  %i.cu = getelementptr i8, ptr %.03657.i, i64 %i.ct
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next223, %vector.body220 ] ; 6 uses
  %i.cv = shl i64 %index221, 2
  %next.gep222 = getelementptr i8, ptr %.03657.i, i64 %i.cv
  %i.cw = mul i64 %index221, 3
  %i.cx = mul i64 %index221, 3
  %i.cy = mul i64 %index221, 3
  %i.cz = mul i64 %index221, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cx ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = getelementptr i8, ptr %i.e, i64 %i.cy   ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 6
  %i.df = getelementptr i8, ptr %i.e, i64 %i.cz   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 9
  %i.dh = load i16, ptr %i.da, align 4
  %i.di = load i16, ptr %i.dc, align 1
  %i.dj = load i16, ptr %i.de, align 2
  %i.dk = load i16, ptr %i.dg, align 1
  %i.dl = insertelement <4 x i16> poison, i16 %i.dh, i64 0
  %i.dm = insertelement <4 x i16> %i.dl, i16 %i.di, i64 1
  %i.dn = insertelement <4 x i16> %i.dm, i16 %i.dj, i64 2
  %i.do = insertelement <4 x i16> %i.dn, i16 %i.dk, i64 3
  %i.dp = zext <4 x i16> %i.do to <4 x i32>
  %i.dq = shl nuw nsw <4 x i32> %i.dp, splat (i32 8)
  %i.dr = getelementptr i8, ptr %i.da, i64 2
  %i.ds = getelementptr i8, ptr %i.db, i64 5
  %i.dt = getelementptr i8, ptr %i.dd, i64 8
  %i.du = getelementptr i8, ptr %i.df, i64 11
  %i.dv = load i8, ptr %i.dr, align 2
  %i.dw = load i8, ptr %i.ds, align 1
  %i.dx = load i8, ptr %i.dt, align 4
  %i.dy = load i8, ptr %i.du, align 1
  %i.dz = insertelement <4 x i8> poison, i8 %i.dv, i64 0
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.dw, i64 1
  %i.eb = insertelement <4 x i8> %i.ea, i8 %i.dx, i64 2
  %i.ec = insertelement <4 x i8> %i.eb, i8 %i.dy, i64 3
  %i.ed = zext <4 x i8> %i.ec to <4 x i32>
  %i.ee = shl nuw <4 x i32> %i.ed, splat (i32 24)
  %i.ef = or disjoint <4 x i32> %i.ee, %i.dq
  store <4 x i32> %i.ef, ptr %next.gep222, align 4
  %index.next223 = add nuw i64 %index221, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.eg, label %middle.block224, label %vector.body220, !llvm.loop !971

middle.block224:                                  ; preds = %vector.body220
  %cmp.n225 = icmp eq i64 %i.as, %n.vec219
  br i1 %cmp.n225, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader247

.lr.ph.i49.i.i.preheader247:                      ; preds = %.lr.ph.i49.i.i.preheader, %middle.block224
  %.020.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i49.i.i.preheader ], [ %i.cu, %middle.block224 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i49.i.i.preheader ], [ %n.vec219, %middle.block224 ]
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i.preheader247, %.lr.ph.i49.i.i
  %.020.i.i.i = phi ptr [ %i.er, %.lr.ph.i49.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.es, %.lr.ph.i49.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %i.eh = mul i64 %.01619.i.i.i, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eh ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 1
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = getelementptr i8, ptr %i.ei, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw i32 %i.eo, 24
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store i32 %i.eq, ptr %.020.i.i.i, align 4
  %i.es = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i50.i.i = icmp eq i64 %i.es, %i.as
  br i1 %exitcond.not.i50.i.i, label %.loopexit.i, label %.lr.ph.i49.i.i, !llvm.loop !972

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader249, %.lr.ph.i.i
  %i.et = phi i64 [ %i.ey, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader249 ]
  %.03959.i.i = phi i32 [ %i.ex, %.lr.ph.i.i ], [ %.03959.i.i.ph, %.lr.ph.i.i.preheader249 ]
  %.04058.i.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.04058.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.04058.i.i, i64 4
  store i32 %i.ev, ptr %.04058.i.i, align 4
  %i.ex = add i32 %.03959.i.i, 1                  ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = icmp ugt i64 %i.as, %i.ey
  br i1 %i.ez, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !973

bb.p:                                             ; preds = %bb.l
  br i1 %i.aj, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.not68.i.i = icmp eq i64 %i.as, 0
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph66.i.i

bb.q:                                             ; preds = %bb.p
  %i.fa = shl i64 %i.as, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03657.i, i8 0, i64 %i.fa, i1 false)
  br label %.loopexit.i

.lr.ph66.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.165.i.i = phi i32 [ %i.gr, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14164.i.i = phi ptr [ %i.gq, %.epilog-lcssa ], [ %.03657.i, %.preheader.i.i ] ; 2 uses
  %.04263.i.i = phi ptr [ %i.gn, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.an, label %.epil.preheader, label %.lr.ph66.i.i.new

.lr.ph66.i.i.new:                                 ; preds = %.lr.ph66.i.i, %.lr.ph66.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ] ; 5 uses
  %.03761.i.i = phi i32 [ %i.gf, %.lr.ph66.i.i.new ], [ %i.al, %.lr.ph66.i.i ] ; 5 uses
  %.03860.i.i = phi i64 [ %i.ge, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %niter271 = phi i64 [ %niter271.next.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i64
  %i.fe = zext nneg i32 %.03761.i.i to i64
  %i.ff = shl i64 %i.fd, %i.fe
  %i.fg = or i64 %i.ff, %.03860.i.i
  %i.fh = add i32 %.03761.i.i, 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i64
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = shl i64 %i.fl, %i.fm
  %i.fo = or i64 %i.fn, %i.fg
  %i.fp = add i32 %.03761.i.i, 16
  %i.fq = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i64
  %i.fu = zext nneg i32 %i.fp to i64
  %i.fv = shl i64 %i.ft, %i.fu
  %i.fw = or i64 %i.fv, %i.fo
  %i.fx = add i32 %.03761.i.i, 24
  %i.fy = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i64
  %i.gc = zext nneg i32 %i.fx to i64
  %i.gd = shl i64 %i.gb, %i.gc
  %i.ge = or i64 %i.gd, %i.fw                     ; 3 uses
  %i.gf = add i32 %.03761.i.i, 32                 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.unr-lcssa, label %.lr.ph66.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph66.i.i.new
  br i1 %lcmp.mod267.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph66.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03761.i.i.epil.init = phi i32 [ %i.al, %.lr.ph66.i.i ], [ %i.gf, %.unr-lcssa ]
  %.03860.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.ge, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.r ] ; 2 uses
  %.03761.i.i.epil = phi i32 [ %.03761.i.i.epil.init, %.epil.preheader ], [ %i.gm, %bb.r ] ; 2 uses
  %.03860.i.i.epil = phi i64 [ %.03860.i.i.epil.init, %.epil.preheader ], [ %i.gl, %bb.r ]
  %epil.iter266 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter266.next, %bb.r ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.epil
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i64
  %i.gj = zext nneg i32 %.03761.i.i.epil to i64
  %i.gk = shl i64 %i.gi, %i.gj
  %i.gl = or i64 %i.gk, %.03860.i.i.epil          ; 2 uses
  %i.gm = add i32 %.03761.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.epilog-lcssa, label %bb.r, !llvm.loop !974

.epilog-lcssa:                                    ; preds = %bb.r, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ge, %.unr-lcssa ], [ %i.gl, %bb.r ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %i.ai
  %i.go = lshr i64 %.lcssa, 32
  %i.gp = trunc nuw i64 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %.14164.i.i, i64 4
  store i32 %i.gp, ptr %.14164.i.i, align 4
  %i.gr = add i32 %.165.i.i, 1                    ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = icmp ugt i64 %i.as, %i.gs
  br i1 %i.gt, label %.lr.ph66.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i49.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block224, %middle.block212, %middle.block198, %bb.q, %.preheader.i.i, %bb.o, %bb.n, %bb.m, %.preheader56.i.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.03657.i, i64 %i.as
  %i.gv = sub i64 %.03856.i, %i.ao                ; 2 uses
  %i.gw = add i64 %i.ao, %.03558.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.gv, 0
  br i1 %.not45.i, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.j

drwav_read_pcm_frames_s32__pcm.exit:              ; preds = %bb.j, %bb.k, %.loopexit.i, %bb.f, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.i
  %.040.i = phi i64 [ %i.o, %bb.f ], [ 0, %bb.i ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03558.i, %bb.j ], [ %i.gw, %.loopexit.i ], [ %.03558.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %bb.av

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.pre.i = load i16, ptr %i.gx, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i37, %bb.s
  %i.gy = phi i16 [ %.pre.i, %bb.s ], [ %i.hx, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.s ], [ %i.ia, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.s ], [ %i.hy, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %1, %bb.s ], [ %i.hz, %.loopexit.i37 ] ; 2 uses
  %i.gz = udiv i16 2048, %i.gy
  %i.ha = zext nneg i16 %i.gz to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.ha)
  %i.hb = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %drwav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hd = load i16, ptr %i.gx, align 8            ; 2 uses
  %i.he = zext i16 %i.hd to i64
  %i.hf = mul i64 %i.hb, %i.he                    ; 5 uses
  %.not39.i = icmp eq i64 %i.hf, 0
  br i1 %.not39.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.u
  %min.iters.check175 = icmp ult i64 %i.hf, 8
  br i1 %min.iters.check175, label %.lr.ph.i.i35.preheader251, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec177 = and i64 %i.hf, -8                   ; 4 uses
  %i.hg = shl i64 %n.vec177, 2
  %i.hh = getelementptr i8, ptr %.02031.i, i64 %i.hg
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next183, %vector.body178 ] ; 3 uses
  %i.hi = shl i64 %index179, 2
  %next.gep180 = getelementptr i8, ptr %.02031.i, i64 %i.hi ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index179 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %wide.load181 = load <4 x i16>, ptr %i.hj, align 16
  %wide.load182 = load <4 x i16>, ptr %i.hk, align 8
  %i.hl = sext <4 x i16> %wide.load181 to <4 x i32>
  %i.hm = sext <4 x i16> %wide.load182 to <4 x i32>
  %i.hn = shl nsw <4 x i32> %i.hl, splat (i32 16)
  %i.ho = shl nsw <4 x i32> %i.hm, splat (i32 16)
  %i.hp = getelementptr i8, ptr %next.gep180, i64 16
  store <4 x i32> %i.hn, ptr %next.gep180, align 4
  store <4 x i32> %i.ho, ptr %i.hp, align 4
  %index.next183 = add nuw i64 %index179, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next183, %n.vec177
  br i1 %i.hq, label %middle.block184, label %vector.body178, !llvm.loop !975

middle.block184:                                  ; preds = %vector.body178
  %cmp.n185 = icmp eq i64 %i.hf, %n.vec177
  br i1 %cmp.n185, label %.loopexit.loopexit.i, label %.lr.ph.i.i35.preheader251

.lr.ph.i.i35.preheader251:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block184
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec177, %middle.block184 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.hh, %middle.block184 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader251, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hw, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hv, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = sext i16 %i.hs to i32
  %i.hu = shl nsw i32 %i.ht, 16
  %i.hv = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store i32 %i.hu, ptr %.0811.i.i, align 4
  %i.hw = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hw, %i.hf
  br i1 %exitcond.not.i.i36, label %.loopexit.loopexit.i, label %.lr.ph.i.i35, !llvm.loop !976

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i35, %middle.block184
  %.pre33.i = load i16, ptr %i.gx, align 8        ; 2 uses
  %.pre34.i = zext i16 %.pre33.i to i64
  %.pre35.i = mul i64 %i.hb, %.pre34.i
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.loopexit.loopexit.i, %bb.u
  %.pre-phi36.i = phi i64 [ %.pre35.i, %.loopexit.loopexit.i ], [ 0, %bb.u ]
  %i.hx = phi i16 [ %.pre33.i, %.loopexit.loopexit.i ], [ %i.hd, %bb.u ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %.pre-phi36.i
  %i.hz = sub i64 %.02230.i, %i.hb                ; 2 uses
  %i.ia = add i64 %i.hb, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hz, 0
  br i1 %.not.i38, label %drwav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.t

drwav_read_pcm_frames_s32__msadpcm_ima.exit:      ; preds = %bb.t, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.t ], [ %i.ia, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.av

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ic = load i16, ptr %i.ib, align 2
  %i.id = zext i16 %i.ic to i32                   ; 2 uses
  %i.ie = and i32 %i.id, 7
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = zext i16 %i.ih to i32
  %i.ij = mul nuw nsw i32 %i.ii, %i.id
  %i.ik = lshr exact i32 %i.ij, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

bb.x:                                             ; preds = %bb.v
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.im = load i16, ptr %i.il, align 4
  %i.in = zext i16 %i.im to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

drwav_get_bytes_per_pcm_frame.exit.i41:           ; preds = %bb.w, %bb.x
  %.0.i.i39 = phi i32 [ %i.ik, %bb.w ], [ %i.in, %bb.x ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.y

bb.y:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i41
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ip = load i16, ptr %i.io, align 8
  %i.iq = zext i16 %i.ip to i32                   ; 3 uses
  %i.ir = udiv i32 %.0.i.i39, %i.iq
  %i.is = urem i32 %.0.i.i39, %i.iq
  %.fr.i = freeze i32 %i.ir                       ; 2 uses
  %i.it = icmp samesign uge i32 %.0.i.i39, %i.iq
  %.not.i43 = icmp eq i32 %i.is, 0
  %or.cond280 = and i1 %i.it, %.not.i43
  br i1 %or.cond280, label %.preheader.i44, label %drwav_read_pcm_frames_s32__ieee.exit

.preheader.i44:                                   ; preds = %bb.y
  %i.iu = udiv i32 4096, %.0.i.i39
  %i.iv = zext nneg i32 %i.iu to i64              ; 3 uses
  %i.iw = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us51.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03050.us.i = phi i64 [ %i.jx, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us.i = phi ptr [ %i.jv, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us.i = phi i64 [ %i.jw, %.loopexit.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.033..us.i = call i64 @llvm.umin.i64(i64 %.03348.us.i, i64 %i.iv)
  %i.ix = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us.i
  %i.iz = load i16, ptr %i.io, align 8
  %i.ja = zext i16 %i.iz to i64
  %i.jb = mul i64 %i.ix, %i.ja                    ; 7 uses
  %i.jc = mul i64 %i.jb, %i.iw
  %i.jd = icmp ugt i64 %i.jc, 4096
  br i1 %i.jd, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not13.i.us.i = icmp eq i64 %i.jb, 0
  br i1 %.not13.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.aa
  %min.iters.check161 = icmp ult i64 %i.jb, 8
  br i1 %min.iters.check161, label %.lr.ph.i.i.us.i.preheader252, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec163 = and i64 %i.jb, -8                   ; 4 uses
  %i.je = shl i64 %n.vec163, 2
  %i.jf = getelementptr i8, ptr %.03149.us.i, i64 %i.je
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next169, %vector.body164 ] ; 3 uses
  %i.jg = shl i64 %index165, 2
  %next.gep166 = getelementptr i8, ptr %.03149.us.i, i64 %i.jg ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index165 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load167 = load <4 x float>, ptr %i.jh, align 16
  %wide.load168 = load <4 x float>, ptr %i.ji, align 16
  %i.jj = fmul <4 x float> %wide.load167, splat (float f0x4F000000)
  %i.jk = fmul <4 x float> %wide.load168, splat (float f0x4F000000)
  %i.jl = fptosi <4 x float> %i.jj to <4 x i32>
  %i.jm = fptosi <4 x float> %i.jk to <4 x i32>
  %i.jn = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %i.jl, ptr %next.gep166, align 4
  store <4 x i32> %i.jm, ptr %i.jn, align 4
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next169, %n.vec163
  br i1 %i.jo, label %middle.block170, label %vector.body164, !llvm.loop !977

middle.block170:                                  ; preds = %vector.body164
  %cmp.n171 = icmp eq i64 %i.jb, %n.vec163
  br i1 %cmp.n171, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader252

.lr.ph.i.i.us.i.preheader252:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block170
  %.012.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec163, %middle.block170 ]
  %.0811.i.i.us.i.ph = phi ptr [ %.03149.us.i, %.lr.ph.i.i.us.i.preheader ], [ %i.jf, %middle.block170 ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader252, %.lr.ph.i.i.us.i
  %.012.i.i.us.i = phi i64 [ %i.ju, %.lr.ph.i.i.us.i ], [ %.012.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader252 ] ; 2 uses
  %.0811.i.i.us.i = phi ptr [ %i.jt, %.lr.ph.i.i.us.i ], [ %.0811.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader252 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.012.i.i.us.i
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = fmul float %i.jq, f0x4F000000
  %i.js = fptosi float %i.jr to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %.0811.i.i.us.i, i64 4
  store i32 %i.js, ptr %.0811.i.i.us.i, align 4
  %i.ju = add nuw i64 %.012.i.i.us.i, 1           ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.ju, %i.jb
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !978

.loopexit.us.i:                                   ; preds = %.lr.ph.i.i.us.i, %middle.block170, %bb.aa
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.03149.us.i, i64 %i.jb
  %i.jw = sub i64 %.03348.us.i, %i.ix             ; 2 uses
  %i.jx = add i64 %i.ix, %.03050.us.i             ; 2 uses
  %.not40.us.i = icmp eq i64 %i.jw, 0
  br i1 %.not40.us.i, label %drwav_read_pcm_frames_s32__ieee.exit, label %.preheader.split.us.i

.preheader.split.us51.i:                          ; preds = %.preheader.i44, %.loopexit47.us.i
  %.03050.us52.i = phi i64 [ %i.ky, %.loopexit47.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us53.i = phi ptr [ %i.kw, %.loopexit47.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us54.i = phi i64 [ %i.kx, %.loopexit47.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.033..us55.i = call i64 @llvm.umin.i64(i64 %.03348.us54.i, i64 %i.iv)
  %i.jy = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us55.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us51.i
  %i.ka = load i16, ptr %i.io, align 8
  %i.kb = zext i16 %i.ka to i64
  %i.kc = mul i64 %i.jy, %i.kb                    ; 7 uses
  %i.kd = mul i64 %i.kc, %i.iw
  %i.ke = icmp ugt i64 %i.kd, 4096
  br i1 %i.ke, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i41.us.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i41.us.i, label %.loopexit47.us.i, label %.lr.ph.i9.i.us.i.preheader

.lr.ph.i9.i.us.i.preheader:                       ; preds = %bb.ac
  %min.iters.check = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check, label %.lr.ph.i9.i.us.i.preheader255, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i9.i.us.i.preheader
  %n.vec = and i64 %i.kc, -4                      ; 4 uses
  %i.kf = shl i64 %n.vec, 2
  %i.kg = getelementptr i8, ptr %.03149.us53.i, i64 %i.kf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.03149.us53.i, i64 %i.kh ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load = load <2 x double>, ptr %i.ki, align 16
  %wide.load158 = load <2 x double>, ptr %i.kj, align 16
  %i.kk = fmul <2 x double> %wide.load, splat (double f0x41E0000000000000)
  %i.kl = fmul <2 x double> %wide.load158, splat (double f0x41E0000000000000)
  %i.km = fptosi <2 x double> %i.kk to <2 x i32>
  %i.kn = fptosi <2 x double> %i.kl to <2 x i32>
  %i.ko = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.km, ptr %next.gep, align 4
  store <2 x i32> %i.kn, ptr %i.ko, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !979

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %.loopexit47.us.i, label %.lr.ph.i9.i.us.i.preheader255

.lr.ph.i9.i.us.i.preheader255:                    ; preds = %.lr.ph.i9.i.us.i.preheader, %middle.block
  %.012.i10.i.us.i.ph = phi i64 [ 0, %.lr.ph.i9.i.us.i.preheader ], [ %n.vec, %middle.block ]
  %.0811.i11.i.us.i.ph = phi ptr [ %.03149.us53.i, %.lr.ph.i9.i.us.i.preheader ], [ %i.kg, %middle.block ]
  br label %.lr.ph.i9.i.us.i

.lr.ph.i9.i.us.i:                                 ; preds = %.lr.ph.i9.i.us.i.preheader255, %.lr.ph.i9.i.us.i
  %.012.i10.i.us.i = phi i64 [ %i.kv, %.lr.ph.i9.i.us.i ], [ %.012.i10.i.us.i.ph, %.lr.ph.i9.i.us.i.preheader255 ] ; 2 uses
  %.0811.i11.i.us.i = phi ptr [ %i.ku, %.lr.ph.i9.i.us.i ], [ %.0811.i11.i.us.i.ph, %.lr.ph.i9.i.us.i.preheader255 ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.012.i10.i.us.i
  %i.kr = load double, ptr %i.kq, align 8
  %i.ks = fmul double %i.kr, f0x41E0000000000000
  %i.kt = fptosi double %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %.0811.i11.i.us.i, i64 4
  store i32 %i.kt, ptr %.0811.i11.i.us.i, align 4
  %i.kv = add nuw i64 %.012.i10.i.us.i, 1         ; 2 uses
  %exitcond.not.i12.i.us.i = icmp eq i64 %i.kv, %i.kc
  br i1 %exitcond.not.i12.i.us.i, label %.loopexit47.us.i, label %.lr.ph.i9.i.us.i, !llvm.loop !980

.loopexit47.us.i:                                 ; preds = %.lr.ph.i9.i.us.i, %middle.block, %bb.ac
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.03149.us53.i, i64 %i.kc
  %i.kx = sub i64 %.03348.us54.i, %i.jy           ; 2 uses
  %i.ky = add i64 %i.jy, %.03050.us52.i           ; 2 uses
  %.not40.us56.i = icmp eq i64 %i.kx, 0
  br i1 %.not40.us56.i, label %drwav_read_pcm_frames_s32__ieee.exit, label %.preheader.split.us51.i

.preheader.split.i:                               ; preds = %.preheader.i44, %bb.ae
  %.03050.i = phi i64 [ %i.lj, %bb.ae ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.i = phi ptr [ %i.lh, %bb.ae ], [ %2, %.preheader.i44 ] ; 2 uses
  %.03348.i = phi i64 [ %i.li, %bb.ae ], [ %1, %.preheader.i44 ] ; 2 uses
  %.033..i = call i64 @llvm.umin.i64(i64 %.03348.i, i64 %i.iv)
  %i.kz = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..i, ptr noundef nonnull %i.c) ; 4 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.ad

bb.ad:                                            ; preds = %.preheader.split.i
  %i.lb = load i16, ptr %i.io, align 8
  %i.lc = zext i16 %i.lb to i64
  %i.ld = mul i64 %i.kz, %i.lc                    ; 3 uses
  %i.le = mul i64 %i.ld, %i.iw
  %i.lf = icmp ugt i64 %i.le, 4096
  br i1 %i.lf, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lg = shl i64 %i.ld, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03149.i, i8 0, i64 %i.lg, i1 false)
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.03149.i, i64 %i.ld
  %i.li = sub i64 %.03348.i, %i.kz                ; 2 uses
  %i.lj = add i64 %i.kz, %.03050.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.li, 0
  br i1 %.not40.i, label %drwav_read_pcm_frames_s32__ieee.exit, label %.preheader.split.i

drwav_read_pcm_frames_s32__ieee.exit:             ; preds = %.preheader.split.us51.i, %bb.ab, %.loopexit47.us.i, %.preheader.split.us.i, %bb.z, %.loopexit.us.i, %.preheader.split.i, %bb.ad, %bb.ae, %drwav_get_bytes_per_pcm_frame.exit.i41, %bb.y
  %.035.i = phi i64 [ 0, %bb.y ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i41 ], [ %.03050.us.i, %bb.z ], [ %i.lj, %bb.ae ], [ %.03050.i, %bb.ad ], [ %.03050.i, %.preheader.split.i ], [ %i.jx, %.loopexit.us.i ], [ %.03050.us.i, %.preheader.split.us.i ], [ %i.ky, %.loopexit47.us.i ], [ %.03050.us52.i, %.preheader.split.us51.i ], [ %.03050.us52.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  br label %bb.av

bb.af:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ll = load i16, ptr %i.lk, align 2
  %i.lm = zext i16 %i.ll to i32                   ; 2 uses
  %i.ln = and i32 %i.lm, 7
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.lq = load i16, ptr %i.lp, align 2
  %i.lr = zext i16 %i.lq to i32                   ; 2 uses
  %i.ls = mul nuw nsw i32 %i.lr, %i.lm
  %i.lt = lshr exact i32 %i.ls, 3
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lv = load i16, ptr %i.lu, align 4
  %i.lw = zext i16 %i.lv to i32
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %0, i64 78
  %.pre111 = load i16, ptr %.phi.trans.insert110, align 2
  %.pre112 = zext i16 %.pre111 to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.pre-phi = phi i32 [ %i.lr, %bb.ag ], [ %.pre112, %bb.ah ]
  %.0.i.i47 = phi i32 [ %i.lt, %bb.ag ], [ %i.lw, %bb.ah ] ; 4 uses
  %.not.i.i59 = icmp ne i32 %.0.i.i47, %.pre-phi
  %i.lx = icmp eq i32 %.0.i.i47, 0
  %or.cond.i60 = or i1 %i.lx, %.not.i.i59
  br i1 %or.cond.i60, label %drwav_read_pcm_frames_s32__alaw.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.lz = load i16, ptr %i.ly, align 8            ; 3 uses
  %i.ma = zext i16 %i.lz to i32
  %.lhs.trunc = trunc nuw i32 %.0.i.i47 to i16    ; 3 uses
  %i.mb = udiv i16 %.lhs.trunc, %i.lz
  %i.mc = urem i16 %.lhs.trunc, %i.lz
  %i.md = icmp samesign uge i32 %.0.i.i47, %i.ma
  %.not.i51 = icmp eq i16 %i.mc, 0
  %or.cond281 = select i1 %i.md, i1 %.not.i51, i1 false
  br i1 %or.cond281, label %.preheader.i52, label %drwav_read_pcm_frames_s32__alaw.exit

.preheader.i52:                                   ; preds = %bb.aj
  %i.me = udiv i16 4096, %.lhs.trunc
  %i.mf = zext nneg i16 %i.me to i64
  %i.mg = zext i16 %i.mb to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i57, %.preheader.i52
  %.02947.i = phi i64 [ 0, %.preheader.i52 ], [ %i.ok, %.loopexit.i57 ] ; 3 uses
  %.03046.i = phi ptr [ %2, %.preheader.i52 ], [ %i.oi, %.loopexit.i57 ] ; 3 uses
  %.03245.i = phi i64 [ %1, %.preheader.i52 ], [ %i.oj, %.loopexit.i57 ] ; 2 uses
  %.032..i = call i64 @llvm.umin.i64(i64 %.03245.i, i64 %i.mf)
  %i.mh = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.032..i, ptr noundef nonnull %i.b) ; 4 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %drwav_read_pcm_frames_s32__alaw.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mj = load i16, ptr %i.ly, align 8
  %i.mk = zext i16 %i.mj to i64
  %i.ml = mul i64 %i.mh, %i.mk                    ; 6 uses
  %i.mm = mul i64 %i.ml, %i.mg
  %i.mn = icmp ugt i64 %i.mm, 4096
  br i1 %i.mn, label %drwav_read_pcm_frames_s32__alaw.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not51.i = icmp eq i64 %i.ml, 0
  br i1 %.not51.i, label %.loopexit.i57, label %.lr.ph.i.i53.preheader

.lr.ph.i.i53.preheader:                           ; preds = %bb.am
  %xtraiter259 = and i64 %i.ml, 3                 ; 3 uses
  %i.mo = icmp ult i64 %i.ml, 4
  br i1 %i.mo, label %.lr.ph.i.i53.epil.preheader, label %.lr.ph.i.i53.preheader.new

.lr.ph.i.i53.preheader.new:                       ; preds = %.lr.ph.i.i53.preheader
  %unroll_iter263 = and i64 %i.ml, -4
  br label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %.lr.ph.i.i53, %.lr.ph.i.i53.preheader.new
  %.012.i.i54 = phi i64 [ 0, %.lr.ph.i.i53.preheader.new ], [ %i.ny, %.lr.ph.i.i53 ] ; 5 uses
  %.0811.i.i55 = phi ptr [ %.03046.i, %.lr.ph.i.i53.preheader.new ], [ %i.nx, %.lr.ph.i.i53 ] ; 5 uses
  %niter264 = phi i64 [ 0, %.lr.ph.i.i53.preheader.new ], [ %niter264.next.3, %.lr.ph.i.i53 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.mq = load i8, ptr %i.mp, align 4
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = sext i16 %i.mt to i32
  %i.mv = shl nsw i32 %i.mu, 16
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 4
  store i32 %i.mv, ptr %.0811.i.i55, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  %i.mz = load i8, ptr %i.my, align 1
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2
  %i.nd = sext i16 %i.nc to i32
  %i.ne = shl nsw i32 %i.nd, 16
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 8
  store i32 %i.ne, ptr %i.mw, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 2
  %i.ni = load i8, ptr %i.nh, align 2
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2
  %i.nm = sext i16 %i.nl to i32
  %i.nn = shl nsw i32 %i.nm, 16
  %i.no = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 12
  store i32 %i.nn, ptr %i.nf, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 3
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2
  %i.nv = sext i16 %i.nu to i32
  %i.nw = shl nsw i32 %i.nv, 16
  %i.nx = getelementptr inbounds nuw i8, ptr %.0811.i.i55, i64 16 ; 2 uses
  store i32 %i.nw, ptr %i.no, align 4
  %i.ny = add nuw i64 %.012.i.i54, 4              ; 2 uses
  %niter264.next.3 = add i64 %niter264, 4         ; 2 uses
  %niter264.ncmp.3 = icmp eq i64 %niter264.next.3, %unroll_iter263
  br i1 %niter264.ncmp.3, label %.loopexit.i57.loopexit.unr-lcssa, label %.lr.ph.i.i53

.loopexit.i57.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i53
  %lcmp.mod261.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod261.not, label %.loopexit.i57, label %.lr.ph.i.i53.epil.preheader

.lr.ph.i.i53.epil.preheader:                      ; preds = %.loopexit.i57.loopexit.unr-lcssa, %.lr.ph.i.i53.preheader
  %.012.i.i54.epil.init = phi i64 [ 0, %.lr.ph.i.i53.preheader ], [ %i.ny, %.loopexit.i57.loopexit.unr-lcssa ]
  %.0811.i.i55.epil.init = phi ptr [ %.03046.i, %.lr.ph.i.i53.preheader ], [ %i.nx, %.loopexit.i57.loopexit.unr-lcssa ]
  %lcmp.mod262 = icmp ne i64 %xtraiter259, 0
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %.lr.ph.i.i53.epil

.lr.ph.i.i53.epil:                                ; preds = %.lr.ph.i.i53.epil, %.lr.ph.i.i53.epil.preheader
  %.012.i.i54.epil = phi i64 [ %i.oh, %.lr.ph.i.i53.epil ], [ %.012.i.i54.epil.init, %.lr.ph.i.i53.epil.preheader ] ; 2 uses
  %.0811.i.i55.epil = phi ptr [ %i.og, %.lr.ph.i.i53.epil ], [ %.0811.i.i55.epil.init, %.lr.ph.i.i53.epil.preheader ] ; 2 uses
  %epil.iter260 = phi i64 [ %epil.iter260.next, %.lr.ph.i.i53.epil ], [ 0, %.lr.ph.i.i53.epil.preheader ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.012.i.i54.epil
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2
  %i.oe = sext i16 %i.od to i32
  %i.of = shl nsw i32 %i.oe, 16
  %i.og = getelementptr inbounds nuw i8, ptr %.0811.i.i55.epil, i64 4
  store i32 %i.of, ptr %.0811.i.i55.epil, align 4
  %i.oh = add nuw i64 %.012.i.i54.epil, 1
  %epil.iter260.next = add i64 %epil.iter260, 1   ; 2 uses
  %epil.iter260.cmp.not = icmp eq i64 %epil.iter260.next, %xtraiter259
  br i1 %epil.iter260.cmp.not, label %.loopexit.i57, label %.lr.ph.i.i53.epil, !llvm.loop !981

.loopexit.i57:                                    ; preds = %.loopexit.i57.loopexit.unr-lcssa, %.lr.ph.i.i53.epil, %bb.am
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.03046.i, i64 %i.ml
  %i.oj = sub i64 %.03245.i, %i.mh                ; 2 uses
  %i.ok = add i64 %i.mh, %.02947.i                ; 2 uses
  %.not39.i58 = icmp eq i64 %i.oj, 0
  br i1 %.not39.i58, label %drwav_read_pcm_frames_s32__alaw.exit, label %bb.ak

drwav_read_pcm_frames_s32__alaw.exit:             ; preds = %bb.ak, %bb.al, %.loopexit.i57, %bb.ai, %bb.aj
  %.034.i = phi i64 [ 0, %bb.aj ], [ 0, %bb.ai ], [ %.02947.i, %bb.ak ], [ %i.ok, %.loopexit.i57 ], [ %.02947.i, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %bb.av

bb.an:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.om = load i16, ptr %i.ol, align 2
  %i.on = zext i16 %i.om to i32                   ; 2 uses
  %i.oo = and i32 %i.on, 7
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.or = load i16, ptr %i.oq, align 2
  %i.os = zext i16 %i.or to i32                   ; 2 uses
  %i.ot = mul nuw nsw i32 %i.os, %i.on
  %i.ou = lshr exact i32 %i.ot, 3
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ow = load i16, ptr %i.ov, align 4
  %i.ox = zext i16 %i.ow to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 78
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre113 = zext i16 %.pre to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.pre-phi114 = phi i32 [ %i.os, %bb.ao ], [ %.pre113, %bb.ap ]
  %.0.i.i61 = phi i32 [ %i.ou, %bb.ao ], [ %i.ox, %bb.ap ] ; 4 uses
  %.not.i.i79 = icmp ne i32 %.0.i.i61, %.pre-phi114
  %i.oy = icmp eq i32 %.0.i.i61, 0
  %or.cond.i80 = or i1 %i.oy, %.not.i.i79
  br i1 %or.cond.i80, label %drwav_read_pcm_frames_s32__mulaw.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 8            ; 3 uses
  %i.pb = zext i16 %i.pa to i32
  %.lhs.trunc86 = trunc nuw i32 %.0.i.i61 to i16  ; 3 uses
  %i.pc = udiv i16 %.lhs.trunc86, %i.pa
  %i.pd = urem i16 %.lhs.trunc86, %i.pa
  %i.pe = icmp samesign uge i32 %.0.i.i61, %i.pb
  %.not.i65 = icmp eq i16 %i.pd, 0
  %or.cond282 = select i1 %i.pe, i1 %.not.i65, i1 false
  br i1 %or.cond282, label %.preheader.i67, label %drwav_read_pcm_frames_s32__mulaw.exit

.preheader.i67:                                   ; preds = %bb.ar
  %i.pf = udiv i16 4096, %.lhs.trunc86
  %i.pg = zext nneg i16 %i.pf to i64
  %i.ph = zext i16 %i.pc to i64
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i77, %.preheader.i67
  %.02947.i68 = phi i64 [ 0, %.preheader.i67 ], [ %i.rl, %.loopexit.i77 ] ; 3 uses
  %.03046.i69 = phi ptr [ %2, %.preheader.i67 ], [ %i.rj, %.loopexit.i77 ] ; 3 uses
  %.03245.i70 = phi i64 [ %1, %.preheader.i67 ], [ %i.rk, %.loopexit.i77 ] ; 2 uses
  %.032..i71 = call i64 @llvm.umin.i64(i64 %.03245.i70, i64 %i.pg)
  %i.pi = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.032..i71, ptr noundef nonnull %i.a) ; 4 uses
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %drwav_read_pcm_frames_s32__mulaw.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pk = load i16, ptr %i.oz, align 8
  %i.pl = zext i16 %i.pk to i64
  %i.pm = mul i64 %i.pi, %i.pl                    ; 6 uses
  %i.pn = mul i64 %i.pm, %i.ph
  %i.po = icmp ugt i64 %i.pn, 4096
  br i1 %i.po, label %drwav_read_pcm_frames_s32__mulaw.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not51.i72 = icmp eq i64 %i.pm, 0
  br i1 %.not51.i72, label %.loopexit.i77, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.au
  %xtraiter = and i64 %i.pm, 3                    ; 3 uses
  %i.pp = icmp ult i64 %i.pm, 4
  br i1 %i.pp, label %.lr.ph.i.i73.epil.preheader, label %.lr.ph.i.i73.preheader.new

.lr.ph.i.i73.preheader.new:                       ; preds = %.lr.ph.i.i73.preheader
  %unroll_iter = and i64 %i.pm, -4
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73, %.lr.ph.i.i73.preheader.new
  %.012.i.i74 = phi i64 [ 0, %.lr.ph.i.i73.preheader.new ], [ %i.qz, %.lr.ph.i.i73 ] ; 5 uses
  %.0811.i.i75 = phi ptr [ %.03046.i69, %.lr.ph.i.i73.preheader.new ], [ %i.qy, %.lr.ph.i.i73 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i73.preheader.new ], [ %niter.next.3, %.lr.ph.i.i73 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.pr = load i8, ptr %i.pq, align 4
  %i.ps = zext i8 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.ps
  %i.pu = load i16, ptr %i.pt, align 2
  %i.pv = sext i16 %i.pu to i32
  %i.pw = shl nsw i32 %i.pv, 16
  %i.px = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 4
  store i32 %i.pw, ptr %.0811.i.i75, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 1
  %i.qa = load i8, ptr %i.pz, align 1
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.qb
  %i.qd = load i16, ptr %i.qc, align 2
  %i.qe = sext i16 %i.qd to i32
  %i.qf = shl nsw i32 %i.qe, 16
  %i.qg = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 8
  store i32 %i.qf, ptr %i.px, align 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  %i.qj = load i8, ptr %i.qi, align 2
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.qk
  %i.qm = load i16, ptr %i.ql, align 2
  %i.qn = sext i16 %i.qm to i32
  %i.qo = shl nsw i32 %i.qn, 16
  %i.qp = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 12
  store i32 %i.qo, ptr %i.qg, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 3
  %i.qs = load i8, ptr %i.qr, align 1
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.qt
  %i.qv = load i16, ptr %i.qu, align 2
  %i.qw = sext i16 %i.qv to i32
  %i.qx = shl nsw i32 %i.qw, 16
  %i.qy = getelementptr inbounds nuw i8, ptr %.0811.i.i75, i64 16 ; 2 uses
  store i32 %i.qx, ptr %i.qp, align 4
  %i.qz = add nuw i64 %.012.i.i74, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i77.loopexit.unr-lcssa, label %.lr.ph.i.i73

.loopexit.i77.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i77, label %.lr.ph.i.i73.epil.preheader

.lr.ph.i.i73.epil.preheader:                      ; preds = %.loopexit.i77.loopexit.unr-lcssa, %.lr.ph.i.i73.preheader
  %.012.i.i74.epil.init = phi i64 [ 0, %.lr.ph.i.i73.preheader ], [ %i.qz, %.loopexit.i77.loopexit.unr-lcssa ]
  %.0811.i.i75.epil.init = phi ptr [ %.03046.i69, %.lr.ph.i.i73.preheader ], [ %i.qy, %.loopexit.i77.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.lr.ph.i.i73.epil

.lr.ph.i.i73.epil:                                ; preds = %.lr.ph.i.i73.epil, %.lr.ph.i.i73.epil.preheader
  %.012.i.i74.epil = phi i64 [ %i.ri, %.lr.ph.i.i73.epil ], [ %.012.i.i74.epil.init, %.lr.ph.i.i73.epil.preheader ] ; 2 uses
  %.0811.i.i75.epil = phi ptr [ %i.rh, %.lr.ph.i.i73.epil ], [ %.0811.i.i75.epil.init, %.lr.ph.i.i73.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i73.epil ], [ 0, %.lr.ph.i.i73.epil.preheader ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i74.epil
  %i.rb = load i8, ptr %i.ra, align 1
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.rc
  %i.re = load i16, ptr %i.rd, align 2
  %i.rf = sext i16 %i.re to i32
  %i.rg = shl nsw i32 %i.rf, 16
  %i.rh = getelementptr inbounds nuw i8, ptr %.0811.i.i75.epil, i64 4
  store i32 %i.rg, ptr %.0811.i.i75.epil, align 4
  %i.ri = add nuw i64 %.012.i.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i77, label %.lr.ph.i.i73.epil, !llvm.loop !982

.loopexit.i77:                                    ; preds = %.loopexit.i77.loopexit.unr-lcssa, %.lr.ph.i.i73.epil, %bb.au
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.03046.i69, i64 %i.pm
  %i.rk = sub i64 %.03245.i70, %i.pi              ; 2 uses
  %i.rl = add i64 %i.pi, %.02947.i68              ; 2 uses
  %.not39.i78 = icmp eq i64 %i.rk, 0
  br i1 %.not39.i78, label %drwav_read_pcm_frames_s32__mulaw.exit, label %bb.as

drwav_read_pcm_frames_s32__mulaw.exit:            ; preds = %bb.as, %bb.at, %.loopexit.i77, %bb.aq, %bb.ar
  %.034.i66 = phi i64 [ 0, %bb.ar ], [ 0, %bb.aq ], [ %.02947.i68, %bb.as ], [ %i.rl, %.loopexit.i77 ], [ %.02947.i68, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.av

bb.av:                                            ; preds = %bb.d, %bb.a, %drwav_read_pcm_frames_s32__mulaw.exit, %drwav_read_pcm_frames_s32__alaw.exit, %drwav_read_pcm_frames_s32__ieee.exit, %drwav_read_pcm_frames_s32__msadpcm_ima.exit, %drwav_read_pcm_frames_s32__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %.040.i, %drwav_read_pcm_frames_s32__pcm.exit ], [ %.019.lcssa.i, %drwav_read_pcm_frames_s32__msadpcm_ima.exit ], [ %.035.i, %drwav_read_pcm_frames_s32__ieee.exit ], [ %.034.i, %drwav_read_pcm_frames_s32__alaw.exit ], [ %.034.i66, %drwav_read_pcm_frames_s32__mulaw.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s32le(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @drwav_read_pcm_frames_s32(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s32be(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @drwav_read_pcm_frames_s32(ptr noundef %0, i64 noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %drwav__bswap_samples_s32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %i.a, %i.d                       ; 5 uses
  %.not8 = icmp eq i64 %i.e, 0
  br i1 %.not8, label %drwav__bswap_samples_s32.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.f, align 4
  %wide.load10 = load <4 x i32>, ptr %i.g, align 4
  %i.h = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.i = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load10)
  store <4 x i32> %i.h, ptr %i.f, align 4
  store <4 x i32> %i.i, ptr %i.g, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !983

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %drwav__bswap_samples_s32.exit, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i7.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.0.i7 = phi i64 [ %i.n, %.lr.ph ], [ %.0.i7.ph, %.lr.ph.preheader11 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i7 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %i.k, align 4
  %i.n = add nuw i64 %.0.i7, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not, label %drwav__bswap_samples_s32.exit, label %.lr.ph, !llvm.loop !984

drwav__bswap_samples_s32.exit:                    ; preds = %.lr.ph, %middle.block, %bb.b, %bb.a
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_u8_to_s32(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = shl i64 %2, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  %scevgep18 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.e = shl i64 %n.vec, 2
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.g  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %wide.load = load <4 x i8>, ptr %i.h, align 1, !alias.scope !991
  %wide.load19 = load <4 x i8>, ptr %i.i, align 1, !alias.scope !991
  %i.j = zext <4 x i8> %wide.load to <4 x i32>
  %i.k = zext <4 x i8> %wide.load19 to <4 x i32>
  %i.l = shl nuw <4 x i32> %i.j, splat (i32 24)
  %i.m = shl nuw <4 x i32> %i.k, splat (i32 24)
  %i.n = xor <4 x i32> %i.l, splat (i32 -2147483648)
  %i.o = xor <4 x i32> %i.m, splat (i32 -2147483648)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.n, ptr %next.gep, align 4, !alias.scope !992, !noalias !991
  store <4 x i32> %i.o, ptr %i.p, align 4, !alias.scope !992, !noalias !991
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !988

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0811.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader21, %.lr.ph.prol
  %.012.prol = phi i64 [ %i.x, %.lr.ph.prol ], [ %.012.ph, %.lr.ph.preheader21 ] ; 2 uses
  %.0811.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %.0811.ph, %.lr.ph.preheader21 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader21 ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.012.prol
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw i32 %i.t, 24
  %i.v = xor i32 %i.u, -2147483648
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.prol, i64 4 ; 2 uses
  store i32 %i.v, ptr %.0811.prol, align 4
  %i.x = add nuw i64 %.012.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !989

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader21
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader21 ], [ %i.x, %.lr.ph.prol ]
  %.0811.unr = phi ptr [ %.0811.ph, %.lr.ph.preheader21 ], [ %i.w, %.lr.ph.prol ]
  %i.y = sub i64 %.012.ph, %2
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.bb, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0811 = phi ptr [ %i.ba, %.lr.ph ], [ %.0811.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw i32 %i.ac, 24
  %i.ae = xor i32 %i.ad, -2147483648
  %i.af = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  store i32 %i.ae, ptr %.0811, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = xor i32 %i.ak, -2147483648
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  store i32 %i.al, ptr %i.af, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 24
  %i.as = xor i32 %i.ar, -2147483648
  %i.at = getelementptr inbounds nuw i8, ptr %.0811, i64 12
  store i32 %i.as, ptr %i.am, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.aw = load i8, ptr %i.av, align 1
end_hunk_6
begin_hunk_7_@drmp3_init_file:bb.a
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 23020
  store i32 0, ptr %i.fv, align 4
  %i.fw = zext i32 %i.da to i64
  %i.fx = load i64, ptr %i.v, align 8
  %i.fy = add i64 %i.fx, %i.fw                    ; 2 uses
  store i64 %i.fy, ptr %i.v, align 8
  store i64 %i.fy, ptr %i.t, align 8
  store i8 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %.not300.i = icmp eq i32 %.0248.i, -1
  br i1 %.not300.i, label %drmp3_init_internal.exit, label %bb.aq

.thread334.i:                                     ; preds = %.thread332.i, %drmp3_bs_get_bits.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %drmp3_init_internal.exit

bb.an:                                            ; preds = %.critedge304.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32336
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %.sroa.7.0..sroa_idx364367.i, align 8 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.gc, null
  br i1 %.not.i320.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = load ptr, ptr %i.o, align 8
  call void %i.gc(ptr noundef nonnull %i.ga, ptr noundef %i.gd) #61, !inline_history !1109
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.ge = mul i32 %.0248.i, %i.cx
  %i.gf = zext i32 %i.ge to i64
  store i64 %i.gf, ptr %i.y, align 8
  br label %drmp3_init_internal.exit

drmp3_init_internal.exit:                         ; preds = %.thread334.i, %bb.am, %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.gi = load <2 x i32>, ptr %i.gg, align 8
  store <2 x i32> %i.gi, ptr %i.gh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  br label %drmp3_init_file_with_metadata.exit

bb.ar:                                            ; preds = %bb.ap, %drmp3_copy_allocation_callbacks_or_defaults.exit.i, %bb.t, %bb.d, %bb.an, %bb.ao, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  %i.gj = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %drmp3_init_file_with_metadata.exit

drmp3_init_file_with_metadata.exit:               ; preds = %drmp3_init_internal.exit, %bb.a, %bb.b, %bb.c, %bb.ar
  %.0.i = phi i32 [ 1, %drmp3_init_internal.exit ], [ 0, %bb.a ], [ 0, %bb.ar ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_init_file_w(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @drmp3_init_file_with_metadata_w(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @drmp3_uninit(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3__free_from_callbacks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22936
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, @drmp3__on_read_stdio
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22960 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  store ptr null, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32336
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22976
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %drmp3__free_from_callbacks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23000
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %drmp3__free_from_callbacks.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.j, align 8
  tail call void %i.m(ptr noundef nonnull %i.i, ptr noundef %i.n) #61, !inline_history !13
  br label %drmp3__free_from_callbacks.exit

drmp3__free_from_callbacks.exit:                  ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @drmp3_read_pcm_frames_f32(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [8192 x i16], align 16            ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22936
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22928 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %.02332 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.loopexit ] ; 4 uses
  %i.g = sub nuw i64 %1, %.02332
  %i.h = load i32, ptr %i.f, align 8
  %i.i = udiv i32 8192, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %spec.select = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.j)
  %i.k = call fastcc i64 @drmp3_read_pcm_frames_raw(ptr noundef %0, i64 noundef %spec.select, ptr noundef nonnull %i.a) ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = shl i64 %.02332, 2
  %i.n = load i32, ptr %i.f, align 8
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = mul i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = mul i64 %i.k, %i.o                       ; 5 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %wide.load = load <4 x i16>, ptr %i.s, align 16
  %wide.load39 = load <4 x i16>, ptr %i.t, align 8
  %i.u = sitofp <4 x i16> %wide.load to <4 x float>
  %i.v = sitofp <4 x i16> %wide.load39 to <4 x float>
  %i.w = fmul nnan <4 x float> %i.u, splat (float f0x38000000)
  %i.x = fmul nnan <4 x float> %i.v, splat (float f0x38000000)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> %i.w, ptr %i.y, align 4
  store <4 x float> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader40, %.lr.ph.i
  %.08.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader40 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.08.i
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = fmul nnan float %i.ad, f0x38000000
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.08.i
  store float %i.ae, ptr %i.af, align 4
  %i.ag = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.r
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1111

.loopexit:                                        ; preds = %.lr.ph.i, %middle.block, %bb.e
  %i.ah = add i64 %i.k, %.02332                   ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %bb.d, label %.thread

.thread:                                          ; preds = %.loopexit, %bb.d, %bb.c
  %.023.lcssa = phi i64 [ 0, %bb.c ], [ %.02332, %bb.d ], [ %i.ah, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %.thread
  %.024 = phi i64 [ %.023.lcssa, %.thread ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @drmp3_read_pcm_frames_raw(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32284
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23020 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23016 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32296 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32288 ; 2 uses
  %.not82 = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23024 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 23008
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.061 = phi i64 [ 0, %bb.a ], [ %i.ba, %bb.n ]  ; 4 uses
  %.0 = phi i64 [ %1, %bb.a ], [ %i.bb, %bb.n ]   ; 3 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8              ; 4 uses
  %i.k = load i32, ptr %i.b, align 4
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  %.pre = load i32, ptr %i.c, align 4             ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext i32 %.pre to i64
  %i.o = sub nuw nsw i64 %i.l, %i.j
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 2 uses
  %i.q = trunc nuw i64 %i.p to i32                ; 2 uses
  %i.r = add nuw nsw i64 %i.p, %i.j               ; 2 uses
  store i64 %i.r, ptr %i.a, align 8
  %i.s = load i32, ptr %i.d, align 8
  %i.t = add i32 %i.s, %i.q
  store i32 %i.t, ptr %i.d, align 8
  %i.u = sub i32 %.pre, %i.q                      ; 2 uses
  store i32 %i.u, ptr %i.c, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.r, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.w = phi i32 [ %i.u, %bb.d ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.x) ; 3 uses
  %i.z = load i64, ptr %i.e, align 8              ; 3 uses
  %.not81 = icmp eq i64 %i.z, -1
  br i1 %.not81, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.f, align 8
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 2 uses
  %i.ae = icmp ult i64 %i.v, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = sub nuw i64 %i.ad, %i.v
  %spec.select88 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %.165.in = phi i64 [ %spec.select88, %bb.h ], [ %i.y, %bb.f ], [ %i.y, %bb.e ] ; 5 uses
  %.165 = trunc nuw i64 %.165.in to i32           ; 2 uses
  %.pre91 = load i32, ptr %i.d, align 8           ; 2 uses
  br i1 %.not82, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = shl i64 %.061, 1
  %i.ah = load i32, ptr %i.g, align 8
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = zext i32 %.pre91 to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = load i32, ptr %i.i, align 8
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ap
  %i.ar = shl nuw nsw i64 %.165.in, 1
  %i.as = and i64 %i.ar, 8589934590
  %i.at = mul i64 %i.as, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ak, ptr nonnull align 2 %i.aq, i64 %i.at, i1 false)
  %.pre89 = load i64, ptr %i.a, align 8
  %.pre90 = load i32, ptr %i.d, align 8
  %.pre92 = load i32, ptr %i.c, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = phi i32 [ %.pre92, %bb.j ], [ %i.w, %bb.i ]
  %i.av = phi i32 [ %.pre90, %bb.j ], [ %.pre91, %bb.i ]
  %i.aw = phi i64 [ %.pre89, %bb.j ], [ %i.v, %bb.i ]
  %i.ax = add i64 %i.aw, %.165.in                 ; 2 uses
  store i64 %i.ax, ptr %i.a, align 8
  %i.ay = add i32 %i.av, %.165
  store i32 %i.ay, ptr %i.d, align 8
  %i.az = sub i32 %i.au, %.165
  store i32 %i.az, ptr %i.c, align 4
  %i.ba = add i64 %.165.in, %.061                 ; 4 uses
  %i.bb = sub i64 %.0, %.165.in                   ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i64, ptr %i.e, align 8             ; 3 uses
  %.not83 = icmp eq i64 %i.bd, -1
  br i1 %.not83, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.f, align 8
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp ule i64 %i.bd, %i.bf
  %i.bh = sub nuw i64 %i.bd, %i.bf
  %.not84 = icmp ult i64 %i.ax, %i.bh
  %or.cond = select i1 %i.bg, i1 true, i1 %.not84
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = tail call fastcc range(i32 0, 1153) i32 @drmp3_decode_next_frame_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null)
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.m, %bb.n, %bb.k, %bb.g, %bb.b
  %.2 = phi i64 [ %.061, %bb.b ], [ %.061, %bb.g ], [ %i.ba, %bb.m ], [ %i.ba, %bb.k ], [ %i.ba, %bb.n ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define hidden i64 @drmp3_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22936
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i64 @drmp3_read_pcm_frames_raw(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drmp3_seek_to_pcm_frame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3_seek_to_start_of_stream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22944 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %drmp3_seek_to_start_of_stream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32264
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = icmp ult i64 %i.g, 2147483648
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = trunc nuw nsw i64 %i.g to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22960
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.c(ptr noundef %i.k, i32 noundef range(i32 0, -2147483648) %i.i, i32 noundef 0) #61, !inline_history !14
end_hunk_7
begin_hunk_8_@drmp3__full_read_and_close_f32:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32240 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32284
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23020 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23016 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32288 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23024 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22976 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22992
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22984
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %drmp3__free_from_callbacks.exit, %bb.a
  %.054 = phi i64 [ 0, %bb.a ], [ %i.ct, %drmp3__free_from_callbacks.exit ] ; 5 uses
  %.050 = phi i64 [ 0, %bb.a ], [ %.252, %drmp3__free_from_callbacks.exit ] ; 4 uses
  %.048 = phi ptr [ null, %bb.a ], [ %.2, %drmp3__free_from_callbacks.exit ] ; 10 uses
  %i.q = load i32, ptr %i.c, align 8              ; 3 uses
  %i.r = udiv i32 4096, %i.q
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %drmp3_read_pcm_frames_f32.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %.not.i = icmp ugt i32 %i.q, 4096
  br i1 %.not.i, label %drmp3_read_pcm_frames_f32.exit.thread74, label %.lr.ph.i

drmp3_read_pcm_frames_f32.exit.thread74:          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %drmp3_read_pcm_frames_f32.exit.thread

.lr.ph.i:                                         ; preds = %bb.c, %.loopexit.i
  %i.v = phi i32 [ %i.bw, %.loopexit.i ], [ %i.q, %bb.c ]
  %.02332.i = phi i64 [ %i.cq, %.loopexit.i ], [ 0, %bb.c ] ; 4 uses
  %i.w = sub nuw nsw i64 %i.s, %.02332.i
  %i.x = udiv i32 8192, %i.v
  %i.y = zext nneg i32 %i.x to i64
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %.lr.ph.i
  %.061.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %bb.n ] ; 4 uses
  %.0.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.bm, %bb.n ] ; 3 uses
  %.not.i71 = icmp eq i64 %.0.i, 0
  br i1 %.not.i71, label %drmp3_read_pcm_frames_raw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.e, align 8              ; 4 uses
  %i.aa = load i32, ptr %i.f, align 4
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  %.pre.i = load i32, ptr %i.g, align 4           ; 3 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = zext i32 %.pre.i to i64
  %i.ae = sub nuw nsw i64 %i.ab, %i.z
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ad) ; 2 uses
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = add nuw nsw i64 %i.af, %i.z             ; 2 uses
  store i64 %i.ah, ptr %i.e, align 8
  %i.ai = load i32, ptr %i.h, align 8
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.h, align 8
  %i.ak = sub i32 %.pre.i, %i.ag                  ; 2 uses
  store i32 %i.ak, ptr %i.g, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre89.i = phi i64 [ %i.ah, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %.pre92.i = phi i32 [ %i.ak, %bb.f ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.al = zext i32 %.pre92.i to i64
  %i.am = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.al) ; 3 uses
  %i.an = load i64, ptr %i.i, align 8             ; 5 uses
  %.not81.i = icmp eq i64 %i.an, -1               ; 2 uses
  br i1 %.not81.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.j, align 8
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw i64 %i.an, %i.ap                ; 2 uses
  %i.as = icmp ult i64 %.pre89.i, %i.ar
  br i1 %i.as, label %bb.j, label %drmp3_read_pcm_frames_raw.exit

bb.j:                                             ; preds = %bb.i
  %i.at = sub nuw i64 %i.ar, %.pre89.i
  %spec.select88.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.165.in.i = phi i64 [ %spec.select88.i, %bb.j ], [ %i.am, %bb.h ], [ %i.am, %bb.g ] ; 5 uses
  %.165.i = trunc nuw i64 %.165.in.i to i32       ; 2 uses
  %.pre91.i = load i32, ptr %i.h, align 8         ; 2 uses
  %i.au = shl i64 %.061.i, 1
  %i.av = load i32, ptr %i.c, align 8
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = mul i64 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = zext i32 %.pre91.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = load i32, ptr %i.l, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bd
  %i.bf = shl nuw nsw i64 %.165.in.i, 1
  %i.bg = and i64 %i.bf, 8589934590
  %i.bh = mul i64 %i.bg, %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ay, ptr nonnull align 2 %i.be, i64 %i.bh, i1 false)
  %i.bi = add i64 %.pre89.i, %.165.in.i           ; 2 uses
  store i64 %i.bi, ptr %i.e, align 8
  %i.bj = add i32 %.pre91.i, %.165.i
  store i32 %i.bj, ptr %i.h, align 8
  %i.bk = sub i32 %.pre92.i, %.165.i
  store i32 %i.bk, ptr %i.g, align 4
  %i.bl = add i64 %.165.in.i, %.061.i             ; 4 uses
  %i.bm = sub i64 %.0.i, %.165.in.i               ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %drmp3_read_pcm_frames_raw.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not81.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.j, align 8
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ule i64 %i.an, %i.bp
  %i.br = sub nuw i64 %i.an, %i.bp
  %.not84.i = icmp ult i64 %i.bi, %i.br
  %or.cond.i = select i1 %i.bq, i1 true, i1 %.not84.i
  br i1 %or.cond.i, label %bb.n, label %drmp3_read_pcm_frames_raw.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = tail call fastcc range(i32 0, 1153) i32 @drmp3_decode_next_frame_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null)
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %drmp3_read_pcm_frames_raw.exit, label %bb.d

drmp3_read_pcm_frames_raw.exit:                   ; preds = %bb.d, %bb.i, %bb.k, %bb.m, %bb.n
  %.2.i = phi i64 [ %.061.i, %bb.d ], [ %.061.i, %bb.i ], [ %i.bl, %bb.m ], [ %i.bl, %bb.k ], [ %i.bl, %bb.n ] ; 3 uses
  %i.bu = icmp eq i64 %.2.i, 0
  br i1 %i.bu, label %drmp3_read_pcm_frames_f32.exit, label %bb.o

bb.o:                                             ; preds = %drmp3_read_pcm_frames_raw.exit
  %i.bv = shl nuw nsw i64 %.02332.i, 2
  %i.bw = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = mul nuw nsw i64 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.by ; 2 uses
  %i.ca = mul i64 %.2.i, %i.bx                    ; 5 uses
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %wide.load = load <4 x i16>, ptr %i.cb, align 16
  %wide.load144 = load <4 x i16>, ptr %i.cc, align 8
  %i.cd = sitofp <4 x i16> %wide.load to <4 x float>
  %i.ce = sitofp <4 x i16> %wide.load144 to <4 x float>
  %i.cf = fmul nnan <4 x float> %i.cd, splat (float f0x38000000)
  %i.cg = fmul nnan <4 x float> %i.ce, splat (float f0x38000000)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> %i.cf, ptr %i.ch, align 4
  store <4 x float> %i.cg, ptr %i.ci, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader145

.lr.ph.i.i.preheader145:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader145, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader145 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.08.i.i
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = sitofp i16 %i.cl to float
  %i.cn = fmul nnan float %i.cm, f0x38000000
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.08.i.i
  store float %i.cn, ptr %i.co, align 4
  %i.cp = add nuw i64 %.08.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cp, %i.ca
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1117

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %bb.o
  %i.cq = add i64 %.2.i, %.02332.i                ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.s
  br i1 %i.cr, label %.lr.ph.i, label %drmp3_read_pcm_frames_f32.exit

drmp3_read_pcm_frames_f32.exit:                   ; preds = %drmp3_read_pcm_frames_raw.exit, %.loopexit.i
  %.023.lcssa.i = phi i64 [ %i.cq, %.loopexit.i ], [ %.02332.i, %drmp3_read_pcm_frames_raw.exit ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.cs = icmp eq i64 %.023.lcssa.i, 0
  br i1 %i.cs, label %drmp3_read_pcm_frames_f32.exit.thread, label %bb.p

bb.p:                                             ; preds = %drmp3_read_pcm_frames_f32.exit
  %i.ct = add i64 %.023.lcssa.i, %.054            ; 4 uses
  %i.cu = icmp ult i64 %.050, %i.ct
  br i1 %i.cu, label %bb.q, label %drmp3__free_from_callbacks.exit

bb.q:                                             ; preds = %bb.p
  %i.cv = shl i64 %.050, 1
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.ct) ; 4 uses
  %i.cw = load i32, ptr %i.c, align 8
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = shl i64 %spec.select, 2
  %i.cz = mul i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = shl i64 %.050, 2
  %i.db = mul i64 %i.da, %i.cx
  %i.dc = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i67 = icmp eq ptr %i.dc, null
  br i1 %.not.i67, label %bb.r, label %drmp3__realloc_from_callbacks.exit

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not25.i = icmp eq ptr %i.dd, null
  br i1 %.not25.i, label %drmp3__realloc_from_callbacks.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %i.p, align 8
  %.not26.i = icmp eq ptr %i.de, null
  br i1 %.not26.i, label %drmp3__realloc_from_callbacks.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.m, align 8
  %i.dg = tail call ptr %i.dd(i64 noundef %i.cz, ptr noundef %i.df) #61, !inline_history !15 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %drmp3__realloc_from_callbacks.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not27.i = icmp eq ptr %.048, null
  br i1 %.not27.i, label %drmp3__free_from_callbacks.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.048, i64 %i.db, i1 false)
  %i.di = load ptr, ptr %i.p, align 8
  %i.dj = load ptr, ptr %i.m, align 8
  tail call void %i.di(ptr noundef nonnull %.048, ptr noundef %i.dj) #61, !inline_history !15
  br label %drmp3__free_from_callbacks.exit

drmp3__realloc_from_callbacks.exit:               ; preds = %bb.q
  %i.dk = load ptr, ptr %i.m, align 8
  %i.dl = tail call ptr %i.dc(ptr noundef %.048, i64 noundef %i.cz, ptr noundef %i.dk) #61, !inline_history !15 ; 2 uses
  %.not = icmp eq ptr %i.dl, null
  br i1 %.not, label %drmp3__realloc_from_callbacks.exit.thread, label %drmp3__free_from_callbacks.exit

drmp3__realloc_from_callbacks.exit.thread:        ; preds = %bb.r, %bb.s, %bb.t, %drmp3__realloc_from_callbacks.exit
  %i.dm = icmp eq ptr %.048, null
  br i1 %i.dm, label %drmp3_read_pcm_frames_f32.exit.thread, label %bb.w

bb.w:                                             ; preds = %drmp3__realloc_from_callbacks.exit.thread
  %i.dn = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i68 = icmp eq ptr %i.dn, null
  br i1 %.not.i68, label %drmp3_read_pcm_frames_f32.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = load ptr, ptr %i.m, align 8
  tail call void %i.dn(ptr noundef nonnull %.048, ptr noundef %i.do) #61, !inline_history !13
  br label %drmp3_read_pcm_frames_f32.exit.thread

drmp3__free_from_callbacks.exit:                  ; preds = %drmp3__realloc_from_callbacks.exit, %bb.v, %bb.u, %bb.p
  %.252 = phi i64 [ %spec.select, %bb.v ], [ %.050, %bb.p ], [ %spec.select, %bb.u ], [ %spec.select, %drmp3__realloc_from_callbacks.exit ]
  %.2 = phi ptr [ %i.dg, %bb.v ], [ %.048, %bb.p ], [ %i.dg, %bb.u ], [ %i.dl, %drmp3__realloc_from_callbacks.exit ] ; 3 uses
  %i.dp = load i32, ptr %i.c, align 8
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = mul i64 %.054, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %i.dr
  %i.dt = shl i64 %.023.lcssa.i, 2
  %i.du = mul i64 %i.dt, %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ds, ptr nonnull align 16 %i.b, i64 %i.du, i1 false)
  %.not64 = icmp eq i64 %.023.lcssa.i, %i.s
  br i1 %.not64, label %bb.b, label %drmp3_read_pcm_frames_f32.exit.thread

drmp3_read_pcm_frames_f32.exit.thread:            ; preds = %bb.b, %drmp3__free_from_callbacks.exit, %drmp3_read_pcm_frames_f32.exit, %bb.x, %bb.w, %drmp3__realloc_from_callbacks.exit.thread, %drmp3_read_pcm_frames_f32.exit.thread74
  %.357.ph = phi i64 [ %.054, %drmp3_read_pcm_frames_f32.exit.thread74 ], [ 0, %drmp3__realloc_from_callbacks.exit.thread ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.054, %bb.b ], [ %.054, %drmp3_read_pcm_frames_f32.exit ], [ %i.ct, %drmp3__free_from_callbacks.exit ]
  %.3.ph = phi ptr [ %.048, %drmp3_read_pcm_frames_f32.exit.thread74 ], [ null, %drmp3__realloc_from_callbacks.exit.thread ], [ null, %bb.w ], [ null, %bb.x ], [ %.048, %bb.b ], [ %.048, %drmp3_read_pcm_frames_f32.exit ], [ %.2, %drmp3__free_from_callbacks.exit ]
  %.not65 = icmp eq ptr %1, null
  br i1 %.not65, label %bb.z, label %bb.y

bb.y:                                             ; preds = %drmp3_read_pcm_frames_f32.exit.thread
  %i.dv = load i32, ptr %i.c, align 8
  store i32 %i.dv, ptr %1, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 22932
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dx, ptr %i.dy, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %drmp3_read_pcm_frames_f32.exit.thread
  %i.dz = load ptr, ptr %i.d, align 8
  %i.ea = icmp eq ptr %i.dz, @drmp3__on_read_stdio
  br i1 %i.ea, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 22960 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not.i70 = icmp eq ptr %i.ec, null
  br i1 %.not.i70, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = tail call i32 @fclose(ptr noundef nonnull %i.ec) ; 0 uses
  store ptr null, ptr %i.eb, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32336
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %drmp3_uninit.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i69, label %drmp3_uninit.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load ptr, ptr %i.m, align 8
  tail call void %i.eh(ptr noundef nonnull %i.ef, ptr noundef %i.ei) #61, !inline_history !16
  br label %drmp3_uninit.exit

drmp3_uninit.exit:                                ; preds = %bb.ac, %bb.ad, %bb.ae
  %.not66 = icmp eq ptr %2, null
  br i1 %.not66, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %drmp3_uninit.exit
  store i64 %.357.ph, ptr %2, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %drmp3_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  ret ptr %.3.ph
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_and_read_pcm_frames_s16(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #8 {
bb.a:
  %7 = alloca %struct.drmp3, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #61
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3_init.exit.thread, label %drmp3_init.exit

drmp3_init.exit:                                  ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %7, i8 0, i64 32376, i1 false)
  %i.b = call fastcc i32 @drmp3_init_internal(ptr noundef nonnull %7, ptr noundef nonnull %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef null, ptr noundef %3, ptr noundef %3, ptr noundef readonly %6)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %drmp3_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %drmp3_init.exit
  %i.c = call fastcc ptr @drmp3__full_read_and_close_s16(ptr noundef %7, ptr noundef %4, ptr noundef %5)
  br label %drmp3_init.exit.thread

drmp3_init.exit.thread:                           ; preds = %bb.a, %drmp3_init.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %drmp3_init.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @drmp3__full_read_and_close_s16(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i16], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22928 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22936 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22976 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22992
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22984
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %drmp3__free_from_callbacks.exit, %bb.a
  %.054 = phi i64 [ 0, %bb.a ], [ %i.o, %drmp3__free_from_callbacks.exit ] ; 4 uses
  %.050 = phi i64 [ 0, %bb.a ], [ %.252, %drmp3__free_from_callbacks.exit ] ; 3 uses
  %.048 = phi ptr [ null, %bb.a ], [ %.2, %drmp3__free_from_callbacks.exit ] ; 9 uses
  %i.h = load i32, ptr %i.b, align 8
  %i.i = udiv i32 4096, %i.h
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %drmp3_read_pcm_frames_s16.exit.thread, label %drmp3_read_pcm_frames_s16.exit

end_hunk_8
begin_hunk_9_@jar_mod_load:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 560
  %wide.load.17 = load <16 x i8>, ptr %i.bv, align 1
  %wide.load179.17 = load <16 x i8>, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 560
  store <16 x i8> %wide.load.17, ptr %i.bx, align 1
  store <16 x i8> %wide.load179.17, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 592
  %wide.load.18 = load <16 x i8>, ptr %i.bz, align 1
  %wide.load179.18 = load <16 x i8>, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 592
  store <16 x i8> %wide.load.18, ptr %i.cb, align 1
  store <16 x i8> %wide.load179.18, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 624
  %wide.load.19 = load <16 x i8>, ptr %i.cd, align 1
  %wide.load179.19 = load <16 x i8>, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 624
  store <16 x i8> %wide.load.19, ptr %i.cf, align 1
  store <16 x i8> %wide.load179.19, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 656
  %wide.load.20 = load <16 x i8>, ptr %i.ch, align 1
  %wide.load179.20 = load <16 x i8>, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <16 x i8> %wide.load.20, ptr %i.cj, align 1
  store <16 x i8> %wide.load179.20, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 688
  %wide.load.21 = load <16 x i8>, ptr %i.cl, align 1
  %wide.load179.21 = load <16 x i8>, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <16 x i8> %wide.load.21, ptr %i.cn, align 1
  store <16 x i8> %wide.load179.21, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 720
  %wide.load.22 = load <16 x i8>, ptr %i.cp, align 1
  %wide.load179.22 = load <16 x i8>, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <16 x i8> %wide.load.22, ptr %i.cr, align 1
  store <16 x i8> %wide.load179.22, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 752
  %wide.load.23 = load <16 x i8>, ptr %i.ct, align 1
  %wide.load179.23 = load <16 x i8>, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 752
  store <16 x i8> %wide.load.23, ptr %i.cv, align 1
  store <16 x i8> %wide.load179.23, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 784
  %wide.load.24 = load <16 x i8>, ptr %i.cx, align 1
  %wide.load179.24 = load <16 x i8>, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 784
  store <16 x i8> %wide.load.24, ptr %i.cz, align 1
  store <16 x i8> %wide.load179.24, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 816
  %wide.load.25 = load <16 x i8>, ptr %i.db, align 1
  %wide.load179.25 = load <16 x i8>, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 816
  store <16 x i8> %wide.load.25, ptr %i.dd, align 1
  store <16 x i8> %wide.load179.25, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 848
  %wide.load.26 = load <16 x i8>, ptr %i.df, align 1
  %wide.load179.26 = load <16 x i8>, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 848
  store <16 x i8> %wide.load.26, ptr %i.dh, align 1
  store <16 x i8> %wide.load179.26, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 880
  %wide.load.27 = load <16 x i8>, ptr %i.dj, align 1
  %wide.load179.27 = load <16 x i8>, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 880
  store <16 x i8> %wide.load.27, ptr %i.dl, align 1
  store <16 x i8> %wide.load179.27, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 912
  %wide.load.28 = load <16 x i8>, ptr %i.dn, align 1
  %wide.load179.28 = load <16 x i8>, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <16 x i8> %wide.load.28, ptr %i.dp, align 1
  store <16 x i8> %wide.load179.28, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 944
  %wide.load.29 = load <16 x i8>, ptr %i.dr, align 1
  %wide.load179.29 = load <16 x i8>, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 944
  store <16 x i8> %wide.load.29, ptr %i.dt, align 1
  store <16 x i8> %wide.load179.29, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 976
  %wide.load.30 = load <16 x i8>, ptr %i.dv, align 1
  %wide.load179.30 = load <16 x i8>, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <16 x i8> %wide.load.30, ptr %i.dx, align 1
  store <16 x i8> %wide.load179.30, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %wide.load.31 = load <16 x i8>, ptr %i.dz, align 1
  %wide.load179.31 = load <16 x i8>, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store <16 x i8> %wide.load.31, ptr %i.eb, align 1
  store <16 x i8> %wide.load179.31, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %wide.load.32 = load <16 x i8>, ptr %i.ed, align 1
  %wide.load179.32 = load <16 x i8>, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <16 x i8> %wide.load.32, ptr %i.ef, align 1
  store <16 x i8> %wide.load179.32, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %wide.load181 = load <4 x i8>, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store <4 x i8> %wide.load181, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %wide.load181.1 = load <4 x i8>, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store <4 x i8> %wide.load181.1, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %wide.load181.2 = load <4 x i8>, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store <4 x i8> %wide.load181.2, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 1068
  %wide.load181.3 = load <4 x i8>, ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1068
  store <4 x i8> %wide.load181.3, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %wide.load181.4 = load <4 x i8>, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store <4 x i8> %wide.load181.4, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %wide.load181.5 = load <4 x i8>, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store <4 x i8> %wide.load181.5, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %wide.load181.6 = load <4 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store <4 x i8> %wide.load181.6, ptr %i.eu, align 1
  br label %memcopy.exit

.preheader128:                                    ; preds = %vector.memcheck, %.preheader128
  %.08.i = phi i64 [ %i.fk, %.preheader128 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %.08.i
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.08.i
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = or disjoint i64 %.08.i, 1               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey
  store i8 %i.fa, ptr %i.fb, align 1
  %i.fc = or disjoint i64 %.08.i, 2               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fc
  store i8 %i.fe, ptr %i.ff, align 1
  %i.fg = or disjoint i64 %.08.i, 3               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1
  %i.fk = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fk, 1084
  br i1 %exitcond.not.i.3, label %memcopy.exit, label %.preheader128, !llvm.loop !1126

memcopy.exit:                                     ; preds = %.preheader128, %vector.body
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 6 uses
  store i16 0, ptr %i.fl, align 8
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @modlist, i64 8), align 8 ; 2 uses
  %.not132 = icmp eq i32 %i.fm, 0
  br i1 %.not132, label %iter.check192, label %.lr.ph

.lr.ph:                                           ; preds = %memcopy.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fo = load i8, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1081
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1082
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1083
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %memcompare.exit.thread
  %i.fs = phi i16 [ 0, %.lr.ph ], [ %i.ge, %memcompare.exit.thread ] ; 4 uses
  %3 = phi i32 [ %i.fm, %.lr.ph ], [ %i.gh, %memcompare.exit.thread ]
  %4 = phi ptr [ @modlist, %.lr.ph ], [ %i.gf, %memcompare.exit.thread ] ; 4 uses
  %.098133 = phi i16 [ 0, %.lr.ph ], [ %5, %memcompare.exit.thread ]
  %i.ft = load i8, ptr %4, align 1
  %.not.i = icmp eq i8 %i.fo, %i.ft
  br i1 %.not.i, label %bb.c, label %memcompare.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.fu = load i8, ptr %i.fp, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.fw = load i8, ptr %i.fv, align 1
  %.not.1.i = icmp eq i8 %i.fu, %i.fw
  br i1 %.not.1.i, label %bb.d, label %memcompare.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.fx = load i8, ptr %i.fq, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.fz = load i8, ptr %i.fy, align 1
  %.not.2.i = icmp eq i8 %i.fx, %i.fz
  br i1 %.not.2.i, label %memcompare.exit, label %memcompare.exit.thread

memcompare.exit:                                  ; preds = %bb.d
  %i.ga = load i8, ptr %i.fr, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.gc = load i8, ptr %i.gb, align 1
  %.not.3.i.not = icmp eq i8 %i.ga, %i.gc
  br i1 %.not.3.i.not, label %bb.e, label %memcompare.exit.thread

bb.e:                                             ; preds = %memcompare.exit
  %i.gd = trunc i32 %3 to i16                     ; 2 uses
  store i16 %i.gd, ptr %i.fl, align 8
  br label %memcompare.exit.thread

memcompare.exit.thread:                           ; preds = %bb.c, %bb.d, %bb.b, %bb.e, %memcompare.exit
  %i.ge = phi i16 [ %i.fs, %bb.c ], [ %i.fs, %bb.d ], [ %i.fs, %bb.b ], [ %i.gd, %bb.e ], [ %i.fs, %memcompare.exit ] ; 2 uses
  %5 = add i16 %.098133, 1                        ; 2 uses
  %6 = zext i16 %5 to i64
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr @modlist, i64 %6 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not = icmp eq i32 %i.gh, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %memcompare.exit.thread
  %i.gi = icmp eq i16 %i.ge, 0
  br i1 %i.gi, label %iter.check192, label %bb.f

iter.check192:                                    ; preds = %memcopy.exit, %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store <4 x i8> <i8 77, i8 46, i8 75, i8 46>, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 470 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 950
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 486
  %wide.load187 = load <16 x i8>, ptr %i.gk, align 2
  %wide.load188 = load <16 x i8>, ptr %i.gm, align 2
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 966
  store <16 x i8> %wide.load187, ptr %i.gl, align 2
  store <16 x i8> %wide.load188, ptr %i.gn, align 2
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 502
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 518
  %wide.load187.1 = load <16 x i8>, ptr %i.go, align 2
  %wide.load188.1 = load <16 x i8>, ptr %i.gp, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 982
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 998
  store <16 x i8> %wide.load187.1, ptr %i.gq, align 2
  store <16 x i8> %wide.load188.1, ptr %i.gr, align 2
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 534
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 550
  %wide.load187.2 = load <16 x i8>, ptr %i.gs, align 2
  %wide.load188.2 = load <16 x i8>, ptr %i.gt, align 2
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1014
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1030
  store <16 x i8> %wide.load187.2, ptr %i.gu, align 2
  store <16 x i8> %wide.load188.2, ptr %i.gv, align 2
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 566
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 582
  %wide.load187.3 = load <16 x i8>, ptr %i.gw, align 2
  %wide.load188.3 = load <16 x i8>, ptr %i.gx, align 2
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1046
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1062
  store <16 x i8> %wide.load187.3, ptr %i.gy, align 2
  store <16 x i8> %wide.load188.3, ptr %i.gz, align 2
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 598
  %wide.load198 = load <2 x i8>, ptr %i.ha, align 2
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1078
  store <2 x i8> %wide.load198, ptr %i.hb, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(480) %i.gk, i8 0, i64 480, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i16 4, ptr %i.fl, align 8
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 1084
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %iter.check192
  %.0 = phi ptr [ %i.hd, %bb.f ], [ %i.hc, %iter.check192 ] ; 2 uses
  %.not111 = icmp ult ptr %.0, %i.b
  br i1 %.not111, label %.preheader127, label %.loopexit

.preheader127:                                    ; preds = %bb.g
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  br label %.preheader125

.preheader125:                                    ; preds = %bb.l, %.preheader127
  %indvars.iv150.a = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next151.1, %bb.l ] ; 3 uses
  %.1136 = phi ptr [ %.0, %.preheader127 ], [ %.2.1, %bb.l ]
  %.096135 = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.1, %bb.l ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv150.a
  br label %bb.h

.preheader:                                       ; preds = %bb.l
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.hh, i8 0, i64 248, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.m

bb.h:                                             ; preds = %.preheader125, %bb.i
  %indvars.iv.a = phi i64 [ %.096135, %.preheader125 ], [ %indvars.iv.next.a, %bb.i ] ; 4 uses
  %.2 = phi ptr [ %.1136, %.preheader125 ], [ %i.hp, %bb.i ] ; 3 uses
  %i.hj = load i8, ptr %i.hg, align 1
  %i.hk = zext i8 %i.hj to i64
  %.not114 = icmp samesign ugt i64 %indvars.iv.a, %i.hk
  br i1 %.not114, label %.preheader125.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.a
  store ptr %.2, ptr %i.hl, align 8
  %i.hm = load i16, ptr %i.fl, align 8
  %i.hn = zext i16 %i.hm to i64
  %i.ho = shl nuw nsw i64 %i.hn, 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ho ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1
  %.not115 = icmp ult ptr %i.hp, %i.b
  br i1 %.not115, label %bb.h, label %.loopexit

.preheader125.1:                                  ; preds = %bb.h
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv150.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader125.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.a, %.preheader125.1 ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %.2.1 = phi ptr [ %.2, %.preheader125.1 ], [ %i.hy, %bb.k ] ; 4 uses
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = zext i8 %i.hs to i64
  %.not114.1 = icmp samesign ugt i64 %indvars.iv.1, %i.ht
  br i1 %.not114.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.1
  store ptr %.2.1, ptr %i.hu, align 8
  %i.hv = load i16, ptr %i.fl, align 8
  %i.hw = zext i16 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 8
  %i.hy = getelementptr inbounds nuw i8, ptr %.2.1, i64 %i.hx ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %.not115.1 = icmp ult ptr %i.hy, %i.b
  br i1 %.not115.1, label %bb.j, label %.loopexit

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150.a, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next151.1, 128
  br i1 %exitcond.not.1, label %.preheader, label %.preheader125

bb.m:                                             ; preds = %.preheader, %bb.q
  %indvars.iv156 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next157, %bb.q ] ; 2 uses
  %.3140 = phi ptr [ %.2.1, %.preheader ], [ %.4, %bb.q ] ; 3 uses
  %.095139 = phi ptr [ %i.hi, %.preheader ], [ %i.iw, %bb.q ] ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.095139, i64 22 ; 3 uses
  %i.ia = load i16, ptr %i.hz, align 1
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.ia)
  %i.ib = shl i16 %rev, 1                         ; 2 uses
  store i16 %i.ib, ptr %i.hz, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.095139, i64 26 ; 3 uses
  %i.id = load i16, ptr %i.ic, align 1
  %rev112 = tail call i16 @llvm.bswap.i16(i16 %i.id)
  %i.ie = shl i16 %rev112, 1
  store i16 %i.ie, ptr %i.ic, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.095139, i64 28 ; 4 uses
  %i.ig = load i16, ptr %i.if, align 1
  %rev113 = tail call i16 @llvm.bswap.i16(i16 %i.ig)
  %i.ih = shl i16 %rev113, 1
  store i16 %i.ih, ptr %i.if, align 1
  %i.ii = icmp eq i16 %i.ib, 0
  br i1 %i.ii, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv156
  store ptr %.3140, ptr %i.ij, align 8
  %i.ik = load i16, ptr %i.hz, align 1            ; 3 uses
  %i.il = zext i16 %i.ik to i32
  %i.im = zext i16 %i.ik to i64
  %i.in = getelementptr inbounds nuw i8, ptr %.3140, i64 %i.im ; 2 uses
  %i.io = load i16, ptr %i.if, align 1
  %i.ip = zext i16 %i.io to i32
  %i.iq = load i16, ptr %i.ic, align 1            ; 2 uses
  %i.ir = zext i16 %i.iq to i32
  %i.is = add nuw nsw i32 %i.ir, %i.ip
  %i.it = icmp samesign ugt i32 %i.is, %i.il
  br i1 %i.it, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.iu = sub i16 %i.ik, %i.iq
  store i16 %i.iu, ptr %i.if, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.iv = icmp ugt ptr %i.in, %i.b
  br i1 %i.iv, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.4 = phi ptr [ %.3140, %bb.m ], [ %i.in, %bb.p ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.095139, i64 30
  %exitcond159.not = icmp eq i64 %indvars.iv.next157, 31
  br i1 %exitcond159.not, label %bb.r, label %bb.m

bb.r:                                             ; preds = %bb.q
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 2368
  store i16 0, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 2370
  store i16 0, ptr %i.iy, align 2
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i8 6, ptr %i.iz, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store i8 125, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i64 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.jd = load i64, ptr %i.jc, align 8            ; 2 uses
  %i.je = mul i64 %i.jd, 30
  %i.jf = udiv i64 %i.je, 250                     ; 2 uses
  %i.jg = add nuw nsw i64 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store i64 %i.jg, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 2400
end_hunk_9
begin_hunk_10_@UpdateMusicStream:bb.a
  br i1 %i.cm, label %drwav_seek_to_first_pcm_frame.exit.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader, %drwav_seek_to_first_pcm_frame.exit
  %i.cn = phi i32 [ %i.df, %drwav_seek_to_first_pcm_frame.exit ], [ %i.cl, %.preheader ] ; 2 uses
  %i.co = phi i32 [ %i.de, %drwav_seek_to_first_pcm_frame.exit ], [ %i.ck, %.preheader ] ; 2 uses
  %i.cp = load ptr, ptr %i.au, align 8
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.n, label %drwav_seek_to_first_pcm_frame.exit

bb.n:                                             ; preds = %.lr.ph99
  %i.cq = load ptr, ptr %i.av, align 8
  %i.cr = load ptr, ptr %i.aw, align 8
  %i.cs = load i64, ptr %i.ax, align 8
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = call i32 %i.cq(ptr noundef %i.cr, i32 noundef %i.ct, i32 noundef 0) #61, !inline_history !63
  %.not13.i = icmp eq i32 %i.cu, 0
  br i1 %.not13.i, label %drwav_seek_to_first_pcm_frame.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load i16, ptr %i.ay, align 4
  switch i16 %i.cv, label %bb.r [
    i16 2, label %bb.p
    i16 17, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ba, i8 0, i64 52, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.az, i8 0, i64 88, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  store i64 0, ptr %i.bb, align 8
  %i.cw = load i64, ptr %i.bc, align 8
  store i64 %i.cw, ptr %i.bd, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

drwav_seek_to_first_pcm_frame.exit:               ; preds = %bb.r, %bb.n, %.lr.ph99
  %i.cx = sext i32 %i.cn to i64
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.cz = mul nsw i32 %i.co, %i.p
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  %i.dc = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %i.ag, i64 noundef %i.cx, ptr noundef %i.db)
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = add nsw i32 %i.co, %i.dd
  %i.df = sub nsw i32 %i.cn, %i.dd                ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %drwav_seek_to_first_pcm_frame.exit.thread, label %.lr.ph99

.lr.ph98:                                         ; preds = %.preheader91, %drwav_seek_to_first_pcm_frame.exit77
  %i.dh = phi i32 [ %i.dz, %drwav_seek_to_first_pcm_frame.exit77 ], [ %i.cf, %.preheader91 ] ; 2 uses
  %i.di = phi i32 [ %i.dy, %drwav_seek_to_first_pcm_frame.exit77 ], [ %i.ce, %.preheader91 ] ; 2 uses
  %i.dj = load ptr, ptr %i.au, align 8
  %.not.i74 = icmp eq ptr %i.dj, null
  br i1 %.not.i74, label %bb.s, label %drwav_seek_to_first_pcm_frame.exit77

bb.s:                                             ; preds = %.lr.ph98
  %i.dk = load ptr, ptr %i.av, align 8
  %i.dl = load ptr, ptr %i.aw, align 8
  %i.dm = load i64, ptr %i.ax, align 8
  %i.dn = trunc i64 %i.dm to i32
  %i.do = call i32 %i.dk(ptr noundef %i.dl, i32 noundef %i.dn, i32 noundef 0) #61, !inline_history !63
  %.not13.i76 = icmp eq i32 %i.do, 0
  br i1 %.not13.i76, label %drwav_seek_to_first_pcm_frame.exit77, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = load i16, ptr %i.ay, align 4
  switch i16 %i.dp, label %bb.w [
    i16 2, label %bb.u
    i16 17, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ba, i8 0, i64 52, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.az, i8 0, i64 88, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  store i64 0, ptr %i.bb, align 8
  %i.dq = load i64, ptr %i.bc, align 8
  store i64 %i.dq, ptr %i.bd, align 8
  br label %drwav_seek_to_first_pcm_frame.exit77

drwav_seek_to_first_pcm_frame.exit77:             ; preds = %bb.w, %bb.s, %.lr.ph98
  %i.dr = sext i32 %i.dh to i64
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.dt = mul nsw i32 %i.di, %i.p
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du
  %i.dw = call i64 @drwav_read_pcm_frames_f32(ptr noundef nonnull %i.ag, i64 noundef %i.dr, ptr noundef %i.dv)
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = add nsw i32 %i.di, %i.dx
  %i.dz = sub nsw i32 %i.dh, %i.dx                ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %drwav_seek_to_first_pcm_frame.exit.thread, label %.lr.ph98

.lr.ph:                                           ; preds = %.preheader93, %.lr.ph
  %i.eb = phi i32 [ %i.el, %.lr.ph ], [ %i.bz, %.preheader93 ] ; 2 uses
  %i.ec = phi i32 [ %i.ek, %.lr.ph ], [ %i.by, %.preheader93 ]
  %.297 = phi i32 [ %i.ed, %.lr.ph ], [ 0, %.preheader93 ]
  %i.ed = add nsw i32 %i.ec, %.297                ; 2 uses
  %i.ee = call i32 @stb_vorbis_seek_start(ptr noundef %i.ag) ; 0 uses
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.eg = mul nsw i32 %i.ed, %i.p
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 %i.eh
  %i.ej = mul i32 %i.eb, %i.l
  %i.ek = call i32 @stb_vorbis_get_samples_short_interleaved(ptr noundef %i.ag, i32 noundef %i.l, ptr noundef %i.ei, i32 noundef %i.ej) ; 2 uses
  %i.el = sub nsw i32 %i.eb, %i.ek                ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %drwav_seek_to_first_pcm_frame.exit.thread, label %.lr.ph

.preheader95:                                     ; preds = %bb.l, %.preheader95.backedge
  %.363 = phi i32 [ %i.fz, %.preheader95.backedge ], [ %., %bb.l ] ; 2 uses
  %.3 = phi i32 [ %i.fy, %.preheader95.backedge ], [ 0, %bb.l ] ; 2 uses
  %i.en = sext i32 %.363 to i64                   ; 2 uses
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.ep = mul nsw i32 %.3, %i.p
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.eq
  br i1 %i.ah, label %drmp3_read_pcm_frames_f32.exit, label %bb.x

bb.x:                                             ; preds = %.preheader95
  %i.es = load ptr, ptr %i.ai, align 8
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %drmp3_read_pcm_frames_f32.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.02332.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fv, %.loopexit.i ] ; 4 uses
  %i.eu = sub nuw i64 %i.en, %.02332.i
  %i.ev = load i32, ptr %i.aj, align 8
  %i.ew = udiv i32 8192, %i.ev
  %i.ex = zext nneg i32 %i.ew to i64
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ex)
  %i.ey = call fastcc i64 @drmp3_read_pcm_frames_raw(ptr noundef %i.ag, i64 noundef %spec.select.i, ptr noundef nonnull %i.a) ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = shl i64 %.02332.i, 2
  %i.fb = load i32, ptr %i.aj, align 8
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = mul i64 %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fd ; 2 uses
  %i.ff = mul i64 %i.ey, %i.fc                    ; 5 uses
  %.not.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.z
  %min.iters.check = icmp ult i64 %i.ff, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ff, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %wide.load = load <4 x i16>, ptr %i.fg, align 16
  %wide.load129 = load <4 x i16>, ptr %i.fh, align 8
  %i.fi = sitofp <4 x i16> %wide.load to <4 x float>
  %i.fj = sitofp <4 x i16> %wide.load129 to <4 x float>
  %i.fk = fmul nnan <4 x float> %i.fi, splat (float f0x38000000)
  %i.fl = fmul nnan <4 x float> %i.fj, splat (float f0x38000000)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x float> %i.fk, ptr %i.fm, align 4
  store <4 x float> %i.fl, ptr %i.fn, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !1191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader130

.lr.ph.i.i.preheader130:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader130, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.fu, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader130 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.08.i.i
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = sitofp i16 %i.fq to float
  %i.fs = fmul nnan float %i.fr, f0x38000000
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.08.i.i
  store float %i.fs, ptr %i.ft, align 4
  %i.fu = add nuw i64 %.08.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fu, %i.ff
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1192

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %bb.z
  %i.fv = add i64 %i.ey, %.02332.i                ; 3 uses
  %i.fw = icmp ult i64 %i.fv, %i.en
  br i1 %i.fw, label %bb.y, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i, %bb.y
  %.023.lcssa.i = phi i64 [ %i.fv, %.loopexit.i ], [ %.02332.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.fx = trunc i64 %.023.lcssa.i to i32
  br label %drmp3_read_pcm_frames_f32.exit

drmp3_read_pcm_frames_f32.exit:                   ; preds = %.preheader95, %bb.x, %.thread.i
  %.024.i = phi i32 [ %i.fx, %.thread.i ], [ 0, %bb.x ], [ 0, %.preheader95 ] ; 2 uses
  %i.fy = add nsw i32 %.024.i, %.3
  %i.fz = sub nsw i32 %.363, %.024.i              ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %drwav_seek_to_first_pcm_frame.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %drmp3_read_pcm_frames_f32.exit
  %i.gb = load i64, ptr %i.ak, align 8            ; 4 uses
  %i.gc = icmp ult i64 %i.gb, 2147483648
  br i1 %i.gc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gd = trunc nuw nsw i64 %i.gb to i32
  %i.ge = load ptr, ptr %i.al, align 8
  %i.gf = load ptr, ptr %i.am, align 8
  %i.gg = call i32 %i.ge(ptr noundef %i.gf, i32 noundef range(i32 0, -2147483648) %i.gd, i32 noundef 0) #61, !inline_history !14
  %.not.i.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i, label %.preheader95.backedge, label %drmp3__on_seek_64.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.gh = load ptr, ptr %i.al, align 8
  %i.gi = load ptr, ptr %i.am, align 8
  %i.gj = call i32 %i.gh(ptr noundef %i.gi, i32 noundef 2147483647, i32 noundef 0) #61, !inline_history !14
  %.not.i18.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i18.i.i, label %.preheader95.backedge, label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %bb.ac
  store i64 2147483647, ptr %i.an, align 8
  %i.gk = add i64 %i.gb, -2147483647              ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 2147483648
  br i1 %i.gl, label %._crit_edge.i, label %.lr.ph.i80

._crit_edge.i:                                    ; preds = %bb.ad, %.lr.ph.i.i79
  %.lcssa.i = phi i64 [ %i.gk, %.lr.ph.i.i79 ], [ %i.gy, %bb.ad ] ; 2 uses
  %i.gm = trunc nuw nsw i64 %.lcssa.i to i32
  %i.gn = load ptr, ptr %i.al, align 8
  %i.go = load ptr, ptr %i.am, align 8
  %i.gp = call i32 %i.gn(ptr noundef %i.go, i32 noundef range(i32 0, -2147483648) %i.gm, i32 noundef 1) #61, !inline_history !14
  %.not.i21.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i21.i.i, label %.preheader95.backedge, label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.gq = load i64, ptr %i.an, align 8
  %i.gr = add i64 %i.gq, %.lcssa.i
  br label %drmp3__on_seek_64.exit.i

.lr.ph.i80:                                       ; preds = %.lr.ph.i.i79, %bb.ad
  %i.gs = phi i64 [ %i.gy, %bb.ad ], [ %i.gk, %.lr.ph.i.i79 ]
  %i.gt = load ptr, ptr %i.al, align 8
  %i.gu = load ptr, ptr %i.am, align 8
  %i.gv = call i32 %i.gt(ptr noundef %i.gu, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !14
  %.not.i24.i.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i24.i.i, label %.preheader95.backedge, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i80
  %i.gw = load i64, ptr %i.an, align 8
  %i.gx = add i64 %i.gw, 2147483647
  store i64 %i.gx, ptr %i.an, align 8
  %i.gy = add i64 %i.gs, -2147483647              ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 2147483648
  br i1 %i.gz, label %._crit_edge.i, label %.lr.ph.i80

drmp3__on_seek_64.exit.i:                         ; preds = %bb.ab, %.thread.i.i
  %storemerge = phi i64 [ %i.gr, %.thread.i.i ], [ %i.gb, %bb.ab ]
  store i64 %storemerge, ptr %i.an, align 8
  store i32 0, ptr %i.ao, align 8
  store i32 0, ptr %i.ap, align 4
  store i64 0, ptr %i.aq, align 8
  store i64 0, ptr %i.ar, align 8
  store i32 0, ptr %i.as, align 8
  store i8 0, ptr %i.at, align 8
  br label %.preheader95.backedge

.preheader95.backedge:                            ; preds = %.lr.ph.i80, %drmp3__on_seek_64.exit.i, %._crit_edge.i, %bb.ac, %bb.ab
  br label %.preheader95

bb.ae:                                            ; preds = %bb.l
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.hb = call i32 @qoaplay_decode(ptr noundef %i.ag, ptr noundef %i.ha, i32 noundef %.) ; 0 uses
  br label %drwav_seek_to_first_pcm_frame.exit.thread

bb.af:                                            ; preds = %bb.l
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.hd = zext nneg i32 %. to i64
  call void @jar_xm_generate_samples(ptr noundef %i.ag, ptr noundef %i.hc, i64 noundef %i.hd)
  br label %drwav_seek_to_first_pcm_frame.exit.thread

bb.ag:                                            ; preds = %bb.l
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.hf = zext nneg i32 %. to i64
  call void @jar_mod_fillbuffer(ptr noundef %i.ag, ptr noundef %i.he, i64 noundef %i.hf, ptr noundef null)
  br label %drwav_seek_to_first_pcm_frame.exit.thread

drwav_seek_to_first_pcm_frame.exit.thread:        ; preds = %drmp3_read_pcm_frames_f32.exit, %.lr.ph, %drwav_seek_to_first_pcm_frame.exit77, %drwav_seek_to_first_pcm_frame.exit, %.preheader93, %.preheader91, %.preheader, %bb.ae, %bb.af, %bb.ag, %bb.l, %bb.m
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  %i.hh = load i8, ptr %i.ac, align 4, !range !66, !noundef !53 ; 2 uses
  %i.hi = trunc nuw i8 %i.hh to i1
  %i.hj = load i8, ptr %i.be, align 1, !range !66, !noundef !53
  %i.hk = trunc nuw i8 %i.hj to i1                ; 2 uses
  br i1 %i.hi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %drwav_seek_to_first_pcm_frame.exit.thread
  br i1 %i.hk, label %bb.ak, label %bb.aq

bb.ai:                                            ; preds = %drwav_seek_to_first_pcm_frame.exit.thread
  br i1 %i.hk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.bf, align 4
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.hl = xor i8 %i.hh, 1
  %not..i = zext nneg i8 %i.hl to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i83 = phi i32 [ 0, %bb.aj ], [ %not..i, %bb.ak ] ; 2 uses
  %i.hm = load i32, ptr %i.h, align 8
  %i.hn = lshr i32 %i.hm, 1                       ; 4 uses
  %i.ho = load ptr, ptr %i.bg, align 8
  %i.hp = mul nuw nsw i32 %.0.i83, %i.bi
  %i.hq = mul i32 %i.hp, %i.hn
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.y, align 8
  %i.hu = add i32 %i.ht, %.
  store i32 %i.hu, ptr %i.y, align 8
  %.not20.i = icmp ult i32 %i.hn, %.
  br i1 %.not20.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hv = mul i32 %., %i.bi
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hs, ptr readonly align 1 %i.hg, i64 %i.hw, i1 false)
  %.not21.i = icmp eq i32 %i.hn, %.
  br i1 %.not21.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hx = sub nuw nsw i32 %i.hn, %.
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hw
  %i.hz = mul i32 %i.bi, %i.hx
  %i.ia = zext i32 %i.hz to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.hy, i8 0, i64 %i.ia, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ib = zext nneg i32 %.0.i83 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ib
  store i8 0, ptr %i.ic, align 1
  br label %UpdateAudioStreamInLockedState.exit

bb.ap:                                            ; preds = %bb.al
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.627) #61
  br label %UpdateAudioStreamInLockedState.exit

bb.aq:                                            ; preds = %bb.ah
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.628) #61
  br label %UpdateAudioStreamInLockedState.exit

UpdateAudioStreamInLockedState.exit:              ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.k
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %UpdateAudioStreamInLockedState.exit
  %i.id = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.j, %bb.i, %.critedge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @IsAudioStreamPlaying(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %IsAudioBufferPlaying.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %IsAudioBufferPlaying.exit

end_hunk_10
