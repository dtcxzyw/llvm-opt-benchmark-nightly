Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/dh_kmgmt?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0_@dh_export:bb.a
  %i.f = tail call ptr @OSSL_PARAM_BLD_new() #6   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %1, 132
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @ossl_dh_params_todata(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null) #6
  %.not47 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = and i32 %1, 3
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.k = and i32 %1, 3
  %.not2734 = icmp eq i32 %i.k, 0
  br i1 %.not2734, label %.thread42, label %.thread36

bb.e:                                             ; preds = %bb.d
  br i1 %.not47, label %.thread39, label %.thread36

.thread36:                                        ; preds = %.thread, %bb.e
  %i.l = and i32 %1, 1
  %i.m = tail call i32 @ossl_dh_key_todata(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, i32 noundef %i.l) #6
  %.not48 = icmp eq i32 %i.m, 0
  br i1 %.not48, label %.thread39, label %.thread42

bb.f:                                             ; preds = %bb.d
  br i1 %.not47, label %.thread39, label %.thread42

.thread42:                                        ; preds = %.thread36, %.thread, %bb.f
  %i.n = tail call ptr @OSSL_PARAM_BLD_to_param(ptr noundef nonnull %i.f) #6 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread39, label %bb.g

bb.g:                                             ; preds = %.thread42
  %i.p = tail call i32 %2(ptr noundef nonnull %i.n, ptr noundef %3) #6
  tail call void @OSSL_PARAM_clear_free(ptr noundef nonnull %i.n) #6
  br label %.thread39

.thread39:                                        ; preds = %.thread36, %bb.e, %bb.f, %.thread42, %bb.g
  %.2 = phi i32 [ %i.p, %bb.g ], [ 0, %.thread42 ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.thread36 ]
  tail call void @OSSL_PARAM_BLD_free(ptr noundef nonnull %i.f) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %.thread39
  %.023 = phi i32 [ %.2, %.thread39 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @dh_export_types(i32 noundef %0) #1 {
bb.a:
  %i.a = and i32 %0, 132
  %.not.i = icmp ne i32 %i.a, 0
  %spec.select.i = zext i1 %.not.i to i64         ; 2 uses
  %i.b = and i32 %0, 3
  %.not5.i = icmp eq i32 %i.b, 0
  %i.c = or disjoint i64 %spec.select.i, 2
  %.1.i = select i1 %.not5.i, i64 %spec.select.i, i64 %i.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @dh_types, i64 %.1.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @dh_dup(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ossl_dh_dup(ptr noundef %0, i32 noundef %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @dhx_newdata(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @dhx_newdata_ex(ptr noundef %0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @dhx_newdata_ex(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = tail call i32 @ossl_prov_is_running() #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #6
  %i.d = call fastcc i32 @get_legacy_dh_object(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1)
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #6
  %i.h = call ptr @ossl_dh_new_ex(ptr noundef %i.g) #6 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !10
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @DH_clear_flags(ptr noundef nonnull %i.h, i32 noundef 61440) #6
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @DH_set_flags(ptr noundef %i.i, i32 noundef 4096) #6
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ], [ %.pre, %bb.e ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @dhx_gen_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #6
  %i.b = tail call i32 @ossl_prov_is_running() #6
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 7
  %i.d = icmp eq i32 %i.c, 0
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %dh_gen_init_base.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 120, ptr noundef nonnull @.str.1, i32 noundef 553) #6 ; 12 uses
  %.not25.i = icmp eq ptr %i.e, null
  br i1 %.not25.i, label %.split.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !16
  store ptr %i.a, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2048, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 224, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr null, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 0, ptr %i.k, align 8, !tbaa !21
  store <4 x i32> <i32 -1, i32 1, i32 2, i32 -1>, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i32 4096, ptr %i.l, align 8, !tbaa !23
  %i.m = tail call i32 @dh_gen_set_params(ptr noundef nonnull %i.e, ptr noundef %2)
  %.not26.i = icmp eq i32 %i.m, 0
  br i1 %.not26.i, label %.split.thread.i, label %dh_gen_init_base.exit

.split.thread.i:                                  ; preds = %.split.i, %bb.b
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str.1, i32 noundef 575) #6
  br label %dh_gen_init_base.exit

dh_gen_init_base.exit:                            ; preds = %bb.a, %.split.i, %.split.thread.i
  %.021.i = phi ptr [ null, %bb.a ], [ null, %.split.thread.i ], [ %i.e, %.split.i ]
  ret ptr %.021.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dhx_gen_set_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.dh_gen_set_params_st, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %dh_set_gen_seed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %dhx_gen_set_params_decoder.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %.not6993.i = icmp eq ptr %i.b, null
  br i1 %.not6993.i, label %dhx_gen_set_params_decoder.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  %.promoted281 = load ptr, ptr %i.k, align 8
  %.promoted295 = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.ap, %.lr.ph.i
  %.06694.i297 = phi ptr [ %.promoted295, %.lr.ph.i ], [ %.06694.i296, %bb.ap ] ; 39 uses
  %.06694.i283 = phi ptr [ %.promoted281, %.lr.ph.i ], [ %.06694.i282, %bb.ap ] ; 39 uses
  %.06694.i269 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i268, %bb.ap ] ; 27 uses
  %.06694.i255 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i254, %bb.ap ] ; 27 uses
  %.06694.i241 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i240, %bb.ap ] ; 27 uses
  %.06694.i227 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i226, %bb.ap ] ; 27 uses
  %.06694.i113 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i112, %bb.ap ] ; 27 uses
  %.06694.i99 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i98, %bb.ap ] ; 27 uses
  %.06694.i85 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i84, %bb.ap ] ; 27 uses
  %.06694.i71 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i70, %bb.ap ] ; 27 uses
  %.06694.i57 = phi ptr [ null, %.lr.ph.i ], [ %.06694.i56, %bb.ap ] ; 27 uses
  %i.m = phi ptr [ null, %.lr.ph.i ], [ %i.cc, %bb.ap ] ; 28 uses
  %i.n = phi ptr [ null, %.lr.ph.i ], [ %i.cd, %bb.ap ] ; 28 uses
  %i.o = phi ptr [ null, %.lr.ph.i ], [ %i.ce, %bb.ap ] ; 28 uses
  %i.p = phi ptr [ null, %.lr.ph.i ], [ %i.cf, %bb.ap ] ; 28 uses
  %i.q = phi ptr [ null, %.lr.ph.i ], [ %i.cg, %bb.ap ] ; 28 uses
  %i.r = phi ptr [ null, %.lr.ph.i ], [ %i.ch, %bb.ap ] ; 28 uses
  %i.s = phi ptr [ null, %.lr.ph.i ], [ %i.ci, %bb.ap ] ; 28 uses
  %i.t = phi ptr [ null, %.lr.ph.i ], [ %i.cj, %bb.ap ] ; 28 uses
  %i.u = phi ptr [ null, %.lr.ph.i ], [ %i.ck, %bb.ap ] ; 28 uses
  %i.v = phi ptr [ null, %.lr.ph.i ], [ %i.cl, %bb.ap ] ; 28 uses
  %i.w = phi ptr [ null, %.lr.ph.i ], [ %i.cm, %bb.ap ] ; 28 uses
  %i.x = phi ptr [ %i.b, %.lr.ph.i ], [ %i.co, %bb.ap ] ; 31 uses
  %.06694.i = phi ptr [ %1, %.lr.ph.i ], [ %i.cn, %bb.ap ] ; 23 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  switch i8 %i.y, label %bb.ap [
    i8 100, label %bb.d
    i8 103, label %bb.g
    i8 104, label %bb.n
    i8 112, label %bb.q
    i8 113, label %bb.ae
    i8 115, label %bb.ah
    i8 116, label %bb.am
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.2, ptr noundef nonnull dereferenceable(1) %i.z) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.ap, !prof !28

bb.e:                                             ; preds = %bb.d
  %.not80.i = icmp eq ptr %i.m, null
  br i1 %.not80.i, label %bb.ap, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 414, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  switch i8 %i.ad, label %bb.ap [
    i8 105, label %bb.h
    i8 114, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.5, ptr noundef nonnull dereferenceable(1) %i.ae) #7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.ap, !prof !28

bb.i:                                             ; preds = %bb.h
  %.not79.i = icmp eq ptr %i.n, null
  br i1 %.not79.i, label %bb.ap, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 429, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.k:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.6, ptr noundef nonnull dereferenceable(1) %i.ah) #7
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.ap, !prof !28

bb.l:                                             ; preds = %bb.k
  %.not78.i = icmp eq ptr %i.o, null
  br i1 %.not78.i, label %bb.ap, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 440, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.n:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.8, ptr noundef nonnull dereferenceable(1) %i.ak) #7
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.ap, !prof !28

bb.o:                                             ; preds = %bb.n
  %.not77.i = icmp eq ptr %i.p, null
  br i1 %.not77.i, label %bb.ap, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 452, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.q:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  switch i8 %i.ao, label %bb.ap [
    i8 98, label %bb.r
    i8 99, label %bb.u
    i8 114, label %bb.x
  ]

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.9, ptr noundef nonnull dereferenceable(1) %i.ap) #7
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.ap, !prof !28

bb.s:                                             ; preds = %bb.r
  %.not76.i = icmp eq ptr %i.q, null
  br i1 %.not76.i, label %bb.ap, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 467, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.u:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.10, ptr noundef nonnull dereferenceable(1) %i.as) #7
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %bb.ap, !prof !28

bb.v:                                             ; preds = %bb.u
  %.not75.i = icmp eq ptr %i.r, null
  br i1 %.not75.i, label %bb.ap, label %bb.w, !prof !28

bb.w:                                             ; preds = %bb.v
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 478, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.x:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  switch i8 %i.aw, label %bb.ap [
    i8 105, label %bb.y
    i8 111, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.11, ptr noundef nonnull dereferenceable(1) %i.ax) #7
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.z, label %bb.ap, !prof !28

bb.z:                                             ; preds = %bb.y
  %.not74.i = icmp eq ptr %i.s, null
  br i1 %.not74.i, label %bb.ap, label %bb.aa, !prof !28

bb.aa:                                            ; preds = %bb.z
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 493, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.ab:                                            ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.12, ptr noundef nonnull dereferenceable(1) %i.ba) #7
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ac, label %bb.ap, !prof !28

bb.ac:                                            ; preds = %bb.ab
  %.not73.i = icmp eq ptr %i.t, null
  br i1 %.not73.i, label %bb.ap, label %bb.ad, !prof !28

bb.ad:                                            ; preds = %bb.ac
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 504, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.ae:                                            ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef nonnull dereferenceable(1) %i.bd) #7
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.af, label %bb.ap, !prof !28

bb.af:                                            ; preds = %bb.ae
  %.not72.i = icmp eq ptr %i.u, null
  br i1 %.not72.i, label %bb.ap, label %bb.ag, !prof !28

bb.ag:                                            ; preds = %bb.af
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 517, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.ah:                                            ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  switch i8 %i.bh, label %bb.ap [
    i8 97, label %bb.ai
    i8 101, label %sub_0.i
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.14, ptr noundef nonnull dereferenceable(1) %i.bi) #7
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.aj, label %bb.ap, !prof !28

bb.aj:                                            ; preds = %bb.ai
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 531, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 524556, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

sub_0.i:                                          ; preds = %bb.ah
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 101, %i.bn
  %.not95.i = icmp eq i8 %i.bm, 101
  br i1 %.not95.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = sub nsw i32 100, %i.br
  %.not96.i = icmp eq i8 %i.bq, 100
  br i1 %.not96.i, label %sub_2.i, label %.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 0, %i.bv
  br label %.tail.i

.tail.i:                                          ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %i.bx = phi i32 [ %i.bo, %sub_0.i ], [ %i.bs, %sub_1.i ], [ %i.bw, %sub_2.i ]
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ak, label %bb.ap, !prof !28

bb.ak:                                            ; preds = %.tail.i
  %.not71.i = icmp eq ptr %i.v, null
  br i1 %.not71.i, label %bb.ap, label %bb.al, !prof !28

bb.al:                                            ; preds = %bb.ak
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 540, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.am:                                            ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.16, ptr noundef nonnull dereferenceable(1) %i.bz) #7
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.an, label %bb.ap, !prof !28

bb.an:                                            ; preds = %bb.am
  %.not70.i = icmp eq ptr %i.w, null
  br i1 %.not70.i, label %bb.ap, label %bb.ao, !prof !28

bb.ao:                                            ; preds = %bb.an
  store ptr %.06694.i283, ptr %i.k, align 8
  store ptr %.06694.i297, ptr %i.l, align 8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 552, ptr noundef nonnull @__func__.dhx_gen_set_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x) #6
  br label %dh_set_gen_seed.exit

bb.ap:                                            ; preds = %bb.i, %bb.e, %bb.an, %bb.ak, %bb.af, %bb.ac, %bb.z, %bb.v, %bb.s, %bb.o, %bb.l, %bb.am, %.tail.i, %bb.ai, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.r, %bb.q, %bb.n, %bb.k, %bb.h, %bb.g, %bb.d, %bb.c
  %.06694.i296 = phi ptr [ %.06694.i297, %bb.c ], [ %.06694.i297, %bb.an ], [ %.06694.i297, %bb.d ], [ %.06694.i297, %bb.k ], [ %.06694.i297, %bb.am ], [ %.06694.i297, %bb.h ], [ %.06694.i, %bb.e ], [ %.06694.i297, %bb.g ], [ %.06694.i297, %bb.l ], [ %.06694.i297, %bb.n ], [ %.06694.i297, %bb.x ], [ %.06694.i297, %bb.v ], [ %.06694.i297, %bb.y ], [ %.06694.i297, %bb.z ], [ %.06694.i297, %bb.ab ], [ %.06694.i297, %bb.u ], [ %.06694.i297, %bb.s ], [ %.06694.i297, %bb.r ], [ %.06694.i297, %bb.o ], [ %.06694.i297, %bb.q ], [ %.06694.i297, %bb.ac ], [ %.06694.i297, %bb.ae ], [ %.06694.i297, %.tail.i ], [ %.06694.i297, %bb.af ], [ %.06694.i297, %bb.ai ], [ %.06694.i297, %bb.ah ], [ %.06694.i297, %bb.ak ], [ %.06694.i297, %bb.i ] ; 2 uses
  %.06694.i282 = phi ptr [ %.06694.i283, %bb.c ], [ %.06694.i283, %bb.an ], [ %.06694.i283, %bb.d ], [ %.06694.i283, %bb.k ], [ %.06694.i283, %bb.am ], [ %.06694.i283, %bb.h ], [ %.06694.i283, %bb.e ], [ %.06694.i283, %bb.g ], [ %.06694.i283, %bb.l ], [ %.06694.i283, %bb.n ], [ %.06694.i283, %bb.x ], [ %.06694.i283, %bb.v ], [ %.06694.i283, %bb.y ], [ %.06694.i283, %bb.z ], [ %.06694.i283, %bb.ab ], [ %.06694.i283, %bb.u ], [ %.06694.i283, %bb.s ], [ %.06694.i283, %bb.r ], [ %.06694.i283, %bb.o ], [ %.06694.i283, %bb.q ], [ %.06694.i283, %bb.ac ], [ %.06694.i283, %bb.ae ], [ %.06694.i283, %.tail.i ], [ %.06694.i283, %bb.af ], [ %.06694.i283, %bb.ai ], [ %.06694.i283, %bb.ah ], [ %.06694.i283, %bb.ak ], [ %.06694.i, %bb.i ] ; 2 uses
  %.06694.i268 = phi ptr [ %.06694.i269, %bb.c ], [ %.06694.i269, %bb.an ], [ %.06694.i269, %bb.d ], [ %.06694.i269, %bb.k ], [ %.06694.i269, %bb.am ], [ %.06694.i269, %bb.h ], [ %.06694.i269, %bb.e ], [ %.06694.i269, %bb.g ], [ %.06694.i, %bb.l ], [ %.06694.i269, %bb.n ], [ %.06694.i269, %bb.x ], [ %.06694.i269, %bb.v ], [ %.06694.i269, %bb.y ], [ %.06694.i269, %bb.z ], [ %.06694.i269, %bb.ab ], [ %.06694.i269, %bb.u ], [ %.06694.i269, %bb.s ], [ %.06694.i269, %bb.r ], [ %.06694.i269, %bb.o ], [ %.06694.i269, %bb.q ], [ %.06694.i269, %bb.ac ], [ %.06694.i269, %bb.ae ], [ %.06694.i269, %.tail.i ], [ %.06694.i269, %bb.af ], [ %.06694.i269, %bb.ai ], [ %.06694.i269, %bb.ah ], [ %.06694.i269, %bb.ak ], [ %.06694.i269, %bb.i ] ; 2 uses
  %.06694.i254 = phi ptr [ %.06694.i255, %bb.c ], [ %.06694.i255, %bb.an ], [ %.06694.i255, %bb.d ], [ %.06694.i255, %bb.k ], [ %.06694.i255, %bb.am ], [ %.06694.i255, %bb.h ], [ %.06694.i255, %bb.e ], [ %.06694.i255, %bb.g ], [ %.06694.i255, %bb.l ], [ %.06694.i255, %bb.n ], [ %.06694.i255, %bb.x ], [ %.06694.i255, %bb.v ], [ %.06694.i255, %bb.y ], [ %.06694.i255, %bb.z ], [ %.06694.i255, %bb.ab ], [ %.06694.i255, %bb.u ], [ %.06694.i255, %bb.s ], [ %.06694.i255, %bb.r ], [ %.06694.i, %bb.o ], [ %.06694.i255, %bb.q ], [ %.06694.i255, %bb.ac ], [ %.06694.i255, %bb.ae ], [ %.06694.i255, %.tail.i ], [ %.06694.i255, %bb.af ], [ %.06694.i255, %bb.ai ], [ %.06694.i255, %bb.ah ], [ %.06694.i255, %bb.ak ], [ %.06694.i255, %bb.i ] ; 3 uses
  %.06694.i240 = phi ptr [ %.06694.i241, %bb.c ], [ %.06694.i241, %bb.an ], [ %.06694.i241, %bb.d ], [ %.06694.i241, %bb.k ], [ %.06694.i241, %bb.am ], [ %.06694.i241, %bb.h ], [ %.06694.i241, %bb.e ], [ %.06694.i241, %bb.g ], [ %.06694.i241, %bb.l ], [ %.06694.i241, %bb.n ], [ %.06694.i241, %bb.x ], [ %.06694.i241, %bb.v ], [ %.06694.i241, %bb.y ], [ %.06694.i241, %bb.z ], [ %.06694.i241, %bb.ab ], [ %.06694.i241, %bb.u ], [ %.06694.i, %bb.s ], [ %.06694.i241, %bb.r ], [ %.06694.i241, %bb.o ], [ %.06694.i241, %bb.q ], [ %.06694.i241, %bb.ac ], [ %.06694.i241, %bb.ae ], [ %.06694.i241, %.tail.i ], [ %.06694.i241, %bb.af ], [ %.06694.i241, %bb.ai ], [ %.06694.i241, %bb.ah ], [ %.06694.i241, %bb.ak ], [ %.06694.i241, %bb.i ] ; 2 uses
  %.06694.i226 = phi ptr [ %.06694.i227, %bb.c ], [ %.06694.i227, %bb.an ], [ %.06694.i227, %bb.d ], [ %.06694.i227, %bb.k ], [ %.06694.i227, %bb.am ], [ %.06694.i227, %bb.h ], [ %.06694.i227, %bb.e ], [ %.06694.i227, %bb.g ], [ %.06694.i227, %bb.l ], [ %.06694.i227, %bb.n ], [ %.06694.i227, %bb.x ], [ %.06694.i, %bb.v ], [ %.06694.i227, %bb.y ], [ %.06694.i227, %bb.z ], [ %.06694.i227, %bb.ab ], [ %.06694.i227, %bb.u ], [ %.06694.i227, %bb.s ], [ %.06694.i227, %bb.r ], [ %.06694.i227, %bb.o ], [ %.06694.i227, %bb.q ], [ %.06694.i227, %bb.ac ], [ %.06694.i227, %bb.ae ], [ %.06694.i227, %.tail.i ], [ %.06694.i227, %bb.af ], [ %.06694.i227, %bb.ai ], [ %.06694.i227, %bb.ah ], [ %.06694.i227, %bb.ak ], [ %.06694.i227, %bb.i ] ; 3 uses
  %.06694.i112 = phi ptr [ %.06694.i113, %bb.c ], [ %.06694.i113, %bb.an ], [ %.06694.i113, %bb.d ], [ %.06694.i113, %bb.k ], [ %.06694.i113, %bb.am ], [ %.06694.i113, %bb.h ], [ %.06694.i113, %bb.e ], [ %.06694.i113, %bb.g ], [ %.06694.i113, %bb.l ], [ %.06694.i113, %bb.n ], [ %.06694.i113, %bb.x ], [ %.06694.i113, %bb.v ], [ %.06694.i113, %bb.y ], [ %.06694.i, %bb.z ], [ %.06694.i113, %bb.ab ], [ %.06694.i113, %bb.u ], [ %.06694.i113, %bb.s ], [ %.06694.i113, %bb.r ], [ %.06694.i113, %bb.o ], [ %.06694.i113, %bb.q ], [ %.06694.i113, %bb.ac ], [ %.06694.i113, %bb.ae ], [ %.06694.i113, %.tail.i ], [ %.06694.i113, %bb.af ], [ %.06694.i113, %bb.ai ], [ %.06694.i113, %bb.ah ], [ %.06694.i113, %bb.ak ], [ %.06694.i113, %bb.i ] ; 2 uses
  %.06694.i98 = phi ptr [ %.06694.i99, %bb.c ], [ %.06694.i99, %bb.an ], [ %.06694.i99, %bb.d ], [ %.06694.i99, %bb.k ], [ %.06694.i99, %bb.am ], [ %.06694.i99, %bb.h ], [ %.06694.i99, %bb.e ], [ %.06694.i99, %bb.g ], [ %.06694.i99, %bb.l ], [ %.06694.i99, %bb.n ], [ %.06694.i99, %bb.x ], [ %.06694.i99, %bb.v ], [ %.06694.i99, %bb.y ], [ %.06694.i99, %bb.z ], [ %.06694.i99, %bb.ab ], [ %.06694.i99, %bb.u ], [ %.06694.i99, %bb.s ], [ %.06694.i99, %bb.r ], [ %.06694.i99, %bb.o ], [ %.06694.i99, %bb.q ], [ %.06694.i, %bb.ac ], [ %.06694.i99, %bb.ae ], [ %.06694.i99, %.tail.i ], [ %.06694.i99, %bb.af ], [ %.06694.i99, %bb.ai ], [ %.06694.i99, %bb.ah ], [ %.06694.i99, %bb.ak ], [ %.06694.i99, %bb.i ] ; 3 uses
  %.06694.i84 = phi ptr [ %.06694.i85, %bb.c ], [ %.06694.i85, %bb.an ], [ %.06694.i85, %bb.d ], [ %.06694.i85, %bb.k ], [ %.06694.i85, %bb.am ], [ %.06694.i85, %bb.h ], [ %.06694.i85, %bb.e ], [ %.06694.i85, %bb.g ], [ %.06694.i85, %bb.l ], [ %.06694.i85, %bb.n ], [ %.06694.i85, %bb.x ], [ %.06694.i85, %bb.v ], [ %.06694.i85, %bb.y ], [ %.06694.i85, %bb.z ], [ %.06694.i85, %bb.ab ], [ %.06694.i85, %bb.u ], [ %.06694.i85, %bb.s ], [ %.06694.i85, %bb.r ], [ %.06694.i85, %bb.o ], [ %.06694.i85, %bb.q ], [ %.06694.i85, %bb.ac ], [ %.06694.i85, %bb.ae ], [ %.06694.i85, %.tail.i ], [ %.06694.i, %bb.af ], [ %.06694.i85, %bb.ai ], [ %.06694.i85, %bb.ah ], [ %.06694.i85, %bb.ak ], [ %.06694.i85, %bb.i ] ; 3 uses
  %.06694.i70 = phi ptr [ %.06694.i71, %bb.c ], [ %.06694.i71, %bb.an ], [ %.06694.i71, %bb.d ], [ %.06694.i71, %bb.k ], [ %.06694.i71, %bb.am ], [ %.06694.i71, %bb.h ], [ %.06694.i71, %bb.e ], [ %.06694.i71, %bb.g ], [ %.06694.i71, %bb.l ], [ %.06694.i71, %bb.n ], [ %.06694.i71, %bb.x ], [ %.06694.i71, %bb.v ], [ %.06694.i71, %bb.y ], [ %.06694.i71, %bb.z ], [ %.06694.i71, %bb.ab ], [ %.06694.i71, %bb.u ], [ %.06694.i71, %bb.s ], [ %.06694.i71, %bb.r ], [ %.06694.i71, %bb.o ], [ %.06694.i71, %bb.q ], [ %.06694.i71, %bb.ac ], [ %.06694.i71, %bb.ae ], [ %.06694.i71, %.tail.i ], [ %.06694.i71, %bb.af ], [ %.06694.i71, %bb.ai ], [ %.06694.i71, %bb.ah ], [ %.06694.i, %bb.ak ], [ %.06694.i71, %bb.i ] ; 3 uses
  %.06694.i56 = phi ptr [ %.06694.i57, %bb.c ], [ %.06694.i, %bb.an ], [ %.06694.i57, %bb.d ], [ %.06694.i57, %bb.k ], [ %.06694.i57, %bb.am ], [ %.06694.i57, %bb.h ], [ %.06694.i57, %bb.e ], [ %.06694.i57, %bb.g ], [ %.06694.i57, %bb.l ], [ %.06694.i57, %bb.n ], [ %.06694.i57, %bb.x ], [ %.06694.i57, %bb.v ], [ %.06694.i57, %bb.y ], [ %.06694.i57, %bb.z ], [ %.06694.i57, %bb.ab ], [ %.06694.i57, %bb.u ], [ %.06694.i57, %bb.s ], [ %.06694.i57, %bb.r ], [ %.06694.i57, %bb.o ], [ %.06694.i57, %bb.q ], [ %.06694.i57, %bb.ac ], [ %.06694.i57, %bb.ae ], [ %.06694.i57, %.tail.i ], [ %.06694.i57, %bb.af ], [ %.06694.i57, %bb.ai ], [ %.06694.i57, %bb.ah ], [ %.06694.i57, %bb.ak ], [ %.06694.i57, %bb.i ] ; 2 uses
  %i.cc = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.an ], [ %i.m, %bb.d ], [ %i.m, %bb.k ], [ %i.m, %bb.am ], [ %i.m, %bb.h ], [ %.06694.i, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.l ], [ %i.m, %bb.n ], [ %i.m, %bb.x ], [ %i.m, %bb.v ], [ %i.m, %bb.y ], [ %i.m, %bb.z ], [ %i.m, %bb.ab ], [ %i.m, %bb.u ], [ %i.m, %bb.s ], [ %i.m, %bb.r ], [ %i.m, %bb.o ], [ %i.m, %bb.q ], [ %i.m, %bb.ac ], [ %i.m, %bb.ae ], [ %i.m, %.tail.i ], [ %i.m, %bb.af ], [ %i.m, %bb.ai ], [ %i.m, %bb.ah ], [ %i.m, %bb.ak ], [ %i.m, %bb.i ] ; 2 uses
  %i.cd = phi ptr [ %i.n, %bb.c ], [ %i.n, %bb.an ], [ %i.n, %bb.d ], [ %i.n, %bb.k ], [ %i.n, %bb.am ], [ %i.n, %bb.h ], [ %i.n, %bb.e ], [ %i.n, %bb.g ], [ %i.n, %bb.l ], [ %i.n, %bb.n ], [ %i.n, %bb.x ], [ %i.n, %bb.v ], [ %i.n, %bb.y ], [ %i.n, %bb.z ], [ %i.n, %bb.ab ], [ %i.n, %bb.u ], [ %i.n, %bb.s ], [ %i.n, %bb.r ], [ %i.n, %bb.o ], [ %i.n, %bb.q ], [ %i.n, %bb.ac ], [ %i.n, %bb.ae ], [ %i.n, %.tail.i ], [ %i.n, %bb.af ], [ %i.n, %bb.ai ], [ %i.n, %bb.ah ], [ %i.n, %bb.ak ], [ %.06694.i, %bb.i ] ; 2 uses
  %i.ce = phi ptr [ %i.o, %bb.c ], [ %i.o, %bb.an ], [ %i.o, %bb.d ], [ %i.o, %bb.k ], [ %i.o, %bb.am ], [ %i.o, %bb.h ], [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %.06694.i, %bb.l ], [ %i.o, %bb.n ], [ %i.o, %bb.x ], [ %i.o, %bb.v ], [ %i.o, %bb.y ], [ %i.o, %bb.z ], [ %i.o, %bb.ab ], [ %i.o, %bb.u ], [ %i.o, %bb.s ], [ %i.o, %bb.r ], [ %i.o, %bb.o ], [ %i.o, %bb.q ], [ %i.o, %bb.ac ], [ %i.o, %bb.ae ], [ %i.o, %.tail.i ], [ %i.o, %bb.af ], [ %i.o, %bb.ai ], [ %i.o, %bb.ah ], [ %i.o, %bb.ak ], [ %i.o, %bb.i ]
  %i.cf = phi ptr [ %i.p, %bb.c ], [ %i.p, %bb.an ], [ %i.p, %bb.d ], [ %i.p, %bb.k ], [ %i.p, %bb.am ], [ %i.p, %bb.h ], [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.l ], [ %i.p, %bb.n ], [ %i.p, %bb.x ], [ %i.p, %bb.v ], [ %i.p, %bb.y ], [ %i.p, %bb.z ], [ %i.p, %bb.ab ], [ %i.p, %bb.u ], [ %i.p, %bb.s ], [ %i.p, %bb.r ], [ %.06694.i, %bb.o ], [ %i.p, %bb.q ], [ %i.p, %bb.ac ], [ %i.p, %bb.ae ], [ %i.p, %.tail.i ], [ %i.p, %bb.af ], [ %i.p, %bb.ai ], [ %i.p, %bb.ah ], [ %i.p, %bb.ak ], [ %i.p, %bb.i ]
  %i.cg = phi ptr [ %i.q, %bb.c ], [ %i.q, %bb.an ], [ %i.q, %bb.d ], [ %i.q, %bb.k ], [ %i.q, %bb.am ], [ %i.q, %bb.h ], [ %i.q, %bb.e ], [ %i.q, %bb.g ], [ %i.q, %bb.l ], [ %i.q, %bb.n ], [ %i.q, %bb.x ], [ %i.q, %bb.v ], [ %i.q, %bb.y ], [ %i.q, %bb.z ], [ %i.q, %bb.ab ], [ %i.q, %bb.u ], [ %.06694.i, %bb.s ], [ %i.q, %bb.r ], [ %i.q, %bb.o ], [ %i.q, %bb.q ], [ %i.q, %bb.ac ], [ %i.q, %bb.ae ], [ %i.q, %.tail.i ], [ %i.q, %bb.af ], [ %i.q, %bb.ai ], [ %i.q, %bb.ah ], [ %i.q, %bb.ak ], [ %i.q, %bb.i ]
  %i.ch = phi ptr [ %i.r, %bb.c ], [ %i.r, %bb.an ], [ %i.r, %bb.d ], [ %i.r, %bb.k ], [ %i.r, %bb.am ], [ %i.r, %bb.h ], [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.r, %bb.l ], [ %i.r, %bb.n ], [ %i.r, %bb.x ], [ %.06694.i, %bb.v ], [ %i.r, %bb.y ], [ %i.r, %bb.z ], [ %i.r, %bb.ab ], [ %i.r, %bb.u ], [ %i.r, %bb.s ], [ %i.r, %bb.r ], [ %i.r, %bb.o ], [ %i.r, %bb.q ], [ %i.r, %bb.ac ], [ %i.r, %bb.ae ], [ %i.r, %.tail.i ], [ %i.r, %bb.af ], [ %i.r, %bb.ai ], [ %i.r, %bb.ah ], [ %i.r, %bb.ak ], [ %i.r, %bb.i ]
  %i.ci = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.an ], [ %i.s, %bb.d ], [ %i.s, %bb.k ], [ %i.s, %bb.am ], [ %i.s, %bb.h ], [ %i.s, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.l ], [ %i.s, %bb.n ], [ %i.s, %bb.x ], [ %i.s, %bb.v ], [ %i.s, %bb.y ], [ %.06694.i, %bb.z ], [ %i.s, %bb.ab ], [ %i.s, %bb.u ], [ %i.s, %bb.s ], [ %i.s, %bb.r ], [ %i.s, %bb.o ], [ %i.s, %bb.q ], [ %i.s, %bb.ac ], [ %i.s, %bb.ae ], [ %i.s, %.tail.i ], [ %i.s, %bb.af ], [ %i.s, %bb.ai ], [ %i.s, %bb.ah ], [ %i.s, %bb.ak ], [ %i.s, %bb.i ]
  %i.cj = phi ptr [ %i.t, %bb.c ], [ %i.t, %bb.an ], [ %i.t, %bb.d ], [ %i.t, %bb.k ], [ %i.t, %bb.am ], [ %i.t, %bb.h ], [ %i.t, %bb.e ], [ %i.t, %bb.g ], [ %i.t, %bb.l ], [ %i.t, %bb.n ], [ %i.t, %bb.x ], [ %i.t, %bb.v ], [ %i.t, %bb.y ], [ %i.t, %bb.z ], [ %i.t, %bb.ab ], [ %i.t, %bb.u ], [ %i.t, %bb.s ], [ %i.t, %bb.r ], [ %i.t, %bb.o ], [ %i.t, %bb.q ], [ %.06694.i, %bb.ac ], [ %i.t, %bb.ae ], [ %i.t, %.tail.i ], [ %i.t, %bb.af ], [ %i.t, %bb.ai ], [ %i.t, %bb.ah ], [ %i.t, %bb.ak ], [ %i.t, %bb.i ]
  %i.ck = phi ptr [ %i.u, %bb.c ], [ %i.u, %bb.an ], [ %i.u, %bb.d ], [ %i.u, %bb.k ], [ %i.u, %bb.am ], [ %i.u, %bb.h ], [ %i.u, %bb.e ], [ %i.u, %bb.g ], [ %i.u, %bb.l ], [ %i.u, %bb.n ], [ %i.u, %bb.x ], [ %i.u, %bb.v ], [ %i.u, %bb.y ], [ %i.u, %bb.z ], [ %i.u, %bb.ab ], [ %i.u, %bb.u ], [ %i.u, %bb.s ], [ %i.u, %bb.r ], [ %i.u, %bb.o ], [ %i.u, %bb.q ], [ %i.u, %bb.ac ], [ %i.u, %bb.ae ], [ %i.u, %.tail.i ], [ %.06694.i, %bb.af ], [ %i.u, %bb.ai ], [ %i.u, %bb.ah ], [ %i.u, %bb.ak ], [ %i.u, %bb.i ]
  %i.cl = phi ptr [ %i.v, %bb.c ], [ %i.v, %bb.an ], [ %i.v, %bb.d ], [ %i.v, %bb.k ], [ %i.v, %bb.am ], [ %i.v, %bb.h ], [ %i.v, %bb.e ], [ %i.v, %bb.g ], [ %i.v, %bb.l ], [ %i.v, %bb.n ], [ %i.v, %bb.x ], [ %i.v, %bb.v ], [ %i.v, %bb.y ], [ %i.v, %bb.z ], [ %i.v, %bb.ab ], [ %i.v, %bb.u ], [ %i.v, %bb.s ], [ %i.v, %bb.r ], [ %i.v, %bb.o ], [ %i.v, %bb.q ], [ %i.v, %bb.ac ], [ %i.v, %bb.ae ], [ %i.v, %.tail.i ], [ %i.v, %bb.af ], [ %i.v, %bb.ai ], [ %i.v, %bb.ah ], [ %.06694.i, %bb.ak ], [ %i.v, %bb.i ]
  %i.cm = phi ptr [ %i.w, %bb.c ], [ %.06694.i, %bb.an ], [ %i.w, %bb.d ], [ %i.w, %bb.k ], [ %i.w, %bb.am ], [ %i.w, %bb.h ], [ %i.w, %bb.e ], [ %i.w, %bb.g ], [ %i.w, %bb.l ], [ %i.w, %bb.n ], [ %i.w, %bb.x ], [ %i.w, %bb.v ], [ %i.w, %bb.y ], [ %i.w, %bb.z ], [ %i.w, %bb.ab ], [ %i.w, %bb.u ], [ %i.w, %bb.s ], [ %i.w, %bb.r ], [ %i.w, %bb.o ], [ %i.w, %bb.q ], [ %i.w, %bb.ac ], [ %i.w, %bb.ae ], [ %i.w, %.tail.i ], [ %i.w, %bb.af ], [ %i.w, %bb.ai ], [ %i.w, %bb.ah ], [ %i.w, %bb.ak ], [ %i.w, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.06694.i, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !26 ; 2 uses
  %.not69.i = icmp eq ptr %i.co, null
  br i1 %.not69.i, label %dhx_gen_set_params_decoder.exit.loopexit, label %bb.c, !llvm.loop !75

dhx_gen_set_params_decoder.exit.loopexit:         ; preds = %bb.ap
  store ptr %.06694.i282, ptr %i.k, align 8
  store ptr %.06694.i296, ptr %i.l, align 8
  store ptr %.06694.i56, ptr %2, align 8
  store ptr %.06694.i70, ptr %i.c, align 8
  store ptr %.06694.i84, ptr %i.d, align 8
  store ptr %.06694.i98, ptr %i.e, align 8
  store ptr %.06694.i112, ptr %i.f, align 8
  store ptr %.06694.i226, ptr %i.g, align 8
  store ptr %.06694.i240, ptr %i.h, align 8
  store ptr %.06694.i254, ptr %i.i, align 8
  store ptr %.06694.i268, ptr %i.j, align 8
  br label %dhx_gen_set_params_decoder.exit

dhx_gen_set_params_decoder.exit:                  ; preds = %dhx_gen_set_params_decoder.exit.loopexit, %.preheader.i, %bb.b
  %i.cp = phi ptr [ %.06694.i98, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 3 uses
  %i.cq = phi ptr [ %i.cc, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 3 uses
  %i.cr = phi ptr [ %.06694.i84, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 2 uses
  %i.cs = phi ptr [ %.06694.i70, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 4 uses
  %i.ct = phi ptr [ %.06694.i254, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 2 uses
  %i.cu = phi ptr [ %.06694.i226, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 2 uses
  %i.cv = phi ptr [ %i.cd, %dhx_gen_set_params_decoder.exit.loopexit ], [ null, %.preheader.i ], [ null, %bb.b ] ; 2 uses
  %i.cw = call fastcc i32 @dh_gen_common_set_params(ptr noundef %0, ptr noundef %2)
  %.not23 = icmp eq i32 %i.cw, 0
  br i1 %.not23, label %dh_set_gen_seed.exit, label %bb.aq

bb.aq:                                            ; preds = %dhx_gen_set_params_decoder.exit
  %.not24 = icmp eq ptr %i.cv, null
  br i1 %.not24, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cy = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cx) #6
  %.not25 = icmp eq i32 %i.cy, 0
  br i1 %.not25, label %dh_set_gen_seed.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not26 = icmp eq ptr %i.cu, null
  br i1 %.not26, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.da = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cz) #6
  %.not27 = icmp eq i32 %i.da, 0
  br i1 %.not27, label %dh_set_gen_seed.exit, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.not28 = icmp eq ptr %i.ct, null
  br i1 %.not28, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.db) #6
  %.not29 = icmp eq i32 %i.dc, 0
  br i1 %.not29, label %dh_set_gen_seed.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.not30 = icmp eq ptr %i.cs, null
  br i1 %.not30, label %dh_set_gen_seed.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !39
  %.not31 = icmp eq i32 %i.de, 5
  br i1 %.not31, label %bb.ay, label %dh_set_gen_seed.exit

bb.ay:                                            ; preds = %bb.ax
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !40 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !33
  tail call void @CRYPTO_clear_free(ptr noundef %i.dk, i64 noundef %i.dm, ptr noundef nonnull @.str.1, i32 noundef 607) #6
  %i.dn = icmp ne ptr %i.dg, null
  %i.do = icmp ne i64 %i.di, 0
  %or.cond.i = and i1 %i.dn, %i.do
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  br i1 %or.cond.i, label %bb.az, label %dh_set_gen_seed.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.dp = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %i.dg, i64 noundef %i.di, ptr noundef nonnull @.str.1, i32 noundef 611) #6 ; 2 uses
  store ptr %i.dp, ptr %i.dj, align 8, !tbaa !32
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %dh_set_gen_seed.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !33
  br label %dh_set_gen_seed.exit.thread

dh_set_gen_seed.exit.thread:                      ; preds = %bb.ay, %bb.ba, %bb.aw
  %.not33 = icmp eq ptr %i.cr, null
  br i1 %.not33, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %dh_set_gen_seed.exit.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = tail call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.dr) #6
  %.not34 = icmp eq i32 %i.ds, 0
  br i1 %.not34, label %dh_set_gen_seed.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %dh_set_gen_seed.exit.thread
  %.not35 = icmp eq ptr %i.cq, null
  br i1 %.not35, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !39
  %.not36 = icmp eq i32 %i.du, 4
  br i1 %.not36, label %bb.be, label %dh_set_gen_seed.exit

bb.be:                                            ; preds = %bb.bd
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !20
  tail call void @CRYPTO_free(ptr noundef %i.dw, ptr noundef nonnull @.str.1, i32 noundef 698) #6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.dz = tail call ptr @CRYPTO_strdup(ptr noundef %i.dy, ptr noundef nonnull @.str.1, i32 noundef 699) #6 ; 2 uses
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !20
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %dh_set_gen_seed.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %.not37 = icmp eq ptr %i.cp, null
  br i1 %.not37, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !39
  %.not38 = icmp eq i32 %i.ec, 4
  br i1 %.not38, label %bb.bh, label %dh_set_gen_seed.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !34
  tail call void @CRYPTO_free(ptr noundef %i.ee, ptr noundef nonnull @.str.1, i32 noundef 707) #6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.eh = tail call ptr @CRYPTO_strdup(ptr noundef %i.eg, ptr noundef nonnull @.str.1, i32 noundef 708) #6 ; 2 uses
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !34
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %dh_set_gen_seed.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  br label %dh_set_gen_seed.exit

dh_set_gen_seed.exit:                             ; preds = %bb.ao, %bb.al, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.w, %bb.t, %bb.p, %bb.m, %bb.j, %bb.f, %bb.az, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bb, %bb.ax, %bb.av, %bb.at, %bb.ar, %dhx_gen_set_params_decoder.exit, %bb.a, %bb.bi
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.av ], [ 0, %bb.bb ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.bg ], [ 1, %bb.bi ], [ 0, %bb.ax ], [ 0, %bb.at ], [ 0, %bb.ar ], [ 0, %dhx_gen_set_params_decoder.exit ], [ 0, %bb.az ], [ 0, %bb.bh ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @dhx_gen_settable_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @dhx_gen_set_params_list
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @dhx_query_operation_name(i32 %0) #1 {
bb.a:
  ret ptr @.str.56
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @get_legacy_dh_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %2, ptr noundef nonnull @.str) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @OSSL_PARAM_get_octet_ptr(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef null) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @ossl_dh_get0_libctx(ptr noundef nonnull %i.e) #6
  %i.g = tail call ptr @ossl_lib_ctx_get_concrete(ptr noundef %i.f) #6
  %i.h = tail call ptr @ossl_lib_ctx_get_concrete(ptr noundef %0) #6
  %.not14 = icmp eq ptr %i.g, %i.h
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %1, align 8, !tbaa !10
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !10
  %i.j = tail call i32 @DH_up_ref(ptr noundef %i.i) #6
  %.not15 = icmp eq i32 %i.j, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.h, %bb.f
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ]
  ret i32 %.0
}

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_dh_new_ex(ptr noundef) local_unnamed_addr #3

declare void @DH_clear_flags(ptr noundef, i32 noundef) local_unnamed_addr #3
end_hunk_0
