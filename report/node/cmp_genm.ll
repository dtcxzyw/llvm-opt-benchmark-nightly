inline.NumInlined: 34
inline.NumDeleted: 15
begin_hunk_0_@OSSL_CMP_get1_caCerts:bb.a
  br label %bb.i

bb.i:                                             ; preds = %ossl_X509_check.exit.i.a, %.lr.ph.i
  %.02.i = phi i1 [ true, %.lr.ph.i ], [ %2, %ossl_X509_check.exit.i.a ]
  %.0101.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ah, %ossl_X509_check.exit.i.a ] ; 2 uses
  %i.s = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.h, i32 noundef %.0101.i) #5 ; 5 uses
  %i.t = call i32 @X509_get_extension_flags(ptr noundef %i.s) #5
end_hunk_0
begin_hunk_1_@OSSL_CMP_get1_caCerts:bb.a
bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i32 %i.t, 80
  %or.cond.i.i = icmp eq i32 %i.ad, 0
  br i1 %or.cond.i.i, label %bb.l, label %ossl_X509_check.exit.i.a

bb.l:                                             ; preds = %bb.k
  %i.ae = call ptr @X509_get_subject_name(ptr noundef %i.s) #5
end_hunk_1
begin_hunk_2_@OSSL_CMP_get1_caCerts:bb.a
  call void @CRYPTO_free(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef 31) #5
  br label %ossl_X509_check.exit.i.a

ossl_X509_check.exit.i.a:                         ; preds = %bb.l, %bb.k
  %.1.i.i = phi i1 [ %i.x, %bb.k ], [ false, %bb.l ]
  %2 = select i1 %.1.i.i, i1 %.02.i, i1 false     ; 2 uses
  %i.ah = add nuw nsw i32 %.0101.i, 1             ; 2 uses
  %i.ai = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.h) #5
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %ossl_X509_check_all.exit, !llvm.loop !12

ossl_X509_check_all.exit:                         ; preds = %ossl_X509_check.exit.i.a
  br i1 %2, label %ossl_X509_check_all.exit.thread, label %bb.n

ossl_X509_check_all.exit.thread:                  ; preds = %get0_trustedStore_vpm.exit, %ossl_X509_check_all.exit
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !9
end_hunk_2
