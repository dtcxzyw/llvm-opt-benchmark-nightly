begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_provider_find(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ossl_provider_st, align 8   ; 5 uses
  %i.a = tail call ptr @ossl_lib_ctx_get_data(ptr noundef %0, i32 noundef 1) #12 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %get_provider_store.exit.thread, label %get_provider_store.exit
end_hunk_0
begin_hunk_1
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.g) #12
  %.not21.not = icmp eq i32 %i.h, 0
  br i1 %.not21.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2
bb.i:                                             ; preds = %ossl_provider_up_ref.exit.thread, %ossl_provider_up_ref.exit
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ossl_provider_up_ref.exit, %.thread, %bb.f, %bb.d
  %spec.select25 = phi ptr [ null, %bb.d ], [ null, %.thread ], [ null, %bb.f ], [ null, %bb.i ], [ %i.p, %ossl_provider_up_ref.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.k

bb.k:                                             ; preds = %get_provider_store.exit.thread, %bb.j
  %.1 = phi ptr [ %spec.select25, %bb.j ], [ null, %get_provider_store.exit.thread ]
  ret ptr %.1
}

end_hunk_2
