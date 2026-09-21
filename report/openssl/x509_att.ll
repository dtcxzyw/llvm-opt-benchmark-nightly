Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_att?download=true
inline.NumInlined: 31
inline.NumDeleted: 7
begin_hunk_0_@X509at_get_attr:bb.a
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @__func__.X509at_get_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #5
  %i.c = icmp sle i32 %i.b, %1
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 63, ptr noundef nonnull @__func__.X509at_get_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524550, ptr noundef null) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.e, %bb.e ]
  ret ptr %.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @X509at_delete_attr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @__func__.X509at_delete_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #5
  %i.c = icmp sle i32 %i.b, %1
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @__func__.X509at_delete_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524550, ptr noundef null) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %0, i32 noundef %1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.e, %bb.e ]
  ret ptr %.0
}

declare ptr @OPENSSL_sk_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ossl_x509at_add1_attr(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @__func__.ossl_x509at_add1_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @OPENSSL_sk_new_null() #5
  %i.f = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.e, ptr noundef nonnull @sk_X509_ATTRIBUTE_freefunc_thunk) #5 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.c, %bb.c ]  ; 6 uses
  %i.h = tail call ptr @X509_ATTRIBUTE_dup(ptr noundef nonnull %1) #5 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %.0, ptr noundef nonnull %i.h) #5
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %.0, ptr %0, align 8, !tbaa !16
  br label %bb.k

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ 95, %bb.d ], [ 105, %bb.f ]
  %.016.ph = phi ptr [ null, %bb.d ], [ %i.h, %bb.f ]
  %.1.ph = phi ptr [ null, %bb.d ], [ %.0, %bb.f ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.ossl_x509at_add1_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524303, ptr noundef null) #5
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e
  %.016 = phi ptr [ null, %bb.e ], [ %.016.ph, %.sink.split ]
  %.1 = phi ptr [ %.0, %bb.e ], [ %.1.ph, %.sink.split ]
  tail call void @X509_ATTRIBUTE_free(ptr noundef %.016) #5
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @OPENSSL_sk_free(ptr noundef %.1) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %bb.b
  %.017 = phi ptr [ null, %bb.b ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ null, %bb.j ], [ null, %bb.i ]
  ret ptr %.017
}

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_X509_ATTRIBUTE_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #3 {
bb.a:
  tail call void %0(ptr noundef %1) #5
  ret void
}

declare ptr @X509_ATTRIBUTE_dup(ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @X509_ATTRIBUTE_free(ptr noundef) #1

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @X509at_add1_attr(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 122, ptr noundef nonnull @__func__.X509at_add1_attr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %X509at_get_attr_by_OBJ.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !14
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #5 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %exitcond.not22 = icmp slt i32 %i.e, 1
  br i1 %exitcond.not22, label %X509at_get_attr_by_OBJ.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.f = add nsw i32 %smax, -2
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %.0.in.i23, %i.f
  br i1 %exitcond.not, label %X509at_get_attr_by_OBJ.exit.thread, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.0.in.i23 = phi i32 [ %.0.i, %bb.e ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i23, 1               ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.c, i32 noundef %.0.i) #5
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call i32 @OBJ_cmp(ptr noundef %i.h, ptr noundef %i.d) #5
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %.lr.ph
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @__func__.X509at_add1_attr) #5
  %i.k = load ptr, ptr %1, align 8, !tbaa !14
  %i.l = tail call i32 @OBJ_obj2nid(ptr noundef %i.k) #5
  %i.m = tail call ptr @OBJ_nid2sn(i32 noundef %i.l) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 140, ptr noundef nonnull @.str.1, ptr noundef %i.m) #5
  br label %bb.g

X509at_get_attr_by_OBJ.exit.thread:               ; preds = %bb.e, %bb.d, %bb.c
  %i.n = tail call ptr @ossl_x509at_add1_attr(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %X509at_get_attr_by_OBJ.exit.thread, %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ %i.n, %X509at_get_attr_by_OBJ.exit.thread ]
  ret ptr %.0
}

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ossl_x509at_add1_attr_by_OBJ(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ossl_x509at_add1_attr(ptr noundef %0, ptr noundef nonnull %i.a)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_ATTRIBUTE_create_by_OBJ(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @X509_ATTRIBUTE_new() #5   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_OBJ) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524301, ptr noundef null) #5
  br label %bb.m

bb.e:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.b ]  ; 9 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %X509_ATTRIBUTE_set1_object.exit.thread, label %X509_ATTRIBUTE_set1_object.exit

X509_ATTRIBUTE_set1_object.exit.thread:           ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @__func__.X509_ATTRIBUTE_set1_object) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.j

X509_ATTRIBUTE_set1_object.exit:                  ; preds = %bb.e
  %i.g = load ptr, ptr %.0, align 8, !tbaa !14
  tail call void @ASN1_OBJECT_free(ptr noundef %i.g) #5
  %i.h = tail call ptr @OBJ_dup(ptr noundef nonnull %1) #5 ; 2 uses
  store ptr %i.h, ptr %.0, align 8, !tbaa !14
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.j, label %bb.f

bb.f:                                             ; preds = %X509_ATTRIBUTE_set1_object.exit
  %i.i = tail call i32 @X509_ATTRIBUTE_set1_data(ptr noundef nonnull %.0, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.a, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  store ptr %.0, ptr %0, align 8, !tbaa !19
  br label %bb.m

bb.j:                                             ; preds = %X509_ATTRIBUTE_set1_object.exit.thread, %bb.f, %X509_ATTRIBUTE_set1_object.exit
  br i1 %i.a, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %.not23 = icmp eq ptr %.0, %i.l
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %.0) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.g, %bb.h, %bb.i, %bb.d
  %.018 = phi ptr [ null, %bb.d ], [ %.0, %bb.g ], [ %.0, %bb.i ], [ %.0, %bb.h ], [ null, %bb.l ], [ null, %bb.k ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define ptr @X509at_add1_attr_by_OBJ(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @__func__.X509at_add1_attr_by_OBJ) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %ossl_x509at_add1_attr_by_OBJ.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %X509at_get_attr_by_OBJ.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #5 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 0)
  %exitcond.not26 = icmp slt i32 %i.d, 1
  br i1 %exitcond.not26, label %X509at_get_attr_by_OBJ.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.e = add nsw i32 %smax, -2
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %.0.in.i27, %i.e
  br i1 %exitcond.not, label %X509at_get_attr_by_OBJ.exit.thread, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.0.in.i27 = phi i32 [ %.0.i, %bb.e ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i27, 1               ; 2 uses
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.c, i32 noundef %.0.i) #5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call i32 @OBJ_cmp(ptr noundef %i.g, ptr noundef %1) #5
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %.lr.ph
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 163, ptr noundef nonnull @__func__.X509at_add1_attr_by_OBJ) #5
  %i.j = tail call i32 @OBJ_obj2nid(ptr noundef %1) #5
  %i.k = tail call ptr @OBJ_nid2sn(i32 noundef %i.j) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 140, ptr noundef nonnull @.str.1, ptr noundef %i.k) #5
  br label %ossl_x509at_add1_attr_by_OBJ.exit

X509at_get_attr_by_OBJ.exit.thread:               ; preds = %bb.e, %bb.d, %bb.c
  %i.l = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ossl_x509at_add1_attr_by_OBJ.exit, label %bb.g

bb.g:                                             ; preds = %X509at_get_attr_by_OBJ.exit.thread
  %i.n = tail call ptr @ossl_x509at_add1_attr(ptr noundef nonnull %0, ptr noundef nonnull %i.l)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.l) #5
  br label %ossl_x509at_add1_attr_by_OBJ.exit

ossl_x509at_add1_attr_by_OBJ.exit:                ; preds = %bb.g, %X509at_get_attr_by_OBJ.exit.thread, %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ %i.n, %bb.g ], [ null, %X509at_get_attr_by_OBJ.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ossl_x509at_add1_attr_by_NID(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_nid2obj(i32 noundef %1) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_NID) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, ptr noundef null) #5
  br label %X509_ATTRIBUTE_create_by_NID.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %X509_ATTRIBUTE_create_by_NID.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #5
  br label %X509_ATTRIBUTE_create_by_NID.exit.thread

X509_ATTRIBUTE_create_by_NID.exit:                ; preds = %bb.c
  %i.e = tail call ptr @ossl_x509at_add1_attr(ptr noundef %0, ptr noundef nonnull %i.c)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.c) #5
  br label %X509_ATTRIBUTE_create_by_NID.exit.thread

X509_ATTRIBUTE_create_by_NID.exit.thread:         ; preds = %bb.d, %bb.b, %X509_ATTRIBUTE_create_by_NID.exit
  %.0 = phi ptr [ %i.e, %X509_ATTRIBUTE_create_by_NID.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_ATTRIBUTE_create_by_NID(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_nid2obj(i32 noundef %1) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_NID) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, ptr noundef null) #5
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509at_add1_attr_by_NID(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.X509at_add1_attr_by_NID) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %X509at_get_attr_by_NID.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @OBJ_nid2obj(i32 noundef %1) #5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %X509at_get_attr_by_NID.exit.thread15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #5 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %exitcond.not24 = icmp slt i32 %i.e, 1
  br i1 %exitcond.not24, label %X509at_get_attr_by_NID.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.f = add nsw i32 %smax, -2
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %.0.in.i.i25, %i.f
  br i1 %exitcond.not, label %X509at_get_attr_by_NID.exit.thread, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.0.in.i.i25 = phi i32 [ %.0.i.i, %bb.f ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %.0.i.i = add nsw i32 %.0.in.i.i25, 1           ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.b, i32 noundef %.0.i.i) #5
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call i32 @OBJ_cmp(ptr noundef %i.h, ptr noundef nonnull %i.c) #5
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %X509at_get_attr_by_NID.exit.thread15, label %bb.f, !llvm.loop !0

X509at_get_attr_by_NID.exit.thread15:             ; preds = %.lr.ph, %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @__func__.X509at_add1_attr_by_NID) #5
  %i.k = tail call ptr @OBJ_nid2sn(i32 noundef %1) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 140, ptr noundef nonnull @.str.1, ptr noundef %i.k) #5
  br label %bb.g

X509at_get_attr_by_NID.exit.thread:               ; preds = %bb.f, %bb.e, %bb.c
  %i.l = tail call ptr @ossl_x509at_add1_attr_by_NID(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %X509at_get_attr_by_NID.exit.thread, %X509at_get_attr_by_NID.exit.thread15, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %X509at_get_attr_by_NID.exit.thread15 ], [ %i.l, %X509at_get_attr_by_NID.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ossl_x509at_add1_attr_by_txt(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef %1, i32 noundef 0) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_ATTRIBUTE_create_by_txt.exit.thread, label %X509_ATTRIBUTE_create_by_txt.exit

X509_ATTRIBUTE_create_by_txt.exit.thread:         ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_txt) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, ptr noundef nonnull @.str.1, ptr noundef %1) #5
  br label %bb.c

X509_ATTRIBUTE_create_by_txt.exit:                ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #5
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit
  %i.e = tail call ptr @ossl_x509at_add1_attr(ptr noundef %0, ptr noundef nonnull %i.c)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit.thread, %X509_ATTRIBUTE_create_by_txt.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %X509_ATTRIBUTE_create_by_txt.exit ], [ null, %X509_ATTRIBUTE_create_by_txt.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_ATTRIBUTE_create_by_txt(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef %1, i32 noundef 0) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_txt) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, ptr noundef nonnull @.str.1, ptr noundef %1) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509at_add1_attr_by_txt(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef %1, i32 noundef 0) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_ATTRIBUTE_create_by_txt.exit.thread, label %X509_ATTRIBUTE_create_by_txt.exit

X509_ATTRIBUTE_create_by_txt.exit.thread:         ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_txt) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, ptr noundef nonnull @.str.1, ptr noundef %1) #5
  br label %bb.c

X509_ATTRIBUTE_create_by_txt.exit:                ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #5
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit
  %i.e = tail call ptr @X509at_add1_attr(ptr noundef %0, ptr noundef nonnull %i.c)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit.thread, %X509_ATTRIBUTE_create_by_txt.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %X509_ATTRIBUTE_create_by_txt.exit ], [ null, %X509_ATTRIBUTE_create_by_txt.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509at_get0_data_by_OBJ(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %X509at_get_attr_by_OBJ.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #5 ; 2 uses
  %.0.i38.a = add nsw i32 %i.b, 1                 ; 2 uses
  %i.d = icmp slt i32 %.0.i38.a, %i.c
  br i1 %i.d, label %.lr.ph, label %X509at_get_attr_by_OBJ.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %.0.i = add nsw i32 %.0.i39, 1                  ; 2 uses
  %i.e = icmp slt i32 %.0.i, %i.c
  br i1 %i.e, label %.lr.ph, label %X509at_get_attr_by_OBJ.exit.thread, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i39 = phi i32 [ %.0.i, %bb.c ], [ %.0.i38.a, %bb.b ] ; 5 uses
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %.0.i39) #5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call i32 @OBJ_cmp(ptr noundef %i.g, ptr noundef %1) #5
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %X509at_get_attr_by_OBJ.exit, label %bb.c, !llvm.loop !0

X509at_get_attr_by_OBJ.exit:                      ; preds = %.lr.ph
  %i.j = icmp slt i32 %2, -1
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %X509at_get_attr_by_OBJ.exit
  %i.k = tail call ptr @X509at_get_attr(ptr noundef nonnull %0, i32 noundef %.0.i39)
  br label %bb.g

bb.d:                                             ; preds = %X509at_get_attr_by_OBJ.exit
  %i.l = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #5 ; 2 uses
  %.0.i1740.a = add nuw nsw i32 %.0.i39, 1        ; 2 uses
  %i.m = icmp slt i32 %.0.i1740.a, %i.l
  br i1 %i.m, label %.lr.ph42, label %X509at_get_attr_by_OBJ.exit19.thread

bb.e:                                             ; preds = %.lr.ph42
  %.0.i17 = add nuw nsw i32 %.0.i1741, 1          ; 2 uses
  %i.n = icmp slt i32 %.0.i17, %i.l
  br i1 %i.n, label %.lr.ph42, label %X509at_get_attr_by_OBJ.exit19.thread, !llvm.loop !0

.lr.ph42:                                         ; preds = %bb.d, %bb.e
  %.0.i1741 = phi i32 [ %.0.i17, %bb.e ], [ %.0.i1740.a, %bb.d ] ; 2 uses
  %i.o = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %.0.i1741) #5
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = tail call i32 @OBJ_cmp(ptr noundef %i.p, ptr noundef %1) #5
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %X509at_get_attr_by_OBJ.exit.thread, label %bb.e, !llvm.loop !0

X509at_get_attr_by_OBJ.exit19.thread:             ; preds = %bb.e, %bb.d
  %i.s = tail call ptr @X509at_get_attr(ptr noundef nonnull %0, i32 noundef %.0.i39) ; 4 uses
  %.not26 = icmp eq i32 %2, -2
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %X509at_get_attr_by_OBJ.exit19.thread
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %X509at_get_attr_by_OBJ.exit.thread, label %X509_ATTRIBUTE_count.exit

X509_ATTRIBUTE_count.exit:                        ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = tail call i32 @OPENSSL_sk_num(ptr noundef %i.v) #5
  %.not15 = icmp eq i32 %i.w, 1
  br i1 %.not15, label %bb.g, label %X509at_get_attr_by_OBJ.exit.thread

bb.g:                                             ; preds = %.thread, %X509_ATTRIBUTE_count.exit, %X509at_get_attr_by_OBJ.exit19.thread
  %i.x = phi ptr [ %i.k, %.thread ], [ %i.s, %X509_ATTRIBUTE_count.exit ], [ %i.s, %X509at_get_attr_by_OBJ.exit19.thread ]
  %i.y = tail call ptr @X509_ATTRIBUTE_get0_data(ptr noundef %i.x, i32 noundef 0, i32 noundef %3, ptr poison)
  br label %X509at_get_attr_by_OBJ.exit.thread

X509at_get_attr_by_OBJ.exit.thread:               ; preds = %bb.c, %.lr.ph42, %bb.b, %bb.f, %bb.a, %X509_ATTRIBUTE_count.exit, %bb.g
  %.0 = phi ptr [ %i.y, %bb.g ], [ null, %bb.b ], [ null, %bb.a ], [ null, %X509_ATTRIBUTE_count.exit ], [ null, %bb.f ], [ null, %.lr.ph42 ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @X509_ATTRIBUTE_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_ATTRIBUTE_get0_data(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %X509_ATTRIBUTE_get0_type.exit.thread, label %X509_ATTRIBUTE_get0_type.exit

X509_ATTRIBUTE_get0_type.exit.thread:             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 442, ptr noundef nonnull @__func__.X509_ATTRIBUTE_get0_type) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #5
  br label %bb.f

X509_ATTRIBUTE_get0_type.exit:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
end_hunk_0
