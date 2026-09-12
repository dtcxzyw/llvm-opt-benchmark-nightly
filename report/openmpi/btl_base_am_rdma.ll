Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/btl_base_am_rdma?download=true
inline.NumInlined: 113
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mca_btl_base_am_rdma_init:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !28, !noundef !29
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.k, i32 -1 monotonic, align 4
  %i.o = add i32 %i.n, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = load volatile i32, ptr %i.k, align 4, !tbaa !31
  %i.q = add nsw i32 %i.p, -1
  store volatile i32 %i.q, ptr %i.k, align 4, !tbaa !31
  %i.r = load volatile i32, ptr %i.k, align 4, !tbaa !31
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i, 0
  br i1 %i.s, label %bb.g, label %am_rdma_internal_fini.exit

bb.g:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.w, %bb.g ]
  %.07.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.v, %bb.g ]
  tail call void %i.x(ptr noundef nonnull %i.j) #11, !inline_history !0
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.j) #11
  br label %am_rdma_internal_fini.exit

am_rdma_internal_fini.exit:                       ; preds = %opal_thread_add_fetch_32.exit.i, %opal_obj_run_destructors.exit.i
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @default_component, i64 32)) #11 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @default_component, i64 32)) #11 ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.ad, align 8, !tbaa !121
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !22  ; 3 uses
  %i.af = and i32 %i.ae, 2
  %.not24 = icmp eq i32 %i.af, 0
  br i1 %.not24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = or i32 %i.ae, 1048576                   ; 2 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !41
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @am_rdma_put_wrapper, ptr %i.ak, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi i32 [ %i.ag, %bb.i ], [ %i.ae, %bb.h ] ; 3 uses
  %i.am = and i32 %i.al, 4
  %.not25 = icmp eq i32 %i.am, 0
  br i1 %.not25, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = or i32 %i.al, 2097152                   ; 2 uses
  store i32 %i.an, ptr %i.b, align 4, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !41
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @am_rdma_get_wrapper, ptr %i.ar, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i32 [ %i.an, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.at = and i32 %i.as, 65536
  %.not26 = icmp eq i32 %i.at, 0
  br i1 %.not26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = or i32 %i.as, 4194304
  store i32 %i.au, ptr %i.b, align 4, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @am_rdma_fop_wrapper, ptr %i.av, align 8, !tbaa !122
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @am_rdma_cswap_wrapper, ptr %i.aw, align 8, !tbaa !123
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 825298433, ptr %i.ax, align 8, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.a, %am_rdma_internal_fini.exit
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ], [ 0, %am_rdma_internal_fini.exit ], [ 0, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 1) i32 @am_rdma_internal_init(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @am_rdma_internal_init.initialized_mutex, i64 16)) #11 ; 0 uses
  %.b = load i1, ptr @am_rdma_internal_init.initialized, align 1
  br i1 %.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @am_rdma_internal_init.initialized, align 1
  %i.b = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !31
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @am_rdma_component_t_class, i64 32), align 8, !tbaa !44
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opal_class_initialize(ptr noundef nonnull @am_rdma_component_t_class) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr @am_rdma_component_t_class, ptr @default_component, align 8, !tbaa !34
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @default_component, i64 8), align 8, !tbaa !45
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @am_rdma_component_t_class, i64 40), align 8, !tbaa !46 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.f = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.d ]
  %.07.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.d ]
  tail call void %i.f(ptr noundef nonnull @default_component) #11, !inline_history !2
  %i.g = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.d
  %i.i = tail call i32 @opal_progress_register(ptr noundef nonnull @am_rdma_progress) #11 ; 0 uses
  store ptr @am_rdma_process_rdma, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_active_message_trigger, i64 256), align 16, !tbaa !126
  store ptr @am_rdma_process_atomic, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_active_message_trigger, i64 272), align 16, !tbaa !126
  store ptr @am_rdma_response, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_active_message_trigger, i64 288), align 16, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %opal_obj_run_constructors.exit, %bb.a
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @am_rdma_internal_init.initialized_mutex, i64 16)) #11 ; 0 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_am_rdma_module_t_class, i64 56), align 8, !tbaa !47
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #12 ; 16 uses
  %i.m = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !31
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_am_rdma_module_t_class, i64 32), align 8, !tbaa !44
  %.not.i39 = icmp eq i32 %i.m, %i.n
  br i1 %.not.i39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_btl_base_am_rdma_module_t_class) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @mca_btl_base_am_rdma_module_t_class, ptr %i.l, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store volatile i32 1, ptr %i.o, align 8, !tbaa !45
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_am_rdma_module_t_class, i64 40), align 8, !tbaa !46 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.r = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.q, %bb.h ]
  %.07.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.h ]
  tail call void %i.r(ptr noundef nonnull %i.l) #11, !inline_history !4
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %0, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %3 = trunc i32 %i.w to i8                       ; 2 uses
  %4 = lshr i8 %3, 1
  %i.y = and i8 %4, 1                             ; 2 uses
  store i8 %i.y, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 25 ; 2 uses
  %5 = lshr i8 %3, 2                              ; 2 uses
  %i.aa = and i8 %5, 1
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !52
  %i.ab = and i32 %i.w, 8388608
  %.not37 = icmp eq i32 %i.ab, 0
  br i1 %.not37, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  store i8 0, ptr %i.x, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.ac = phi i8 [ 0, %bb.i ], [ %i.y, %.loopexit ]
  br i1 %1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %.not38 = icmp eq ptr %i.ae, null
  br i1 %.not38, label %bb.l, label %.thread43

.thread43:                                        ; preds = %bb.k
  store i8 0, ptr %i.x, align 8, !tbaa !51
  store i8 0, ptr %i.z, align 1, !tbaa !52
  br label %bb.p

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = trunc i8 %5 to i1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !127
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.aj = trunc nuw i8 %i.ac to i1
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load i64, ptr %i.al, align 8, !tbaa !128
  br label %bb.q

bb.p:                                             ; preds = %.thread43, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %.034.in = phi ptr [ %i.ag, %bb.m ], [ %i.ak, %bb.o ], [ %i.an, %bb.p ]
  %.0 = phi i64 [ %i.ai, %bb.m ], [ %i.am, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %.034 = load i64, ptr %.034.in, align 8, !tbaa !41 ; 2 uses
  %i.ao = add i64 %.034, -48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !129
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.0, ptr %i.aq, align 8, !tbaa !130
  %i.ar = add i64 %.034, -24
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.0, ptr %i.at, align 8, !tbaa !132
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr @am_rdma_put, ptr %i.au, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr @am_rdma_get, ptr %i.av, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr @am_rdma_fop, ptr %i.aw, align 8, !tbaa !135
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr @am_rdma_cswap, ptr %i.ax, align 8, !tbaa !136
  store ptr %i.l, ptr %2, align 8, !tbaa !25
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %bb.g, %bb.q
  %.035 = phi i32 [ 0, %bb.q ], [ -3, %bb.g ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal i32 @am_rdma_put_wrapper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i32 %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = tail call fastcc i32 @am_rdma_start(ptr noundef %.val, ptr noundef %1, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef %8, i64 noundef %6, ptr noundef %2, ptr noundef %4, i64 noundef %3, ptr noundef %5, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @am_rdma_get_wrapper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i32 %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = tail call fastcc i32 @am_rdma_start(ptr noundef %.val, ptr noundef %1, i32 noundef 1, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef %8, i64 noundef %6, ptr noundef %2, ptr noundef %4, i64 noundef %3, ptr noundef %5, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @am_rdma_fop_wrapper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = and i32 %8, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i64 8, i64 4
  %i.d = tail call fastcc i32 @am_rdma_start(ptr noundef %.val, ptr noundef %1, i32 noundef 2, i64 noundef %7, i64 noundef 0, i32 noundef %6, i32 noundef %9, i64 noundef %i.c, ptr noundef %2, ptr noundef %4, i64 noundef %3, ptr noundef %5, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @am_rdma_cswap_wrapper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = and i32 %8, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i64 8, i64 4
  %i.d = tail call fastcc i32 @am_rdma_start(ptr noundef %.val, ptr noundef %1, i32 noundef 3, i64 noundef %6, i64 noundef %7, i32 noundef 0, i32 noundef %9, i64 noundef %i.c, ptr noundef %2, ptr noundef %4, i64 noundef %3, ptr noundef %5, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -3, 1) i32 @opal_btl_base_am_rdma_create(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @am_rdma_internal_init(ptr noundef %0, i1 noundef zeroext %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define noundef i32 @opal_btl_base_am_rdma_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw volatile add ptr %i.a, i32 -1 monotonic, align 4
  %i.e = add i32 %i.d, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.c:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr %i.a, align 4, !tbaa !31
  %i.g = add nsw i32 %i.f, -1
  store volatile i32 %i.g, ptr %i.a, align 4, !tbaa !31
  %i.h = load volatile i32, ptr %i.a, align 4, !tbaa !31
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 0
  br i1 %i.i, label %bb.d, label %am_rdma_internal_fini.exit

bb.d:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.m, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.n = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.d ]
  %.07.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.d ]
  tail call void %i.n(ptr noundef nonnull %0) #11, !inline_history !0
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %0) #11
  br label %am_rdma_internal_fini.exit

am_rdma_internal_fini.exit:                       ; preds = %opal_thread_add_fetch_32.exit.i, %opal_obj_run_destructors.exit.i
  ret i32 0
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

declare i32 @opal_progress_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @am_rdma_progress() #0 {
bb.a:
  %i.a = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @default_component, i64 136), align 8, !tbaa !57
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @default_component, i64 200), align 8, !tbaa !57
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @default_component, i64 32)) #11 ; 0 uses
  %i.h = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @default_component, i64 112), align 8, !tbaa !143 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load volatile ptr, ptr %i.i, align 8, !tbaa !58
  %.not4958 = icmp eq ptr %i.h, getelementptr inbounds nuw (i8, ptr @default_component, i64 96)
  br i1 %.not4958, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.d, %.lr.ph61
  %.04660 = phi ptr [ %i.l, %.lr.ph61 ], [ %i.j, %bb.d ] ; 3 uses
  %.04759 = phi ptr [ %.04660, %.lr.ph61 ], [ %i.h, %bb.d ]
  tail call fastcc void @am_rdma_retry_operation(ptr noundef %.04759)
  %i.k = getelementptr inbounds nuw i8, ptr %.04660, i64 16
  %i.l = load volatile ptr, ptr %i.k, align 8, !tbaa !58
  %.not49 = icmp eq ptr %.04660, getelementptr inbounds nuw (i8, ptr @default_component, i64 96)
  br i1 %.not49, label %._crit_edge, label %.lr.ph61, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph61, %bb.d
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @default_component, i64 32)) #11 ; 0 uses
  br label %.loopexit54

bb.e:                                             ; preds = %bb.c
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @default_component, i64 112), align 8, !tbaa !143 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load volatile ptr, ptr %i.o, align 8, !tbaa !58
end_hunk_0
