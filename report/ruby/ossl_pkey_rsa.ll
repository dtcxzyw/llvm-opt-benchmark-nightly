inline.NumInlined: 48
inline.NumDeleted: 19
begin_hunk_0_@rb_define_method
; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_rsa_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
end_hunk_0
begin_hunk_1_@ossl_rsa_initialize:bb.a
.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g
  %i.y = phi i64 [ %i.x, %bb.g ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 1, %bb.g ], [ 0, %.preheader.preheader ] ; 4 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !10
  %i.z = icmp samesign ult i32 %.286.i, %0
  br i1 %i.z, label %bb.h, label %bb.i

end_hunk_1
begin_hunk_2_@ossl_rsa_initialize:bb.a

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.ai = tail call i64 @ossl_pem_passwd_value(i64 noundef %i.ae) #5
  %3 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aj = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #5
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !10
  %i.ak = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #5 ; 7 uses
  %i.al = call ptr @d2i_RSAPublicKey_bio(ptr noundef %i.ak, ptr noundef null) #5 ; 2 uses
end_hunk_2
begin_hunk_3_@ossl_rsa_sign_pss:bb.a
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
end_hunk_3
begin_hunk_4_@ossl_rsa_sign_pss:bb.a
  %i.am = call ptr @ossl_evp_md_fetch(i64 noundef %i.al, ptr noundef nonnull %i.c) #5
  %i.an = call ptr @GetPrivPKeyPtr(i64 noundef %2) #5 ; 2 uses
  %i.ao = call i32 @EVP_PKEY_get_size(ptr noundef %i.an) #5
  %i.ap = sext i32 %i.ao to i64
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !10
  %i.aq = call ptr @ossl_evp_md_fetch(i64 noundef %i.s, ptr noundef nonnull %i.d) #5
  %i.ar = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %3 = load i64, ptr %i.f, align 8, !tbaa !10
  %i.as = call i64 @rb_str_new(ptr noundef null, i64 noundef %3) #5, !callees !31 ; 3 uses
  %i.at = call ptr @EVP_MD_CTX_new() #5           ; 6 uses
  %.not19 = icmp eq ptr %i.at, null
  br i1 %.not19, label %bb.u, label %bb.l
end_hunk_4
