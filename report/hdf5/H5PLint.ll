Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5PLint?download=true
inline.NumInlined: 1
begin_hunk_0_@H5PL__init_package:bb.a
  %i.s = tail call i32 @H5PL__create_path_table() #7
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.v = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__init_package, i32 noundef 158, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @H5PL__create_plugin_cache() local_unnamed_addr #5

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @H5PL__create_path_table() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @H5PL_term_package() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.b = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @H5PL__close_plugin_cache(ptr noundef nonnull %i.a) #7
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.g = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !15
  %i.h = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_term_package, i32 noundef 190, i64 noundef %i.f, i64 noundef %i.g, ptr noundef nonnull @.str.5) #7 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.a, align 1, !tbaa !9, !range !10, !noundef !11
  %i.j = call i32 @H5PL__close_path_table() #7
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.m = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !15
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_term_package, i32 noundef 196, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.6) #7 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = trunc nuw i8 %i.i to i1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @H5PL_init_g, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.a
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.g ], [ 1, %bb.f ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

declare i32 @H5PL__close_plugin_cache(ptr noundef) local_unnamed_addr #5

declare i32 @H5PL__close_path_table() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @H5PL_load(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.H5PL_search_params_t, align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %i.a, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5PL_init_g, align 1, !tbaa !9
  %i.h = tail call i32 @H5PL__init_package()
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10
  %.pre11 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre14 = trunc nuw i8 %.pre to i1
  %.pre15 = trunc nuw i8 %.pre11 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5PL_init_g, align 1, !tbaa !9
  %i.j = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 235, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi16 = phi i1 [ %.pre15, %._crit_edge ], [ %i.f, %bb.a ]
  %.pre-phi = phi i1 [ %.pre14, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = xor i1 %.pre-phi16, true
  %i.n = select i1 %.pre-phi, i1 true, i1 %i.m
  br i1 %i.n, label %bb.e, label %bb.t, !prof !12

bb.e:                                             ; preds = %bb.d
  switch i32 %0, label %bb.l [
    i32 0, label %bb.f
    i32 1, label %bb.h
    i32 2, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr @H5PL_plugin_control_mask_g, align 4, !tbaa !13
  %i.p = and i32 %i.o, 1
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.s = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !15
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 241, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.8) #7 ; 0 uses
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.u = load i32, ptr @H5PL_plugin_control_mask_g, align 4, !tbaa !13
  %i.v = and i32 %i.u, 2
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.y = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !15
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 247, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %bb.t

bb.j:                                             ; preds = %bb.e
  %i.aa = load i32, ptr @H5PL_plugin_control_mask_g, align 4, !tbaa !13
  %i.ab = and i32 %i.aa, 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.ae = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !15
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 252, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.10) #7 ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %bb.e
  %i.ag = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.ah = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !15
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 258, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.f
  store i32 %0, ptr %2, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.aj, align 8, !tbaa !23
  %i.ak = call i32 @H5PL__find_plugin_in_cache(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.an = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 267, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.12) #7 ; 0 uses
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ap = load i8, ptr %i.a, align 1, !tbaa !9, !range !10, !noundef !11
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = call i32 @H5PL__find_plugin_in_path_table(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.au = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 274, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.13) #7 ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.pre13 = load i8, ptr %i.a, align 1, !tbaa !9
  %i.aw = trunc nuw i8 %.pre13 to i1
  br i1 %i.aw, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.o, %bb.r
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.az = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.ba = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_load, i32 noundef 282, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.14) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.g, %bb.i, %bb.k, %bb.l, %bb.n, %bb.q, %bb.s, %.thread, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.l ], [ null, %bb.g ], [ null, %bb.n ], [ %i.ax, %.thread ], [ null, %bb.s ], [ null, %bb.q ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

declare i32 @H5PL__find_plugin_in_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @H5PL__find_plugin_in_path_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5PL__open(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %union.H5PL_key_t, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.a = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5PL__close.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !9
  store ptr null, ptr %5, align 8, !tbaa !17
  %.not90 = icmp eq ptr %4, null                  ; 4 uses
  br i1 %.not90, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %4, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call ptr @dlopen(ptr noundef %0, i32 noundef 1) #7 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread113, label %bb.e

.thread113:                                       ; preds = %bb.d
  %i.i = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.j = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.k = tail call ptr @dlerror() #7
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 359, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.15, ptr noundef %i.k) #7 ; 0 uses
  br label %H5PL__close.exit

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @dlsym(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.16) #7 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread.thread134, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @dlsym(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.17) #7 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread.thread134, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 %i.m() #7                  ; 3 uses
  %.not91 = icmp eq i32 %1, 3
  %.not92 = icmp eq i32 %1, %i.q
  %or.cond = select i1 %.not91, i1 true, i1 %.not92
  br i1 %or.cond, label %bb.h, label %.thread.thread134

bb.h:                                             ; preds = %bb.g
  switch i32 %i.q, label %bb.aj [
    i32 0, label %bb.i
    i32 1, label %bb.p
    i32 2, label %bb.z
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr %i.o() #7                  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not95 = icmp eq ptr %2, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26   ; 2 uses
  br i1 %.not95, label %.thread127, label %bb.k

.thread127:                                       ; preds = %bb.j
  store i32 %i.u, ptr %6, align 8, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.pre116 = load i32, ptr %2, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, %.pre116
  br i1 %i.v, label %bb.l, label %.thread

bb.l:                                             ; preds = %.thread127, %bb.k
  %.069129 = phi ptr [ %6, %.thread127 ], [ %2, %bb.k ]
  br i1 %.not90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %4, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  store ptr %i.r, ptr %5, align 8, !tbaa !17
  store i8 1, ptr %3, align 1, !tbaa !9
  br label %.thread.thread.a

bb.o:                                             ; preds = %bb.i
  %i.w = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.x = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 397, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %.thread.thread134

bb.p:                                             ; preds = %bb.h
  %i.z = tail call ptr %i.o() #7                  ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.ac = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 421, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %.thread.thread134

bb.r:                                             ; preds = %bb.p
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %6, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.271 = phi ptr [ %2, %bb.r ], [ %6, %bb.s ]    ; 2 uses
  %i.ah = call i32 @H5VL_check_plugin_load(ptr noundef nonnull %i.z, ptr noundef nonnull %.271, ptr noundef nonnull %3) #7
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.ak = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !15
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 432, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.20) #7 ; 0 uses
  br label %.thread.thread134

bb.v:                                             ; preds = %bb.t
  %i.am = load i8, ptr %3, align 1, !tbaa !9, !range !10, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  br i1 %.not90, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.z, ptr %5, align 8, !tbaa !17
  br label %.thread.thread.a

bb.z:                                             ; preds = %bb.h
  %i.ao = tail call ptr %i.o() #7                 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aq = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.ar = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.as = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 449, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.21) #7 ; 0 uses
  br label %.thread.thread134

bb.ab:                                            ; preds = %bb.z
  %.not93 = icmp eq ptr %2, null
  br i1 %.not93, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %6, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.473 = phi ptr [ %2, %bb.ab ], [ %6, %bb.ac ]  ; 2 uses
  %i.aw = call i32 @H5FD_check_plugin_load(ptr noundef nonnull %i.ao, ptr noundef nonnull %.473, ptr noundef nonnull %3) #7
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ay = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.az = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !15
  %i.ba = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 460, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.22) #7 ; 0 uses
  br label %.thread.thread134

bb.af:                                            ; preds = %bb.ad
  %i.bb = load i8, ptr %3, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %.not90, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 2, ptr %4, align 4, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr %i.ao, ptr %5, align 8, !tbaa !17
  br label %.thread.thread.a

bb.aj:                                            ; preds = %bb.h
  %i.bd = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.be = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 475, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %.thread.thread134

.thread:                                          ; preds = %bb.k
  %.pre117 = load i8, ptr %3, align 1, !tbaa !9
  %i.bg = trunc nuw i8 %.pre117 to i1
  br i1 %i.bg, label %.thread.thread.a, label %bb.al

.thread.thread.a:                                 ; preds = %bb.y, %bb.ai, %bb.n, %.thread
  %.6131 = phi ptr [ %.069129, %bb.n ], [ %2, %.thread ], [ %.271, %bb.y ], [ %.473, %bb.ai ]
  %i.bh = call i32 @H5PL__add_plugin(i32 noundef %i.q, ptr noundef nonnull %.6131, ptr noundef nonnull %i.g) #7
  %.not96 = icmp eq i32 %i.bh, 0
  br i1 %.not96, label %.thread.thread134, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread.a
  %i.bi = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !15
  %i.bj = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !15
  %i.bk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL__open, i32 noundef 481, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %.thread.thread134

.thread.thread134:                                ; preds = %bb.aa, %bb.ae, %bb.q, %bb.u, %bb.o, %bb.g, %bb.f, %bb.e, %.thread.thread.a, %bb.ak, %bb.aj
  %.4.ph = phi i32 [ -1, %bb.aa ], [ -1, %bb.q ], [ 0, %bb.g ], [ -1, %bb.o ], [ 0, %.thread.thread.a ], [ -1, %bb.ak ], [ -1, %bb.aj ], [ 0, %bb.f ], [ 0, %bb.e ], [ -1, %bb.u ], [ -1, %bb.ae ] ; 2 uses
  %i.bl = load i8, ptr %3, align 1, !tbaa !9
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %H5PL__close.exit, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.af, %bb.v, %.thread.thread134
  %.4139 = phi i32 [ %.4.ph, %.thread.thread134 ], [ 0, %bb.v ], [ 0, %bb.af ], [ 0, %.thread ] ; 2 uses
  %i.bn = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = xor i1 %i.bq, true
  %i.bs = select i1 %i.bo, i1 true, i1 %i.br
  br i1 %i.bs, label %bb.am, label %H5PL__close.exit, !prof !12

bb.am:                                            ; preds = %bb.al
  %i.bt = call i32 @dlclose(ptr noundef nonnull %i.g) #7 ; 0 uses
  br label %H5PL__close.exit

H5PL__close.exit:                                 ; preds = %bb.am, %bb.al, %.thread113, %bb.a, %.thread.thread134
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %.thread113 ], [ %.4.ph, %.thread.thread134 ], [ %.4139, %bb.al ], [ %.4139, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.5
}

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @H5VL_check_plugin_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @H5FD_check_plugin_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @H5PL__add_plugin(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef i32 @H5PL__close(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @dlclose(ptr noundef %0) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @H5PL_iterate(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5PL_init_g, align 1, !tbaa !9
  %i.f = tail call i32 @H5PL__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5PL_init_g, align 1, !tbaa !9, !range !10
  %.pre4 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre5 = trunc nuw i8 %.pre to i1
  %.pre6 = trunc nuw i8 %.pre4 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5PL_init_g, align 1, !tbaa !9
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5PL_iterate, i32 noundef 528, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi7 = phi i1 [ %.pre6, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre5, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi7, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @H5PL__path_table_iterate(i32 noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ %i.m, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @H5PL__path_table_iterate(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!5, !5, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", i32 2002, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 2002}
!20 = !{!"p1 _ZTS10H5PL_key_t", !16, i64 0}
!21 = !{!"H5PL_search_params_t", !5, i64 0, !20, i64 8}
!22 = !{!21, !5, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!"H5Z_class2_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !24, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!26 = !{!25, !5, i64 4}
!27 = !{!4, !4, i64 0}
!28 = !{!"H5VL_info_class_t", !14, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!29 = !{!"H5VL_wrap_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!30 = !{!"H5VL_attr_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!31 = !{!"H5VL_dataset_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!32 = !{!"H5VL_datatype_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!33 = !{!"H5VL_file_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!34 = !{!"H5VL_group_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!35 = !{!"H5VL_link_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!36 = !{!"H5VL_object_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!37 = !{!"H5VL_introspect_class_t", !16, i64 0, !16, i64 8, !16, i64 16}
!38 = !{!"H5VL_request_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!39 = !{!"H5VL_blob_class_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!40 = !{!"H5VL_token_class_t", !16, i64 0, !16, i64 8, !16, i64 16}
!41 = !{!"H5VL_class_t", !5, i64 0, !5, i64 4, !24, i64 8, !5, i64 16, !14, i64 24, !16, i64 32, !16, i64 40, !28, i64 48, !29, i64 96, !30, i64 136, !31, i64 200, !32, i64 264, !33, i64 312, !34, i64 360, !35, i64 408, !36, i64 456, !37, i64 496, !38, i64 520, !39, i64 568, !40, i64 600, !16, i64 624}
!42 = !{!41, !24, i64 8}
!43 = !{!"H5FD_class_t", !5, i64 0, !5, i64 4, !24, i64 8, !14, i64 16, !5, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !14, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !14, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !4, i64 304}
!44 = !{!43, !24, i64 8}
end_hunk_0
