Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_accelerator?download=true
inline.NumInlined: 38
inline.NumDeleted: 16
begin_hunk_0_@mca_pml_ob1_progress_one_htod_event:bb.a
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pml_ob1_accelerator_htod_lock, i64 16)) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load volatile i32, ptr @accelerator_event_htod_num_used, align 4, !tbaa !13
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.o = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 30, i32 noundef %i.n) #11
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.q = load volatile i32, ptr @accelerator_event_htod_num_used, align 4, !tbaa !13
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.p, ptr noundef nonnull @.str.4, i32 noundef %i.q) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 32), align 8, !tbaa !29
  %i.s = load ptr, ptr @accelerator_event_htod_array, align 8, !tbaa !17
  %i.t = load i32, ptr @accelerator_event_htod_first_used, align 4, !tbaa !13
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = tail call i32 %i.r(i32 noundef -1, ptr noundef %i.w) #11 ; 2 uses
  switch i32 %i.x, label %bb.k [
    i32 -4, label %bb.h
    i32 0, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.z = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 30, i32 noundef %i.y) #11
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.aa, ptr noundef nonnull @.str.5) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %0, align 8, !tbaa !27
  %i.ab = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.sink.split, label %bb.p, !prof !12

bb.k:                                             ; preds = %bb.g
  %i.ad = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.ae = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.ad) #11
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.af, ptr noundef nonnull @.str.6, i32 noundef %i.x) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr null, ptr %0, align 8, !tbaa !27
  %i.ag = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.sink.split, label %bb.p, !prof !12

bb.n:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr @accelerator_event_htod_frag_array, align 8, !tbaa !25
  %i.aj = load i32, ptr @accelerator_event_htod_first_used, align 4, !tbaa !13 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  store ptr %i.am, ptr %0, align 8, !tbaa !27
  %i.an = load volatile i32, ptr @accelerator_event_htod_num_used, align 4, !tbaa !13
  %i.ao = add nsw i32 %i.an, -1
  store volatile i32 %i.ao, ptr @accelerator_event_htod_num_used, align 4, !tbaa !13
  %i.ap = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.aq = load i32, ptr @mca_pml_ob1_accelerator_events_max, align 4, !tbaa !13
  %.not7 = icmp slt i32 %i.ap, %i.aq
  %spec.store.select = select i1 %.not7, i32 %i.ap, i32 0
  store i32 %spec.store.select, ptr @accelerator_event_htod_first_used, align 4
  %i.ar = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.sink.split, label %bb.p, !prof !12

bb.o:                                             ; preds = %bb.d
  %i.at = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.sink.split, label %bb.p, !prof !12

.sink.split:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.j
  %.0.ph = phi i32 [ 1, %bb.n ], [ -1, %bb.m ], [ 0, %bb.j ], [ 0, %bb.o ]
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pml_ob1_accelerator_htod_lock, i64 16)) #11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o, %bb.n, %bb.m, %bb.j, %bb.a
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.j ], [ -1, %bb.m ], [ 0, %bb.o ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mca_pml_ob1_accelerator_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator_base_selected_component, i64 84), align 1
  %i.b = xor i32 %i.a, 1819047278
  %i.c = load i8, ptr getelementptr (i8, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator_base_selected_component, i64 84), i64 4), align 1
  %i.d = zext i8 %i.c to i32
  %i.e = or i32 %i.b, %i.d
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %opal_obj_run_destructors.exit48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !30
  %.not = icmp eq i32 %i.i, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr @opal_mutex_t_class, ptr @pml_ob1_accelerator_htod_lock, align 8, !tbaa !35
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @pml_ob1_accelerator_htod_lock, i64 8), align 8, !tbaa !37
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !38 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %.not6.i = icmp eq ptr %i.l, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.m = phi ptr [ %i.o, %.lr.ph.i ], [ %i.l, %bb.d ]
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.k, %bb.d ]
  tail call void %i.m(ptr noundef nonnull @pml_ob1_accelerator_htod_lock) #11, !inline_history !40
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !41

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.d
  %i.p = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !30
  %.not25 = icmp eq i32 %i.p, %i.q
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %opal_obj_run_constructors.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %opal_obj_run_constructors.exit
  store ptr @opal_mutex_t_class, ptr @pml_ob1_accelerator_dtoh_lock, align 8, !tbaa !35
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @pml_ob1_accelerator_dtoh_lock, i64 8), align 8, !tbaa !37
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !38 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.not6.i35 = icmp eq ptr %i.s, null
  br i1 %.not6.i35, label %opal_obj_run_constructors.exit39, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.f, %.lr.ph.i36
  %i.t = phi ptr [ %i.v, %.lr.ph.i36 ], [ %i.s, %bb.f ]
  %.07.i37 = phi ptr [ %i.u, %.lr.ph.i36 ], [ %i.r, %bb.f ]
  tail call void %i.t(ptr noundef nonnull @pml_ob1_accelerator_dtoh_lock) #11, !inline_history !40
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i37, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %.not.i38 = icmp eq ptr %i.v, null
  br i1 %.not.i38, label %opal_obj_run_constructors.exit39, label %.lr.ph.i36, !llvm.loop !41

opal_obj_run_constructors.exit39:                 ; preds = %.lr.ph.i36, %bb.f
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 8), align 8, !tbaa !43
  %i.x = tail call i32 %i.w(i32 noundef -1, ptr noundef nonnull @dtoh_stream) #11 ; 3 uses
  %.not26 = icmp eq i32 %i.x, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %opal_obj_run_constructors.exit39
  %i.y = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.z = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.y) #11
  br i1 %i.z, label %.sink.split, label %bb.t

bb.h:                                             ; preds = %opal_obj_run_constructors.exit39
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 8), align 8, !tbaa !43
  %i.ab = tail call i32 %i.aa(i32 noundef -1, ptr noundef nonnull @htod_stream) #11 ; 3 uses
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.ad = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.ac) #11
  br i1 %i.ad, label %.sink.split, label %bb.t

bb.j:                                             ; preds = %bb.h
  store volatile i32 0, ptr @accelerator_event_dtoh_num_used, align 4, !tbaa !13
  %i.ae = load i32, ptr @mca_pml_ob1_accelerator_events_max, align 4, !tbaa !13 ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 8) #12 ; 2 uses
  store ptr %i.ag, ptr @accelerator_event_dtoh_array, align 8, !tbaa !17
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %.preheader52

.preheader52:                                     ; preds = %bb.j
  %i.ai = icmp sgt i32 %i.ae, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.ak = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.aj) #11
  br i1 %i.ak, label %.sink.split, label %bb.t

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr @mca_pml_ob1_accelerator_events_max, align 4, !tbaa !13 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !44

.lr.ph:                                           ; preds = %.preheader52, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader52 ] ; 2 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 16), align 8, !tbaa !45
  %i.ap = load ptr, ptr @accelerator_event_dtoh_array, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = tail call i32 %i.ao(i32 noundef -1, ptr noundef %i.aq) #11
  %.not29 = icmp eq i32 %i.ar, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.as = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.at = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.as) #11
  br i1 %i.at, label %.sink.split, label %bb.t

._crit_edge.loopexit:                             ; preds = %bb.l
  %0 = icmp sgt i32 %i.al, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader52
  %.pre-phi = phi i64 [ %i.am, %._crit_edge.loopexit ], [ %i.af, %.preheader52 ] ; 2 uses
  %1 = phi i1 [ %0, %._crit_edge.loopexit ], [ false, %.preheader52 ]
  %i.au = shl nsw i64 %.pre-phi, 3                ; 2 uses
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #13 ; 2 uses
  store ptr %i.av, ptr @accelerator_event_dtoh_frag_array, align 8, !tbaa !25
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.ax = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.ay = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.ax) #11
  br i1 %i.ay, label %.sink.split, label %bb.t

bb.o:                                             ; preds = %._crit_edge
  store volatile i32 0, ptr @accelerator_event_htod_num_used, align 4, !tbaa !13
  store i32 0, ptr @accelerator_event_htod_first_avail, align 4, !tbaa !13
  store i32 0, ptr @accelerator_event_htod_first_used, align 4, !tbaa !13
  %i.az = tail call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #12 ; 2 uses
  store ptr %i.az, ptr @accelerator_event_htod_array, align 8, !tbaa !17
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  br i1 %1, label %.lr.ph58, label %._crit_edge59

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.bc = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.bb) #11
  br i1 %i.bc, label %.sink.split, label %bb.t

bb.q:                                             ; preds = %.lr.ph58
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.bd = load i32, ptr @mca_pml_ob1_accelerator_events_max, align 4, !tbaa !13
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = icmp slt i64 %indvars.iv.next65, %i.be
  br i1 %i.bf, label %.lr.ph58, label %._crit_edge59.loopexit, !llvm.loop !46

.lr.ph58:                                         ; preds = %.preheader, %bb.q
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 16), align 8, !tbaa !45
  %i.bh = load ptr, ptr @accelerator_event_htod_array, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv64
  %i.bj = tail call i32 %i.bg(i32 noundef -1, ptr noundef %i.bi) #11
  %.not28 = icmp eq i32 %i.bj, 0
  br i1 %.not28, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph58
  %i.bk = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.bl = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.bk) #11
  br i1 %i.bl, label %.sink.split, label %bb.t

._crit_edge59.loopexit:                           ; preds = %bb.q
  %.pre = shl nsw i64 %i.be, 3
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %.pre-phi68 = phi i64 [ %.pre, %._crit_edge59.loopexit ], [ %i.au, %.preheader ]
  %i.bm = tail call noalias ptr @malloc(i64 noundef %.pre-phi68) #13 ; 2 uses
  store ptr %i.bm, ptr @accelerator_event_htod_frag_array, align 8, !tbaa !25
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.s, label %opal_obj_run_destructors.exit48

bb.s:                                             ; preds = %._crit_edge59
  %i.bo = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  %i.bp = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.bo) #11
  br i1 %i.bp, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g
  %.str.7.sink = phi ptr [ @.str.10, %bb.r ], [ @.str.7, %bb.g ], [ @.str.8, %bb.i ], [ @.str.9, %bb.k ], [ @.str.10, %bb.m ], [ @.str.9, %bb.n ], [ @.str.9, %bb.p ], [ @.str.9, %bb.s ]
  %.015.ph.ph = phi i32 [ -1, %bb.r ], [ %i.x, %bb.g ], [ %i.ab, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.p ], [ -1, %bb.s ]
  %i.bq = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !13
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.bq, ptr noundef nonnull %.str.7.sink) #11
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.g, %bb.i, %bb.k, %bb.m, %bb.n, %bb.p, %bb.r, %bb.s
  %.015.ph = phi i32 [ -1, %bb.s ], [ %i.x, %bb.g ], [ -1, %bb.r ], [ -1, %bb.p ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.k ], [ %i.ab, %bb.i ], [ %.015.ph.ph, %.sink.split ] ; 2 uses
  %i.br = load ptr, ptr @accelerator_event_dtoh_array, align 8, !tbaa !17 ; 2 uses
  %.not31 = icmp eq ptr %i.br, null
  br i1 %.not31, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.br) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bs = load ptr, ptr @accelerator_event_dtoh_frag_array, align 8, !tbaa !25 ; 2 uses
  %.not32 = icmp eq ptr %i.bs, null
  br i1 %.not32, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.bs) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bt = load ptr, ptr @accelerator_event_htod_array, align 8, !tbaa !17 ; 2 uses
  %.not33 = icmp eq ptr %i.bt, null
  br i1 %.not33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.bt) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = load ptr, ptr @accelerator_event_htod_frag_array, align 8, !tbaa !25 ; 2 uses
  %.not34 = icmp eq ptr %i.bu, null
  br i1 %.not34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.bu) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bv = load ptr, ptr @pml_ob1_accelerator_htod_lock, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 2 uses
  %.not6.i40 = icmp eq ptr %i.by, null
  br i1 %.not6.i40, label %opal_obj_run_destructors.exit, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.ab, %.lr.ph.i41
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i41 ], [ %i.by, %bb.ab ]
  %.07.i42 = phi ptr [ %i.ca, %.lr.ph.i41 ], [ %i.bx, %bb.ab ]
  tail call void %i.bz(ptr noundef nonnull @pml_ob1_accelerator_htod_lock) #11, !inline_history !48
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i42, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !39 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cb, null
  br i1 %.not.i43, label %opal_obj_run_destructors.exit, label %.lr.ph.i41, !llvm.loop !49

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i41, %bb.ab
  %i.cc = load ptr, ptr @pml_ob1_accelerator_dtoh_lock, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 2 uses
  %.not6.i44 = icmp eq ptr %i.cf, null
  br i1 %.not6.i44, label %opal_obj_run_destructors.exit48, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %opal_obj_run_destructors.exit, %.lr.ph.i45
  %i.cg = phi ptr [ %i.ci, %.lr.ph.i45 ], [ %i.cf, %opal_obj_run_destructors.exit ]
  %.07.i46 = phi ptr [ %i.ch, %.lr.ph.i45 ], [ %i.ce, %opal_obj_run_destructors.exit ]
  tail call void %i.cg(ptr noundef nonnull @pml_ob1_accelerator_dtoh_lock) #11, !inline_history !48
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i46, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !39 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ci, null
  br i1 %.not.i47, label %opal_obj_run_destructors.exit48, label %.lr.ph.i45, !llvm.loop !49

opal_obj_run_destructors.exit48:                  ; preds = %.lr.ph.i45, %opal_obj_run_destructors.exit, %._crit_edge59, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge59 ], [ %.015.ph, %opal_obj_run_destructors.exit ], [ %.015.ph, %.lr.ph.i45 ]
  ret i32 %.016
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @mca_pml_ob1_accelerator_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator_base_selected_component, i64 84), align 1
  %i.b = xor i32 %i.a, 1819047278
  %i.c = load i8, ptr getelementptr (i8, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator_base_selected_component, i64 84), i64 4), align 1
  %i.d = zext i8 %i.c to i32
  %i.e = or i32 %i.b, %i.d
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %opal_obj_run_destructors.exit53, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @accelerator_event_htod_array, align 8, !tbaa !17 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %.preheader54

.preheader54:                                     ; preds = %bb.b
  %i.j = load i32, ptr @mca_pml_ob1_accelerator_events_max, align 4, !tbaa !13 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader54, %bb.g
  %i.l = phi i32 [ %i.ak, %bb.g ], [ %i.j, %.preheader54 ] ; 2 uses
  %i.m = phi ptr [ %i.al, %bb.g ], [ %i.i, %.preheader54 ] ; 3 uses
  %i.n = phi ptr [ %i.am, %bb.g ], [ %i.i, %.preheader54 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader54 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %.not22 = icmp eq ptr %i.p, null
  br i1 %.not22, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.t = atomicrmw volatile add ptr %i.q, i32 -1 monotonic, align 4
  %i.u = add i32 %i.t, -1
  br label %opal_thread_add_fetch_32.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load volatile i32, ptr %i.q, align 4, !tbaa !13
  %i.w = add nsw i32 %i.v, -1
  store volatile i32 %i.w, ptr %i.q, align 4, !tbaa !13
  %i.x = load volatile i32, ptr %i.q, align 4, !tbaa !13
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.u, %bb.d ], [ %i.x, %bb.e ]
  %i.y = icmp eq i32 %.0.i, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %.not6.i = icmp eq ptr %i.ad, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.ad, %bb.f ]
  %.07.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ac, %bb.f ]
  tail call void %i.ae(ptr noundef nonnull %i.z) #11, !inline_history !48
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !49

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr @accelerator_event_htod_array, align 8, !tbaa !17
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.f
  %i.ah = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.m, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.aj) #11
  store ptr null, ptr %i.ai, align 8, !tbaa !20
  %.pre63 = load i32, ptr @mca_pml_ob1_accelerator_events_max, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.ak = phi i32 [ %i.l, %.lr.ph ], [ %.pre63, %opal_obj_run_destructors.exit ], [ %i.l, %opal_thread_add_fetch_32.exit ] ; 2 uses
  %i.al = phi ptr [ %i.m, %.lr.ph ], [ %i.ah, %opal_obj_run_destructors.exit ], [ %i.m, %opal_thread_add_fetch_32.exit ]
  %i.am = phi ptr [ %i.n, %.lr.ph ], [ %i.ah, %opal_obj_run_destructors.exit ], [ %i.n, %opal_thread_add_fetch_32.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = sext i32 %i.ak to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %bb.g
end_hunk_0
