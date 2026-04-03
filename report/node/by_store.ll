begin_hunk_0
; Function Attrs: nounwind uwtable
define internal i32 @by_store_subject(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = tail call ptr @OSSL_STORE_SEARCH_by_name(ptr noundef %2) #4 ; 3 uses
  %i.b = tail call ptr @X509_LOOKUP_get_method_data(ptr noundef %0) #4 ; 3 uses
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %.critedge.critedge

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw nsw i32 %.091.i, 1               ; 2 uses
  %i.f = tail call i32 @OPENSSL_sk_num(ptr noundef %i.b) #4
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.critedge.critedge, !llvm.loop !9

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.091.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = tail call ptr @OPENSSL_sk_value(ptr noundef %i.b, i32 noundef %.091.i) #4
  %i.i = tail call fastcc i32 @cache_objects(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.a, i32 noundef 1)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %by_store.exit.a

by_store.exit.a:                                  ; preds = %.lr.ph.i
  %4 = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4
  %5 = tail call ptr @X509_STORE_get0_objects(ptr noundef %4) #4
  tail call void @OSSL_STORE_SEARCH_free(ptr noundef %i.a) #4
  %i.j = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4 ; 2 uses
  %i.k = tail call i32 @ossl_x509_store_read_lock(ptr noundef %i.j) #4
  %.not34.not = icmp eq i32 %i.k, 0
end_hunk_0
begin_hunk_1
  tail call void @X509_CRL_free(ptr noundef %i.u) #4
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.b, %bb.a
  %6 = tail call ptr @X509_LOOKUP_get_store(ptr noundef %0) #4
  %7 = tail call ptr @X509_STORE_get0_objects(ptr noundef %6) #4 ; 0 uses
  tail call void @OSSL_STORE_SEARCH_free(ptr noundef %i.a) #4
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %by_store.exit.a, %bb.c, %bb.g, %bb.h, %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %by_store.exit.a ], [ 0, %bb.d ], [ %i.p, %bb.f ], [ 0, %bb.e ], [ %i.t, %bb.h ], [ 0, %bb.g ], [ 0, %.critedge.critedge ]
  ret i32 %.1
}

end_hunk_1
