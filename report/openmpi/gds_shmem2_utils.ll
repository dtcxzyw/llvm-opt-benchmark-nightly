Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/gds_shmem2_utils?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
begin_hunk_0_@pmix_gds_shmem2_get_job_tracker:bb.a

.loopexit91:                                      ; preds = %.lr.ph.i.i, %bb.g
  %i.v = tail call noalias ptr @strdup(ptr noundef %0) #15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr %i.v, ptr %i.w, align 8, !tbaa !45
  %.not53 = icmp eq ptr %i.v, null
  br i1 %.not53, label %.thread85, label %.preheader, !prof !35

.preheader:                                       ; preds = %.loopexit91
  %.04598 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2840), align 8, !tbaa !20 ; 2 uses
  %.not5499 = icmp eq ptr %.04598, getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2720)
  br i1 %.not5499, label %.thread, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader, %bb.h
  %.045100 = phi ptr [ %.045, %bb.h ], [ %.04598, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.045100, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph101
  %i.ab = getelementptr inbounds nuw i8, ptr %.045100, i64 120
  %.045 = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %.not54 = icmp eq ptr %.045, getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2720)
  br i1 %.not54, label %.thread, label %.lr.ph101, !llvm.loop !44

bb.i:                                             ; preds = %.lr.ph101
  %.not55 = icmp eq ptr %.045100, null
  br i1 %.not55, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.h, %.preheader, %bb.i
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_namespace_t_class, i64 56), align 8, !tbaa !28
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #14 ; 13 uses
  %i.ae = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !29
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_namespace_t_class, i64 32), align 8, !tbaa !30
  %.not.i62 = icmp eq i32 %i.ae, %i.af
  br i1 %.not.i62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_namespace_t_class) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %.not22.i63 = icmp eq ptr %i.ad, null
  br i1 %.not22.i63, label %.thread85, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ad, ptr noundef null) #15 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr @pmix_namespace_t_class, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i32 1, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_namespace_t_class, i64 40), align 8, !tbaa !33 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34 ; 2 uses
  %.not6.i.i64 = icmp eq ptr %i.am, null
  br i1 %.not6.i.i64, label %.loopexit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.l, %.lr.ph.i.i65
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i65 ], [ %i.am, %bb.l ]
  %.07.i.i66 = phi ptr [ %i.ao, %.lr.ph.i.i65 ], [ %i.al, %bb.l ]
  tail call void %i.an(ptr noundef nonnull %i.ad) #15, !inline_history !0
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i.i66, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 2 uses
  %.not.i23.i67 = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i67, label %.loopexit, label %.lr.ph.i.i65, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i65, %bb.l
  %i.aq = tail call noalias ptr @strdup(ptr noundef %0) #15 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !51
  %.not57 = icmp eq ptr %i.aq, null
  br i1 %.not57, label %.thread85, label %bb.m, !prof !35

bb.m:                                             ; preds = %.loopexit
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2848), align 8, !tbaa !37 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store ptr %i.as, ptr %i.at, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  store volatile ptr %i.ad, ptr %i.au, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2720), ptr %i.av, align 8, !tbaa !20
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2848), align 8, !tbaa !37
  %i.aw = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2864), align 8, !tbaa !38
  %i.ax = add i64 %i.aw, 1
  store volatile i64 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2864), align 8, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.1 = phi ptr [ %.045100, %bb.i ], [ %i.ad, %bb.m ] ; 4 uses
  %i.ay = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %.1) #15
  %i.az = icmp eq i32 %i.ay, 35
  br i1 %i.az, label %bb.o, label %pmix_obj_update.exit61

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.ba, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit61:                           ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !32
  %i.be = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.1) #15 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store ptr %.1, ptr %i.bf, align 8, !tbaa !52
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 472), align 8, !tbaa !37 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  store volatile ptr %i.i, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 344), ptr %i.bj, align 8, !tbaa !20
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 472), align 8, !tbaa !37
  %i.bk = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 488), align 8, !tbaa !38
  %i.bl = add i64 %i.bk, 1
  store volatile i64 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 488), align 8, !tbaa !38
  br label %pmix_obj_new_tma.exit

.thread85:                                        ; preds = %bb.k, %.loopexit, %.loopexit91
  %i.bm = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #15
  %i.bn = icmp eq i32 %i.bm, 35
  br i1 %i.bn, label %bb.p, label %pmix_obj_update.exit

bb.p:                                             ; preds = %.thread85
  %i.bo = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.bo, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit:                             ; preds = %.thread85
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !32
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.n, align 8, !tbaa !32
  %i.br = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #15 ; 0 uses
  %i.bs = icmp eq i32 %i.bq, 0
  br i1 %i.bs, label %bb.q, label %pmix_obj_new_tma.exit

bb.q:                                             ; preds = %pmix_obj_update.exit
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 2 uses
  %.not6.i = icmp eq ptr %i.bw, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %i.bx = phi ptr [ %i.bz, %.lr.ph.i ], [ %i.bw, %bb.q ]
  %.07.i = phi ptr [ %i.by, %.lr.ph.i ], [ %i.bv, %bb.q ]
  tail call void %i.bx(ptr noundef nonnull %i.i) #15, !inline_history !2
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !34 ; 2 uses
  %.not.i69 = icmp eq ptr %i.bz, null
  br i1 %.not.i69, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.q
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %.not60 = icmp eq ptr %i.ca, null
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void %i.ca(ptr noundef nonnull %i.o, ptr noundef nonnull %i.i) #15, !inline_history !4
  br label %pmix_obj_new_tma.exit

bb.s:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.i) #15
  br label %pmix_obj_new_tma.exit

pmix_obj_new_tma.exit:                            ; preds = %._crit_edge, %bb.f, %bb.c, %pmix_obj_update.exit61, %pmix_obj_update.exit, %bb.s, %bb.r
  %.15079 = phi i32 [ -32, %pmix_obj_update.exit ], [ -32, %bb.f ], [ -32, %bb.r ], [ -32, %bb.s ], [ 0, %pmix_obj_update.exit61 ], [ 0, %bb.c ], [ -44, %._crit_edge ]
  %.2 = phi ptr [ null, %pmix_obj_update.exit ], [ null, %bb.f ], [ null, %bb.r ], [ null, %bb.s ], [ %i.i, %pmix_obj_update.exit61 ], [ %.046, %bb.c ], [ null, %._crit_edge ]
  store ptr %.2, ptr %2, align 8, !tbaa !34
  ret i32 %.15079
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @pmix_gds_shmem2_get_session_tracker(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 176        ; 8 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !41  ; 11 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %pmix_gds_shmem2_get_session_tma.exit.preheader, label %bb.i

pmix_gds_shmem2_get_session_tma.exit.preheader:   ; preds = %bb.b
  %.05589 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 736), align 8, !tbaa !20 ; 2 uses
  %.not6290 = icmp eq ptr %.05589, getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 616)
  br i1 %.not6290, label %pmix_gds_shmem2_get_session_tma.exit._crit_edge, label %.lr.ph92

.lr.ph92:                                         ; preds = %pmix_gds_shmem2_get_session_tma.exit.preheader, %pmix_gds_shmem2_get_session_tma.exit
  %.05591 = phi ptr [ %.055, %pmix_gds_shmem2_get_session_tma.exit ], [ %.05589, %pmix_gds_shmem2_get_session_tma.exit.preheader ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05591, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %pmix_gds_shmem2_get_session_tma.exit

bb.c:                                             ; preds = %.lr.ph92
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef %.05591) #15
  %i.h = icmp eq i32 %i.g, 35
  br i1 %i.h, label %bb.d, label %pmix_obj_update.exit66

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.i, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit66:                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.05591, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !32
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef %.05591) #15 ; 0 uses
  store ptr %.05591, ptr %i.a, align 8, !tbaa !41
  br label %.thread

pmix_gds_shmem2_get_session_tma.exit:             ; preds = %.lr.ph92
  %i.n = getelementptr inbounds nuw i8, ptr %.05591, i64 120
  %.055 = load ptr, ptr %i.n, align 8, !tbaa !20  ; 2 uses
  %.not62 = icmp eq ptr %.055, getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 616)
  br i1 %.not62, label %pmix_gds_shmem2_get_session_tma.exit._crit_edge, label %.lr.ph92, !llvm.loop !53

pmix_gds_shmem2_get_session_tma.exit._crit_edge:  ; preds = %pmix_gds_shmem2_get_session_tma.exit, %pmix_gds_shmem2_get_session_tma.exit.preheader
  br i1 %2, label %pmix_tma_malloc.exit.i, label %.thread

pmix_tma_malloc.exit.i:                           ; preds = %pmix_gds_shmem2_get_session_tma.exit._crit_edge
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_shmem2_session_t_class, i64 56), align 8, !tbaa !28
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #14 ; 17 uses
  %i.q = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !29
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_shmem2_session_t_class, i64 32), align 8, !tbaa !30
  %.not.i67 = icmp eq i32 %i.q, %i.r
  br i1 %.not.i67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pmix_tma_malloc.exit.i
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_gds_shmem2_session_t_class) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %pmix_tma_malloc.exit.i
  %.not22.i = icmp eq ptr %i.p, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.p, ptr noundef null) #15 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @pmix_gds_shmem2_session_t_class, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i32 1, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_shmem2_session_t_class, i64 40), align 8, !tbaa !33 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.y, %bb.g ]
  %.07.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.x, %bb.g ]
  tail call void %i.z(ptr noundef nonnull %i.p) #15, !inline_history !0
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !1

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.f, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i32 %1, ptr %i.ae, align 8, !tbaa !60
  %i.af = tail call i32 @pthread_mutex_lock(ptr noundef %i.p) #15
  %i.ag = icmp eq i32 %i.af, 35
  br i1 %i.ag, label %bb.h, label %pmix_obj_update.exit65

bb.h:                                             ; preds = %pmix_obj_new_tma.exit
  %i.ah = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.ah, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit65:                           ; preds = %pmix_obj_new_tma.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !32
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !32
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.p) #15 ; 0 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !41
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 744), align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store ptr %i.am, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  store volatile ptr %i.p, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 616), ptr %i.ap, align 8, !tbaa !20
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 744), align 8, !tbaa !37
  %i.aq = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 760), align 8, !tbaa !38
  %i.ar = add i64 %i.aq, 1
  store volatile i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 760), align 8, !tbaa !38
  br label %.thread

bb.i:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load i32, ptr %i.au, align 8, !tbaa !60 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %i.ax = icmp eq i32 %1, -1                      ; 2 uses
  br i1 %i.aw, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  br i1 %i.ax, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.j
  %.086 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 736), align 8, !tbaa !20 ; 2 uses
  %.not5987 = icmp eq ptr %.086, getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 616)
  br i1 %.not5987, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.s
  %.088 = phi ptr [ %.0, %bb.s ], [ %.086, %.preheader ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.088, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !60
  %i.bc = icmp eq i32 %i.bb, %1
  br i1 %i.bc, label %bb.k, label %bb.s

bb.k:                                             ; preds = %.lr.ph
  %i.bd = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %.val) #15
  %i.be = icmp eq i32 %i.bd, 35
  br i1 %i.be, label %bb.l, label %pmix_obj_update.exit64

bb.l:                                             ; preds = %bb.k
  %i.bf = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.bf, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit64:                           ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !32
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !32
  %i.bj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.val) #15 ; 0 uses
  %i.bk = icmp eq i32 %i.bi, 0
  br i1 %i.bk, label %bb.m, label %bb.q

bb.m:                                             ; preds = %pmix_obj_update.exit64
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 2 uses
  %.not6.i = icmp eq ptr %i.bp, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.bq = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.bp, %bb.m ]
  %.07.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.bo, %bb.m ]
  tail call void %i.bq(ptr noundef nonnull %.val) #15, !inline_history !2
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34 ; 2 uses
  %.not.i68 = icmp eq ptr %i.bs, null
  br i1 %.not.i68, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40 ; 2 uses
  %.not60 = icmp eq ptr %i.bu, null
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void %i.bu(ptr noundef nonnull %i.bv, ptr noundef %i.bw) #15, !inline_history !4
  br label %bb.p

bb.o:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.bx) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %pmix_obj_update.exit64
  %i.by = tail call i32 @pthread_mutex_lock(ptr noundef %.088) #15
  %i.bz = icmp eq i32 %i.by, 35
  br i1 %i.bz, label %bb.r, label %pmix_obj_update.exit63

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.ca, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit63:                           ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %.088, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !32
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !32
  %i.ce = tail call i32 @pthread_mutex_unlock(ptr noundef %.088) #15 ; 0 uses
  store ptr %.088, ptr %i.a, align 8, !tbaa !41
  br label %.thread

bb.s:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.088, i64 120
  %.0 = load ptr, ptr %i.cf, align 8, !tbaa !20   ; 2 uses
  %.not59 = icmp eq ptr %.0, getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 616)
  br i1 %.not59, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.s, %.preheader
  br i1 %2, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %._crit_edge
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_shmem2_session_t_class, i64 56), align 8, !tbaa !28 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.at, null           ; 2 uses
  br i1 %.not.i.i70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.ci = tail call ptr %i.ch(ptr noundef nonnull %i.at, i64 noundef %i.cg) #15, !inline_history !55
  br label %pmix_tma_malloc.exit.i71

bb.v:                                             ; preds = %bb.t
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.cg) #14
  br label %pmix_tma_malloc.exit.i71

pmix_tma_malloc.exit.i71:                         ; preds = %bb.v, %bb.u
  %.0.i.i72 = phi ptr [ %i.ci, %bb.u ], [ %i.cj, %bb.v ] ; 17 uses
  %i.ck = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !29
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_shmem2_session_t_class, i64 32), align 8, !tbaa !30
  %.not.i73 = icmp eq i32 %i.ck, %i.cl
  br i1 %.not.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %pmix_tma_malloc.exit.i71
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_gds_shmem2_session_t_class) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %pmix_tma_malloc.exit.i71
  %.not22.i74 = icmp eq ptr %.0.i.i72, null
  br i1 %.not22.i74, label %pmix_obj_new_tma.exit79, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i.i72, ptr noundef null) #15 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 40
  store ptr @pmix_gds_shmem2_session_t_class, ptr %i.cn, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 48
  store i32 1, ptr %i.co, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 56 ; 2 uses
  br i1 %.not.i.i70, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %i.at, i64 64, i1 false), !tbaa.struct !63
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_shmem2_session_t_class, i64 40), align 8, !tbaa !33 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %.not6.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not6.i.i75, label %pmix_obj_new_tma.exit79, label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %bb.ab, %.lr.ph.i.i76
  %i.ct = phi ptr [ %i.cv, %.lr.ph.i.i76 ], [ %i.cs, %bb.ab ]
  %.07.i.i77 = phi ptr [ %i.cu, %.lr.ph.i.i76 ], [ %i.cr, %bb.ab ]
  tail call void %i.ct(ptr noundef nonnull %.0.i.i72) #15, !inline_history !0
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i77, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !34 ; 2 uses
  %.not.i23.i78 = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i78, label %pmix_obj_new_tma.exit79, label %.lr.ph.i.i76, !llvm.loop !1

pmix_obj_new_tma.exit79:                          ; preds = %.lr.ph.i.i76, %bb.x, %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 160
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i32 %1, ptr %i.cy, align 8, !tbaa !60
  %i.cz = tail call i32 @pthread_mutex_lock(ptr noundef %.0.i.i72) #15
  %i.da = icmp eq i32 %i.cz, 35
  br i1 %i.da, label %bb.ac, label %pmix_obj_update.exit

bb.ac:                                            ; preds = %pmix_obj_new_tma.exit79
  %i.db = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.db, align 4, !tbaa !29
  tail call void @perror(ptr noundef nonnull @.str.2) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit:                             ; preds = %pmix_obj_new_tma.exit79
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 48 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !32
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !32
  %i.df = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.0.i.i72) #15 ; 0 uses
  store ptr %.0.i.i72, ptr %i.a, align 8, !tbaa !41
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 744), align 8, !tbaa !37 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 128
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  store volatile ptr %.0.i.i72, ptr %i.di, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 616), ptr %i.dj, align 8, !tbaa !20
  store ptr %.0.i.i72, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 744), align 8, !tbaa !37
  %i.dk = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 760), align 8, !tbaa !38
  %i.dl = add i64 %i.dk, 1
  store volatile i64 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @pmix_mca_gds_shmem2_component, i64 760), align 8, !tbaa !38
  br label %.thread

bb.ad:                                            ; preds = %bb.i
  %.not61 = icmp eq i32 %i.av, %1
  %or.cond = or i1 %i.ax, %.not61
  br i1 %or.cond, label %.thread, label %bb.ae, !prof !64

bb.ae:                                            ; preds = %._crit_edge, %bb.ad
  %i.dm = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.dm, ptr noundef nonnull @.str.1, i32 noundef 168) #15
  br label %.thread

.thread:                                          ; preds = %pmix_obj_update.exit, %pmix_obj_update.exit63, %bb.ae, %pmix_gds_shmem2_get_session_tma.exit._crit_edge, %pmix_obj_update.exit65, %pmix_obj_update.exit66, %bb.j, %bb.ad, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ %.val, %bb.j ], [ null, %pmix_gds_shmem2_get_session_tma.exit._crit_edge ], [ null, %bb.ae ], [ %.val, %bb.ad ], [ %.088, %pmix_obj_update.exit63 ], [ %.05591, %pmix_obj_update.exit66 ], [ %i.p, %pmix_obj_update.exit65 ], [ %.0.i.i72, %pmix_obj_update.exit ]
  ret ptr %.3
}

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @PMIx_Error_string(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @pmix_gds_shmem2_hostnames_eq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #13
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_gds_shmem2_get_job_shmem2_by_id(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.f, ptr noundef nonnull @.str.1, i32 noundef 201) #15
  tail call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink.in = phi ptr [ %i.e, %bb.d ], [ %i.d, %bb.c ], [ %i.a, %bb.b ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !65
  store ptr %.sink, ptr %2, align 8, !tbaa !65
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @pmix_gds_shmem2_set_status(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %get_job_shmem2_status_flagp.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  br label %get_job_shmem2_status_flagp.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %get_job_shmem2_status_flagp.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.f, ptr noundef nonnull @.str.1, i32 noundef 223) #15
  tail call void @abort() #18
  unreachable

get_job_shmem2_status_flagp.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.g = load i8, ptr %.0.i, align 1, !tbaa !42
  %i.h = trunc i32 %2 to i8
  %i.i = or i8 %i.g, %i.h
  store i8 %i.i, ptr %.0.i, align 1, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @pmix_gds_shmem2_clear_status(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %get_job_shmem2_status_flagp.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  br label %get_job_shmem2_status_flagp.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %get_job_shmem2_status_flagp.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.f, ptr noundef nonnull @.str.1, i32 noundef 223) #15
  tail call void @abort() #18
  unreachable

get_job_shmem2_status_flagp.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.g = load i8, ptr %.0.i, align 1, !tbaa !42
  %i.h = trunc i32 %2 to i8
  %i.i = xor i8 %i.h, -1
  %i.j = and i8 %i.g, %i.i
  store i8 %i.j, ptr %.0.i, align 1, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @pmix_gds_shmem2_clearall_status(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %get_job_shmem2_status_flagp.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  br label %get_job_shmem2_status_flagp.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %get_job_shmem2_status_flagp.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.f, ptr noundef nonnull @.str.1, i32 noundef 223) #15
  tail call void @abort() #18
  unreachable

get_job_shmem2_status_flagp.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  store i8 0, ptr %.0.i, align 1, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @pmix_gds_shmem2_has_status(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %get_job_shmem2_status_flagp.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  br label %get_job_shmem2_status_flagp.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %get_job_shmem2_status_flagp.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.f, ptr noundef nonnull @.str.1, i32 noundef 223) #15
  tail call void @abort() #18
  unreachable

get_job_shmem2_status_flagp.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %i.g = load i8, ptr %.0.i, align 1, !tbaa !42
  %i.h = zext i8 %i.g to i32
  %i.i = and i32 %2, %i.h
  %i.j = icmp ne i32 %i.i, 0
  ret i1 %i.j
}

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null}
!1 = distinct !{!1, !25}
!2 = distinct !{null}
!3 = distinct !{!3, !25}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS12pmix_class_t", !13, i64 0}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"pmix_tma", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !15, i64 56}
!17 = !{!"pmix_object_t", !9, i64 0, !14, i64 40, !10, i64 48, !16, i64 56}
!18 = !{!"p1 _ZTS16pmix_list_item_t", !13, i64 0}
!19 = !{!"pmix_list_item_t", !17, i64 0, !18, i64 120, !18, i64 128, !10, i64 136}
!20 = !{!19, !18, i64 120}
!21 = !{!"_Bool", !9, i64 0}
!22 = !{!"p1 omnipotent char", !13, i64 0}
!23 = !{!"p1 _ZTS12pmix_shmem_t", !13, i64 0}
!24 = !{!"", !19, i64 0, !10, i64 144, !10, i64 148, !21, i64 152, !21, i64 153, !22, i64 160, !13, i64 168, !13, i64 176, !9, i64 184, !23, i64 192, !9, i64 200, !23, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !21, i64 240}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"long", !9, i64 0}
!27 = !{!"pmix_class_t", !22, i64 0, !14, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !10, i64 36, !15, i64 40, !15, i64 48, !26, i64 56}
!28 = !{!27, !26, i64 56}
!29 = !{!10, !10, i64 0}
!30 = !{!27, !10, i64 32}
!31 = !{!17, !14, i64 40}
!32 = !{!17, !10, i64 48}
!33 = !{!27, !15, i64 40}
!34 = !{!13, !13, i64 0}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!"pmix_list_t", !17, i64 0, !19, i64 120, !26, i64 264}
!37 = !{!19, !18, i64 128}
!38 = !{!36, !26, i64 264}
!39 = !{!27, !15, i64 48}
!40 = !{!17, !13, i64 96}
!41 = !{!24, !13, i64 176}
!42 = !{!9, !9, i64 0}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = !{!24, !22, i64 160}
!46 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2}
!47 = !{!"pmix_personality_t", !9, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!48 = !{!"pmix_epilog_t", !10, i64 0, !10, i64 4, !36, i64 8, !36, i64 280, !36, i64 552}
!49 = !{!"", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !21, i64 4, !21, i64 5, !21, i64 6, !22, i64 8, !22, i64 16, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !21, i64 28, !21, i64 29}
!50 = !{!"", !19, i64 0, !22, i64 144, !46, i64 152, !10, i64 156, !26, i64 160, !21, i64 168, !21, i64 169, !13, i64 176, !26, i64 184, !26, i64 192, !36, i64 200, !47, i64 472, !48, i64 504, !36, i64 1328, !49, i64 1600, !36, i64 1632}
!51 = !{!50, !22, i64 144}
!52 = !{!24, !13, i64 168}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{null, null}
!56 = !{!"", !19, i64 0, !23, i64 144, !9, i64 152, !13, i64 160}
!57 = !{!56, !13, i64 160}
!58 = !{!"p1 _ZTS11pmix_list_t", !13, i64 0}
!59 = !{!"", !16, i64 0, !13, i64 64, !10, i64 72, !58, i64 80, !58, i64 88}
!60 = !{!59, !10, i64 72}
!61 = !{!16, !13, i64 0}
!62 = !{!15, !15, i64 0}
!63 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 8, !62}
!64 = !{!"branch_weights", i32 4001, i32 1}
!65 = !{!23, !23, i64 0}
end_hunk_0
