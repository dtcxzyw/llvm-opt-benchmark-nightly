Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/v3_ncons?download=true
inline.NumInlined: 45
inline.NumDeleted: 17
begin_hunk_0_@v2i_NAME_CONSTRAINTS:bb.a
  br label %bb.p

bb.c:                                             ; preds = %.thread
  %i.h = add nuw nsw i32 %.02838, 1               ; 2 uses
  %i.i = call i32 @OPENSSL_sk_num(ptr noundef %2) #9
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit, !llvm.loop !33

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.02838 = phi i32 [ 0, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.k = call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.02838) #9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 5 uses
  %i.n = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(10) @.str.8, i64 noundef 9) #10
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(9) @.str.9, i64 noundef 8) #10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %.not33 = icmp eq i8 %i.u, 0
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 171, ptr noundef nonnull @__func__.v2i_NAME_CONSTRAINTS) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 143, ptr noundef null) #9
  br label %bb.p

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sink = phi i64 [ 10, %bb.e ], [ 9, %bb.g ]
  %.027 = phi ptr [ %i.a, %bb.e ], [ %i.f, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink
  store ptr %i.v, ptr %i.e, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  store ptr %i.x, ptr %i.g, align 8, !tbaa !36
  %i.y = call ptr @ASN1_item_new(ptr noundef nonnull @GENERAL_SUBTREE_it.local_it) #9 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 177, ptr noundef nonnull @__func__.v2i_NAME_CONSTRAINTS) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524301, ptr noundef null) #9
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.ab = call ptr @v2i_GENERAL_NAME_ex(ptr noundef %i.aa, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #9
  %.not34 = icmp eq ptr %i.ab, null
  br i1 %.not34, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef nonnull @__func__.v2i_NAME_CONSTRAINTS) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524322, ptr noundef null) #9
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %.027, align 8, !tbaa !37 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ae = call ptr @OPENSSL_sk_new_null() #9
  %i.af = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.ae, ptr noundef nonnull @sk_GENERAL_SUBTREE_freefunc_thunk) #9 ; 3 uses
  store ptr %i.af, ptr %.027, align 8, !tbaa !37
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %i.ah = phi ptr [ %i.af, %bb.n ], [ %i.ac, %bb.m ]
  %i.ai = call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.y) #9
  %.not35 = icmp eq i32 %i.ai, 0
  br i1 %.not35, label %bb.o, label %bb.c

bb.o:                                             ; preds = %.thread, %bb.n
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 187, ptr noundef nonnull @__func__.v2i_NAME_CONSTRAINTS) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524303, ptr noundef null) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j, %bb.h, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.j ], [ %i.y, %bb.o ], [ %i.y, %bb.l ], [ null, %bb.h ]
  call void @ASN1_item_free(ptr noundef %i.a, ptr noundef nonnull @NAME_CONSTRAINTS_it.local_it) #9
  call void @ASN1_item_free(ptr noundef %.1, ptr noundef nonnull @GENERAL_SUBTREE_it.local_it) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.p
  %.029 = phi ptr [ null, %bb.p ], [ %i.a, %.preheader ], [ %i.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @i2r_NAME_CONSTRAINTS(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  tail call fastcc void @do_i2r_name_constraints(ptr noundef %i.a, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.10)
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @BIO_puts(ptr noundef %2, ptr noundef nonnull @.str.11) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call fastcc void @do_i2r_name_constraints(ptr noundef %i.g, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.12)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @GENERAL_SUBTREE_it() #0 {
bb.a:
  ret ptr @GENERAL_SUBTREE_it.local_it
}

; Function Attrs: nounwind uwtable
define ptr @GENERAL_SUBTREE_new() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @GENERAL_SUBTREE_it.local_it) #9
  ret ptr %i.a
}

declare ptr @ASN1_item_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @GENERAL_SUBTREE_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @GENERAL_SUBTREE_it.local_it) #9
  ret void
}

declare void @ASN1_item_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @NAME_CONSTRAINTS_new() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @NAME_CONSTRAINTS_it.local_it) #9
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @NAME_CONSTRAINTS_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @NAME_CONSTRAINTS_it.local_it) #9
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 54) i32 @NAME_CONSTRAINTS_check(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.GENERAL_NAME_st, align 8    ; 8 uses
  %i.a = tail call ptr @X509_get_subject_name(ptr noundef %0) #9 ; 5 uses
  %i.b = tail call i32 @X509_NAME_entry_count(ptr noundef %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %i.d) #9
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.f = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %spec.store.select.i, i32 %spec.store.select1.i) ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0         ; 2 uses
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !19
  %i.j = tail call i32 @OPENSSL_sk_num(ptr noundef %i.i) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = tail call i32 @OPENSSL_sk_num(ptr noundef %i.l) #9
  %spec.store.select.i47 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %spec.store.select1.i48 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.n = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %spec.store.select.i47, i32 %spec.store.select1.i48) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = udiv i32 1048576, %i.h
  %3 = icmp samesign ugt i32 %i.p, %i.q
  br i1 %3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call i32 @X509_NAME_entry_count(ptr noundef %i.a) #9
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i32 4, ptr %2, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !12
  %i.u = call fastcc i32 @nc_match(ptr noundef nonnull %2, ptr noundef nonnull %1) ; 2 uses
  %.not43 = icmp eq i32 %i.u, 0
  br i1 %.not43, label %bb.g, label %.thread59

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %2, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.032 = phi i32 [ -1, %bb.g ], [ %i.v, %bb.j ]
  %i.v = tail call i32 @X509_NAME_get_index_by_NID(ptr noundef %i.a, i32 noundef 48, i32 noundef %.032) #9 ; 3 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @X509_NAME_get_entry(ptr noundef %i.a, i32 noundef %i.v) #9
  %i.y = tail call ptr @X509_NAME_ENTRY_get_data(ptr noundef %i.x) #9 ; 2 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27
  %.not44 = icmp eq i32 %i.aa, 22
  br i1 %.not44, label %bb.j, label %.thread59

bb.j:                                             ; preds = %bb.i
  %i.ab = call fastcc i32 @nc_match(ptr noundef nonnull %2, ptr noundef nonnull %1) ; 2 uses
  %.not45 = icmp eq i32 %i.ab, 0
  br i1 %.not45, label %bb.h, label %.thread59

.thread59:                                        ; preds = %bb.i, %bb.j, %bb.f
  %.236.ph = phi i32 [ %i.u, %bb.f ], [ 53, %bb.i ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.ad = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ac) #9
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit

bb.m:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i32 %.13363, 1              ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.ah = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ag) #9
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.loopexit, !llvm.loop !38

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.13363 = phi i32 [ %i.af, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.ak = tail call ptr @OPENSSL_sk_value(ptr noundef %i.aj, i32 noundef %.13363) #9
  %i.al = tail call fastcc i32 @nc_match(ptr noundef %i.ak, ptr noundef nonnull %1) ; 2 uses
  %.not46 = icmp eq i32 %i.al, 0
  br i1 %.not46, label %bb.m, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.m, %bb.l, %.thread59, %bb.a, %bb.b, %bb.d
  %.6 = phi i32 [ %.236.ph, %.thread59 ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.l ], [ %i.al, %.lr.ph ], [ 0, %bb.m ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare i32 @X509_NAME_entry_count(ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 54) i32 @nc_match(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = tail call i32 @OBJ_obj2nid(ptr noundef %i.e) #9
  %i.g = icmp eq i32 %i.f, 1208
  %spec.select = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  %.0.fr = freeze i32 %.0                         ; 6 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  %i.i = tail call i32 @OPENSSL_sk_num(ptr noundef %i.h) #9
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.k = icmp eq i32 %.0.fr, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %.04069 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 3 uses
  %.04168 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.n ] ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !19
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef %i.m, i32 noundef %.04168) #9 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %.not51 = icmp eq i32 %.0.fr, %i.p
  br i1 %.not51, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.v = tail call i32 @OBJ_cmp(ptr noundef %i.r, ptr noundef %i.u) #9
  %.not52 = icmp eq i32 %i.v, 0
  br i1 %.not52, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr i8, ptr %i.n, i64 8
  %.val56 = load ptr, ptr %i.w, align 8, !tbaa !64 ; 2 uses
  %i.x = getelementptr i8, ptr %i.n, i64 16
  %.val57 = load ptr, ptr %i.x, align 8, !tbaa !65
  %.not.i = icmp eq ptr %.val57, null
  %spec.store.select.i = zext i1 %.not.i to i32   ; 2 uses
  %.not8.i = icmp eq ptr %.val56, null
  br i1 %.not8.i, label %nc_minmax_valid.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call ptr @ASN1_INTEGER_to_BN(ptr noundef nonnull %.val56, ptr noundef null) #9 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i32 @BN_is_zero(ptr noundef nonnull %i.y) #9
  %.not9.i = icmp eq i32 %i.aa, 0
  br i1 %.not9.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi i32 [ 0, %bb.j ], [ %spec.store.select.i, %bb.i ]
  tail call void @BN_free(ptr noundef %i.y) #9
  br label %nc_minmax_valid.exit

nc_minmax_valid.exit:                             ; preds = %bb.g, %bb.k
  %.1.i = phi i32 [ %.0.i, %bb.k ], [ %spec.store.select.i, %bb.g ]
  %.not53 = icmp eq i32 %.1.i, 0
  br i1 %.not53, label %.split.us, label %bb.l

bb.l:                                             ; preds = %nc_minmax_valid.exit
  %i.ab = icmp eq i32 %.04069, 2
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.ad = tail call fastcc i32 @nc_match_single(i32 noundef %.0.fr, ptr noundef nonnull %0, ptr noundef %i.ac) ; 2 uses
  switch i32 %i.ad, label %.split.us [
    i32 0, label %bb.n
    i32 47, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.m
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.fold.split, %bb.l, %bb.d, %bb.f
  %.1 = phi i32 [ %.04069, %bb.d ], [ %.04069, %bb.f ], [ 2, %bb.l ], [ 2, %bb.m ], [ 1, %.fold.split ] ; 2 uses
  %i.ae = add nuw nsw i32 %.04168, 1              ; 2 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !19
  %i.ag = tail call i32 @OPENSSL_sk_num(ptr noundef %i.af) #9
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.n
  %i.ai = icmp eq i32 %.1, 1
  br i1 %i.ai, label %.split.us, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ak) #9
  %i.am = icmp sgt i32 %i.al, 0
end_hunk_0
