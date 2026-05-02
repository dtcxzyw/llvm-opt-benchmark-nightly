inline.NumInlined: 52
inline.NumDeleted: 3
begin_hunk_0_@d2i_PUBKEY_int:bb.a
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond = or i1 %i.d, %i.e
  %6 = icmp ne i32 %5, 0
  %or.cond3 = or i1 %or.cond, %6
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@d2i_PUBKEY_ex:bb.a

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PUBKEY(ptr noundef captures(address_is_null) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %5 = load ptr, ptr %1, align 8, !tbaa !49
  store ptr %5, ptr %4, align 8, !tbaa !49
  %6 = call ptr @ASN1_item_d2i(ptr noundef null, ptr noundef nonnull %4, i64 noundef %2, ptr noundef nonnull @X509_PUBKEY_it.local_it) #9 ; 3 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %d2i_PUBKEY_int.exit, label %8

8:                                                ; preds = %3
  %9 = call ptr @X509_PUBKEY_get(ptr noundef nonnull %6) ; 4 uses
  call void @ASN1_item_free(ptr noundef nonnull %6, ptr noundef nonnull @X509_PUBKEY_it.local_it) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %d2i_PUBKEY_int.exit, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !tbaa !49
  store ptr %12, ptr %1, align 8, !tbaa !49
  %.not29.i = icmp eq ptr %0, null
  br i1 %.not29.i, label %d2i_PUBKEY_int.exit, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  call void @EVP_PKEY_free(ptr noundef %14) #9
  store ptr %9, ptr %0, align 8, !tbaa !46
  br label %d2i_PUBKEY_int.exit

d2i_PUBKEY_int.exit:                              ; preds = %3, %8, %11, %13
  %.0.i = phi ptr [ null, %3 ], [ null, %8 ], [ %9, %13 ], [ %9, %11 ]
  call void @ASN1_item_free(ptr noundef null, ptr noundef nonnull @X509_PUBKEY_it.local_it) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
end_hunk_1
