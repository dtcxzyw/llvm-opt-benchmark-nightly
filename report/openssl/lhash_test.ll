Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/lhash_test?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@test_hashtable_stress:bb.a
  store i64 8, ptr %i.s, align 8, !tbaa !24
  store i64 8, ptr %3, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.03549 = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.h ] ; 3 uses
  %i.w = call noalias ptr @CRYPTO_malloc(i64 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 436) #18 ; 4 uses
  %i.x = call i32 @test_ptr(ptr noundef nonnull @.str.5, i32 noundef 437, ptr noundef nonnull @.str.20, ptr noundef %i.w) #18
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 438, ptr noundef nonnull @.str.52, i32 noundef %.03549) #18
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.y = mul nuw nsw i32 %.03549, 3
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  store i32 %i.z, ptr %i.w, align 4, !tbaa !9
  store i32 %i.z, ptr %i.t, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.w, ptr %1, align 8, !tbaa !32
  store ptr @test_int_id, ptr %i.v, align 8, !tbaa !35
  %i.aa = call i32 @ossl_ht_insert(ptr noundef %i.k, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.ab = call i32 @test_int_eq(ptr noundef nonnull @.str.5, i32 noundef 445, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.28, i32 noundef %i.aa, i32 noundef 1) #18
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !9
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 446, ptr noundef nonnull @.str.54, i32 noundef %i.ac) #18
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ad = add nuw nsw i32 %.03549, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, 2500000
  br i1 %exitcond.not, label %bb.i, label %bb.d, !llvm.loop !46

bb.i:                                             ; preds = %bb.h
  %i.ae = call i64 @ossl_ht_count(ptr noundef %i.k) #18
  %i.af = call i32 @test_size_t_eq(ptr noundef nonnull @.str.5, i32 noundef 452, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.37, i64 noundef %i.ae, i64 noundef 2500000) #18
  %.not37 = icmp eq i32 %i.af, 0
  br i1 %.not37, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  switch i32 %i.g, label %.preheader.split.preheader [
    i32 0, label %.preheader.split.us
    i32 1, label %.preheader.split.us51
  ]

.preheader.split.preheader:                       ; preds = %.preheader
  store i32 7499992, ptr %i.t, align 8, !tbaa !31
  br label %.loopexit

.preheader.split.us:                              ; preds = %.preheader, %bb.j
  %.150.us = phi i32 [ %i.an, %bb.j ], [ %i.g, %.preheader ] ; 2 uses
  %i.ag = mul nuw nsw i32 %.150.us, 7
  %i.ah = add nuw nsw i32 %i.ag, 4
  %i.ai = urem i32 %i.ah, 2500000
  %i.aj = mul nuw nsw i32 %i.ai, 3
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  store i32 %i.ak, ptr %i.t, align 8, !tbaa !31
  %i.al = call i32 @ossl_ht_delete(ptr noundef %i.k, ptr noundef nonnull %3) #18
  %i.am = call i32 @test_int_eq(ptr noundef nonnull @.str.5, i32 noundef 462, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.28, i32 noundef %i.al, i32 noundef 1) #18
  %.not40.us = icmp eq i32 %i.am, 0
  br i1 %.not40.us, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.preheader.split.us
  %i.an = add nuw nsw i32 %.150.us, 1             ; 2 uses
  %exitcond68.not = icmp eq i32 %i.an, 2500000
  br i1 %exitcond68.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !47

.preheader.split.us51:                            ; preds = %.preheader, %bb.o
  %.150.us52 = phi i32 [ %i.bd, %bb.o ], [ 0, %.preheader ] ; 2 uses
  %i.ao = mul nuw nsw i32 %.150.us52, 7
  %i.ap = add nuw nsw i32 %i.ao, 4
  %i.aq = urem i32 %i.ap, 2500000
  %i.ar = mul nuw nsw i32 %i.aq, 3
  %i.as = add nuw nsw i32 %i.ar, 1                ; 3 uses
  store i32 %i.as, ptr %i.t, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.at = call ptr @ossl_ht_get(ptr noundef %i.k, ptr noundef nonnull %3) #18 ; 2 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !48
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %ossl_ht_test_int_get.exit.us, label %bb.k

bb.k:                                             ; preds = %.preheader.split.us51
  %i.av = call ptr @ossl_ht_deref_value(ptr noundef %i.k, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ossl_ht_test_int_get.exit.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  %.not.i.i.us = icmp eq ptr %i.ay, @test_int_id
  br i1 %.not.i.i.us, label %bb.m, label %ossl_ht_test_int_get.exit.us

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !32
  br label %ossl_ht_test_int_get.exit.us

ossl_ht_test_int_get.exit.us:                     ; preds = %bb.m, %bb.l, %bb.k, %.preheader.split.us51
  %.0.i.us = phi ptr [ null, %.preheader.split.us51 ], [ %i.az, %bb.m ], [ null, %bb.k ], [ null, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ba = call i32 @test_ptr(ptr noundef nonnull @.str.5, i32 noundef 468, ptr noundef nonnull @.str.58, ptr noundef %.0.i.us) #18
  %.not38.us = icmp eq i32 %i.ba, 0
  br i1 %.not38.us, label %.split54.us, label %bb.n

bb.n:                                             ; preds = %ossl_ht_test_int_get.exit.us
  %i.bb = load i32, ptr %.0.i.us, align 4, !tbaa !9
  %i.bc = call i32 @test_int_eq(ptr noundef nonnull @.str.5, i32 noundef 469, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %i.bb, i32 noundef %i.as) #18
  %.not39.us = icmp eq i32 %i.bc, 0
  br i1 %.not39.us, label %.split54.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = add nuw nsw i32 %.150.us52, 1           ; 2 uses
  %exitcond67.not = icmp eq i32 %i.bd, 2500000
  br i1 %exitcond67.not, label %.loopexit, label %.preheader.split.us51, !llvm.loop !47

.split.us:                                        ; preds = %.preheader.split.us
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 463, ptr noundef nonnull @.str.57, i32 noundef %i.ak) #18
  br label %.loopexit

.split54.us:                                      ; preds = %ossl_ht_test_int_get.exit.us, %bb.n
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 470, ptr noundef nonnull @.str.59, i32 noundef %i.as) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.j, %.preheader.split.preheader, %.split.us, %.split54.us, %bb.i, %bb.b, %bb.g, %bb.e
  %.034 = phi i32 [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %.split.us ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %.split54.us ], [ 1, %.preheader.split.preheader ], [ 1, %bb.j ], [ 1, %bb.o ]
  call void @ossl_ht_free(ptr noundef %i.k) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.loopexit
  %.036 = phi i32 [ 1, %bb.a ], [ %.034, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_hashtable_multithread(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ht_config_st, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr null, ptr %1, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @hashtable_mt_free, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %0, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.f, align 4
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.68) #18 ; 2 uses
  %i.h = tail call ptr @getenv(ptr noundef nonnull @.str.69) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.g, ptr noundef null, i32 noundef 10) #18, !inline_history !50
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i32 %i.j, 2
  store i32 %i.l, ptr @num_workers, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %setup_num_workers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #18, !inline_history !50
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %setup_num_workers.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.n, ptr @num_workers, align 4, !tbaa !9
  br label %setup_num_workers.exit

setup_num_workers.exit:                           ; preds = %bb.d, %bb.e, %bb.f
  %i.p = load i32, ptr @num_workers, align 4, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 520, ptr noundef nonnull @.str.70, i32 noundef %i.p) #18
  %i.q = load ptr, ptr @worker_exits, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.q) #18
  %i.r = load ptr, ptr @workers, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.r) #18
  %i.s = load i32, ptr @num_workers, align 4, !tbaa !9
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 8) #19 ; 2 uses
  store ptr %i.u, ptr @worker_exits, align 8, !tbaa !51
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 8) #19 ; 2 uses
  store ptr %i.v, ptr @workers, align 8, !tbaa !53
  %i.w = icmp ne ptr %i.u, null
  %i.x = icmp ne ptr %i.v, null
  %i.y = and i1 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i32 @test_true(ptr noundef nonnull @.str.5, i32 noundef 722, ptr noundef nonnull @.str.60, i32 noundef %i.z) #18
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.p, label %bb.g

bb.g:                                             ; preds = %setup_num_workers.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) @test_mt_entries, i8 0, i64 2048, i1 false)
  %i.ab = call ptr @ossl_ht_new(ptr noundef nonnull %1) #18 ; 2 uses
  store ptr %i.ab, ptr @m_ht, align 8, !tbaa !54
  %i.ac = call i32 @test_ptr(ptr noundef nonnull @.str.5, i32 noundef 729, ptr noundef nonnull @.str.61, ptr noundef %i.ab) #18
  %.not17 = icmp eq i32 %i.ac, 0
  br i1 %.not17, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr @CRYPTO_THREAD_lock_new() #18  ; 2 uses
  store ptr %i.ad, ptr @worker_lock, align 8, !tbaa !56
  %i.ae = call i32 @test_ptr(ptr noundef nonnull @.str.5, i32 noundef 732, ptr noundef nonnull @.str.62, ptr noundef %i.ad) #18
  %.not18 = icmp eq i32 %i.ae, 0
  br i1 %.not18, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = call ptr @CRYPTO_THREAD_lock_new() #18  ; 2 uses
  store ptr %i.af, ptr @testrand_lock, align 8, !tbaa !56
  %i.ag = call i32 @test_ptr(ptr noundef nonnull @.str.5, i32 noundef 734, ptr noundef nonnull @.str.63, ptr noundef %i.af) #18
  %.not19 = icmp eq i32 %i.ag, 0
  br i1 %.not19, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call ptr @CRYPTO_THREAD_lock_new() #18  ; 2 uses
  store ptr %i.ah, ptr @no_rcu_lock, align 8, !tbaa !56
  %i.ai = call i32 @test_ptr(ptr noundef nonnull @.str.5, i32 noundef 736, ptr noundef nonnull @.str.64, ptr noundef %i.ah) #18
  %.not20 = icmp eq i32 %i.ai, 0
  br i1 %.not20, label %bb.o, label %.preheader24

.preheader24:                                     ; preds = %bb.j
  %i.aj = load i32, ptr @num_workers, align 4, !tbaa !9
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge33

.lr.ph:                                           ; preds = %.preheader24, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader24 ] ; 2 uses
  %i.al = load ptr, ptr @workers, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = call i32 @pthread_create(ptr noundef %i.am, ptr noundef null, ptr noundef nonnull @thread_run, ptr noundef nonnull @do_mt_hash_work) #18
  %.not23 = icmp eq i32 %i.an, 0
  %.pre.pre = load i32, ptr @num_workers, align 4, !tbaa !9 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = sext i32 %.pre.pre to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  %or.cond = select i1 %.not23, i1 %i.ap, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph
  %i.aq = icmp sgt i32 %.pre.pre, 0
  br i1 %i.aq, label %.lr.ph29, label %._crit_edge33

.preheader:                                       ; preds = %.lr.ph29
  %i.ar = icmp sgt i32 %i.aw, 0
  br i1 %i.ar, label %.lr.ph32.preheader, label %._crit_edge33

.lr.ph32.preheader:                               ; preds = %.preheader
  %.pre42 = load ptr, ptr @worker_exits, align 8, !tbaa !51
  br label %.lr.ph32

.lr.ph29:                                         ; preds = %._crit_edge, %.lr.ph29
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph29 ], [ 0, %._crit_edge ] ; 2 uses
  %i.as = load ptr, ptr @workers, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv35
  %i.au = load i64, ptr %i.at, align 8, !tbaa !58
  %i.av = call i32 @pthread_join(i64 noundef %i.au, ptr noundef null) #18 ; 0 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.aw = load i32, ptr @num_workers, align 4, !tbaa !9 ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next36, %i.ax
  br i1 %i.ay, label %.lr.ph29, label %.preheader, !llvm.loop !59

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.l
  %i.az = phi i32 [ %i.aw, %.lr.ph32.preheader ], [ %i.be, %bb.l ]
  %i.ba = phi ptr [ %.pre42, %.lr.ph32.preheader ], [ %i.bf, %bb.l ] ; 2 uses
  %indvars.iv38 = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next39, %bb.l ] ; 3 uses
  %.01330 = phi i32 [ 1, %.lr.ph32.preheader ], [ %.114, %bb.l ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv38
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %.not22 = icmp eq ptr %i.bc, null
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph32
  %i.bd = trunc nuw nsw i64 %indvars.iv38 to i32
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 759, ptr noundef nonnull @.str.65, i32 noundef %i.bd, ptr noundef nonnull %i.bc) #18
  %.pre41 = load ptr, ptr @worker_exits, align 8, !tbaa !51
  %.pre43 = load i32, ptr @num_workers, align 4, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph32, %bb.k
  %i.be = phi i32 [ %.pre43, %bb.k ], [ %i.az, %.lr.ph32 ] ; 2 uses
  %i.bf = phi ptr [ %.pre41, %bb.k ], [ %i.ba, %.lr.ph32 ]
  %.114 = phi i32 [ 0, %bb.k ], [ %.01330, %.lr.ph32 ] ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.bg = sext i32 %i.be to i64
  %i.bh = icmp slt i64 %indvars.iv.next39, %i.bg
  br i1 %i.bh, label %.lr.ph32, label %._crit_edge33, !llvm.loop !61

._crit_edge33:                                    ; preds = %bb.l, %.preheader24, %._crit_edge, %.preheader
  %.013.lcssa = phi i32 [ 1, %.preheader ], [ 1, %.preheader24 ], [ 1, %._crit_edge ], [ %.114, %bb.l ]
  %.b = load i1, ptr @free_failure, align 4
  br i1 %.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge33
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.5, i32 noundef 764, ptr noundef nonnull @.str.66) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge33
  %.215 = phi i32 [ 0, %bb.m ], [ %.013.lcssa, %._crit_edge33 ]
  store i32 0, ptr @worker_num, align 4, !tbaa !9
  store i1 false, ptr @free_failure, align 4
  store i32 0, ptr @global_iteration, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.n
  %.3 = phi i32 [ %.215, %bb.n ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i1 true, ptr @shutting_down, align 4
  %i.bi = load ptr, ptr @m_ht, align 8, !tbaa !54
  call void @ossl_ht_free(ptr noundef %i.bi) #18
  %i.bj = load ptr, ptr @worker_lock, align 8, !tbaa !56
  call void @CRYPTO_THREAD_lock_free(ptr noundef %i.bj) #18
  %i.bk = load ptr, ptr @testrand_lock, align 8, !tbaa !56
  call void @CRYPTO_THREAD_lock_free(ptr noundef %i.bk) #18
  %i.bl = load ptr, ptr @no_rcu_lock, align 8, !tbaa !56
  call void @CRYPTO_THREAD_lock_free(ptr noundef %i.bl) #18
  %i.bm = load ptr, ptr @workers, align 8, !tbaa !53
  call void @free(ptr noundef %i.bm) #18
  store ptr null, ptr @workers, align 8, !tbaa !53
  %i.bn = load ptr, ptr @worker_exits, align 8, !tbaa !51
  call void @free(ptr noundef %i.bn) #18
  store ptr null, ptr @worker_exits, align 8, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %setup_num_workers.exit, %bb.o
  %.4 = phi i32 [ %.3, %bb.o ], [ 0, %bb.g ], [ 0, %setup_num_workers.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 0, 4) i64 @int_hash(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @int_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = icmp ne i32 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_ptr_null(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @test_size_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_ptr_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal void @int_doall(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = tail call fastcc i32 @int_find(i32 noundef %i.a) ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @int_not_found, align 2, !tbaa !12
  %i.e = add i16 %i.d, 1
  store i16 %i.e, ptr @int_not_found, align 2, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.b to i64
end_hunk_0
