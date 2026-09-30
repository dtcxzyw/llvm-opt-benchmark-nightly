Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_mca_base_framework?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
begin_hunk_0_@pmix_mca_base_framework_register:bb.a
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.p = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %bb.d ]
  %.07.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.n, %bb.d ]
  tail call void %i.p(ptr noundef nonnull %i.j) #10, !inline_history !32
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !33

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.d
  %i.s = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !22
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !34
  %.not50 = icmp eq i32 %i.s, %i.t
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pmix_obj_run_constructors.exit
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %pmix_obj_run_constructors.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr @pmix_list_t_class, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 1, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i8 0, i64 64, i1 false)
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %.not6.i56 = icmp eq ptr %i.z, null
  br i1 %.not6.i56, label %pmix_obj_run_constructors.exit60, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.f, %.lr.ph.i57
  %i.aa = phi ptr [ %i.ac, %.lr.ph.i57 ], [ %i.z, %bb.f ]
  %.07.i58 = phi ptr [ %i.ab, %.lr.ph.i57 ], [ %i.y, %bb.f ]
  tail call void %i.aa(ptr noundef nonnull %i.u) #10, !inline_history !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i58, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ac, null
  br i1 %.not.i59, label %pmix_obj_run_constructors.exit60, label %.lr.ph.i57, !llvm.loop !33

pmix_obj_run_constructors.exit60:                 ; preds = %.lr.ph.i57, %bb.f
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %i.ae = lshr i32 %i.ad, 1
  %i.af = and i32 %i.ae, 2
  %spec.select = or i32 %i.af, %1                 ; 2 uses
  %i.ag = and i32 %i.ad, 1
  %.not52 = icmp eq i32 %i.ag, 0
  br i1 %.not52, label %bb.g, label %bb.t

bb.g:                                             ; preds = %pmix_obj_run_constructors.exit60
  %i.ah = load ptr, ptr %0, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = tail call i32 @pmix_mca_base_var_group_register(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef null, ptr noundef %i.al) #10 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ap = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef %i.ao) #10
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %0, align 8, !tbaa !28
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = call i32 @pmix_mca_base_var_register(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef null, ptr noundef null, ptr noundef %i.at, i32 noundef 5, ptr noundef nonnull %i.au) #10 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !37
  call void @free(ptr noundef %i.aw) #10
  %i.ax = icmp slt i32 %i.av, 0
  br i1 %i.ax, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.az = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, ptr noundef %i.ay) #10
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !30
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bd = call i32 @pmix_mca_base_framework_var_register(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %i.bc, i32 noundef 0, ptr noundef nonnull %i.bb) #10 ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !37
  call void @free(ptr noundef %i.be) #10
  %i.bf = icmp slt i32 %i.bd, 0
  br i1 %i.bf, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %i.bb, align 8, !tbaa !30 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !31 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, -1                   ; 2 uses
  br i1 %i.bh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = call i32 @pmix_output_open(ptr noundef null) #10 ; 2 uses
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !31
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi i32 [ %.pre.i, %bb.n ], [ %i.bg, %bb.m ]
  %i.bn = phi i32 [ %i.bl, %bb.n ], [ %i.bj, %bb.m ]
  call void @pmix_output_set_verbosity(i32 noundef %i.bn, i32 noundef %i.bm) #10
  br label %framework_open_output.exit

bb.p:                                             ; preds = %bb.l
  br i1 %i.bk, label %framework_open_output.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @pmix_output_close(i32 noundef %i.bj) #10
  store i32 -1, ptr %i.bi, align 4, !tbaa !31
  br label %framework_open_output.exit

framework_open_output.exit:                       ; preds = %bb.o, %bb.p, %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38 ; 2 uses
  %.not53 = icmp eq ptr %i.bp, null
  br i1 %.not53, label %bb.s, label %bb.r

bb.r:                                             ; preds = %framework_open_output.exit
  %i.bq = call i32 %i.bp(i32 noundef %spec.select) #10 ; 2 uses
  %.not54 = icmp eq i32 %i.bq, 0
  br i1 %.not54, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %framework_open_output.exit
  %i.br = call i32 @pmix_mca_base_framework_components_register(ptr noundef nonnull %0, i32 noundef %spec.select) #10 ; 2 uses
  %.not55 = icmp eq i32 %i.br, 0
  br i1 %.not55, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.s
  %.pre = load i32, ptr %i.e, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %pmix_obj_run_constructors.exit60
  %i.bs = phi i32 [ %.pre, %._crit_edge ], [ %i.ad, %pmix_obj_run_constructors.exit60 ]
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %i.e, align 8, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a, %bb.t
  %.043 = phi i32 [ %i.bq, %bb.r ], [ 0, %bb.t ], [ 0, %bb.a ], [ %i.am, %bb.g ], [ -29, %bb.h ], [ %i.av, %bb.i ], [ -29, %bb.j ], [ %i.bd, %bb.k ], [ %i.br, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #3

declare i32 @pmix_mca_base_var_group_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @pmix_mca_base_var_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @pmix_mca_base_framework_var_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pmix_mca_base_framework_components_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @pmix_mca_base_framework_open(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pmix_mca_base_framework_register(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = and i32 %i.c, 8
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1
  %.not22 = icmp eq i32 %i.e, 0
  %2 = lshr i32 %i.c, 1
  %3 = and i32 %2, 2
  %spec.select.v = or i32 %1, %3
  %spec.select = or i32 %spec.select.v, 1
  %.018 = select i1 %.not22, i32 %1, i32 %spec.select ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 3 uses
  %i.k = icmp eq i32 %i.j, -1                     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @pmix_output_open(ptr noundef null) #10 ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !31
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ]
  %i.n = phi i32 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  tail call void @pmix_output_set_verbosity(i32 noundef %i.n, i32 noundef %i.m) #10
  br label %framework_open_output.exit

bb.g:                                             ; preds = %bb.c
  br i1 %i.k, label %framework_open_output.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @pmix_output_close(i32 noundef %i.j) #10
  store i32 -1, ptr %i.i, align 4, !tbaa !31
  br label %framework_open_output.exit

framework_open_output.exit:                       ; preds = %bb.f, %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not24 = icmp eq ptr %i.p, null
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %framework_open_output.exit
  %i.q = tail call i32 %i.p(i32 noundef %.018) #10
  br label %bb.k

bb.j:                                             ; preds = %framework_open_output.exit
  %i.r = tail call i32 @pmix_mca_base_framework_components_open(ptr noundef nonnull %0, i32 noundef %.018) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.q, %bb.i ], [ %i.r, %bb.j ]  ; 2 uses
  %.not25 = icmp eq i32 %.0, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = load i32, ptr %i.b, align 8, !tbaa !20
  %i.w = or i32 %i.v, 8
  store i32 %i.w, ptr %i.b, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ], [ 0, %bb.m ], [ %.0, %bb.l ]
  ret i32 %.019
}

declare i32 @pmix_mca_base_framework_components_open(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @pmix_mca_base_framework_close(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not74 = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.b, 10
  %or.cond.not = icmp eq i32 %i.d, 0
  br i1 %or.cond.not, label %framework_close_output.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %framework_close_output.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call i32 @pmix_mca_base_var_group_find(ptr noundef %i.h, ptr noundef %i.j, ptr noundef null) #10 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @pmix_mca_base_var_group_deregister(i32 noundef %i.k) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not74, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !45
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %pmix_list_remove_first.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 %i.t() #10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = tail call i32 @pmix_mca_base_framework_components_close(ptr noundef nonnull %0, ptr noundef null) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ]  ; 2 uses
  %.not48 = icmp eq i32 %.0, 0
  br i1 %.not48, label %pmix_list_remove_first.exit.thread, label %framework_close_output.exit

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %i.w = load volatile i64, ptr %i.n, align 8, !tbaa !45
  %i.x = add i64 %i.w, -1
  store volatile i64 %i.x, ptr %i.n, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !47   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load volatile ptr, ptr %i.z, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.ac = load volatile ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store volatile ptr %i.aa, ptr %i.ad, align 8, !tbaa !48
  %i.ae = load volatile ptr, ptr %i.ab, align 8, !tbaa !49
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !31
  tail call void @pmix_mca_base_component_unload(ptr noundef %i.ag, i32 noundef %i.ah) #10
  %i.ai = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.y) #10
  %i.aj = icmp eq i32 %i.ai, 35
  br i1 %i.aj, label %bb.k, label %pmix_obj_update.exit51

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call ptr @__errno_location() #11
  store i32 35, ptr %i.ak, align 4, !tbaa !22
  tail call void @perror(ptr noundef nonnull @.str.3) #12
  tail call void @abort() #13
  unreachable

pmix_obj_update.exit51:                           ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !25
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !25
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #10 ; 0 uses
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %pmix_obj_update.exit51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %.not6.i = icmp eq ptr %i.au, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.av = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.au, %bb.l ]
  %.07.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.at, %bb.l ]
  tail call void %i.av(ptr noundef nonnull %i.y) #10, !inline_history !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !41

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !54 ; 2 uses
  %.not46 = icmp eq ptr %i.az, null
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  tail call void %i.az(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.y) #10, !inline_history !42
  br label %bb.o

end_hunk_0
