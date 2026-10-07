Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509_req?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0_@X509_REQ_get_attr_by_NID
define range(i32 -1, 2147483647) i32 @X509_REQ_get_attr_by_NID(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_nid2obj(i32 noundef %1) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_REQ_get_attr_by_OBJ.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %X509_REQ_get_attr_by_OBJ.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.e) #7
  %i.h = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %smax.i = sext i32 %i.h to i64
  %sext.i = shl i64 %i.g, 32
  %i.i = ashr exact i64 %sext.i, 32               ; 2 uses
  %indvars.iv.next.i13 = add nsw i64 %smax.i, 1   ; 2 uses
  %i.j = icmp slt i64 %indvars.iv.next.i13, %i.i
  br i1 %i.j, label %.lr.ph, label %X509_REQ_get_attr_by_OBJ.exit

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i14, 1 ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next.i, %i.i
  br i1 %i.k, label %.lr.ph, label %X509_REQ_get_attr_by_OBJ.exit, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.next.i14 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.next.i13, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call ptr @OPENSSL_sk_value(ptr noundef %i.n, i64 noundef range(i64 -2147483647, 2147483648) %indvars.iv.next.i14) #7 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %X509_REQ_get_attr_by_OBJ.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.r = tail call i32 @OBJ_cmp(ptr noundef %i.q, ptr noundef nonnull %i.a) #7
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %.thread.loopexit.split.loop.exit21.i, label %bb.d, !llvm.loop !0

.thread.loopexit.split.loop.exit21.i:             ; preds = %bb.e
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i14 to i32
  br label %X509_REQ_get_attr_by_OBJ.exit

X509_REQ_get_attr_by_OBJ.exit:                    ; preds = %bb.d, %.lr.ph, %bb.c, %.thread.loopexit.split.loop.exit21.i, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.s, %.thread.loopexit.split.loop.exit21.i ], [ -1, %bb.c ], [ -1, %.lr.ph ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_REQ_get_attr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp slt i32 %1, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #7
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %.not = icmp ugt i64 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i64 noundef range(i64 -2147483647, 2147483648) %i.g) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @X509_ATTRIBUTE_get0_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ASN1_item_d2i(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_REQ_add_extensions_nid(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.b = call i32 @ASN1_item_i2d(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull @X509_EXTENSIONS_it) #7 ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.e = call ptr @X509_ATTRIBUTE_create_by_NID(ptr noundef null, i32 noundef %2, i32 noundef 16, ptr noundef %i.d, i32 noundef %i.b) #7 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %X509_REQ_add0_attr.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %X509_REQ_add0_attr.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @OPENSSL_sk_new_null() #7       ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.k, null
  br i1 %i.n, label %X509_REQ_add0_attr.exit.thread.i, label %X509_REQ_add0_attr.exit.i

X509_REQ_add0_attr.exit.i:                        ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ]
  %i.p = call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.o, ptr noundef nonnull %i.e) #7
  %.not.i.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.not.i, label %X509_REQ_add0_attr.exit.thread.i, label %X509_REQ_add1_attr_by_NID.exit

X509_REQ_add0_attr.exit.thread.i:                 ; preds = %X509_REQ_add0_attr.exit.i, %bb.d, %bb.b
  call void @X509_ATTRIBUTE_free(ptr noundef %i.e) #7
  br label %X509_REQ_add1_attr_by_NID.exit

X509_REQ_add1_attr_by_NID.exit:                   ; preds = %X509_REQ_add0_attr.exit.i, %X509_REQ_add0_attr.exit.thread.i
  %.0.i = phi i32 [ 0, %X509_REQ_add0_attr.exit.thread.i ], [ 1, %X509_REQ_add0_attr.exit.i ]
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @OPENSSL_free(ptr noundef %i.q) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %X509_REQ_add1_attr_by_NID.exit
  %.0 = phi i32 [ %.0.i, %X509_REQ_add1_attr_by_NID.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_REQ_add1_attr_by_NID(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_ATTRIBUTE_create_by_NID(ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_REQ_add0_attr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %X509_REQ_add0_attr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @OPENSSL_sk_new_null() #7  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.i, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %X509_REQ_add0_attr.exit.thread, label %X509_REQ_add0_attr.exit

X509_REQ_add0_attr.exit:                          ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.l = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #7
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %X509_REQ_add0_attr.exit.thread, label %bb.d

X509_REQ_add0_attr.exit.thread:                   ; preds = %bb.c, %X509_REQ_add0_attr.exit, %bb.a
  tail call void @X509_ATTRIBUTE_free(ptr noundef %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %X509_REQ_add0_attr.exit, %X509_REQ_add0_attr.exit.thread
  %.0 = phi i32 [ 0, %X509_REQ_add0_attr.exit.thread ], [ 1, %X509_REQ_add0_attr.exit ]
  ret i32 %.0
}

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_REQ_add_extensions(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @X509_REQ_add_extensions_nid(ptr noundef %0, ptr noundef %1, i32 noundef 172)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @X509_REQ_get_attr_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = tail call i64 @OPENSSL_sk_num(ptr noundef %i.c) #7
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @X509_REQ_get_attr_by_OBJ(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #7
  %i.f = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %smax = sext i32 %i.f to i64
  %sext = shl i64 %i.e, 32
  %i.g = ashr exact i64 %sext, 32                 ; 2 uses
  %indvars.iv.next26 = add nsw i64 %smax, 1       ; 2 uses
  %i.h = icmp slt i64 %indvars.iv.next26, %i.g
  br i1 %i.h, label %.lr.ph, label %.thread

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv.next27, 1 ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv.next27 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next26, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = tail call ptr @OPENSSL_sk_value(ptr noundef %i.l, i64 noundef range(i64 -2147483647, 2147483648) %indvars.iv.next27) #7 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.p = tail call i32 @OBJ_cmp(ptr noundef %i.o, ptr noundef %1) #7
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.thread.loopexit.split.loop.exit21, label %bb.c, !llvm.loop !0

.thread.loopexit.split.loop.exit21:               ; preds = %bb.d
  %i.q = trunc nuw nsw i64 %indvars.iv.next27 to i32
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %.thread.loopexit.split.loop.exit21, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ %i.q, %.thread.loopexit.split.loop.exit21 ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %.lr.ph ]
  ret i32 %.3
}

declare i32 @OBJ_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @X509_REQ_delete_attr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp slt i32 %1, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.c) #7
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %.not = icmp ugt i64 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = tail call ptr @OPENSSL_sk_delete(ptr noundef %i.j, i64 noundef range(i64 0, 2147483648) %i.g) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_REQ_add1_attr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_ATTRIBUTE_dup(ptr noundef %1) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_REQ_add0_attr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %X509_REQ_add0_attr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @OPENSSL_sk_new_null() #7  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.i, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %X509_REQ_add0_attr.exit.thread, label %X509_REQ_add0_attr.exit

X509_REQ_add0_attr.exit:                          ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.l = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #7
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %X509_REQ_add0_attr.exit.thread, label %bb.d

X509_REQ_add0_attr.exit.thread:                   ; preds = %bb.c, %X509_REQ_add0_attr.exit, %bb.a
  tail call void @X509_ATTRIBUTE_free(ptr noundef %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %X509_REQ_add0_attr.exit, %X509_REQ_add0_attr.exit.thread
  %.0 = phi i32 [ 0, %X509_REQ_add0_attr.exit.thread ], [ 1, %X509_REQ_add0_attr.exit ]
  ret i32 %.0
}

declare ptr @X509_ATTRIBUTE_dup(ptr noundef) local_unnamed_addr #1

declare void @X509_ATTRIBUTE_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_REQ_add1_attr_by_OBJ(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_REQ_add0_attr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %X509_REQ_add0_attr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @OPENSSL_sk_new_null() #7  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.i, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %X509_REQ_add0_attr.exit.thread, label %X509_REQ_add0_attr.exit

X509_REQ_add0_attr.exit:                          ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.l = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #7
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %X509_REQ_add0_attr.exit.thread, label %bb.d

X509_REQ_add0_attr.exit.thread:                   ; preds = %bb.c, %X509_REQ_add0_attr.exit, %bb.a
  tail call void @X509_ATTRIBUTE_free(ptr noundef %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %X509_REQ_add0_attr.exit, %X509_REQ_add0_attr.exit.thread
  %.0 = phi i32 [ 0, %X509_REQ_add0_attr.exit.thread ], [ 1, %X509_REQ_add0_attr.exit ]
  ret i32 %.0
}

declare ptr @X509_ATTRIBUTE_create_by_OBJ(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @X509_ATTRIBUTE_create_by_NID(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_REQ_add1_attr_by_txt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_ATTRIBUTE_create_by_txt(ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_REQ_add0_attr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %X509_REQ_add0_attr.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @OPENSSL_sk_new_null() #7  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.i, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %X509_REQ_add0_attr.exit.thread, label %X509_REQ_add0_attr.exit

X509_REQ_add0_attr.exit:                          ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.l = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #7
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %X509_REQ_add0_attr.exit.thread, label %bb.d

X509_REQ_add0_attr.exit.thread:                   ; preds = %bb.c, %X509_REQ_add0_attr.exit, %bb.a
  tail call void @X509_ATTRIBUTE_free(ptr noundef %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %X509_REQ_add0_attr.exit, %X509_REQ_add0_attr.exit.thread
  %.0 = phi i32 [ 0, %X509_REQ_add0_attr.exit.thread ], [ 1, %X509_REQ_add0_attr.exit ]
  ret i32 %.0
}

declare ptr @X509_ATTRIBUTE_create_by_txt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @X509_REQ_get0_signature(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
end_hunk_0
