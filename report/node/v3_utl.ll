inline.NumInlined: 63
inline.NumDeleted: 22
begin_hunk_0_@ipv4_from_asc:bb.a
  br label %get_ipv4_component.exit.thread

get_ipv4_component.exit.thread:                   ; preds = %bb.e, %bb.c, %bb.b, %bb.k, %bb.i, %bb.h, %bb.q, %bb.o, %bb.n, %bb.w, %bb.u, %bb.t, %bb.r, %bb.l, %bb.f, %bb.x
  %.0 = phi i32 [ 0, %bb.q ], [ %spec.select, %bb.x ], [ 0, %bb.r ], [ 0, %bb.w ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @X509V3_NAME_from_section(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit35, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #11
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit35

.lr.ph:                                           ; preds = %.preheader
  %i.c = trunc i64 %2 to i32
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.d = add nuw nsw i32 %.02737, 1               ; 2 uses
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #11
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.loopexit35, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.02737 = phi i32 [ 0, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %1, i32 noundef %.02737) #11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.025 = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.e ] ; 3 uses
  %i.j = load i8, ptr %.025, align 1, !tbaa !18
  switch i8 %i.j, label %bb.e [
    i8 0, label %.loopexit
    i8 58, label %.critedge
    i8 44, label %.critedge
    i8 46, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.025, i64 1
  br label %bb.d, !llvm.loop !62

.critedge:                                        ; preds = %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.025, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %.not33 = icmp eq i8 %i.m, 0
  %spec.select = select i1 %.not33, ptr %i.i, ptr %i.l
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.critedge
  %.0 = phi ptr [ %spec.select, %.critedge ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %.0, align 1, !tbaa !18
  %i.o = icmp eq i8 %i.n, 43                      ; 2 uses
  %.028 = sext i1 %i.o to i32
  %.1.idx = zext i1 %i.o to i64
  %.1 = getelementptr inbounds nuw i8, ptr %.0, i64 %.1.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = tail call i32 @X509_NAME_add_entry_by_txt(ptr noundef nonnull %0, ptr noundef nonnull %.1, i32 noundef %i.c, ptr noundef %i.q, i32 noundef -1, i32 noundef -1, i32 noundef %.028) #11
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %.loopexit35, label %bb.b

.loopexit35:                                      ; preds = %.loopexit, %bb.b, %.preheader, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.loopexit ], [ 1, %bb.b ]
  ret i32 %.026
}

declare i32 @X509_NAME_add_entry_by_txt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OSSL_GENERAL_NAMES_print(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #11
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, 2                        ; 2 uses
  %i.d = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %i.c, ptr noundef nonnull @.str.21) #11 ; 0 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %1, i32 noundef 0) #11
  %i.f = tail call i32 @GENERAL_NAME_print(ptr noundef %0, ptr noundef %i.e) #11 ; 0 uses
  %i.g = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #11
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %.09 = phi i32 [ %i.m, %.peel.next ], [ 1, %bb.b ] ; 2 uses
  %i.i = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #11 ; 0 uses
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %i.c, ptr noundef nonnull @.str.21) #11 ; 0 uses
  %i.k = tail call ptr @OPENSSL_sk_value(ptr noundef %1, i32 noundef %.09) #11
  %i.l = tail call i32 @GENERAL_NAME_print(ptr noundef %0, ptr noundef %i.k) #11 ; 0 uses
  %i.m = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.n = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #11
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %.peel.next, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.peel.next, %bb.b, %bb.a
  ret i32 1
}

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @GENERAL_NAME_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_bio_print_hex(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call ptr @OPENSSL_buf2hexstr(ptr noundef %1, i64 noundef %i.b) #11 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull %i.c) #11
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 1445) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @OPENSSL_buf2hexstr(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_strndup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare ptr @BN_bn2dec(ptr noundef) local_unnamed_addr #2

declare ptr @BN_bn2hex(ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_NAME_get_index_by_NID(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_NAME_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_NAME_ENTRY_get_data(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @sk_strcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = load ptr, ptr %1, align 8, !tbaa !52
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #10
  ret i32 %i.c
}

declare i32 @OPENSSL_sk_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @equal_email(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 %4) #6 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %.preheader.preheader, label %equal_nocase.exit.thread

.preheader.preheader:                             ; preds = %bb.a
  %.not2542 = icmp eq i64 %1, 0
  br i1 %.not2542, label %equal_nocase.exit.thread29, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  %.not25 = icmp eq i64 %i.a, 0
  br i1 %.not25, label %equal_nocase.exit.thread29, label %.lr.ph, !llvm.loop !65

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.043 = phi i64 [ %i.a, %.preheader ], [ %1, %.preheader.preheader ]
  %i.a = add i64 %.043, -1                        ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18
  %i.d = icmp eq i8 %i.c, 64
  br i1 %i.d, label %.lr.ph.i.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %i.g = icmp eq i8 %i.f, 64
  br i1 %i.g, label %.lr.ph.i.preheader, label %.preheader, !llvm.loop !65

.lr.ph.i.preheader:                               ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %5 = sub i64 %1, %i.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.02557.i = phi ptr [ %i.r, %bb.e ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  %.03756.i = phi i64 [ %i.s, %bb.e ], [ %5, %.lr.ph.i.preheader ]
  %.03955.i = phi ptr [ %i.q, %bb.e ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = load i8, ptr %.03955.i, align 1, !tbaa !18 ; 5 uses
  %i.k = load i8, ptr %.02557.i, align 1, !tbaa !18 ; 4 uses
  %i.l = icmp eq i8 %i.j, 0
  br i1 %i.l, label %equal_nocase.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not30.i = icmp eq i8 %i.j, %i.k
  br i1 %.not30.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i8 %i.j, -65
  %or.cond.i = icmp ult i8 %i.m, 26
  %i.n = or disjoint i8 %i.j, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.n, i8 %i.j
  %i.o = add i8 %i.k, -65
  %or.cond5.i = icmp ult i8 %i.o, 26
  %i.p = or disjoint i8 %i.k, 32
  %.022.i = select i1 %or.cond5.i, i8 %i.p, i8 %i.k
  %.not31.i = icmp eq i8 %spec.select.i, %.022.i
  br i1 %.not31.i, label %bb.e, label %equal_nocase.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.03955.i, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.02557.i, i64 1
  %i.s = add i64 %.03756.i, -1                    ; 2 uses
  %.not29.i = icmp eq i64 %i.s, 0
  br i1 %.not29.i, label %equal_nocase.exit, label %.lr.ph.i

equal_nocase.exit:                                ; preds = %bb.e
  %i.t = icmp eq i64 %i.a, 0
  br i1 %i.t, label %equal_nocase.exit.thread29, label %bb.f

equal_nocase.exit.thread29:                       ; preds = %.preheader, %.preheader.preheader, %equal_nocase.exit
  br label %bb.f

bb.f:                                             ; preds = %equal_nocase.exit, %equal_nocase.exit.thread29
  %i.u = phi i64 [ %1, %equal_nocase.exit.thread29 ], [ %i.a, %equal_nocase.exit ]
  %bcmp.i = tail call i32 @bcmp(ptr %0, ptr readonly %2, i64 %i.u)
  %.not5.i = icmp eq i32 %bcmp.i, 0
  %i.v = zext i1 %.not5.i to i32
  br label %equal_nocase.exit.thread

equal_nocase.exit.thread:                         ; preds = %.lr.ph.i, %bb.d, %bb.a, %bb.f
  %.023 = phi i32 [ 0, %bb.a ], [ %i.v, %bb.f ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  ret i32 %.023
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @equal_nocase(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = and i32 %4, 32768
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %skip_prefix.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp ugt i64 %1, %3
  br i1 %i.c, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = and i32 %4, 16
  %.not17.not.i = icmp eq i32 %i.d, 0
  %i.e = sub nuw i64 %1, %3
  %scevgep33.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  br i1 %.not17.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.b
  %.019.us.i = phi i64 [ %i.h, %bb.b ], [ %1, %.lr.ph.i ] ; 2 uses
  %.01518.us.i = phi ptr [ %i.g, %bb.b ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.f = load i8, ptr %.01518.us.i, align 1, !tbaa !18
  %.not.us.i = icmp eq i8 %i.f, 0
  br i1 %.not.us.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01518.us.i, i64 1
  %i.h = add i64 %.019.us.i, -1                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, %3
  br i1 %i.i, label %.lr.ph.split.us.i, label %.preheader, !llvm.loop !66

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.019.i = phi i64 [ %i.l, %bb.c ], [ %1, %.lr.ph.i ] ; 3 uses
  %.01518.i = phi ptr [ %i.k, %bb.c ], [ %0, %.lr.ph.i ] ; 4 uses
  %i.j = load i8, ptr %.01518.i, align 1, !tbaa !18
  switch i8 %i.j, label %bb.c [
    i8 0, label %.critedge.i
    i8 46, label %.critedge.i
  ]

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01518.i, i64 1
  %i.l = add i64 %.019.i, -1                      ; 2 uses
  %i.m = icmp ugt i64 %i.l, %3
  br i1 %i.m, label %.lr.ph.split.i, label %.preheader, !llvm.loop !66

.critedge.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.i, %.lr.ph.split.us.i, %.preheader.i
  %.015.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %.01518.us.i, %.lr.ph.split.us.i ], [ %.01518.i, %.lr.ph.split.i ], [ %.01518.i, %.lr.ph.split.i ]
  %.0.lcssa.i = phi i64 [ %1, %.preheader.i ], [ %.019.us.i, %.lr.ph.split.us.i ], [ %.019.i, %.lr.ph.split.i ], [ %.019.i, %.lr.ph.split.i ]
  %i.n = icmp eq i64 %.0.lcssa.i, %3              ; 2 uses
  %spec.select46 = select i1 %i.n, ptr %.015.lcssa.i, ptr %0
  %spec.select47 = select i1 %i.n, i64 %3, i64 %1
  br label %skip_prefix.exit

skip_prefix.exit:                                 ; preds = %.critedge.i, %bb.a
  %.241 = phi ptr [ %0, %bb.a ], [ %spec.select46, %.critedge.i ]
  %.238 = phi i64 [ %1, %bb.a ], [ %spec.select47, %.critedge.i ]
  %.not = icmp eq i64 %.238, %3
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c, %bb.b, %skip_prefix.exit
  %.24178 = phi ptr [ %.241, %skip_prefix.exit ], [ %scevgep33.i, %bb.b ], [ %scevgep33.i, %bb.c ]
  %.not2954 = icmp eq i64 %3, 0
  br i1 %.not2954, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.02557 = phi ptr [ %i.w, %bb.f ], [ %2, %.preheader ] ; 2 uses
  %.03756 = phi i64 [ %i.x, %bb.f ], [ %3, %.preheader ]
  %.03955 = phi ptr [ %i.v, %bb.f ], [ %.24178, %.preheader ] ; 2 uses
  %i.o = load i8, ptr %.03955, align 1, !tbaa !18 ; 5 uses
  %i.p = load i8, ptr %.02557, align 1, !tbaa !18 ; 4 uses
  %i.q = icmp eq i8 %i.o, 0
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not30 = icmp eq i8 %i.o, %i.p
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add i8 %i.o, -65
  %or.cond = icmp ult i8 %i.r, 26
  %i.s = or disjoint i8 %i.o, 32
  %spec.select = select i1 %or.cond, i8 %i.s, i8 %i.o
  %i.t = add i8 %i.p, -65
  %or.cond5 = icmp ult i8 %i.t, 26
  %i.u = or disjoint i8 %i.p, 32
  %.022 = select i1 %or.cond5, i8 %i.u, i8 %i.p
  %.not31 = icmp eq i8 %spec.select, %.022
  br i1 %.not31, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.03955, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %.02557, i64 1
  %i.x = add i64 %.03756, -1                      ; 2 uses
  %.not29 = icmp eq i64 %i.x, 0
  br i1 %.not29, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.f, %.lr.ph, %bb.e, %.preheader, %skip_prefix.exit
  %.2 = phi i32 [ 0, %skip_prefix.exit ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.f ], [ 0, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @equal_wildcard(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp ugt i64 %3, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !18
  %i.c = icmp eq i8 %i.b, 46
  %.not97.i = icmp eq i64 %1, 0
  %or.cond = or i1 %.not97.i, %i.c
  br i1 %or.cond, label %valid_star.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %.not97.i.old = icmp eq i64 %1, 0
  br i1 %.not97.i.old, label %valid_star.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.d = add i64 %1, -1
  %i.e = and i32 %4, 4
  %.not78.i = icmp eq i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.t, %.lr.ph.i
  %.06094.i = phi ptr [ null, %.lr.ph.i ], [ %.262.i, %bb.t ] ; 4 uses
  %.06393.i = phi i32 [ 0, %.lr.ph.i ], [ %.164.i, %bb.t ] ; 4 uses
  %.06592.i = phi i32 [ 1, %.lr.ph.i ], [ %.368.i, %bb.t ] ; 9 uses
  %.06991.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %bb.t ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.06991.i ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 4 uses
  %i.h = icmp eq i8 %i.g, 42
  br i1 %i.h, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %.06991.i, %i.d
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = icmp eq i8 %i.k, 46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi i1 [ true, %bb.e ], [ %i.l, %bb.f ]  ; 2 uses
  %.not77.i = icmp eq ptr %.06094.i, null
  br i1 %.not77.i, label %bb.h, label %valid_star.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %.06592.i, 8
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp ne i32 %.06393.i, 0
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i, label %valid_star.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = trunc i32 %.06592.i to i1                ; 2 uses
  %or.cond3.i = select i1 %i.q, i1 %i.m, i1 false
  %or.cond79.i = select i1 %.not78.i, i1 true, i1 %or.cond3.i
  %or.cond5.i = select i1 %i.q, i1 true, i1 %i.m
  %or.cond85.i = select i1 %or.cond79.i, i1 %or.cond5.i, i1 false
  br i1 %or.cond85.i, label %bb.j, label %valid_star.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = and i32 %.06592.i, -10
  br label %bb.t

bb.k:                                             ; preds = %bb.d
  %i.s = and i8 %i.g, -33
  %i.t = add i8 %i.s, -65
  %or.cond86.i = icmp ult i8 %i.t, 26
  %i.u = add i8 %i.g, -48
  %or.cond82.i = icmp ult i8 %i.u, 10
  %or.cond87.i = or i1 %or.cond82.i, %or.cond86.i
  br i1 %or.cond87.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not76.i = trunc i32 %.06592.i to i1
  %i.v = sub i64 %1, %.06991.i
  %i.w = icmp ugt i64 %i.v, 3
end_hunk_0
