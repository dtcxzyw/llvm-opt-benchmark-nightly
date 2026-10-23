Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_file?download=true
inline.NumInlined: 116
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@drm_memory_stats_is_zero:bb.a
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.o, %bb.e ]
  ret i32 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_print_memory_stats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, %i.b                       ; 5 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %i.d, 1023
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i1 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader, label %drm_fdinfo_print_size.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = and i64 %i.d, 1047552
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %spec.select.v = select i1 %i.j, i64 20, i64 10
  %spec.select = lshr exact i64 %i.d, %spec.select.v
  %spec.select74 = select i1 %i.j, i64 2, i64 1
  br label %drm_fdinfo_print_size.exit

drm_fdinfo_print_size.exit:                       ; preds = %.lr.ph.i.preheader, %bb.a
  %.011.lcssa.i = phi i64 [ %i.d, %bb.a ], [ %spec.select, %.lr.ph.i.preheader ]
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select74, %.lr.ph.i.preheader ]
  %i.k = getelementptr [8 x i8], ptr @__const.drm_fdinfo_print_size.units, i64 %.0.lcssa.i
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %3, i64 noundef %.011.lcssa.i, ptr noundef %i.l) #13
  %i.m = load i64, ptr %1, align 8                ; 5 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %i.m, 1023
  %i.p = icmp eq i64 %i.o, 0
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i27.preheader, label %drm_fdinfo_print_size.exit32

.lr.ph.i27.preheader:                             ; preds = %drm_fdinfo_print_size.exit
  %i.r = and i64 %i.m, 1047552
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %spec.select75.v = select i1 %i.s, i64 20, i64 10
  %spec.select75 = lshr exact i64 %i.m, %spec.select75.v
  %spec.select76 = select i1 %i.s, i64 2, i64 1
  br label %drm_fdinfo_print_size.exit32

drm_fdinfo_print_size.exit32:                     ; preds = %.lr.ph.i27.preheader, %drm_fdinfo_print_size.exit
  %.011.lcssa.i25 = phi i64 [ %i.m, %drm_fdinfo_print_size.exit ], [ %spec.select75, %.lr.ph.i27.preheader ]
  %.0.lcssa.i26 = phi i64 [ 0, %drm_fdinfo_print_size.exit ], [ %spec.select76, %.lr.ph.i27.preheader ]
  %i.t = getelementptr [8 x i8], ptr @__const.drm_fdinfo_print_size.units, i64 %.0.lcssa.i26
  %i.u = load ptr, ptr %i.t, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.17, ptr noundef %3, i64 noundef %.011.lcssa.i25, ptr noundef %i.u) #13
  %i.v = and i32 %2, 4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %drm_fdinfo_print_size.exit32
  %i.w = getelementptr i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8              ; 5 uses
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i64 %i.x, 1023
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i1 %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.i35.preheader, label %drm_fdinfo_print_size.exit40

.lr.ph.i35.preheader:                             ; preds = %bb.b
  %i.ac = and i64 %i.x, 1047552
  %i.ad = icmp eq i64 %i.ac, 0                    ; 2 uses
  %spec.select77.v = select i1 %i.ad, i64 20, i64 10
  %spec.select77 = lshr exact i64 %i.x, %spec.select77.v
  %spec.select78 = select i1 %i.ad, i64 2, i64 1
  br label %drm_fdinfo_print_size.exit40

drm_fdinfo_print_size.exit40:                     ; preds = %.lr.ph.i35.preheader, %bb.b
  %.011.lcssa.i33 = phi i64 [ %i.x, %bb.b ], [ %spec.select77, %.lr.ph.i35.preheader ]
  %.0.lcssa.i34 = phi i64 [ 0, %bb.b ], [ %spec.select78, %.lr.ph.i35.preheader ]
  %i.ae = getelementptr [8 x i8], ptr @__const.drm_fdinfo_print_size.units, i64 %.0.lcssa.i34
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.18, ptr noundef %3, i64 noundef %.011.lcssa.i33, ptr noundef %i.af) #13
  br label %bb.c

bb.c:                                             ; preds = %drm_fdinfo_print_size.exit40, %drm_fdinfo_print_size.exit32
  %i.ag = and i32 %2, 1
  %.not23 = icmp eq i32 %i.ag, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 5 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = and i64 %i.ai, 1023
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = and i1 %i.aj, %i.al
  br i1 %i.am, label %.lr.ph.i43.preheader, label %drm_fdinfo_print_size.exit48

.lr.ph.i43.preheader:                             ; preds = %bb.d
  %i.an = and i64 %i.ai, 1047552
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %spec.select79.v = select i1 %i.ao, i64 20, i64 10
  %spec.select79 = lshr exact i64 %i.ai, %spec.select79.v
  %spec.select80 = select i1 %i.ao, i64 2, i64 1
  br label %drm_fdinfo_print_size.exit48

drm_fdinfo_print_size.exit48:                     ; preds = %.lr.ph.i43.preheader, %bb.d
  %.011.lcssa.i41 = phi i64 [ %i.ai, %bb.d ], [ %spec.select79, %.lr.ph.i43.preheader ]
  %.0.lcssa.i42 = phi i64 [ 0, %bb.d ], [ %spec.select80, %.lr.ph.i43.preheader ]
  %i.ap = getelementptr [8 x i8], ptr @__const.drm_fdinfo_print_size.units, i64 %.0.lcssa.i42
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.19, ptr noundef %3, i64 noundef %.011.lcssa.i41, ptr noundef %i.aq) #13
  br label %bb.e

bb.e:                                             ; preds = %drm_fdinfo_print_size.exit48, %bb.c
  %i.ar = and i32 %2, 2
  %.not24 = icmp eq i32 %i.ar, 0
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr i8, ptr %1, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 5 uses
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i64 %i.at, 1023
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph.i51.preheader, label %drm_fdinfo_print_size.exit56

.lr.ph.i51.preheader:                             ; preds = %bb.f
  %i.ay = and i64 %i.at, 1047552
  %i.az = icmp eq i64 %i.ay, 0                    ; 2 uses
  %spec.select81.v = select i1 %i.az, i64 20, i64 10
  %spec.select81 = lshr exact i64 %i.at, %spec.select81.v
  %spec.select82 = select i1 %i.az, i64 2, i64 1
  br label %drm_fdinfo_print_size.exit56

drm_fdinfo_print_size.exit56:                     ; preds = %.lr.ph.i51.preheader, %bb.f
  %.011.lcssa.i49 = phi i64 [ %i.at, %bb.f ], [ %spec.select81, %.lr.ph.i51.preheader ]
  %.0.lcssa.i50 = phi i64 [ 0, %bb.f ], [ %spec.select82, %.lr.ph.i51.preheader ]
  %i.ba = getelementptr [8 x i8], ptr @__const.drm_fdinfo_print_size.units, i64 %.0.lcssa.i50
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.20, ptr noundef %3, i64 noundef %.011.lcssa.i49, ptr noundef %i.bb) #13
  br label %bb.g

bb.g:                                             ; preds = %drm_fdinfo_print_size.exit56, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_show_memory_stats(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_memory_stats, align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr i8, ptr %1, i64 104        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.c) #13
  %i.d = getelementptr i8, ptr %1, i64 80         ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.e = call ptr @idr_get_next(ptr noundef %i.d, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.k ]
  %i.k = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.k ]
  %i.l = phi i64 [ 0, %.lr.ph ], [ %15, %bb.k ]
  %i.m = phi i64 [ 0, %.lr.ph ], [ %9, %bb.k ]
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %i.au, %bb.k ] ; 9 uses
  %.02743 = phi i32 [ 0, %.lr.ph ], [ %.229, %bb.k ] ; 3 uses
  %3 = phi i64 [ 0, %.lr.ph ], [ %12, %bb.k ]     ; 2 uses
  %4 = phi i64 [ 0, %.lr.ph ], [ %11, %bb.k ]     ; 2 uses
  %5 = phi i64 [ 0, %.lr.ph ], [ %16, %bb.k ]     ; 2 uses
  %6 = phi i64 [ 0, %.lr.ph ], [ %spec.select53, %bb.k ] ; 2 uses
  %7 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.k ]   ; 2 uses
  %i.o = phi i64 [ 0, %.lr.ph ], [ %10, %bb.k ]
  %i.p = getelementptr i8, ptr %i.n, i64 336      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not35 = icmp eq ptr %i.q, null
  br i1 %.not35, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.s, null
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call i64 %i.s(ptr noundef nonnull %i.n) #13
  %.pre = load ptr, ptr %i.p, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr i8, ptr %i.n, i64 216
  %i.v = load i64, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %.pre, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.x = phi i64 [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %.not37 = icmp eq ptr %i.w, null
  br i1 %.not37, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.w, i64 96
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not38 = icmp eq ptr %i.z, null
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.n) #13 ; 2 uses
  %i.ab = or i32 %i.aa, %.02743
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.128 = phi i32 [ %i.ab, %bb.h ], [ %.02743, %bb.g ], [ %.02743, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.aa, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.n, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %drm_gem_object_is_shared_for_memory_stats.exit.thread, label %drm_gem_object_is_shared_for_memory_stats.exit

drm_gem_object_is_shared_for_memory_stats.exit:   ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.n, i64 232
  %i.ag = load ptr, ptr %i.af, align 8
  %.not41 = icmp eq ptr %i.ag, null
  br i1 %.not41, label %bb.j, label %drm_gem_object_is_shared_for_memory_stats.exit.thread

drm_gem_object_is_shared_for_memory_stats.exit.thread: ; preds = %bb.i, %drm_gem_object_is_shared_for_memory_stats.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 216
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %3                       ; 2 uses
  br label %8

bb.j:                                             ; preds = %drm_gem_object_is_shared_for_memory_stats.exit
  %i.ak = getelementptr i8, ptr %i.n, i64 216
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %4                       ; 2 uses
  br label %8

8:                                                ; preds = %bb.j, %drm_gem_object_is_shared_for_memory_stats.exit.thread
  %9 = phi i64 [ %i.am, %bb.j ], [ %i.m, %drm_gem_object_is_shared_for_memory_stats.exit.thread ] ; 2 uses
  %10 = phi i64 [ %i.o, %bb.j ], [ %i.aj, %drm_gem_object_is_shared_for_memory_stats.exit.thread ] ; 2 uses
  %11 = phi i64 [ %i.am, %bb.j ], [ %4, %drm_gem_object_is_shared_for_memory_stats.exit.thread ]
  %12 = phi i64 [ %3, %bb.j ], [ %i.aj, %drm_gem_object_is_shared_for_memory_stats.exit.thread ]
  %13 = and i32 %.0, 1
  %.not39 = icmp eq i32 %13, 0                    ; 3 uses
  %14 = add i64 %i.x, %5                          ; 2 uses
  %15 = select i1 %.not39, i64 %i.l, i64 %14      ; 2 uses
  %16 = select i1 %.not39, i64 %5, i64 %14
  %.1 = select i1 %.not39, i32 0, i32 %.0
  %17 = getelementptr i8, ptr %i.n, i64 248
  %18 = load ptr, ptr %17, align 8
  %19 = call zeroext i1 @dma_resv_test_signaled(ptr noundef %18, i32 noundef 2) #13
  br i1 %19, label %bb.k, label %20

20:                                               ; preds = %8
  %21 = add i64 %i.x, %7                          ; 2 uses
  %22 = or i32 %.128, 4
  br label %bb.k

bb.k:                                             ; preds = %20, %8
  %i.an = phi i64 [ %i.k, %8 ], [ %21, %20 ]      ; 2 uses
  %i.ao = phi i64 [ %7, %8 ], [ %21, %20 ]
  %.229 = phi i32 [ %.128, %8 ], [ %22, %20 ]     ; 2 uses
  %.2 = phi i32 [ %.1, %8 ], [ 0, %20 ]
  %i.ap = and i32 %.2, 2
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %23 = add i64 %i.x, %6                          ; 2 uses
  %i.ar = select i1 %i.aq, i64 %i.j, i64 %23      ; 2 uses
  %spec.select53 = select i1 %i.aq, i64 %6, i64 %23
  %i.as = load i32, ptr %i.a, align 4
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.a, align 4
  %i.au = call ptr @idr_get_next(ptr noundef %i.d, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.k
  store i64 %9, ptr %i.f, align 8
  store i64 %15, ptr %i.g, align 8
  store i64 %i.an, ptr %i.h, align 8
  store i64 %i.ar, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa = phi i64 [ %10, %._crit_edge ], [ 0, %bb.a ]
  %.027.lcssa = phi i32 [ %.229, %._crit_edge ], [ 0, %bb.a ]
  store i64 %.lcssa, ptr %2, align 8
  call void @_raw_spin_unlock(ptr noundef %i.c) #13
  call void @drm_print_memory_stats(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %.027.lcssa, ptr noundef @.str.21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_show_fdinfo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_printer, align 8        ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr @__drm_printfn_seq_file, ptr %2, align 8, !alias.scope !45
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @__drm_puts_seq_file, ptr %i.h, align 8, !alias.scope !45
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.i, align 8, !alias.scope !45
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !alias.scope !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !15
  %i.k = call zeroext i1 @drm_dev_enter(ptr noundef %i.g, ptr noundef nonnull %i.a) #13
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 56       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 152
  %i.o = load ptr, ptr %i.n, align 8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %2, ptr noundef @.str.22, ptr noundef %i.o) #13
  %i.p = getelementptr i8, ptr %i.c, i64 40
  %i.q = load i64, ptr %i.p, align 8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %2, ptr noundef @.str.23, i64 noundef %i.q) #13
  %i.r = getelementptr i8, ptr %i.g, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, @pci_bus_type
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.s, i64 -184
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 200
  %.val = load ptr, ptr %i.y, align 8
  %.val.val = load i32, ptr %.val, align 8
  %i.z = getelementptr i8, ptr %i.x, i64 216
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr i8, ptr %i.s, i64 -144
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = lshr i32 %i.ad, 3
  %i.af = and i32 %i.ae, 31
  %i.ag = and i32 %i.ad, 7
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %2, ptr noundef @.str.24, i32 noundef %.val.val, i32 noundef %i.ab, i32 noundef %i.af, i32 noundef %i.ag) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = getelementptr i8, ptr %i.c, i64 336     ; 2 uses
  call void @mutex_lock(ptr noundef %i.ah) #13
  %i.ai = getelementptr i8, ptr %i.c, i64 328
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %2, ptr noundef @.str.25, ptr noundef nonnull %i.aj) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @mutex_unlock(ptr noundef %i.ah) #13
  %i.ak = load ptr, ptr %i.l, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 128
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not22 = icmp eq ptr %i.am, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.am(ptr noundef nonnull %2, ptr noundef %i.c) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = load i32, ptr %i.a, align 4
  call void @drm_dev_exit(i32 noundef %i.an) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_file_err(ptr noundef %0, ptr noundef %1, ...) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %3 = alloca %struct.va_format, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  store ptr %1, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 336        ; 2 uses
  call void @mutex_lock(ptr noundef %i.f) #13
  call void @__rcu_read_lock() #13
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load volatile ptr, ptr %i.g, align 8
  %i.i = call ptr @pid_task(ptr noundef %i.h, i32 noundef 1) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %__drm_to_dev.exit
  %i.m = getelementptr i8, ptr %i.i, i64 2008
  %i.n = getelementptr i8, ptr %i.i, i64 1528
  %i.o = load i32, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %__drm_to_dev.exit, %bb.c
  %i.p = phi ptr [ @.str.27, %__drm_to_dev.exit ], [ %i.m, %bb.c ]
  %i.q = phi i32 [ 0, %__drm_to_dev.exit ], [ %i.o, %bb.c ]
  %i.r = getelementptr i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 328
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.u, null
  %..str.27 = select i1 %.not16, ptr @.str.27, ptr %i.u
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.l, ptr noundef @.str.26, ptr noundef %i.p, i32 noundef %i.q, i64 noundef %i.s, ptr noundef nonnull %..str.27, ptr noundef nonnull %3) #15
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @__rcu_read_unlock() #13
  call void @mutex_unlock(ptr noundef %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @mock_drm_getfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call ptr @drm_file_alloc(ptr noundef %0) #14 ; 5 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @anon_inode_getfile(ptr noundef @.str.15, ptr noundef %i.h, ptr noundef %i.c, i32 noundef %1) #13 ; 5 uses
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
end_hunk_0
