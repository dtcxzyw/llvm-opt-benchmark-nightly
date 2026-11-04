Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/p_dsa_asn1?download=true
inline.NumInlined: 137
inline.NumDeleted: 92
begin_hunk_0_@_ZL15dsa_priv_decodeP11evp_pkey_stP6cbs_stS2_:bb.a
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @evp_pkey_set_method(ptr noundef %0, ptr noundef nonnull @dsa_asn1_meth) #3, !inline_history !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.t, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.014.0.ph = phi ptr [ null, %bb.k ], [ %i.a, %bb.j ], [ %i.a, %bb.i ]
  %.0.ph = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  tail call void @BN_CTX_free(ptr noundef nonnull %i.k) #3
  br label %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.l, %bb.c
  %.sroa.014.1 = phi ptr [ %i.a, %bb.c ], [ %.sroa.014.0.ph, %bb.l ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.c ], [ %.0.ph, %bb.l ]   ; 2 uses
  %.not.i11 = icmp eq ptr %.sroa.014.1, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrI6dsa_stN4bssl8internal7DeleterEED2Ev.exit, label %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread

_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread.sink.split: ; preds = %bb.g, %bb.e, %bb.f
  %.sink = phi i32 [ 96, %bb.e ], [ 96, %bb.f ], [ 104, %bb.g ]
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str, i32 noundef %.sink) #3
  br label %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread

_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread.sink.split, %bb.h, %bb.d, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit
  %.137 = phi i32 [ %.1, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread.sink.split ]
  %.sroa.014.136 = phi ptr [ %.sroa.014.1, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit ], [ %i.a, %bb.d ], [ %i.a, %bb.h ], [ %i.a, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread.sink.split ]
  tail call void @DSA_free(ptr noundef nonnull %.sroa.014.136) #3
  br label %_ZNSt10unique_ptrI6dsa_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI6dsa_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread
  %.138 = phi i32 [ %.1, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit ], [ %.137, %_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev.exit.thread ]
  ret i32 %.138
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL15dsa_priv_encodeP6cbb_stPK11evp_pkey_st(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.cbb_st, align 8             ; 6 uses
  %3 = alloca %struct.cbb_st, align 8             ; 5 uses
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 118, ptr noundef nonnull @.str, i32 noundef 124) #3
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.g = call i32 @CBB_add_asn1(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 536870928) #3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @CBB_add_asn1_uint64(ptr noundef nonnull %2, i64 noundef 0) #3
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call i32 @CBB_add_asn1(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 536870928) #3
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = call i32 @CBB_add_asn1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 6) #3
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = call i32 @CBB_add_bytes(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dsa_asn1_meth, i64 4), i64 noundef 7) #3
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = call i32 @DSA_marshal_parameters(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #3
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = call i32 @CBB_add_asn1(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 4) #3
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.o = call i32 @BN_marshal_asn1(ptr noundef nonnull %5, ptr noundef %i.n) #3
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = call i32 @CBB_flush(ptr noundef %0) #3
  %.not15 = icmp eq i32 %i.p, 0
  br i1 %.not15, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 105, ptr noundef nonnull @.str, i32 noundef 138) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %.0, %bb.n ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL12int_dsa_sizePK11evp_pkey_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call i32 @DSA_size(ptr noundef %i.b) #3
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL8dsa_bitsPK11evp_pkey_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call ptr @DSA_get0_p(ptr noundef %i.b) #3
  %i.d = tail call i32 @BN_num_bits(ptr noundef %i.c) #3
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL22dsa_missing_parametersPK11evp_pkey_st(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = tail call ptr @DSA_get0_p(ptr noundef %i.b) #3
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @DSA_get0_q(ptr noundef %i.b) #3
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @DSA_get0_g(ptr noundef %i.b) #3
  %i.h = icmp eq ptr %i.g, null
  %spec.select = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL19dsa_copy_parametersP11evp_pkey_stPKS_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = tail call ptr @BN_dup(ptr noundef %i.e) #3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZL11dup_bn_intoPP9bignum_stS0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @BN_free(ptr noundef %i.g) #3
  store ptr %i.f, ptr %i.b, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = tail call ptr @BN_dup(ptr noundef %i.i) #3 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.j, null
  br i1 %.not.i.i10, label %_ZL11dup_bn_intoPP9bignum_stS0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  tail call void @BN_free(ptr noundef %i.l) #3
  store ptr %i.j, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = tail call ptr @BN_dup(ptr noundef %i.n) #3 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %_ZL11dup_bn_intoPP9bignum_stS0_.exit.thread, label %_ZL11dup_bn_intoPP9bignum_stS0_.exit15.a

_ZL11dup_bn_intoPP9bignum_stS0_.exit15.a:         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  tail call void @BN_free(ptr noundef %i.q) #3
  store ptr %i.o, ptr %i.p, align 8, !tbaa !31
  br label %_ZL11dup_bn_intoPP9bignum_stS0_.exit.thread

_ZL11dup_bn_intoPP9bignum_stS0_.exit.thread:      ; preds = %bb.b, %bb.a, %_ZL11dup_bn_intoPP9bignum_stS0_.exit15.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %_ZL11dup_bn_intoPP9bignum_stS0_.exit15.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL18dsa_cmp_parametersPK11evp_pkey_stS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = tail call ptr @DSA_get0_p(ptr noundef %i.b) #3
  %i.f = tail call ptr @DSA_get0_p(ptr noundef %i.d) #3
  %i.g = tail call i32 @BN_cmp(ptr noundef %i.e, ptr noundef %i.f) #3
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @DSA_get0_q(ptr noundef %i.b) #3
  %i.j = tail call ptr @DSA_get0_q(ptr noundef %i.d) #3
  %i.k = tail call i32 @BN_cmp(ptr noundef %i.i, ptr noundef %i.j) #3
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @DSA_get0_g(ptr noundef %i.b) #3
  %i.n = tail call ptr @DSA_get0_g(ptr noundef %i.d) #3
  %i.o = tail call i32 @BN_cmp(ptr noundef %i.m, ptr noundef %i.n) #3
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.q, %bb.c ]
  ret i32 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL12int_dsa_freeP11evp_pkey_st(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void @DSA_free(ptr noundef %i.b) #3
  store ptr null, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str, i32 noundef 241) #3
  ret i32 0
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str, i32 noundef 247) #3
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_PKEY_set1_DSA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @evp_pkey_set_method(ptr noundef %0, ptr noundef nonnull @dsa_asn1_meth) #3, !inline_history !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  %.not3 = icmp eq ptr %1, null
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @DSA_up_ref(ptr noundef nonnull %1) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @EVP_PKEY_assign_DSA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @evp_pkey_set_method(ptr noundef %0, ptr noundef nonnull @dsa_asn1_meth) #3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  %i.b = icmp ne ptr %1, null
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare i32 @DSA_up_ref(ptr noundef) local_unnamed_addr #1

declare void @evp_pkey_set_method(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define ptr @EVP_PKEY_get0_DSA(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %i.b, 116
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 108, ptr noundef nonnull @.str, i32 noundef 267) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @EVP_PKEY_get1_DSA(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  %.not.i = icmp eq i32 %i.b, 116
  br i1 %.not.i, label %EVP_PKEY_get0_DSA.exit, label %EVP_PKEY_get0_DSA.exit.thread

EVP_PKEY_get0_DSA.exit.thread:                    ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 108, ptr noundef nonnull @.str, i32 noundef 267) #3
  br label %bb.c

EVP_PKEY_get0_DSA.exit:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %EVP_PKEY_get0_DSA.exit
  %i.e = tail call i32 @DSA_up_ref(ptr noundef nonnull %i.d) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %EVP_PKEY_get0_DSA.exit.thread, %bb.b, %EVP_PKEY_get0_DSA.exit
  %.0.i6 = phi ptr [ null, %EVP_PKEY_get0_DSA.exit.thread ], [ %i.d, %bb.b ], [ null, %EVP_PKEY_get0_DSA.exit ]
  ret ptr %.0.i6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @DSA_new() local_unnamed_addr #1

declare ptr @DSA_parse_parameters(ptr noundef) local_unnamed_addr #1

declare ptr @BN_new() local_unnamed_addr #1

declare i32 @BN_parse_asn1_unsigned(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @DSA_free(ptr noundef) local_unnamed_addr #1

declare i32 @CBB_add_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @DSA_marshal_parameters(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @BN_marshal_asn1(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_flush(ptr noundef) local_unnamed_addr #1

declare i32 @BN_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DSA_get0_pub_key(ptr noundef) local_unnamed_addr #1

declare i32 @dsa_check_key(ptr noundef) local_unnamed_addr #1

declare ptr @BN_CTX_new() local_unnamed_addr #1

declare i32 @BN_mod_exp_mont_consttime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @CBB_add_asn1_uint64(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @DSA_size(ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare ptr @DSA_get0_p(ptr noundef) local_unnamed_addr #1

declare ptr @DSA_get0_q(ptr noundef) local_unnamed_addr #1

declare ptr @DSA_get0_g(ptr noundef) local_unnamed_addr #1

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #1

declare void @BN_free(ptr noundef) local_unnamed_addr #1

end_hunk_0
