inline.NumInlined: 31
inline.NumDeleted: 7
begin_hunk_0_@X509_ATTRIBUTE_create_by_NID:bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_NID) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 109, ptr noundef null) #4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @X509at_add1_attr_by_NID(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.X509at_add1_attr_by_NID) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %X509at_get_attr_by_NID.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @OBJ_nid2obj(i32 noundef %1) #4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %X509at_get_attr_by_NID.exit.thread15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #4 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %exitcond.not24 = icmp slt i32 %i.e, 1
  br i1 %exitcond.not24, label %X509at_get_attr_by_NID.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.f = add nsw i32 %smax, -2
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %.0.in.i.i25, %i.f
  br i1 %exitcond.not, label %X509at_get_attr_by_NID.exit.thread, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.0.in.i.i25 = phi i32 [ %.0.i.i, %bb.f ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %.0.i.i = add nsw i32 %.0.in.i.i25, 1           ; 3 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.b, i32 noundef %.0.i.i) #4
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = tail call i32 @OBJ_cmp(ptr noundef %i.h, ptr noundef nonnull %i.c) #4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %X509at_get_attr_by_NID.exit, label %bb.f, !llvm.loop !10

X509at_get_attr_by_NID.exit:                      ; preds = %.lr.ph
  %.not12 = icmp eq i32 %.0.i.i, -1
  br i1 %.not12, label %X509at_get_attr_by_NID.exit.thread, label %X509at_get_attr_by_NID.exit.thread15

X509at_get_attr_by_NID.exit.thread15:             ; preds = %bb.d, %X509at_get_attr_by_NID.exit
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @__func__.X509at_add1_attr_by_NID) #4
  %i.k = tail call ptr @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 140, ptr noundef nonnull @.str.1, ptr noundef %i.k) #4
  br label %bb.g

X509at_get_attr_by_NID.exit.thread:               ; preds = %bb.f, %bb.e, %X509at_get_attr_by_NID.exit, %bb.c
  %i.l = tail call ptr @ossl_x509at_add1_attr_by_NID(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %X509at_get_attr_by_NID.exit.thread, %X509at_get_attr_by_NID.exit.thread15, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %X509at_get_attr_by_NID.exit.thread15 ], [ %i.l, %X509at_get_attr_by_NID.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_x509at_add1_attr_by_txt(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef %1, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_ATTRIBUTE_create_by_txt.exit.thread, label %X509_ATTRIBUTE_create_by_txt.exit

X509_ATTRIBUTE_create_by_txt.exit.thread:         ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_txt) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, ptr noundef nonnull @.str.1, ptr noundef %1) #4
  br label %bb.c

X509_ATTRIBUTE_create_by_txt.exit:                ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #4
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit
  %i.e = tail call ptr @ossl_x509at_add1_attr(ptr noundef %0, ptr noundef nonnull %i.c)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.c) #4
  br label %bb.c

bb.c:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit.thread, %X509_ATTRIBUTE_create_by_txt.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %X509_ATTRIBUTE_create_by_txt.exit ], [ null, %X509_ATTRIBUTE_create_by_txt.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @X509_ATTRIBUTE_create_by_txt(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef %1, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_txt) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, ptr noundef nonnull @.str.1, ptr noundef %1) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @X509at_add1_attr_by_txt(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef %1, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_ATTRIBUTE_create_by_txt.exit.thread, label %X509_ATTRIBUTE_create_by_txt.exit

X509_ATTRIBUTE_create_by_txt.exit.thread:         ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.X509_ATTRIBUTE_create_by_txt) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 119, ptr noundef nonnull @.str.1, ptr noundef %1) #4
  br label %bb.c

X509_ATTRIBUTE_create_by_txt.exit:                ; preds = %bb.a
  %i.c = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  tail call void @ASN1_OBJECT_free(ptr noundef nonnull %i.a) #4
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit
  %i.e = tail call ptr @X509at_add1_attr(ptr noundef %0, ptr noundef nonnull %i.c)
  tail call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.c) #4
  br label %bb.c

bb.c:                                             ; preds = %X509_ATTRIBUTE_create_by_txt.exit.thread, %X509_ATTRIBUTE_create_by_txt.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %X509_ATTRIBUTE_create_by_txt.exit ], [ null, %X509_ATTRIBUTE_create_by_txt.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @X509at_get0_data_by_OBJ(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %X509at_get_attr_by_OBJ.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #4 ; 2 uses
  %.0.i38 = add nsw i32 %i.b, 1                   ; 2 uses
  %i.d = icmp slt i32 %.0.i38, %i.c
  br i1 %i.d, label %.lr.ph, label %X509at_get_attr_by_OBJ.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %.0.i = add nsw i32 %.0.i39, 1                  ; 2 uses
  %i.e = icmp slt i32 %.0.i, %i.c
  br i1 %i.e, label %.lr.ph, label %X509at_get_attr_by_OBJ.exit.thread, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i39 = phi i32 [ %.0.i, %bb.c ], [ %.0.i38, %bb.b ] ; 5 uses
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %.0.i39) #4
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call i32 @OBJ_cmp(ptr noundef %i.g, ptr noundef %1) #4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %X509at_get_attr_by_OBJ.exit, label %bb.c, !llvm.loop !10

X509at_get_attr_by_OBJ.exit:                      ; preds = %.lr.ph
  %i.j = icmp slt i32 %2, -1
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %X509at_get_attr_by_OBJ.exit
  %i.k = tail call ptr @X509at_get_attr(ptr noundef nonnull %0, i32 noundef %.0.i39)
  br label %bb.g

bb.d:                                             ; preds = %X509at_get_attr_by_OBJ.exit
  %4 = tail call i32 @llvm.smax.i32(i32 %.0.i39, i32 -1)
  %i.l = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #4 ; 2 uses
  %.0.i1740 = add nuw nsw i32 %4, 1               ; 2 uses
  %i.m = icmp slt i32 %.0.i1740, %i.l
  br i1 %i.m, label %.lr.ph42, label %X509at_get_attr_by_OBJ.exit19.thread

bb.e:                                             ; preds = %.lr.ph42
  %.0.i17 = add nuw nsw i32 %.0.i1741, 1          ; 2 uses
  %i.n = icmp slt i32 %.0.i17, %i.l
  br i1 %i.n, label %.lr.ph42, label %X509at_get_attr_by_OBJ.exit19.thread, !llvm.loop !10

.lr.ph42:                                         ; preds = %bb.d, %bb.e
  %.0.i1741 = phi i32 [ %.0.i17, %bb.e ], [ %.0.i1740, %bb.d ] ; 2 uses
  %i.o = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %0, i32 noundef %.0.i1741) #4
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = tail call i32 @OBJ_cmp(ptr noundef %i.p, ptr noundef %1) #4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %X509at_get_attr_by_OBJ.exit.thread, label %bb.e, !llvm.loop !10

X509at_get_attr_by_OBJ.exit19.thread:             ; preds = %bb.e, %bb.d
  %i.s = tail call ptr @X509at_get_attr(ptr noundef nonnull %0, i32 noundef %.0.i39) ; 4 uses
  %.not26 = icmp eq i32 %2, -2
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %X509at_get_attr_by_OBJ.exit19.thread
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %X509at_get_attr_by_OBJ.exit.thread, label %X509_ATTRIBUTE_count.exit

X509_ATTRIBUTE_count.exit:                        ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = tail call i32 @OPENSSL_sk_num(ptr noundef %i.v) #4
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
define dso_local i32 @X509_ATTRIBUTE_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef %i.c) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @X509_ATTRIBUTE_get0_data(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %X509_ATTRIBUTE_get0_type.exit.thread, label %X509_ATTRIBUTE_get0_type.exit

X509_ATTRIBUTE_get0_type.exit.thread:             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 442, ptr noundef nonnull @__func__.X509_ATTRIBUTE_get0_type) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #4
  br label %bb.f

X509_ATTRIBUTE_get0_type.exit:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call ptr @OPENSSL_sk_value(ptr noundef %i.c, i32 noundef %1) #4 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %X509_ATTRIBUTE_get0_type.exit
  %i.f = and i32 %2, -5
  %or.cond = icmp eq i32 %i.f, 1
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @ASN1_TYPE_get(ptr noundef nonnull %i.d) #4
  %.not = icmp eq i32 %2, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 433, ptr noundef nonnull @__func__.X509_ATTRIBUTE_get0_data) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 122, ptr noundef null) #4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %X509_ATTRIBUTE_get0_type.exit.thread, %X509_ATTRIBUTE_get0_type.exit, %bb.e, %bb.d
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], [ null, %X509_ATTRIBUTE_get0_type.exit ], [ null, %X509_ATTRIBUTE_get0_type.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_x509at_dup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i32 %.07, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !23

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.e = call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.07) #4
  %i.f = call ptr @X509at_add1_attr(ptr noundef nonnull %i.a, ptr noundef %i.e)
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @OPENSSL_sk_pop_free(ptr noundef %i.h, ptr noundef nonnull @X509_ATTRIBUTE_free) #4
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %bb.c
  %.06 = phi ptr [ null, %bb.c ], [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.06
}

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #1

declare ptr @X509_ATTRIBUTE_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @X509_ATTRIBUTE_set1_object(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @__func__.X509_ATTRIBUTE_set1_object) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @ASN1_OBJECT_free(ptr noundef %i.c) #4
  %i.d = tail call ptr @OBJ_dup(ptr noundef nonnull %1) #4 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @X509_ATTRIBUTE_set1_data(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 355, ptr noundef nonnull @__func__.X509_ATTRIBUTE_set1_data) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, ptr noundef null) #4
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.b = and i32 %1, 4096
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = tail call i32 @OBJ_obj2nid(ptr noundef %i.c) #4
  %i.e = tail call ptr @ASN1_STRING_set_by_NID(ptr noundef null, ptr noundef %2, i32 noundef %3, i32 noundef %1, i32 noundef %i.d) #4 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
end_hunk_0
