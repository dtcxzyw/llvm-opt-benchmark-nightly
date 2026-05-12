inline.NumInlined: 58
inline.NumDeleted: 26
begin_hunk_0_@rb_define_method
; Function Attrs: nounwind uwtable
define internal range(i64 1, -7) i64 @ossl_x509req_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@ossl_x509req_initialize:bb.a

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.m = icmp slt i32 %0, 0
  br i1 %i.m, label %bb.c, label %.preheader.split.split

.preheader.split.split:                           ; preds = %rb_check_frozen_inline.exit
  %.not28 = icmp eq i32 %0, 0
  br i1 %.not28, label %rb_scan_args_set.exit.thread, label %.preheader.split.split.a

.preheader.split.split.a:                         ; preds = %.preheader.split.split
  %3 = load i64, ptr %1, align 8, !tbaa !27       ; 2 uses
  %4 = icmp eq i32 %0, 1
  store i64 %3, ptr %i.a, align 8, !tbaa !27
  br i1 %4, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.split.split.a, %rb_check_frozen_inline.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #8
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader.split.split.a
  %i.n = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #7
  store i64 %i.n, ptr %i.a, align 8, !tbaa !27
  %i.o = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #7 ; 5 uses
end_hunk_1
begin_hunk_2_@ossl_x509req_initialize:bb.a
  call void @X509_REQ_free(ptr noundef %i.d) #7
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %2
}
end_hunk_2
