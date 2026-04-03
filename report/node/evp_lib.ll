begin_hunk_0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %0) ; 4 uses
  %i.c = icmp ult i32 %i.b, 17
  br i1 %i.c, label %bb.c, label %.critedge, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @ASN1_TYPE_get_octetstring(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.b) #13
  %.not16 = icmp eq i32 %i.d, %i.b
  br i1 %.not16, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @EVP_CipherInit_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef -1) #13
  %.not17.not = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %spec.select = select i1 %.not17.not, i32 -1, i32 %i.b
  br label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %.critedge
  %.1 = phi i32 [ -1, %.critedge ], [ %spec.select, %bb.d ], [ 0, %bb.a ]
  ret i32 %.1
}

end_hunk_0
