Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_v3?download=true
inline.NumInlined: 26
inline.NumDeleted: 3
begin_hunk_0_@X509v3_get_ext:bb.a
bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509v3_delete_ext(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_sk_delete(ptr noundef %0, i32 noundef %1) #7
  ret ptr %i.a
}

declare ptr @OPENSSL_sk_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @X509v3_delete_extension(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = tail call ptr @OPENSSL_sk_delete(ptr noundef %i.b, i32 noundef %1) #7 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !19
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %i.d) #7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @OPENSSL_sk_free(ptr noundef %i.g) #7
  store ptr null, ptr %0, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @X509v3_add_ext(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @OPENSSL_sk_new_null() #7
  %i.e = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.d, ptr noundef nonnull @sk_X509_EXTENSION_freefunc_thunk) #7 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.b ]  ; 7 uses
  %i.g = tail call i32 @ossl_ignored_x509_extension(ptr noundef %1, i32 noundef 16) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %.0) #7 ; 2 uses
  %i.i = tail call ptr @X509_EXTENSION_dup(ptr noundef %1) #7 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i32 %2, 0
  %i.l = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.h)
  %.023 = select i1 %i.k, i32 %i.h, i32 %i.l
  %i.m = tail call i32 @OPENSSL_sk_insert(ptr noundef nonnull %.0, ptr noundef nonnull %i.i, i32 noundef %.023) #7
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !19
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  store ptr %.0, ptr %0, align 8, !tbaa !19
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 122, ptr noundef nonnull @__func__.X509v3_add_ext) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #7
  tail call void @X509_EXTENSION_free(ptr noundef null) #7
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink44 = phi i32 [ 144, %bb.e ], [ 128, %bb.c ], [ 148, %bb.f ]
  %.sink = phi i32 [ 524301, %bb.e ], [ 524303, %bb.c ], [ 524303, %bb.f ]
  %.022.ph = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ %i.i, %bb.f ]
  %.1.ph = phi ptr [ %.0, %bb.e ], [ null, %bb.c ], [ %.0, %bb.f ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink44, ptr noundef nonnull @__func__.X509v3_add_ext) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef %.sink, ptr noundef null) #7
  tail call void @X509_EXTENSION_free(ptr noundef %.022.ph) #7
  %i.p = load ptr, ptr %0, align 8, !tbaa !19
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @OPENSSL_sk_free(ptr noundef %.1.ph) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %bb.h
  %.024 = phi ptr [ %.0, %bb.g ], [ %.0, %bb.h ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ]
  ret ptr %.024
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_X509_EXTENSION_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #3 {
bb.a:
  tail call void %0(ptr noundef %1) #7
  ret void
}

declare i32 @ossl_ignored_x509_extension(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @X509_EXTENSION_dup(ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_EXTENSION_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @X509v3_add_extensions(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #7
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.a, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @__func__.X509v3_add_extensions) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #7
  br label %.loopexit

bb.c:                                             ; preds = %X509v3_get_ext_by_OBJ.exit.thread
  %i.d = add nuw nsw i32 %.02040, 1               ; 2 uses
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #7
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.a, label %._crit_edge, !llvm.loop !23

.lr.ph.a:                                         ; preds = %.preheader37, %bb.c
  %.02040 = phi i32 [ %i.d, %bb.c ], [ 0, %.preheader37 ] ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %1, i32 noundef %.02040) #7 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %X509_EXTENSION_get_object.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %X509_EXTENSION_get_object.exit

X509_EXTENSION_get_object.exit:                   ; preds = %.lr.ph.a, %bb.d
  %.0.i = phi ptr [ %i.i, %bb.d ], [ null, %.lr.ph.a ] ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %X509v3_get_ext_by_OBJ.exit.thread, label %bb.e

bb.e:                                             ; preds = %X509_EXTENSION_get_object.exit
  %i.l = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.j) #7 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %exitcond.not58 = icmp slt i32 %i.l, 1
  br i1 %exitcond.not58, label %X509v3_get_ext_by_OBJ.exit.thread, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %bb.e
  %i.m = add nsw i32 %smax, -2
  br label %.lr.ph61

bb.f:                                             ; preds = %.lr.ph61
  %exitcond.not = icmp eq i32 %.0.in.i59, %i.m
  br i1 %exitcond.not, label %X509v3_get_ext_by_OBJ.exit.thread, label %.lr.ph61, !llvm.loop !0

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %bb.f
  %.0.in.i59 = phi i32 [ %.0.i26, %bb.f ], [ -1, %.lr.ph61.preheader ] ; 2 uses
  %.0.i26 = add nsw i32 %.0.in.i59, 1             ; 4 uses
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.j, i32 noundef %.0.i26) #7
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = tail call i32 @OBJ_cmp(ptr noundef %i.o, ptr noundef %.0.i) #7
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %X509v3_get_ext_by_OBJ.exit, label %bb.f, !llvm.loop !0

X509v3_get_ext_by_OBJ.exit:                       ; preds = %.lr.ph61
  %.not = icmp eq i32 %.0.i26, -1
  br i1 %.not, label %X509v3_get_ext_by_OBJ.exit.thread, label %.preheader

.preheader:                                       ; preds = %X509v3_get_ext_by_OBJ.exit, %X509v3_get_ext_by_OBJ.exit30
  %.0 = phi i32 [ %.0.i28, %X509v3_get_ext_by_OBJ.exit30 ], [ %.0.i26, %X509v3_get_ext_by_OBJ.exit ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !19
  %i.s = tail call ptr @OPENSSL_sk_delete(ptr noundef %i.r, i32 noundef %.0) #7
  tail call void @X509_EXTENSION_free(ptr noundef %i.s) #7
  %i.t = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %X509v3_get_ext_by_OBJ.exit.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.v = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.t) #7 ; 2 uses
  %smax45 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %exitcond46.not62 = icmp slt i32 %i.v, 1
  br i1 %exitcond46.not62, label %X509v3_get_ext_by_OBJ.exit.thread, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.g
  %i.w = add nsw i32 %smax45, -2
  br label %.lr.ph65

bb.h:                                             ; preds = %.lr.ph65
  %exitcond46.not = icmp eq i32 %.0.in.i2763, %i.w
  br i1 %exitcond46.not, label %X509v3_get_ext_by_OBJ.exit.thread, label %.lr.ph65, !llvm.loop !0

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %bb.h
  %.0.in.i2763 = phi i32 [ %.0.i28, %bb.h ], [ -1, %.lr.ph65.preheader ] ; 2 uses
  %.0.i28 = add nsw i32 %.0.in.i2763, 1           ; 4 uses
  %i.x = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.t, i32 noundef %.0.i28) #7
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = tail call i32 @OBJ_cmp(ptr noundef %i.y, ptr noundef %.0.i) #7
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %X509v3_get_ext_by_OBJ.exit30, label %bb.h, !llvm.loop !0

X509v3_get_ext_by_OBJ.exit30:                     ; preds = %.lr.ph65
  %.not24 = icmp eq i32 %.0.i28, -1
  br i1 %.not24, label %X509v3_get_ext_by_OBJ.exit.thread, label %.preheader, !llvm.loop !24

X509v3_get_ext_by_OBJ.exit.thread:                ; preds = %bb.f, %.preheader, %X509v3_get_ext_by_OBJ.exit30, %bb.g, %bb.h, %bb.e, %X509_EXTENSION_get_object.exit, %X509v3_get_ext_by_OBJ.exit
  %i.ab = tail call ptr @X509v3_add_ext(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef -1)
  %.not25.not = icmp eq ptr %i.ab, null
  br i1 %.not25.not, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader37
  %i.ac = load ptr, ptr %0, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %X509v3_get_ext_by_OBJ.exit.thread, %._crit_edge, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.ac, %._crit_edge ], [ null, %X509v3_get_ext_by_OBJ.exit.thread ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_EXTENSION_get_object(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_EXTENSION_create_by_NID(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_nid2obj(i32 noundef %1) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 201, ptr noundef nonnull @__func__.X509_EXTENSION_create_by_NID) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, ptr noundef null) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_EXTENSION_create_by_OBJ(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_EXTENSION_create_by_OBJ(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @X509_EXTENSION_new() #7   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 218, ptr noundef nonnull @__func__.X509_EXTENSION_create_by_OBJ) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524301, ptr noundef null) #7
  br label %bb.l

bb.e:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.b ]  ; 10 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %X509_EXTENSION_set_object.exit.thread, label %X509_EXTENSION_set_object.exit

X509_EXTENSION_set_object.exit:                   ; preds = %bb.e
  %i.g = load ptr, ptr %.0, align 8, !tbaa !16
  tail call void @ASN1_OBJECT_free(ptr noundef %i.g) #7
  %i.h = tail call ptr @OBJ_dup(ptr noundef nonnull %1) #7 ; 2 uses
  store ptr %i.h, ptr %.0, align 8, !tbaa !16
  %.not31 = icmp eq ptr %i.h, null
  br i1 %.not31, label %X509_EXTENSION_set_object.exit.thread, label %bb.f

bb.f:                                             ; preds = %X509_EXTENSION_set_object.exit
  %.not.i = icmp eq i32 %2, 0
  %i.i = select i1 %.not.i, i32 0, i32 255
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = load i32, ptr %3, align 8, !tbaa !21
  %i.o = tail call i32 @ASN1_OCTET_STRING_set(ptr noundef nonnull %i.k, ptr noundef %i.m, i32 noundef %i.n) #7
  %.not.i27.not = icmp eq i32 %i.o, 0
  br i1 %.not.i27.not, label %X509_EXTENSION_set_object.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.a, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %0, align 8, !tbaa !26
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr %.0, ptr %0, align 8, !tbaa !26
  br label %bb.l

X509_EXTENSION_set_object.exit.thread:            ; preds = %bb.e, %bb.f, %X509_EXTENSION_set_object.exit
  br i1 %i.a, label %bb.k, label %bb.j

bb.j:                                             ; preds = %X509_EXTENSION_set_object.exit.thread
  %i.r = load ptr, ptr %0, align 8, !tbaa !26
  %.not24 = icmp eq ptr %.0, %i.r
  br i1 %.not24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %X509_EXTENSION_set_object.exit.thread
  tail call void @X509_EXTENSION_free(ptr noundef nonnull %.0) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h, %bb.i, %bb.d
  %.018 = phi ptr [ null, %bb.d ], [ %.0, %bb.g ], [ %.0, %bb.i ], [ %.0, %bb.h ], [ null, %bb.k ], [ null, %bb.j ]
  ret ptr %.018
}

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #1

declare ptr @X509_EXTENSION_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_EXTENSION_set_object(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @ASN1_OBJECT_free(ptr noundef %i.c) #7
  %i.d = tail call ptr @OBJ_dup(ptr noundef nonnull %1) #7 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @X509_EXTENSION_set_critical(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.b = select i1 %.not, i32 0, i32 255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_EXTENSION_set_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = load i32, ptr %1, align 8, !tbaa !21
  %i.f = tail call i32 @ASN1_OCTET_STRING_set(ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef %i.e) #7
  %.not = icmp ne i32 %i.f, 0
  %. = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @OBJ_dup(ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @X509_EXTENSION_get_data(ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0 = select i1 %i.a, ptr null, ptr %i.b
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS14asn1_object_st", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !12, i64 8, !13, i64 16}
!15 = !{!"X509_extension_st", !11, i64 0, !6, i64 8, !14, i64 16}
!16 = !{!15, !11, i64 0}
!17 = !{!15, !6, i64 8}
!18 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!14, !12, i64 8}
!21 = !{!14, !6, i64 0}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{!"p1 _ZTS17X509_extension_st", !10, i64 0}
!26 = !{!25, !25, i64 0}
end_hunk_0
