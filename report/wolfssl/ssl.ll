Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 157
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_CTX_set_cipher_list:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156
  %i.e = tail call i32 @SetCipherList(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %1) #23
  %.not6 = icmp ne i32 %i.e, 0
  %i.f = zext i1 %.not6 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @AllocateCtxSuites(ptr noundef) local_unnamed_addr #2

declare i32 @SetCipherList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_set_cipher_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 16, !tbaa !99
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154
  %i.g = tail call i32 @SetCipherList_ex(ptr noundef null, ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef %1) #23
  %.not7 = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not7 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @SetCipherList_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSLv23_client_method() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 4) #23 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %wolfSSLv23_client_method_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i16 @MakeTLSv1_3() #23
  tail call void @InitSSL_Method(ptr noundef nonnull %i.a, i16 %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 1, ptr %i.c, align 1, !tbaa !162
  br label %wolfSSLv23_client_method_ex.exit

wolfSSLv23_client_method_ex.exit:                 ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSLv23_client_method_ex(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 4) #23 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i16 @MakeTLSv1_3() #23
  tail call void @InitSSL_Method(ptr noundef nonnull %i.a, i16 %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 1, ptr %i.c, align 1, !tbaa !162
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare void @InitSSL_Method(ptr noundef, i16) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

declare i32 @ReinitSSL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @FreeAsyncCtx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RetrySendAlert(ptr noundef) local_unnamed_addr #2

declare i32 @SendClientHello(ptr noundef) local_unnamed_addr #2

declare i32 @SendCertificate(ptr noundef) local_unnamed_addr #2

declare void @wolfssl_local_MaybeCheckAlertOnErr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SendClientKeyExchange(ptr noundef) local_unnamed_addr #2

declare i32 @SendCertificateVerify(ptr noundef) local_unnamed_addr #2

declare i32 @SendChangeCipher(ptr noundef) local_unnamed_addr #2

declare i32 @SendFinished(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSLv23_server_method() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 4) #23 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %wolfSSLv23_server_method_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i16 @MakeTLSv1_3() #23
  tail call void @InitSSL_Method(ptr noundef nonnull %i.a, i16 %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 1, ptr %i.c, align 1, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.d, align 1, !tbaa !113
  br label %wolfSSLv23_server_method_ex.exit

wolfSSLv23_server_method_ex.exit:                 ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSLv23_server_method_ex(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 4) #23 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i16 @MakeTLSv1_3() #23
  tail call void @InitSSL_Method(ptr noundef nonnull %i.a, i16 %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 1, ptr %i.c, align 1, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.d, align 1, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare i32 @SendServerHello(ptr noundef) local_unnamed_addr #2

declare i32 @SendCertificateStatus(ptr noundef) local_unnamed_addr #2

declare i32 @SendServerKeyExchange(ptr noundef) local_unnamed_addr #2

declare i32 @SendCertificateRequest(ptr noundef) local_unnamed_addr #2

declare i32 @SendServerHelloDone(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 2) i32 @wolfSSL_SetHsDoneCb(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.b, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.c, align 16, !tbaa !141
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @wc_FreeRwLock(ptr noundef) local_unnamed_addr #2

declare i32 @wolfCrypt_Cleanup() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfssl_local_IsValidFQDN(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, -1                           ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52
  %i.g = icmp eq i8 %i.f, 46
  %spec.select = select i1 %i.g, i32 %i.c, i32 %1 ; 3 uses
  %i.h = add i32 %spec.select, -254
  %or.cond3 = icmp ult i32 %i.h, -253
  br i1 %or.cond3, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 3 uses
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge.a, %.lr.ph.preheader
  %indvars.iv.a = phi i64 [ %indvars.iv.next86, %._crit_edge.a ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04273.a = phi i32 [ %21, %._crit_edge.a ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.a
  %3 = load i8, ptr %2, align 1, !tbaa !52        ; 5 uses
  %4 = icmp eq i8 %3, 46
  %5 = add i8 %3, -45
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %.thread, label %7

7:                                                ; preds = %.lr.ph.a
  %8 = or i8 %3, 32
  %9 = add i8 %8, -97
  %or.cond60.peel = icmp ult i8 %9, 26
  br i1 %or.cond60.peel, label %bb.c, label %10

10:                                               ; preds = %7
  %11 = icmp eq i8 %3, 95
  br i1 %11, label %bb.c, label %12

12:                                               ; preds = %10
  %13 = add i8 %3, -58
  %or.cond6.peel = icmp ult i8 %13, -10
  br i1 %or.cond6.peel, label %.thread, label %bb.c

bb.c:                                             ; preds = %12, %10, %7
  %.244.peel = phi i32 [ 0, %12 ], [ 0, %10 ], [ 1, %7 ] ; 2 uses
  %.2.peel = phi i32 [ 0, %12 ], [ 1, %10 ], [ 0, %7 ] ; 2 uses
  %indvars.iv.next.peel = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.i = icmp eq i64 %indvars.iv.next.peel, %wide.trip.count
  br i1 %i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %indvars.iv.next.peel, %bb.c ] ; 4 uses
  %.04174 = phi i32 [ %.2, %bb.l ], [ %.2.peel, %bb.c ] ; 3 uses
  %.04273 = phi i32 [ %.244, %bb.l ], [ %.244.peel, %bb.c ] ; 3 uses
  %.04771 = phi i32 [ %19, %bb.l ], [ 1, %bb.c ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52    ; 5 uses
  %i.l = icmp eq i8 %i.k, 46
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %14 = add nuw i64 %indvars.iv, 4294967295
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !52
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %.thread, label %._crit_edge.a

bb.g:                                             ; preds = %bb.d
  %19 = add nuw nsw i32 %.04771, 1
  %20 = icmp samesign ugt i32 %.04771, 62
  br i1 %20, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i8 %i.k, 45
  br i1 %i.m, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = or i8 %i.k, 32
  %i.o = add i8 %i.n, -97
  %or.cond60 = icmp ult i8 %i.o, 26
  br i1 %or.cond60, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp eq i8 %i.k, 95
  br i1 %i.p, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = add i8 %i.k, -58
  %or.cond6 = icmp ult i8 %i.q, -10
  br i1 %or.cond6, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.i, %bb.j
  %.244 = phi i32 [ %.04273, %bb.k ], [ %.04273, %bb.j ], [ 1, %bb.i ], [ %.04273, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %.04174, %bb.k ], [ 1, %bb.j ], [ %.04174, %bb.i ], [ %.04174, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.m, label %bb.d, !llvm.loop !255

._crit_edge.a:                                    ; preds = %bb.f
  %21 = add nuw nsw i32 %.04273.a, 1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp eq i64 %indvars.iv.next86, %wide.trip.count
  br i1 %i.r, label %.thread, label %.lr.ph.a, !llvm.loop !2

bb.m:                                             ; preds = %bb.c, %bb.l
  %.244.lcssa = phi i32 [ %.244, %bb.l ], [ %.244.peel, %bb.c ]
  %.2.lcssa = phi i32 [ %.2, %bb.l ], [ %.2.peel, %bb.c ]
  %i.s = zext nneg i32 %spec.select to i64
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %22 = icmp eq i8 %i.v, 45
  %23 = icmp ne i32 %.2.lcssa, 0
  %narrow = select i1 %22, i1 true, i1 %23
  br i1 %narrow, label %.thread, label %24

24:                                               ; preds = %bb.m
  %25 = icmp ne i32 %.04273.a, 0
  %26 = icmp ne i32 %.244.lcssa, 0
  %27 = select i1 %25, i1 %26, i1 false
  %28 = zext i1 %27 to i32
  br label %.thread

.thread:                                          ; preds = %.lr.ph.a, %._crit_edge.a, %bb.f, %bb.e, %bb.k, %bb.g, %12, %bb.m, %bb.b, %bb.a, %24
  %.253 = phi i32 [ %28, %24 ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.b ], [ 0, %bb.m ], [ 0, %12 ], [ 0, %._crit_edge.a ], [ 0, %bb.g ], [ 0, %.lr.ph.a ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.253
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_check_domain_name(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.d, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = icmp eq i8 %i.i, 46
  %spec.select.i = select i1 %i.j, i32 %i.f, i32 %i.d ; 2 uses
  %i.k = add i32 %spec.select.i, -254
  %or.cond3.i = icmp ult i32 %i.k, -253
  br i1 %or.cond3.i, label %wolfssl_local_IsValidFQDN.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64 ; 4 uses
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.thread, %.lr.ph.preheader.i
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i34, %.thread ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.04572.i.ph = phi i32 [ %i.ai, %.thread ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.ph
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52    ; 5 uses
  %i.n = icmp eq i8 %i.m, 46
  %i.o = add i8 %i.m, -45
  %i.p = icmp ult i8 %i.o, 2
  br i1 %i.p, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.outer
  %i.q = or i8 %i.m, 32
  %i.r = add i8 %i.q, -97
  %or.cond60.i.peel = icmp ult i8 %i.r, 26
  br i1 %or.cond60.i.peel, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i8 %i.m, 95
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i8 %i.m, -58
  %or.cond6.i.peel = icmp ult i8 %i.t, -10
  br i1 %or.cond6.i.peel, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.244.i.peel = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.2.i.peel = phi i32 [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv.next.i.peel = add nuw nsw i64 %indvars.iv.i.ph, 1 ; 2 uses
  %exitcond.not.i.peel = icmp eq i64 %indvars.iv.next.i.peel, %wide.trip.count.i
  br i1 %exitcond.not.i.peel, label %wolfssl_local_IsValidFQDN.exit.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ %indvars.iv.next.i.peel, %bb.g ] ; 4 uses
  %.04174.i = phi i32 [ %.2.i, %bb.n ], [ %.2.i.peel, %bb.g ] ; 3 uses
  %.04273.i = phi i32 [ %.244.i, %bb.n ], [ %.244.i.peel, %bb.g ] ; 3 uses
  %.04771.i = phi i32 [ %i.ac, %bb.n ], [ 1, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52    ; 5 uses
  %i.w = icmp eq i8 %i.v, 46
  br i1 %i.w, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i
  br i1 %i.n, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.x = add nuw i64 %indvars.iv.i, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %wolfssl_local_IsValidFQDN.exit.thread, label %.thread

bb.i:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i32 %.04771.i, 1
  %exitcond = icmp eq i32 %.04771.i, 63
  br i1 %exitcond, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i8 %i.v, 45
  br i1 %i.ad, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = or i8 %i.v, 32
  %i.af = add i8 %i.ae, -97
  %or.cond60.i = icmp ult i8 %i.af, 26
  br i1 %or.cond60.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i8 %i.v, 95
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add i8 %i.v, -58
  %or.cond6.i = icmp ult i8 %i.ah, -10
  br i1 %or.cond6.i, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k
  %.244.i = phi i32 [ %.04273.i, %bb.m ], [ %.04273.i, %bb.l ], [ 1, %bb.k ], [ %.04273.i, %bb.j ] ; 2 uses
  %.2.i = phi i32 [ %.04174.i, %bb.m ], [ 1, %bb.l ], [ %.04174.i, %bb.k ], [ %.04174.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %wolfssl_local_IsValidFQDN.exit.a, label %.lr.ph.i, !llvm.loop !256

.thread:                                          ; preds = %bb.h
  %i.ai = add nuw nsw i32 %.04572.i.ph, 1
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count.i
  br i1 %exitcond.not.i35, label %wolfssl_local_IsValidFQDN.exit.thread, label %.lr.ph.i.outer, !llvm.loop !2

wolfssl_local_IsValidFQDN.exit.a:                 ; preds = %bb.g, %bb.n
  %.244.i.lcssa = phi i32 [ %.244.i, %bb.n ], [ %.244.i.peel, %bb.g ]
  %.2.i.lcssa = phi i32 [ %.2.i, %bb.n ], [ %.2.i.peel, %bb.g ]
  %i.aj = getelementptr i8, ptr %1, i64 %wide.trip.count.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = icmp eq i8 %i.al, 45
  %2 = icmp ne i32 %.2.i.lcssa, 0
  %narrow.i.not = select i1 %i.am, i1 true, i1 %2
  br i1 %narrow.i.not, label %wolfssl_local_IsValidFQDN.exit.thread, label %wolfssl_local_IsValidFQDN.exit

wolfssl_local_IsValidFQDN.exit:                   ; preds = %wolfssl_local_IsValidFQDN.exit.a
  %3 = icmp eq i32 %.04572.i.ph, 0
  %4 = icmp eq i32 %.244.i.lcssa, 0
  %.not34 = select i1 %3, i1 true, i1 %4
  br i1 %.not34, label %wolfssl_local_IsValidFQDN.exit.thread, label %bb.o

wolfssl_local_IsValidFQDN.exit.thread:            ; preds = %.lr.ph.i.outer, %.thread, %bb.h, %.loopexit, %bb.f, %bb.i, %bb.m, %wolfssl_local_IsValidFQDN.exit.a, %bb.c, %bb.b, %wolfssl_local_IsValidFQDN.exit
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.8) #25
  %.not27 = icmp eq i32 %i.an, 0
  br i1 %.not27, label %bb.o, label %bb.t

bb.o:                                             ; preds = %wolfssl_local_IsValidFQDN.exit.thread, %wolfssl_local_IsValidFQDN.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !257 ; 2 uses
  %.not28 = icmp eq ptr %i.ap, null
  br i1 %.not28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.ap) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !258
  %i.at = add i64 %i.aq, 1
  %i.au = and i64 %i.at, 4294967295
  %i.av = tail call ptr @wolfSSL_Malloc(i64 noundef %i.au) #23 ; 4 uses
  store ptr %i.av, ptr %i.ao, align 16, !tbaa !257
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !258
  %i.ax = zext i32 %i.aw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %1, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !258
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !52
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 -303, ptr %i.bb, align 8, !tbaa !134
  br label %bb.t

bb.t:                                             ; preds = %wolfssl_local_IsValidFQDN.exit.thread, %bb.a, %bb.s, %bb.r
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.r ], [ 0, %bb.s ], [ 0, %wolfssl_local_IsValidFQDN.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_check_ip_address(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !259 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.d) #23
  store ptr null, ptr %i.c, align 16, !tbaa !259
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 0, ptr %i.e, align 8, !tbaa !260
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !260
  %i.i = add i64 %i.f, 1
  %i.j = and i64 %i.i, 4294967295
  %i.k = tail call ptr @wolfSSL_Malloc(i64 noundef %i.j) #23 ; 3 uses
  store ptr %i.k, ptr %i.c, align 16, !tbaa !259
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 -303, ptr %i.m, align 8, !tbaa !134
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.h, align 8, !tbaa !260
  %i.o = zext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %1, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.c, align 16, !tbaa !259
  %i.q = load i32, ptr %i.h, align 8, !tbaa !260
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_set_compression(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 {
bb.a:
  ret i32 -174
}

; Function Attrs: nounwind uwtable
define range(i32 -303, -2147483648) i32 @wolfSSL_writev(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge56

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.03350 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.g, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !264  ; 2 uses
  %i.f = xor i64 %.03350, -1
  %.not44 = icmp ugt i64 %i.e, %i.f
  br i1 %.not44, label %.split.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %i.e, %.03350                    ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !261

._crit_edge:                                      ; preds = %bb.b
  %i.h = icmp ult i64 %i.g, 1025                  ; 3 uses
  br i1 %i.h, label %.lr.ph55.preheader, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.i = tail call ptr @wolfSSL_Malloc(i64 noundef %i.g) #23 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split.thread, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %._crit_edge, %bb.c
  %.036 = phi ptr [ %i.a, %._crit_edge ], [ %i.i, %bb.c ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %indvars.iv58 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next59.1, %.lr.ph55 ] ; 3 uses
  %.03252 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %i.aa, %.lr.ph55 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter.next.1, %.lr.ph55 ]
  %i.k = getelementptr inbounds nuw i8, ptr %.036, i64 %.03252
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv58 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !265
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.m, i64 %i.o, i1 false)
  %i.p = load i64, ptr %i.n, align 8, !tbaa !264
  %sext = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext, 32
  %i.r = add i64 %i.q, %.03252                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.036, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !265
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.v, i64 %i.x, i1 false)
  %i.y = load i64, ptr %i.w, align 8, !tbaa !264
  %sext.1 = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.1, 32
  %i.aa = add i64 %i.z, %i.r                      ; 2 uses
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge56.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !262

._crit_edge56.loopexit.unr-lcssa:                 ; preds = %.lr.ph55
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge56, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %._crit_edge56.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv58.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next59.1, %._crit_edge56.loopexit.unr-lcssa ]
  %.03252.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %i.aa, %._crit_edge56.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.ab = getelementptr inbounds nuw i8, ptr %.036, i64 %.03252.epil.init
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv58.epil.init ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !265
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %.lr.ph55.epil.preheader, %._crit_edge56.loopexit.unr-lcssa, %bb.a
  %.03671 = phi ptr [ %i.a, %bb.a ], [ %.036, %._crit_edge56.loopexit.unr-lcssa ], [ %.036, %.lr.ph55.epil.preheader ] ; 2 uses
  %.033.lcssa6770 = phi i64 [ 0, %bb.a ], [ %i.g, %._crit_edge56.loopexit.unr-lcssa ], [ %i.g, %.lr.ph55.epil.preheader ]
  %i.ag = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge56.loopexit.unr-lcssa ], [ %i.h, %.lr.ph55.epil.preheader ]
  %i.ah = icmp eq ptr %0, null
  br i1 %i.ah, label %wolfSSL_write_internal.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge56
  %i.ai = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.ai, align 4, !tbaa !41
  %i.aj = call i32 @SendData(ptr noundef nonnull %0, ptr noundef nonnull %.03671, i64 noundef %.033.lcssa6770) #23
  %..i = call i32 @llvm.smax.i32(i32 %i.aj, i32 -1)
  br label %wolfSSL_write_internal.exit

wolfSSL_write_internal.exit:                      ; preds = %._crit_edge56, %bb.d
  %.0.i = phi i32 [ -173, %._crit_edge56 ], [ %..i, %bb.d ] ; 2 uses
  br i1 %i.ag, label %.split.thread, label %bb.e

bb.e:                                             ; preds = %wolfSSL_write_internal.exit
  call void @wolfSSL_Free(ptr noundef nonnull %.03671) #23
  br label %.split.thread

.split.thread:                                    ; preds = %.lr.ph, %wolfSSL_write_internal.exit, %bb.e, %bb.c
  %.037 = phi i32 [ %.0.i, %wolfSSL_write_internal.exit ], [ -303, %bb.c ], [ %.0.i, %bb.e ], [ -132, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_is_init_finished(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1063
  %i.c = load i8, ptr %i.b, align 1, !tbaa !143
  %i.d = icmp eq i8 %i.c, 16
  %. = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @wolfSSL_CTX_get_options(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -173, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @wolfSSL_CTX_set_options(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !163
  %i.d = or i64 %i.c, %1                          ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ -173, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @wolfSSL_CTX_clear_options(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163
  %i.e = and i64 %i.d, %i.b                       ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_clear(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.c = load i8, ptr %i.b, align 8, !tbaa !266
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !81
  tail call void @wolfSSL_FreeSession(ptr poison, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !149
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef 184) #23 ; 7 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %wolfSSL_NewSession.exit.thread, label %wolfSSL_NewSession.exit

wolfSSL_NewSession.exit.thread:                   ; preds = %bb.c
  store ptr null, ptr %i.d, align 16, !tbaa !81
  br label %bb.g

wolfSSL_NewSession.exit:                          ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.h, i8 0, i64 184, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.i, i32 noundef 1) #23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !89
  store i32 3, ptr %i.h, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.k, align 8, !tbaa !90
  store ptr %i.h, ptr %i.d, align 16, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %wolfSSL_NewSession.exit, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1066
  store i8 0, ptr %i.p, align 2, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1067
  store i8 0, ptr %i.q, align 1, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 0, ptr %i.r, align 4, !tbaa !267
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i8 0, ptr %i.s, align 4, !tbaa !268
  %i.t = and i64 %i.n, -288793329330413572
  store i32 0, ptr %i.o, align 1
  store i64 %i.t, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !149
  tail call void @TLSX_FreeAll(ptr noundef %i.v, ptr noundef %i.x) #23
  store ptr null, ptr %i.u, align 8, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !269
  %.not44 = icmp eq i8 %i.z, 0
  br i1 %.not44, label %ForceZero.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !146
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 381
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !270
  %i.ae = zext i8 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  fence seq_cst
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = and i64 %i.ak, 7
  %.not19.i = icmp eq i64 %i.al, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.am = icmp eq i32 %i.ai, 0
  br i1 %i.am, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.e
  %.013.lcssa.i = phi i64 [ %i.aj, %bb.e ], [ %i.as, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.ag, %bb.e ], [ %i.ar, %.lr.ph ] ; 3 uses
  %i.an = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.an, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.ao = and i64 %.013.lcssa.i, -8               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.ao, i1 false), !tbaa !42
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.ao
  %i.ap = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.aq = icmp eq i64 %i.as, 0
  br i1 %i.aq, label %ForceZero.exit, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i55 = phi i64 [ %i.as, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ]
  %.01221.i54 = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01221.i54, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i54, align 1, !tbaa !52
  %i.as = add nsw i64 %.01320.i55, -1             ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = and i64 %i.at, 7
  %.not.i47 = icmp eq i64 %i.au, 0
  br i1 %.not.i47, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.ap, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %bb.d
  store i8 0, ptr %i.y, align 4, !tbaa !269
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 722
  store i32 0, ptr %i.av, align 2
  tail call void @FreeCiphers(ptr noundef %0) #23
  tail call void @InitCiphers(ptr noundef %0) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 730
  tail call void @InitCipherSpecs(ptr noundef nonnull %i.aw) #23
  %i.ax = tail call i32 @InitSSL_Suites(ptr noundef %0) #23
  %.not45 = icmp eq i32 %i.ax, 1
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ForceZero.exit
  %i.ay = tail call i32 @InitHandshakeHashes(ptr noundef nonnull %0) #23
  %.not46 = icmp eq i32 %i.ay, 0
  %. = zext i1 %.not46 to i32
  br label %bb.g

bb.g:                                             ; preds = %wolfSSL_NewSession.exit.thread, %bb.f, %ForceZero.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %wolfSSL_NewSession.exit.thread ], [ %., %bb.f ], [ 0, %ForceZero.exit ]
  ret i32 %.0
}

declare void @TLSX_FreeAll(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeCiphers(ptr noundef) local_unnamed_addr #2

declare void @InitCiphers(ptr noundef) local_unnamed_addr #2

declare void @InitCipherSpecs(ptr noundef) local_unnamed_addr #2

declare i32 @InitSSL_Suites(ptr noundef) local_unnamed_addr #2

declare i32 @InitHandshakeHashes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @wolfSSL_get_shutdown(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 21
  %spec.select = and i32 %i.d, 1                  ; 2 uses
  %i.e = and i64 %i.b, 1310720
  %or.cond = icmp eq i64 %i.e, 0
  %i.f = or disjoint i32 %spec.select, 2
  %spec.select10 = select i1 %or.cond, i32 %spec.select, i32 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %spec.select10, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_session_reused(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 11
  %i.e = and i32 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @wolfSSL_get_version(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfSSL_internal_get_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.c = load i8, ptr %i.b, align 1, !tbaa !165
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.c, label %wolfSSL_internal_get_version.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.f = load i8, ptr %i.e, align 1, !tbaa !166   ; 2 uses
  %i.g = icmp ult i8 %i.f, 5
  br i1 %i.g, label %switch.lookup, label %wolfSSL_internal_get_version.exit

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i8 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_CIPHER_get_version, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %wolfSSL_internal_get_version.exit

wolfSSL_internal_get_version.exit:                ; preds = %bb.c, %switch.lookup, %bb.b, %bb.a
  %.0 = phi ptr [ @.str.9, %bb.a ], [ %switch.load, %switch.lookup ], [ @.str.9, %bb.b ], [ @.str.9, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @wolfSSL_lib_version() local_unnamed_addr #7 {
bb.a:
  ret ptr @.str.10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_lib_version_hex() local_unnamed_addr #7 {
bb.a:
  ret i32 83922946
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 65536) i32 @wolfSSL_get_current_cipher_suite(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.b = load i8, ptr %i.a, align 1, !tbaa !96
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.f = load i8, ptr %i.e, align 2, !tbaa !98
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @wolfSSL_get_current_cipher(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.b = load i8, ptr %i.a, align 1, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store i8 %i.b, ptr %i.c, align 16, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.e = load i8, ptr %i.d, align 2, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.e, ptr %i.f, align 1, !tbaa !168
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_CIPHER_get_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !272
  %i.e = tail call ptr @GetCipherNameIana(i8 noundef zeroext %i.b, i8 noundef zeroext %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @wolfSSL_CIPHER_get_version(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfSSL_get_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %wolfSSL_get_version.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 726
  %i.f = load i8, ptr %i.e, align 1, !tbaa !165
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.d, label %wolfSSL_get_version.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 727
  %i.i = load i8, ptr %i.h, align 1, !tbaa !166   ; 2 uses
  %i.j = icmp ult i8 %i.i, 5
  br i1 %i.j, label %switch.lookup, label %wolfSSL_get_version.exit

switch.lookup:                                    ; preds = %bb.d
  %i.k = zext nneg i8 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_CIPHER_get_version, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %wolfSSL_get_version.exit

wolfSSL_get_version.exit:                         ; preds = %bb.d, %switch.lookup, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ @.str.9, %bb.c ], [ %switch.load, %switch.lookup ], [ @.str.9, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %wolfSSL_CIPHER_get_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.b = load i8, ptr %i.a, align 1, !tbaa !96    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.b, ptr %i.c, align 16, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.e = load i8, ptr %i.d, align 2, !tbaa !98    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.e, ptr %i.f, align 1, !tbaa !168
  %i.g = tail call ptr @GetCipherNameIana(i8 noundef zeroext %i.b, i8 noundef zeroext %i.e) #23
  br label %wolfSSL_CIPHER_get_name.exit

wolfSSL_CIPHER_get_name.exit:                     ; preds = %bb.a, %bb.b
  %.0.i1 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i1
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_get_cipher_name_internal(ptr noundef %0) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher_name_from_suite(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @GetCipherNameInternal(i8 noundef zeroext %0, i8 noundef zeroext %1) #23
  ret ptr %i.a
}

declare ptr @GetCipherNameInternal(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher_name_iana_from_suite(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @GetCipherNameIana(i8 noundef zeroext %0, i8 noundef zeroext %1) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_get_cipher_suite_from_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %.not = icmp eq i4 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @GetCipherSuiteFromName(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @GetCipherSuiteFromName(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @wolfSSL_CIPHER_get_id(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1053
  %i.d = load i8, ptr %i.c, align 1, !tbaa !96
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1054
  %i.h = load i8, ptr %i.g, align 2, !tbaa !98
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @wolfSSL_get_cipher_by_value(i16 noundef zeroext %0) local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_curve_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfssl_ffdhe_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.c = load i16, ptr %i.b, align 2
  %i.d = tail call i32 @IsAtLeastTLSv1_3(i16 %i.c) #23
  %.not = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1098
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !273 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i16 %.pre, label %wolfssl_ffdhe_name.exit [
    i16 512, label %wolfssl_ffdhe_name.exit.thread
    i16 513, label %bb.d
    i16 4587, label %bb.e
    i16 514, label %bb.f
    i16 4589, label %bb.g
    i16 260, label %bb.k
    i16 256, label %wolfssl_ffdhe_name.exit.thread.fold.split
    i16 257, label %bb.h
    i16 258, label %bb.i
    i16 259, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.e:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.f:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.g:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

._crit_edge:                                      ; preds = %bb.b
  %switch.tableidx = add i16 %.pre, -256          ; 2 uses
  %i.e = icmp ult i16 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %wolfssl_ffdhe_name.exit

bb.h:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.i:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.j:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.k:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

wolfssl_ffdhe_name.exit:                          ; preds = %._crit_edge, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.g = load i32, ptr %i.f, align 16, !tbaa !274 ; 2 uses
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %wolfssl_ffdhe_name.exit.thread, label %bb.l

bb.l:                                             ; preds = %wolfssl_ffdhe_name.exit
  %i.h = tail call i32 @wc_ecc_get_oid(i32 noundef %i.g, ptr noundef null, ptr noundef null) #23
  %i.i = tail call ptr @wc_ecc_get_name(i32 noundef %i.h) #23
  br label %wolfssl_ffdhe_name.exit.thread

wolfssl_ffdhe_name.exit.thread.fold.split:        ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

switch.lookup:                                    ; preds = %._crit_edge
  %i.j = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_get_curve_name, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %wolfssl_ffdhe_name.exit.thread

wolfssl_ffdhe_name.exit.thread:                   ; preds = %switch.lookup, %bb.c, %wolfssl_ffdhe_name.exit.thread.fold.split, %bb.k, %bb.j, %bb.i, %bb.h, %wolfssl_ffdhe_name.exit, %bb.l, %bb.a, %bb.g, %bb.f, %bb.e, %bb.d
  %.011 = phi ptr [ @.str.15, %bb.g ], [ @.str.11, %bb.c ], [ null, %bb.a ], [ @.str.12, %bb.d ], [ @.str.13, %bb.e ], [ @.str.14, %bb.f ], [ %i.i, %bb.l ], [ null, %wolfssl_ffdhe_name.exit ], [ @.str.30, %bb.k ], [ @.str.29, %bb.j ], [ @.str.28, %bb.i ], [ @.str.27, %bb.h ], [ @.str.26, %wolfssl_ffdhe_name.exit.thread.fold.split ], [ %switch.load, %switch.lookup ]
  ret ptr %.011
}

declare ptr @wc_ecc_get_name(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_get_oid(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @wolfSSL_set_options(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Suites, align 2             ; 7 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170
  %i.d = or i64 %i.c, %1                          ; 5 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !170
  %i.e = and i64 %i.d, 536870912
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !152
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 3, ptr %i.f, align 1, !tbaa !152
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.i = and i64 %i.d, 134217728
  %.not93 = icmp eq i64 %i.i, 0
  br i1 %.not93, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !152
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 2, ptr %i.j, align 1, !tbaa !152
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.m = and i64 %i.d, 67108864
  %.not94 = icmp eq i64 %i.m, 0
  br i1 %.not94, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !152
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.n, align 1, !tbaa !152
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.q = and i64 %i.d, 8192
  %.not95 = icmp eq i64 %i.q, 0
  br i1 %.not95, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !152
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.r, align 1, !tbaa !152
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 48
  %.not96 = icmp eq i64 %i.y, 48
  br i1 %.not96, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not97 = icmp eq i32 %i.z, 0
  br i1 %.not97, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = and i8 %i.ad, 1
  %.not98 = icmp eq i8 %i.ae, 0
  br i1 %.not98, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.w, align 8             ; 10 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = and i32 %i.ah, 3                        ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.al = lshr i64 %i.af, 26
  %i.am = trunc i64 %i.al to i16
  %i.an = and i16 %i.am, 1
  %i.ao = lshr i64 %i.af, 24
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = and i16 %i.ap, 1
  %i.ar = lshr i64 %i.af, 27
  %i.as = trunc i64 %i.ar to i16
  %i.at = and i16 %i.as, 1
  %i.au = lshr i64 %i.af, 43
  %i.av = trunc i64 %i.au to i16
  %i.aw = and i16 %i.av, 1
  %i.ax = load i16, ptr %i.ak, align 2
  tail call void @InitSuites(ptr noundef nonnull %i.ab, i16 %i.ax, i32 noundef %i.v, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %i.an, i16 noundef zeroext %i.aq, i16 noundef zeroext 1, i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef 1) #23
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.ay = lshr i64 %i.af, 25
  %i.az = trunc i64 %i.ay to i16
  %i.ba = and i16 %i.az, 1
  %i.bb = lshr i64 %i.af, 26
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = and i16 %i.bc, 1
  %i.be = lshr i64 %i.af, 24
  %i.bf = trunc i64 %i.be to i16
  %i.bg = and i16 %i.bf, 1
  %i.bh = lshr i64 %i.af, 27
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = and i16 %i.bi, 1
  %i.bk = lshr i64 %i.af, 43
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = and i16 %i.bl, 1
  %i.bn = load i16, ptr %i.ak, align 2
  tail call void @InitSuites(ptr noundef nonnull %i.ab, i16 %i.bn, i32 noundef %i.v, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.ba, i16 noundef zeroext %i.bd, i16 noundef zeroext %i.bg, i16 noundef zeroext 1, i16 noundef zeroext %i.bj, i16 noundef zeroext %i.bm, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.ai) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bo = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bp = lshr i64 %i.bo, 27
  %i.bq = trunc i64 %i.bp to i16
  %i.br = and i16 %i.bq, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(434) %2, i8 0, i64 434, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.bt = trunc i64 %i.bo to i32
  %i.bu = lshr i32 %i.bt, 4
  %i.bv = and i32 %i.bu, 3
  %i.bw = load i16, ptr %i.bs, align 2
  call void @InitSuites(ptr noundef nonnull %2, i16 %i.bw, i32 noundef 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext %i.br, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.bv) #23
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !279
  %.not113 = icmp eq i16 %i.by, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %i.bz = phi ptr [ %i.cy, %bb.v ], [ %i.bx, %bb.t ]
  %.0102 = phi i16 [ %.1, %bb.v ], [ 0, %bb.t ]   ; 3 uses
  %.085101 = phi i16 [ %i.cx, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cb = zext i16 %.085101 to i64                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !52
  %i.ce = or disjoint i16 %.085101, 1
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ci = call i32 @FindSuite(ptr noundef nonnull %2, i8 noundef zeroext %i.cd, i8 noundef zeroext %i.ch) #23
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cb
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = zext i16 %.0102 to i64                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !52
  %i.cq = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cf
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !52
  %i.cw = add i16 %.0102, 2
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %.1 = phi i16 [ %i.cw, %bb.u ], [ %.0102, %.lr.ph ] ; 2 uses
  %i.cx = add i16 %.085101, 2                     ; 2 uses
  %i.cy = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !279
  %i.da = icmp ult i16 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !275

._crit_edge:                                      ; preds = %bb.v, %bb.t
  %.0.lcssa = phi i16 [ 0, %bb.t ], [ %.1, %bb.v ]
  %i.db = phi ptr [ %i.bx, %bb.t ], [ %i.cy, %bb.v ] ; 5 uses
  store i16 %.0.lcssa, ptr %i.db, align 2, !tbaa !279
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !280
  %.not114 = icmp eq i16 %i.dd, 0
  br i1 %.not114, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.dg = load i16, ptr %i.de, align 2, !tbaa !280
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %._crit_edge109, label %.lr.ph108.split

.lr.ph108.split:                                  ; preds = %.lr.ph108, %FindHashSig.exit.thread
  %i.di = phi ptr [ %i.ek, %FindHashSig.exit.thread ], [ %i.db, %.lr.ph108 ] ; 3 uses
  %.2106 = phi i16 [ %.3, %FindHashSig.exit.thread ], [ 0, %.lr.ph108 ] ; 4 uses
  %.186105 = phi i16 [ %i.el, %FindHashSig.exit.thread ], [ 0, %.lr.ph108 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 304 ; 3 uses
  %i.dk = zext i16 %.186105 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52  ; 2 uses
  %i.dn = or disjoint i16 %.186105, 1
  %i.do = zext i16 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !52
  %i.dr = load i16, ptr %i.de, align 2, !tbaa !280 ; 2 uses
  %switch = icmp ult i16 %i.dr, 2
  br i1 %switch, label %FindHashSig.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph108.split
  %i.ds = add i16 %i.dr, -1
  %i.dt = zext i16 %i.ds to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !52
  %i.dw = icmp eq i8 %i.dv, %i.dm
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !52
  %i.dz = icmp eq i8 %i.dy, %i.dq
  br i1 %i.dz, label %FindHashSig.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.ea, label %.lr.ph.i, label %FindHashSig.exit.thread, !llvm.loop !276

FindHashSig.exit:                                 ; preds = %bb.w
  %i.eb = zext i16 %.2106 to i64                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.eb
  store i8 %i.dm, ptr %i.ec, align 1, !tbaa !52
  %i.ed = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 304 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.do
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !52
  %i.ej = add i16 %.2106, 2
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !154
  br label %FindHashSig.exit.thread

FindHashSig.exit.thread:                          ; preds = %bb.x, %.lr.ph108.split, %FindHashSig.exit
  %i.ek = phi ptr [ %.pre, %FindHashSig.exit ], [ %i.di, %.lr.ph108.split ], [ %i.di, %bb.x ] ; 3 uses
  %.3 = phi i16 [ %i.ej, %FindHashSig.exit ], [ %.2106, %.lr.ph108.split ], [ %.2106, %bb.x ] ; 2 uses
  %i.el = add i16 %.186105, 2                     ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !280
  %i.eo = icmp ult i16 %i.el, %i.en
  br i1 %i.eo, label %.lr.ph108.split, label %._crit_edge109, !llvm.loop !277

._crit_edge109:                                   ; preds = %FindHashSig.exit.thread, %.lr.ph108, %._crit_edge
  %.lcssa104 = phi ptr [ %i.db, %._crit_edge ], [ %i.db, %.lr.ph108 ], [ %i.ek, %FindHashSig.exit.thread ]
  %.2.lcssa = phi i16 [ 0, %._crit_edge ], [ 0, %.lr.ph108 ], [ %.3, %FindHashSig.exit.thread ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.lcssa104, i64 2
  store i16 %.2.lcssa, ptr %i.ep, align 2, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge109, %bb.s, %bb.r, %bb.n
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !170
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.a, %bb.y
  %.087 = phi i64 [ %i.eq, %bb.y ], [ 0, %bb.a ], [ 0, %bb.o ]
  ret i64 %.087
}

declare i32 @FindSuite(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @wolfSSL_get_options(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_set_ex_data(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @wolfSSL_get_ex_data(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 65280) i32 @wolfSSL_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.b = load i8, ptr %i.a, align 2, !tbaa !151
  switch i8 %i.b, label %bb.d [
    i8 3, label %bb.b
    i8 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.d = load i8, ptr %i.c, align 1, !tbaa !152   ; 2 uses
  %i.e = icmp ult i8 %i.d, 5
  br i1 %i.e, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.g = load i8, ptr %i.f, align 1, !tbaa !152   ; 2 uses
  %i.h = icmp ugt i8 %i.g, -5
  br i1 %i.h, label %switch.lookup5, label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %switch.idx.cast = zext nneg i8 %i.d to i32
  %switch.offset = or disjoint i32 %switch.idx.cast, 768
  br label %bb.d

switch.lookup5:                                   ; preds = %bb.c
  %switch.tableidx = add i8 %i.g, 4
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.wolfSSL_version, i64 %i.i
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup5, %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ %switch.ext, %switch.lookup5 ], [ 0, %bb.a ], [ %switch.offset, %switch.lookup ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wolfSSL_get_SSL_CTX(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !99
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_UseSNI(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !149
  %i.e = tail call i32 @TLSX_UseSNI(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_UseSNI(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_UseSNI(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = tail call i32 @TLSX_UseSNI(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_SNI_SetOptions(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @TLSX_SNI_SetOptions(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @TLSX_SNI_SetOptions(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @wolfSSL_CTX_SNI_SetOptions(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @TLSX_SNI_SetOptions(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @wolfSSL_SNI_Status(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = tail call zeroext i8 @TLSX_SNI_Status(ptr noundef %i.c, i8 noundef zeroext %1) #23
  ret i8 %i.d
}

declare zeroext i8 @TLSX_SNI_Status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i16 @wolfSSL_SNI_GetRequest(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !283
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq ptr %0, null
  br i1 %.not10, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call zeroext i16 @TLSX_SNI_GetRequest(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext 0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i16 [ %i.c, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i16 %.0
}

declare zeroext i16 @TLSX_SNI_GetRequest(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_SNI_GetFromBuffer(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  %i.d = icmp ne ptr %4, null
  %or.cond5 = and i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !41
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @TLSX_SNI_GetFromBuffer(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_SNI_GetFromBuffer(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_UseSupportedCurve(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @isValidCurveGroup(i16 noundef zeroext %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = or i64 %i.d, 17592186044416
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !149
  %i.i = trunc i64 %i.d to i32
  %i.j = lshr i32 %i.i, 4
  %i.k = and i32 %i.j, 3
  %i.l = tail call i32 @TLSX_UseSupportedCurve(ptr noundef nonnull %i.f, i16 noundef zeroext %1, ptr noundef %i.h, i32 noundef %i.k) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @isValidCurveGroup(i16 noundef zeroext %0) unnamed_addr #7 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 15, label %bb.c
    i16 16, label %bb.c
    i16 17, label %bb.c
    i16 18, label %bb.c
    i16 19, label %bb.c
    i16 20, label %bb.c
    i16 21, label %bb.c
    i16 22, label %bb.c
    i16 23, label %bb.c
    i16 24, label %bb.c
    i16 25, label %bb.c
    i16 26, label %bb.c
    i16 27, label %bb.c
    i16 28, label %bb.c
    i16 41, label %bb.c
    i16 29, label %bb.c
    i16 30, label %bb.c
    i16 31, label %bb.c
    i16 32, label %bb.c
    i16 33, label %bb.c
    i16 256, label %bb.c
    i16 257, label %bb.c
    i16 258, label %bb.c
    i16 259, label %bb.c
    i16 260, label %bb.c
    i16 4589, label %bb.c
    i16 4588, label %bb.c
    i16 4587, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_UseSupportedCurve(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_UseSupportedCurve(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @isValidCurveGroup(i16 noundef zeroext %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 1, ptr %i.c, align 8, !tbaa !284
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = load ptr, ptr %0, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !113
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @TLSX_UseSupportedCurve(ptr noundef nonnull %i.d, i16 noundef zeroext %1, ptr noundef %i.f, i32 noundef %i.j) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, -2
  store i8 %i.d, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_DisableExtendedMasterSecret(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2199023255553
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @wolfSSL_CTX_set_servername_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %1, ptr %i.a, align 8, !tbaa !285
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @wolfSSL_CTX_set_servername_arg(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.a, align 8, !tbaa !286
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_X509_check_host(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.DecodedCert], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not46 = and i1 %i.a, %i.b
  %i.c = and i32 %3, 14
  %i.d = icmp eq i32 %i.c, 0
  %or.cond40 = and i1 %or.cond.not46, %i.d
  br i1 %or.cond40, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  call void @InitDecodedCert(ptr noundef nonnull %5, ptr noundef %i.g, i32 noundef %i.i, ptr noundef null) #23
  %i.j = call i32 @ParseCertRelative(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #23
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not36 = icmp eq i64 %2, 1
  %i.l = add i64 %2, -1
  %i.m = select i1 %.not36, i64 1, i64 %i.l
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %.047, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.m
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !287

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.047 = phi i64 [ %i.o, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.047
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.028 = phi i64 [ %i.n, %bb.d ], [ %2, %bb.e ]  ; 4 uses
  %i.s = icmp ugt i64 %.028, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.t = getelementptr i8, ptr %1, i64 %.028
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = icmp eq i8 %i.v, 0
  %i.x = sext i1 %i.w to i64
  %spec.select = add i64 %.028, %i.x
  br label %bb.g

.thread:                                          ; preds = %.lr.ph, %bb.b
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  br label %bb.h

bb.g:                                             ; preds = %.loopexit, %bb.f
  %.1 = phi i64 [ %.028, %.loopexit ], [ %spec.select, %bb.f ]
  %i.y = call i32 @CheckHostName(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef %.1, i32 noundef %3, i8 noundef zeroext 0) #23
  %.fr = freeze i32 %i.y
  %i.z = icmp eq i32 %.fr, 0
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  %spec.select43 = zext i1 %i.z to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %spec.select43, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i32 %.027
}

declare i32 @CheckHostName(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_X509_check_ip_asc(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.DecodedCert], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 3 uses
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.e, %i.d
  br i1 %or.cond.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  call void @InitDecodedCert(ptr noundef nonnull %3, ptr noundef %i.f, i32 noundef %i.h, ptr noundef null) #23
  %i.i = call i32 @ParseCertRelative(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #23
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @CheckIPAddr(ptr noundef nonnull %3, ptr noundef nonnull %1) #23
  %.not11 = icmp eq i32 %i.j, 0
  %. = zext i1 %.not11 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %., %bb.d ]
  call void @FreeDecodedCert(ptr noundef nonnull %3) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.e, %bb.b
  %.2 = phi i32 [ %.1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.2
}

declare i32 @CheckIPAddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_X509_STORE_CTX_new_ex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 72) #23 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.b, align 8, !tbaa !288
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_X509_STORE_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_X509_STORE_CTX_get_error(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_X509_STORE_CTX_get_error_depth(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !290
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @wc_FreeMutex(ptr noundef) local_unnamed_addr #2

declare ptr @wolfTLSv1_2_client_method_ex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @InitDecodedCert_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_CheckPrivateKeyCert(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SendData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ReceiveData(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @AllocCopyDer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetSequence_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateKeyValidate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_init_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_EccPrivateKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_size(ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_free(ptr noundef) local_unnamed_addr #2

declare i32 @DecodeToKey(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecode_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_get_curve_size_from_id(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ReadDirFirst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ReadDirNext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_ReadDirClose(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhSetCheckKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_FreeDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

declare i32 @AllocDer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhParamsLoad(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !43}
!1 = distinct !{!1, !43}
!2 = distinct !{!2, !43}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11WOLFSSL_CRL", !11, i64 0}
!13 = !{!"p1 _ZTS12WOLFSSL_OCSP", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = !{!"wolfSSL_Ref", !8, i64 0}
!17 = !{!"WOLFSSL_CERT_MANAGER", !7, i64 0, !11, i64 88, !12, i64 96, !13, i64 104, !14, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !7, i64 184, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 225, !15, i64 226, !15, i64 228, !16, i64 232}
!18 = !{!17, !11, i64 88}
!19 = !{!17, !15, i64 226}
!20 = !{!17, !15, i64 228}
!21 = !{!"p1 _ZTS9DerBuffer", !11, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTS14WOLFSSL_METHOD", !11, i64 0}
!24 = !{!"wolfSSL_RefWithMutex", !7, i64 0, !8, i64 40}
!25 = !{!"WOLFSSL_BUFFER_INFO", !14, i64 0, !8, i64 8}
!26 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !11, i64 0}
!27 = !{!"p1 _ZTS6Suites", !11, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"p1 _ZTS4TLSX", !11, i64 0}
!30 = !{!"WOLFSSL_CTX", !23, i64 0, !24, i64 8, !8, i64 56, !25, i64 64, !25, i64 80, !21, i64 96, !21, i64 104, !8, i64 112, !21, i64 120, !7, i64 128, !7, i64 129, !7, i64 129, !8, i64 132, !8, i64 136, !26, i64 144, !27, i64 152, !11, i64 160, !7, i64 168, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 171, !7, i64 171, !7, i64 171, !7, i64 172, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !15, i64 173, !15, i64 173, !15, i64 174, !15, i64 176, !15, i64 178, !7, i64 180, !15, i64 182, !28, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !8, i64 224, !8, i64 228, !15, i64 232, !8, i64 236, !7, i64 240, !7, i64 312, !11, i64 320, !11, i64 328, !8, i64 336, !29, i64 344, !7, i64 352}
!31 = !{!30, !11, i64 208}
!32 = !{!30, !26, i64 144}
!33 = !{!"DerBuffer", !14, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!34 = !{!33, !14, i64 0}
!35 = !{!33, !8, i64 16}
!36 = !{!"p1 _ZTS6Signer", !11, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS10Base_entry", !11, i64 0}
!39 = !{!"Signer", !8, i64 0, !8, i64 4, !15, i64 8, !7, i64 10, !15, i64 12, !7, i64 14, !7, i64 14, !7, i64 14, !14, i64 16, !8, i64 24, !14, i64 32, !38, i64 40, !38, i64 48, !7, i64 56, !7, i64 76, !7, i64 96, !36, i64 104}
!40 = !{!39, !7, i64 96}
!41 = !{!8, !8, i64 0}
!42 = !{!28, !28, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!17, !11, i64 128}
!45 = !{!"p1 _ZTS19WOLFSSL_BUFFER_INFO", !11, i64 0}
!46 = !{!39, !36, i64 104}
!47 = !{!"p1 _ZTS9DNS_entry", !11, i64 0}
!48 = !{!"SignatureCtx", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!49 = !{!"DecodedCert", !14, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !38, i64 80, !38, i64 88, !7, i64 96, !7, i64 116, !14, i64 136, !14, i64 144, !8, i64 152, !7, i64 156, !7, i64 157, !7, i64 413, !8, i64 672, !14, i64 680, !8, i64 688, !8, i64 692, !11, i64 696, !7, i64 704, !8, i64 736, !14, i64 744, !8, i64 752, !8, i64 756, !14, i64 760, !8, i64 768, !14, i64 776, !8, i64 784, !14, i64 792, !8, i64 800, !7, i64 804, !8, i64 824, !7, i64 828, !8, i64 848, !15, i64 852, !15, i64 854, !7, i64 856, !15, i64 858, !7, i64 860, !8, i64 864, !14, i64 872, !8, i64 880, !14, i64 888, !8, i64 896, !14, i64 904, !8, i64 912, !14, i64 920, !8, i64 928, !7, i64 932, !36, i64 936, !48, i64 944, !8, i64 1024, !8, i64 1028, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1035, !7, i64 1035, !7, i64 1035, !7, i64 1035, !7, i64 1035, !7, i64 1040, !7, i64 1232, !7, i64 1232}
!50 = !{!49, !8, i64 32}
!51 = !{!17, !11, i64 136}
!52 = !{!7, !7, i64 0}
!53 = !{!"p1 _ZTS11WOLFSSL_CTX", !11, i64 0}
!54 = !{!"p1 _ZTS6Arrays", !11, i64 0}
!55 = !{!"p1 _ZTS9HS_Hashes", !11, i64 0}
!56 = !{!"p1 _ZTS6WC_RNG", !11, i64 0}
!57 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !11, i64 0}
!58 = !{!"p1 _ZTS7WOLFSSL", !11, i64 0}
!59 = !{!"WOLFSSL_CIPHER", !7, i64 0, !7, i64 1, !58, i64 8}
!60 = !{!"p1 _ZTS3Aes", !11, i64 0}
!61 = !{!"p1 _ZTS6ChaCha", !11, i64 0}
!62 = !{!"Ciphers", !60, i64 0, !14, i64 8, !14, i64 16, !61, i64 24, !7, i64 32, !7, i64 33}
!63 = !{!"", !7, i64 0, !14, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !7, i64 28, !7, i64 29}
!64 = !{!"p1 _ZTS5DhKey", !11, i64 0}
!65 = !{!"Buffers", !63, i64 0, !63, i64 32, !25, i64 64, !25, i64 80, !25, i64 96, !25, i64 112, !25, i64 128, !8, i64 144, !8, i64 148, !7, i64 152, !7, i64 153, !7, i64 154, !7, i64 155, !25, i64 160, !25, i64 176, !25, i64 192, !25, i64 208, !64, i64 224, !21, i64 232, !21, i64 240, !7, i64 248, !7, i64 249, !7, i64 249, !8, i64 252, !8, i64 256, !21, i64 264, !8, i64 272, !7, i64 280}
!66 = !{!"p1 _ZTS15WOLFSSL_SESSION", !11, i64 0}
!67 = !{!"p1 _ZTS13ClientSession", !11, i64 0}
!68 = !{!"WOLFSSL_ALERT", !8, i64 0, !8, i64 4}
!69 = !{!"WOLFSSL_ALERT_HISTORY", !68, i64 0, !68, i64 8}
!70 = !{!"RecordLayerHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3}
!71 = !{!"MsgsReceived", !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 2, !15, i64 2, !15, i64 2}
!72 = !{!"ProtocolVersion", !7, i64 0, !7, i64 1}
!73 = !{!"CipherSpecs", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!74 = !{!"Keys", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 160, !7, i64 192, !7, i64 208, !7, i64 224, !7, i64 232, !7, i64 244, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !7, i64 280, !7, i64 281, !7, i64 282, !7, i64 283}
!75 = !{!"Options", !28, i64 0, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 15, !15, i64 15, !15, i64 15, !15, i64 15, !15, i64 15, !15, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !15, i64 40, !15, i64 42, !15, i64 44, !15, i64 46, !15, i64 48, !7, i64 50}
!76 = !{!"p1 _ZTS6RsaKey", !11, i64 0}
!77 = !{!"p1 _ZTS7ecc_key", !11, i64 0}
!78 = !{!"p1 _ZTS8Poly1305", !11, i64 0}
!79 = !{!"OneTimeAuth", !78, i64 0, !7, i64 8}
!80 = !{!"WOLFSSL", !53, i64 0, !27, i64 8, !27, i64 16, !54, i64 24, !7, i64 32, !7, i64 80, !55, i64 128, !11, i64 136, !11, i64 144, !56, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !57, i64 216, !11, i64 224, !8, i64 232, !59, i64 240, !11, i64 256, !62, i64 264, !62, i64 304, !65, i64 352, !66, i64 640, !67, i64 648, !69, i64 656, !68, i64 672, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !15, i64 708, !8, i64 712, !7, i64 716, !70, i64 717, !71, i64 722, !72, i64 726, !72, i64 728, !73, i64 730, !74, i64 748, !75, i64 1032, !76, i64 1088, !7, i64 1096, !7, i64 1097, !15, i64 1098, !7, i64 1100, !7, i64 1172, !15, i64 1174, !15, i64 1176, !7, i64 1178, !8, i64 1308, !8, i64 1312, !77, i64 1320, !7, i64 1328, !7, i64 1329, !77, i64 1336, !77, i64 1344, !15, i64 1352, !7, i64 1354, !8, i64 1356, !7, i64 1360, !8, i64 1364, !79, i64 1368, !29, i64 1384, !15, i64 1392, !8, i64 1396}
!81 = !{!80, !66, i64 640}
!82 = !{!"WOLFSSL_SESSION", !8, i64 0, !8, i64 4, !16, i64 8, !7, i64 12, !7, i64 44, !11, i64 48, !7, i64 56, !8, i64 60, !8, i64 64, !7, i64 68, !7, i64 100, !7, i64 101, !15, i64 150, !72, i64 152, !7, i64 154, !7, i64 155, !15, i64 156, !7, i64 158, !15, i64 178, !7, i64 180}
!83 = !{!82, !7, i64 100}
!84 = !{!82, !7, i64 56}
!85 = !{!"SessionRow", !8, i64 0, !8, i64 4, !7, i64 8}
!86 = !{!85, !8, i64 4}
!87 = !{!85, !8, i64 0}
!88 = !{!82, !8, i64 0}
!89 = !{!82, !8, i64 4}
!90 = !{!82, !11, i64 48}
!91 = !{!82, !15, i64 156}
!92 = !{!82, !8, i64 60}
!93 = !{!82, !8, i64 64}
!94 = !{!82, !15, i64 150}
!95 = !{!82, !7, i64 154}
!96 = !{!80, !7, i64 1053}
!97 = !{!82, !7, i64 155}
!98 = !{!80, !7, i64 1054}
!99 = !{!80, !53, i64 0}
!100 = !{!"ClientRow", !8, i64 0, !8, i64 4, !7, i64 8}
!101 = !{!100, !8, i64 4}
!102 = !{!100, !8, i64 0}
!103 = !{!"ClientSession", !15, i64 0, !15, i64 2, !8, i64 4}
!104 = !{!103, !15, i64 0}
!105 = !{!103, !15, i64 2}
!106 = !{!80, !8, i64 700}
!107 = !{!66, !66, i64 0}
!108 = !{!80, !54, i64 24}
!109 = !{!103, !8, i64 4}
!110 = !{!80, !56, i64 152}
!111 = !{!30, !23, i64 0}
!112 = !{!"WOLFSSL_METHOD", !72, i64 0, !7, i64 2, !7, i64 3}
!113 = !{!112, !7, i64 2}
!114 = !{!80, !7, i64 504}
!115 = !{!80, !7, i64 505}
!116 = !{!80, !7, i64 506}
!117 = !{!80, !21, i64 592}
!118 = !{!30, !21, i64 120}
!119 = !{!30, !21, i64 96}
!120 = !{!30, !11, i64 160}
!121 = !{!30, !8, i64 136}
!122 = !{!30, !7, i64 128}
!123 = !{!30, !8, i64 132}
!124 = !{!30, !15, i64 174}
!125 = !{!80, !15, i64 1072}
!126 = !{!30, !15, i64 176}
!127 = !{!80, !15, i64 1074}
!128 = !{!80, !8, i64 684}
!129 = !{!80, !11, i64 136}
!130 = !{!80, !8, i64 688}
!131 = !{!80, !11, i64 144}
!132 = !{!"CipherSuiteInfo", !14, i64 0, !14, i64 8, !7, i64 16, !7, i64 17, !7, i64 18}
!133 = !{!132, !14, i64 0}
!134 = !{!80, !8, i64 680}
!135 = !{!80, !21, i64 584}
!136 = !{!80, !8, i64 400}
!137 = !{!80, !8, i64 704}
!138 = !{!80, !7, i64 1048}
!139 = !{!80, !7, i64 1067}
!140 = !{!80, !11, i64 200}
!141 = !{!80, !11, i64 208}
!142 = !{!80, !7, i64 1066}
!143 = !{!80, !7, i64 1063}
!144 = !{!80, !8, i64 376}
!145 = !{!80, !8, i64 456}
!146 = !{!80, !14, i64 360}
!147 = !{!80, !8, i64 1364}
!148 = !{!30, !8, i64 336}
!149 = !{!80, !11, i64 176}
!150 = !{!80, !7, i64 1050}
!151 = !{!80, !7, i64 726}
!152 = !{!80, !7, i64 727}
!153 = !{!80, !8, i64 604}
!154 = !{!80, !27, i64 8}
!155 = !{!"llvm.loop.peeled.count", i32 1}
!156 = !{!30, !27, i64 152}
!157 = !{!"", !14, i64 0, !8, i64 8, !8, i64 12}
!158 = !{!157, !14, i64 0}
!159 = !{!157, !8, i64 8}
!160 = !{!157, !8, i64 12}
!161 = !{!14, !14, i64 0}
!162 = !{!112, !7, i64 3}
!163 = !{!30, !28, i64 184}
!164 = !{!80, !29, i64 1384}
!165 = !{!72, !7, i64 0}
!166 = !{!72, !7, i64 1}
!167 = !{!80, !7, i64 240}
!168 = !{!80, !7, i64 241}
!169 = !{!59, !58, i64 8}
!170 = !{!80, !28, i64 1032}
!171 = !{!"WOLFSSL_ASN1_TIME", !7, i64 0, !8, i64 32, !8, i64 36}
!172 = !{!"WOLFSSL_X509_NAME", !14, i64 0, !8, i64 8, !8, i64 12, !7, i64 16, !11, i64 272}
!173 = !{!"WOLFSSL_X509", !8, i64 0, !8, i64 4, !171, i64 8, !171, i64 48, !25, i64 88, !8, i64 104, !47, i64 112, !38, i64 120, !38, i64 128, !7, i64 136, !25, i64 144, !8, i64 160, !47, i64 168, !8, i64 176, !21, i64 184, !11, i64 192, !7, i64 200, !7, i64 201, !7, i64 202, !7, i64 234, !172, i64 496, !172, i64 776}
!174 = !{!173, !21, i64 184}
!175 = !{!"p1 _ZTS18WOLFSSL_X509_CHAIN", !11, i64 0}
!176 = !{!"WOLFSSL_X509_STORE_CTX", !175, i64 0, !14, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !45, i64 40, !11, i64 48, !11, i64 56, !8, i64 64}
!177 = !{!25, !14, i64 0}
!178 = !{!25, !8, i64 8}
!179 = !{!"p1 _ZTS11DecodedCert", !11, i64 0}
!180 = !{!"ProcPeerCertArgs", !45, i64 0, !45, i64 8, !179, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !7, i64 52, !15, i64 53, !15, i64 53, !15, i64 53}
!181 = !{!180, !8, i64 32}
!182 = !{!180, !45, i64 0}
!183 = !{!180, !179, i64 16}
!184 = distinct !{!184, !43}
!185 = distinct !{!185, !43}
!186 = !{!49, !15, i64 858}
!187 = !{!80, !67, i64 648}
!188 = !{!67, !67, i64 0}
!189 = !{!82, !7, i64 152}
!190 = !{!82, !7, i64 153}
!191 = !{!80, !7, i64 1065}
!192 = distinct !{!192, !43}
!193 = distinct !{!193, !43}
!194 = !{!30, !8, i64 224}
!195 = distinct !{!195, !43}
!196 = !{!82, !8, i64 8}
!197 = !{!"Arrays", !14, i64 0, !14, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !7, i64 28, !7, i64 60, !7, i64 92, !7, i64 124, !7, i64 125, !7, i64 173, !7, i64 221}
!198 = !{!197, !7, i64 124}
!199 = !{!30, !7, i64 168}
!200 = !{!80, !11, i64 168}
!201 = !{!30, !11, i64 216}
!202 = !{!80, !11, i64 160}
!203 = !{!80, !7, i64 1360}
!204 = !{!30, !8, i64 48}
!205 = !{!30, !15, i64 232}
!206 = !{!80, !15, i64 1352}
!207 = !{!30, !15, i64 182}
!208 = !{!80, !15, i64 1080}
!209 = !{!30, !15, i64 178}
!210 = !{!80, !15, i64 1078}
!211 = !{!80, !15, i64 1076}
!212 = distinct !{!212, !43}
!213 = distinct !{!213, !43}
!214 = !{!132, !7, i64 18}
!215 = !{!132, !14, i64 8}
!216 = distinct !{!216, !43}
!217 = distinct !{!217, !43}
!218 = distinct !{!218, !43}
!219 = !{!80, !7, i64 1062}
!220 = distinct !{!220, !43}
!221 = distinct !{!221, !43}
!222 = !{!80, !7, i64 1061}
!223 = !{!80, !8, i64 368}
!224 = !{!80, !8, i64 372}
!225 = !{!80, !8, i64 696}
!226 = !{!80, !8, i64 692}
!227 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41}
!228 = distinct !{!228, !155}
!229 = distinct !{!229, !155}
!230 = !{!"EncryptedInfo", !28, i64 0}
!231 = !{!230, !28, i64 0}
!232 = !{!80, !8, i64 608}
!233 = !{!15, !15, i64 0}
!234 = !{!80, !8, i64 624}
!235 = !{!30, !8, i64 112}
!236 = !{!49, !8, i64 28}
!237 = !{!49, !8, i64 864}
!238 = !{!80, !8, i64 1356}
!239 = !{!30, !8, i64 236}
!240 = !{!49, !14, i64 0}
!241 = !{!49, !8, i64 8}
!242 = !{!80, !7, i64 1097}
!243 = !{!30, !7, i64 180}
!244 = !{!80, !7, i64 600}
!245 = distinct !{!245, !43}
!246 = !{!80, !7, i64 507}
!247 = !{!80, !14, i64 512}
!248 = !{!80, !14, i64 528}
!249 = !{!80, !8, i64 520}
!250 = !{!80, !8, i64 536}
!251 = !{!30, !14, i64 64}
!252 = !{!30, !14, i64 80}
!253 = !{!30, !8, i64 72}
!254 = !{!30, !8, i64 88}
!255 = distinct !{!255, !43, !155}
!256 = distinct !{!256, !43, !155}
!257 = !{!80, !14, i64 416}
!258 = !{!80, !8, i64 424}
!259 = !{!80, !14, i64 432}
!260 = !{!80, !8, i64 440}
!261 = distinct !{!261, !43}
!262 = distinct !{!262, !43}
!263 = !{!"iovec", !11, i64 0, !28, i64 8}
!264 = !{!263, !28, i64 8}
!265 = !{!263, !11, i64 0}
!266 = !{!80, !7, i64 1064}
!267 = !{!80, !8, i64 1396}
!268 = !{!80, !7, i64 1052}
!269 = !{!80, !7, i64 1028}
!270 = !{!80, !7, i64 381}
!271 = !{!59, !7, i64 0}
!272 = !{!59, !7, i64 1}
!273 = !{!80, !15, i64 1098}
!274 = !{!80, !8, i64 1312}
!275 = distinct !{!275, !43}
!276 = distinct !{!276, !43}
!277 = distinct !{!277, !43, !281}
!278 = !{!"Suites", !15, i64 0, !15, i64 2, !7, i64 4, !7, i64 304, !7, i64 432}
!279 = !{!278, !15, i64 0}
!280 = !{!278, !15, i64 2}
!281 = !{!"llvm.loop.unswitch.partial.disable"}
!282 = !{!30, !29, i64 344}
!283 = !{!11, !11, i64 0}
!284 = !{!30, !7, i64 352}
!285 = !{!30, !11, i64 320}
!286 = !{!30, !11, i64 328}
!287 = distinct !{!287, !43}
!288 = !{!176, !11, i64 56}
!289 = !{!176, !8, i64 24}
!290 = !{!176, !8, i64 28}
end_hunk_0
