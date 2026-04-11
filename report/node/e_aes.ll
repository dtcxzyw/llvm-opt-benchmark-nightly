inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@aesni_ocb_init_key:bb.a
; Function Attrs: nounwind uwtable
define internal i32 @aes_ocb_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 500 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59
  %.not = icmp eq i32 %i.c, 0
end_hunk_0
begin_hunk_1_@aes_ocb_cipher:bb.a
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 736 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !5
  %i.j = sext i32 %i.i to i64
end_hunk_1
begin_hunk_2_@aes_ocb_cipher:bb.a
  br label %.thread

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0115 = phi ptr [ %4, %bb.e ], [ %5, %bb.f ]   ; 5 uses
  %.0114 = phi ptr [ %i.g, %bb.e ], [ %i.h, %bb.f ] ; 5 uses
  %i.n = load i32, ptr %.0114, align 4, !tbaa !5  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.q
end_hunk_2
