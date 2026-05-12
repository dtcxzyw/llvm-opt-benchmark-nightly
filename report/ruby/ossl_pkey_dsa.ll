inline.NumInlined: 25
inline.NumDeleted: 14
begin_hunk_0_@rb_define_method
; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_dsa_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
end_hunk_0
begin_hunk_1_@ossl_dsa_initialize:bb.a
.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g
  %i.y = phi i64 [ %i.x, %bb.g ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 1, %bb.g ], [ 0, %.preheader.preheader ] ; 4 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !10
  %i.z = icmp samesign ult i32 %.286.i, %0
  br i1 %i.z, label %bb.h, label %bb.i

end_hunk_1
begin_hunk_2_@ossl_dsa_initialize:bb.a

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.ai = tail call i64 @ossl_pem_passwd_value(i64 noundef %i.ae) #5
  %3 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aj = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #5
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !10
  %i.ak = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #5 ; 5 uses
  %i.al = call ptr @PEM_ASN1_read_bio(ptr noundef nonnull @d2i_DSAPublicKey, ptr noundef nonnull @.str.18, ptr noundef %i.ak, ptr noundef null, ptr noundef null, ptr noundef null) #5 ; 3 uses
end_hunk_2
