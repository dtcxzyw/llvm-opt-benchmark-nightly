Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/obj_dat?download=true
inline.NumInlined: 48
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@OBJ_create_objects:bb.a
  %.not46 = icmp eq i32 %i.ag, 0
  br i1 %.not46, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nuw nsw i32 %.03450, 1              ; 2 uses
  %i.ai = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 512) #12 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %.lr.ph, %.loopexit, %bb.j, %bb.a
  %.034.lcssa = phi i32 [ 0, %bb.a ], [ %.03450, %bb.j ], [ %.03450, %.loopexit ], [ %.03450, %.lr.ph ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.034.lcssa
}

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @OBJ_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null                     ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 707, ptr noundef nonnull @__func__.OBJ_create) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 524550, ptr noundef null) #12
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OBJ_sn2nid(ptr noundef nonnull %1)
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.c, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @OBJ_ln2nid(ptr noundef nonnull %2)
  %.not35 = icmp eq i32 %i.e, 0
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 714, ptr noundef nonnull @__func__.OBJ_create) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 102, ptr noundef null) #12
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %bb.e
  br i1 %i.a, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = tail call ptr @OBJ_txt2obj(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.o, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.h = tail call ptr @ossl_asn1_object_new() #12 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @__func__.OBJ_create) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 524301, ptr noundef null) #12
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.j = tail call fastcc i32 @ossl_obj_obj2nid(ptr noundef nonnull %i.f)
  %.not37 = icmp eq i32 %i.j, 0
  br i1 %.not37, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 735, ptr noundef nonnull @__func__.OBJ_create) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 102, ptr noundef null) #12
  br label %bb.n

.thread:                                          ; preds = %bb.j, %bb.l
  %.02640 = phi ptr [ %i.f, %bb.l ], [ %i.h, %bb.j ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02640, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !17
  store ptr %1, ptr %.02640, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.02640, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !21
  %i.m = tail call fastcc i32 @add_object(ptr noundef nonnull %.02640, i32 noundef 1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02640, i8 0, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.02639 = phi ptr [ %i.f, %bb.m ], [ %.02640, %.thread ]
  %.0 = phi i32 [ 0, %bb.m ], [ %i.m, %.thread ]
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %.02639) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k, %bb.g, %bb.b
  %.027 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.k ], [ %.0, %bb.n ], [ 0, %bb.i ]
  ret i32 %.027
}

declare ptr @ossl_asn1_object_new() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ossl_obj_obj2nid(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %1 = alloca %struct.added_obj_st, align 8       ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @ossl_bsearch(ptr noundef nonnull %i.a, ptr noundef nonnull @obj_objs, i32 noundef 1350, i32 noundef 4, ptr noundef nonnull @obj_cmp_BSEARCH_CMP_FN, ptr noundef null, i32 noundef 0) #12 ; 2 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr @nid_objs, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = call i32 @OPENSSL_init_crypto(i64 noundef 64, ptr noundef null) #12 ; 0 uses
  %i.o = call i32 @CRYPTO_THREAD_run_once(ptr noundef nonnull @ossl_obj_api_init, ptr noundef nonnull @obj_api_initialise_ossl_) #12
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.p = load i32, ptr @obj_api_initialise_ossl_ret_, align 4
  %.not1.i = icmp eq i32 %i.p, 0
  %.not.i = select i1 %.not.i.i, i1 true, i1 %.not1.i
  br i1 %.not.i, label %ossl_obj_read_lock.exit.thread, label %ossl_obj_read_lock.exit

ossl_obj_read_lock.exit:                          ; preds = %bb.f
  %i.q = load ptr, ptr @ossl_obj_lock, align 8, !tbaa !11
  %i.r = call i32 @CRYPTO_THREAD_read_lock(ptr noundef %i.q) #12
  %.not11 = icmp eq i32 %i.r, 0
  br i1 %.not11, label %ossl_obj_read_lock.exit.thread, label %bb.g

ossl_obj_read_lock.exit.thread:                   ; preds = %bb.f, %ossl_obj_read_lock.exit
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @__func__.ossl_obj_obj2nid) #12
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 786703, ptr noundef null) #12
  br label %bb.j

bb.g:                                             ; preds = %ossl_obj_read_lock.exit
  store i32 0, ptr %1, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !14
  %i.u = load ptr, ptr @added, align 8, !tbaa !10
  %i.v = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.u, ptr noundef nonnull %1) #12 ; 2 uses
  %.not12 = icmp eq ptr %i.v, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.z, %bb.h ], [ 0, %bb.g ]
  %i.aa = load ptr, ptr @ossl_obj_lock, align 8, !tbaa !11
  %i.ab = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.aa) #12 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.i, %ossl_obj_read_lock.exit.thread, %bb.e
  %.05 = phi i32 [ 0, %ossl_obj_read_lock.exit.thread ], [ 0, %bb.a ], [ %i.d, %bb.b ], [ %i.m, %bb.e ], [ %.0, %bb.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_object(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [4 x ptr], align 16               ; 14 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not57 = icmp eq i32 %i.d, 0
  br i1 %.not57, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr @OBJ_new_nid.new_nid, i32 1 monotonic, align 4 ; 2 uses
  %i.f = icmp slt i32 %i.e, 1502
  br i1 %i.f, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @OBJ_dup(ptr noundef nonnull %0) #12 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ao, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.e, ptr %i.i, align 8, !tbaa !17
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.d, 1502
  br i1 %i.j, label %bb.ao, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %.not51 = icmp eq ptr %i.l, null
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = call ptr @ossl_bsearch(ptr noundef nonnull %i.a, ptr noundef nonnull @obj_objs, i32 noundef 1350, i32 noundef 4, ptr noundef nonnull @obj_cmp_BSEARCH_CMP_FN, ptr noundef null, i32 noundef 0) #12
  %.not52 = icmp eq ptr %i.m, null
  br i1 %.not52, label %._crit_edge85, label %bb.ao

._crit_edge85:                                    ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge85, %bb.g
  %i.n = phi ptr [ %.pre, %._crit_edge85 ], [ %0, %bb.g ] ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %.not53 = icmp eq ptr %i.o, null
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = call ptr @ossl_bsearch(ptr noundef nonnull %i.a, ptr noundef nonnull @sn_objs, i32 noundef 1493, i32 noundef 4, ptr noundef nonnull @sn_cmp_BSEARCH_CMP_FN, ptr noundef null, i32 noundef 0) #12
  %.not54 = icmp eq ptr %i.p, null
  br i1 %.not54, label %._crit_edge86, label %bb.ao

._crit_edge86:                                    ; preds = %bb.j
  %.pre87 = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge86, %bb.i
  %i.q = phi ptr [ %.pre87, %._crit_edge86 ], [ %i.n, %bb.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %.not55 = icmp eq ptr %i.s, null
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = call ptr @ossl_bsearch(ptr noundef nonnull %i.a, ptr noundef nonnull @ln_objs, i32 noundef 1493, i32 noundef 4, ptr noundef nonnull @ln_cmp_BSEARCH_CMP_FN, ptr noundef null, i32 noundef 0) #12
  %.not56 = icmp eq ptr %i.t, null
  br i1 %.not56, label %._crit_edge88, label %bb.ao

._crit_edge88:                                    ; preds = %bb.l
  %.pre89 = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge88, %bb.k
  %i.u = phi ptr [ %.pre89, %._crit_edge88 ], [ %i.q, %bb.k ]
  %i.v = call ptr @OBJ_dup(ptr noundef %i.u) #12  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.ao, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.042 = phi ptr [ %i.g, %bb.e ], [ %i.v, %bb.m ] ; 10 uses
  %i.x = call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 796) #12 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !36
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.an, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %.042, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not58 = icmp eq i32 %i.ab, 0
  br i1 %.not58, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %.not59 = icmp eq ptr %i.ae, null
  br i1 %.not59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 799) #12 ; 2 uses
  store ptr %i.af, ptr %i.b, align 16, !tbaa !36
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ah = load ptr, ptr %.042, align 8, !tbaa !20
  %.not60 = icmp eq ptr %i.ah, null
  br i1 %.not60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 801) #12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !36
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %.not61 = icmp eq ptr %i.am, null
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = call noalias ptr @CRYPTO_malloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 803) #12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.an, ptr %i.ao, align 16, !tbaa !36
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aq = call i32 @OPENSSL_init_crypto(i64 noundef 64, ptr noundef null) #12 ; 0 uses
  %i.ar = call i32 @CRYPTO_THREAD_run_once(ptr noundef nonnull @ossl_obj_api_init, ptr noundef nonnull @obj_api_initialise_ossl_) #12
  %.not.i.i = icmp eq i32 %i.ar, 0
  %i.as = load i32, ptr @obj_api_initialise_ossl_ret_, align 4
  %.not1.i = icmp eq i32 %i.as, 0
  %.not.i = select i1 %.not.i.i, i1 true, i1 %.not1.i
  br i1 %.not.i, label %ossl_obj_write_lock.exit.thread, label %ossl_obj_write_lock.exit

ossl_obj_write_lock.exit:                         ; preds = %bb.v
  %i.at = load ptr, ptr @ossl_obj_lock, align 8, !tbaa !11
  %i.au = call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.at) #12
  %.not62 = icmp eq i32 %i.au, 0
  br i1 %.not62, label %ossl_obj_write_lock.exit.thread, label %.preheader71.preheader

.preheader71.preheader:                           ; preds = %ossl_obj_write_lock.exit
  %2 = load ptr, ptr %i.b, align 16, !tbaa !36    ; 5 uses
  %i.av = icmp eq ptr %2, null                    ; 2 uses
  br i1 %i.av, label %.preheader71.1, label %bb.w

ossl_obj_write_lock.exit.thread:                  ; preds = %bb.v, %ossl_obj_write_lock.exit
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 807, ptr noundef nonnull @__func__.add_object) #12
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 786704, ptr noundef null) #12
  br label %bb.an

bb.w:                                             ; preds = %.preheader71.preheader
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.042, ptr %i.aw, align 8, !tbaa !14
  %i.ax = load ptr, ptr @added, align 8, !tbaa !10
  %i.ay = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.ax, ptr noundef nonnull %2) #12 ; 2 uses
  %.not67 = icmp eq ptr %i.ay, null
  br i1 %.not67, label %.preheader71.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14
  br label %.preheader71.1

.preheader71.1:                                   ; preds = %bb.w, %bb.x, %.preheader71.preheader
  %.141 = phi ptr [ null, %.preheader71.preheader ], [ %i.ba, %bb.x ], [ null, %bb.w ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !36       ; 5 uses
  %i.bb = icmp eq ptr %4, null                    ; 2 uses
  br i1 %i.bb, label %.preheader71.2, label %bb.y

bb.y:                                             ; preds = %.preheader71.1
  store i32 1, ptr %4, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.042, ptr %i.bc, align 8, !tbaa !14
  %i.bd = load ptr, ptr @added, align 8, !tbaa !10
  %i.be = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.bd, ptr noundef nonnull %4) #12 ; 2 uses
  %.not67.1 = icmp eq ptr %i.be, null
  br i1 %.not67.1, label %.preheader71.2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14
  br label %.preheader71.2

.preheader71.2:                                   ; preds = %bb.z, %bb.y, %.preheader71.1
  %.141.1 = phi ptr [ %.141, %.preheader71.1 ], [ %i.bg, %bb.z ], [ %.141, %bb.y ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = load ptr, ptr %5, align 16, !tbaa !36      ; 5 uses
  %i.bh = icmp eq ptr %6, null                    ; 2 uses
  br i1 %i.bh, label %.preheader71.3, label %bb.aa

bb.aa:                                            ; preds = %.preheader71.2
  store i32 2, ptr %6, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.042, ptr %i.bi, align 8, !tbaa !14
  %i.bj = load ptr, ptr @added, align 8, !tbaa !10
  %i.bk = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.bj, ptr noundef nonnull %6) #12 ; 2 uses
  %.not67.2 = icmp eq ptr %i.bk, null
  br i1 %.not67.2, label %.preheader71.3, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !14
  br label %.preheader71.3

.preheader71.3:                                   ; preds = %.preheader71.2, %bb.aa, %bb.ab
  %.141.2 = phi ptr [ %.141.1, %.preheader71.2 ], [ %i.bm, %bb.ab ], [ %.141.1, %bb.aa ]
  store i32 3, ptr %i.x, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.042, ptr %i.bn, align 8, !tbaa !14
  %i.bo = load ptr, ptr @added, align 8, !tbaa !10
  %i.bp = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.bo, ptr noundef nonnull %i.x) #12 ; 2 uses
  %.not67.3 = icmp eq ptr %i.bp, null
  br i1 %.not67.3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader71.3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader71.3
  %.141.3 = phi ptr [ %.141.2, %.preheader71.3 ], [ %i.br, %bb.ac ] ; 3 uses
  %.not63 = icmp eq ptr %.141.3, null
  br i1 %.not63, label %.preheader70.preheader, label %bb.ae

.preheader70.preheader:                           ; preds = %bb.ad
  br i1 %i.av, label %.preheader70.1, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !17 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.141.3, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !17
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.by = call fastcc i32 @obj_equivalent(ptr noundef nonnull %i.bs, ptr noundef %.141.3)
  %.not66 = icmp eq i32 %i.by, 0
  %spec.select = select i1 %.not66, i32 0, i32 %i.bu
  br label %bb.am

bb.ag:                                            ; preds = %.preheader70.preheader
  %i.bz = load ptr, ptr @added, align 8, !tbaa !10
  %i.ca = call ptr @OPENSSL_LH_insert(ptr noundef %i.bz, ptr noundef nonnull %2) #12 ; 0 uses
  %i.cb = load ptr, ptr @added, align 8, !tbaa !10
  %i.cc = call i32 @OPENSSL_LH_error(ptr noundef %i.cb) #12
  %.not64 = icmp eq i32 %i.cc, 0
  br i1 %.not64, label %.preheader70.1, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ai ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %.not65 = icmp eq ptr %i.ce, null
  br i1 %.not65, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.cf = load ptr, ptr @added, align 8, !tbaa !10
  %i.cg = call ptr @OPENSSL_LH_delete(ptr noundef %i.cf, ptr noundef nonnull %i.ce) #12 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph
  %i.ch = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.ai, %bb.ag
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @__func__.add_object) #12
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 8, i32 noundef 524303, ptr noundef null) #12
  br label %bb.am

.preheader70.1:                                   ; preds = %bb.ag, %.preheader70.preheader
  br i1 %i.bb, label %.preheader70.2, label %bb.aj

bb.aj:                                            ; preds = %.preheader70.1
  %i.ci = load ptr, ptr @added, align 8, !tbaa !10
  %i.cj = call ptr @OPENSSL_LH_insert(ptr noundef %i.ci, ptr noundef nonnull %4) #12 ; 0 uses
  %i.ck = load ptr, ptr @added, align 8, !tbaa !10
  %i.cl = call i32 @OPENSSL_LH_error(ptr noundef %i.ck) #12
  %.not64.1 = icmp eq i32 %i.cl, 0
  br i1 %.not64.1, label %.preheader70.2, label %.lr.ph.preheader

.preheader70.2:                                   ; preds = %bb.aj, %.preheader70.1
  br i1 %i.bh, label %.preheader70.3, label %bb.ak

bb.ak:                                            ; preds = %.preheader70.2
  %i.cm = load ptr, ptr @added, align 8, !tbaa !10
  %i.cn = call ptr @OPENSSL_LH_insert(ptr noundef %i.cm, ptr noundef nonnull %6) #12 ; 0 uses
  %i.co = load ptr, ptr @added, align 8, !tbaa !10
  %i.cp = call i32 @OPENSSL_LH_error(ptr noundef %i.co) #12
  %.not64.2 = icmp eq i32 %i.cp, 0
  br i1 %.not64.2, label %.preheader70.3, label %.lr.ph.preheader

.preheader70.3:                                   ; preds = %.preheader70.2, %bb.ak
  %i.cq = load ptr, ptr @added, align 8, !tbaa !10
  %i.cr = call ptr @OPENSSL_LH_insert(ptr noundef %i.cq, ptr noundef nonnull %i.x) #12 ; 0 uses
  %i.cs = load ptr, ptr @added, align 8, !tbaa !10
  %i.ct = call i32 @OPENSSL_LH_error(ptr noundef %i.cs) #12
  %.not64.3 = icmp eq i32 %i.ct, 0
  br i1 %.not64.3, label %bb.al, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj, %bb.ak, %.preheader70.3
  %indvars.iv.ph = phi i64 [ 1, %bb.aj ], [ 2, %bb.ak ], [ 3, %.preheader70.3 ]
  br label %.lr.ph

bb.al:                                            ; preds = %.preheader70.3
  %i.cu = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !18
  %i.cw = and i32 %i.cv, -14
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !18
  %i.cx = load ptr, ptr @ossl_obj_lock, align 8, !tbaa !11
  %i.cy = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.cx) #12 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !17
  br label %bb.ao

bb.am:                                            ; preds = %bb.af, %bb.ae, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ %spec.select, %bb.af ], [ 0, %bb.ae ]
  %i.db = load ptr, ptr @ossl_obj_lock, align 8, !tbaa !11
  %i.dc = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.db) #12 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.n, %bb.q, %bb.s, %bb.u, %bb.am, %ossl_obj_write_lock.exit.thread
  %.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.u ], [ %.0, %bb.am ], [ 0, %ossl_obj_write_lock.exit.thread ]
  %7 = load ptr, ptr %i.b, align 16, !tbaa !36
  call void @CRYPTO_free(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 858) #12
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  call void @CRYPTO_free(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 858) #12
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %11 = load ptr, ptr %10, align 16, !tbaa !36
  call void @CRYPTO_free(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 858) #12
  call void @CRYPTO_free(ptr noundef %i.x, ptr noundef nonnull @.str, i32 noundef 858) #12
  call void @ASN1_OBJECT_free(ptr noundef nonnull %.042) #12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.m, %bb.b, %bb.c, %bb.d, %bb.an, %bb.al
  %.043 = phi i32 [ 0, %bb.b ], [ %.1, %bb.an ], [ %i.da, %bb.al ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.043
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -2147483648, 2147483648) i64 @OBJ_length(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %i.d = sext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @OBJ_get0_data(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @OBJ_add_object(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @add_object(ptr noundef %0, i32 noundef 0)
  ret i32 %i.a
}

declare void @OPENSSL_LH_set_down_load(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_doall(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_free(ptr noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_THREAD_read_lock(ptr noundef) local_unnamed_addr #4

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_THREAD_run_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @obj_api_initialise_ossl_() #0 {
bb.a:
  %i.a = tail call ptr @CRYPTO_THREAD_lock_new() #12 ; 2 uses
  store ptr %i.a, ptr @ossl_obj_lock, align 8, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %obj_api_initialise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_LH_new(ptr noundef nonnull @added_obj_hash, ptr noundef nonnull @added_obj_cmp) #12
  %i.d = tail call ptr @OPENSSL_LH_set_thunks(ptr noundef %i.c, ptr noundef nonnull @lh_ADDED_OBJ_hfn_thunk, ptr noundef nonnull @lh_ADDED_OBJ_cfn_thunk, ptr noundef nonnull @lh_ADDED_OBJ_doall_thunk, ptr noundef nonnull @lh_ADDED_OBJ_doall_arg_thunk) #12 ; 2 uses
  store ptr %i.d, ptr @added, align 8, !tbaa !10
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %obj_api_initialise.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @ossl_obj_lock, align 8, !tbaa !11
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.f) #12
  store ptr null, ptr @ossl_obj_lock, align 8, !tbaa !11
  br label %obj_api_initialise.exit

obj_api_initialise.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %.0.i, ptr @obj_api_initialise_ossl_ret_, align 4, !tbaa !24
  ret void
}

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i64 -2305843009213693952, 2305843009213693952) i64 @added_obj_hash(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !19
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26   ; 5 uses
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 20                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 3 uses
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.021 = phi i64 [ %i.g, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = zext i8 %i.m to i32
  %i.o = trunc i64 %indvars.iv to i32
  %i.p = mul i32 %i.o, 3
  %i.q = urem i32 %i.p, 24
  %i.r = shl nuw nsw i32 %i.n, %i.q
  %i.s = zext nneg i32 %i.r to i64
  %i.t = xor i64 %.021, %i.s
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %i.w = zext i8 %i.v to i32
  %i.x = trunc i64 %indvars.iv.next to i32
  %i.y = mul i32 %i.x, 3
  %i.z = urem i32 %i.y, 24
  %i.aa = shl nuw nsw i32 %i.w, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = xor i64 %i.t, %i.ab                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !37

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.ae = tail call i64 @OPENSSL_LH_strhash(ptr noundef %i.ad) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = tail call i64 @OPENSSL_LH_strhash(ptr noundef %i.ag) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !17
  %i.ak = zext i32 %i.aj to i64
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.021.epil.init = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.epil.init
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %i.an = zext i8 %i.am to i32
  %i.ao = trunc i64 %indvars.iv.epil.init to i32
  %i.ap = mul i32 %i.ao, 3
  %i.aq = urem i32 %i.ap, 24
  %i.ar = shl nuw nsw i32 %i.an, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = xor i64 %.021.epil.init, %i.as
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.e, %bb.d, %bb.c
  %.1 = phi i64 [ %i.ak, %bb.e ], [ %i.ae, %bb.c ], [ %i.ah, %bb.d ], [ %i.g, %bb.b ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.epil.preheader ]
  %i.au = and i64 %.1, 1073741823
  %i.av = load i32, ptr %0, align 8, !tbaa !19
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 30
  %i.ay = or disjoint i64 %i.ax, %i.au
  br label %bb.f

end_hunk_0
