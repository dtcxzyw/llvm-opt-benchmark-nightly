inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@ossl_prov_ml_dsa_new:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @ossl_prov_ctx_get_bool_param(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1) #5
  %.not18 = icmp eq i32 %i.d, 0                   ; 4 uses
  %. = select i1 %.not18, i32 0, i32 2
  %.20 = select i1 %.not18, i32 2, i32 0
  %i.e = tail call i32 @ossl_prov_ctx_get_bool_param(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  %.not19 = icmp eq i32 %i.e, 0                   ; 2 uses
  %3 = select i1 %.not18, i32 1, i32 3
  %4 = select i1 %.not18, i32 3, i32 1
  %.114 = select i1 %.not19, i32 %., i32 %3
  %.1 = select i1 %.not19, i32 %4, i32 %.20
  %i.f = tail call i32 @ossl_ml_dsa_set_prekey(ptr noundef nonnull %i.c, i32 noundef %.114, i32 noundef %.1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.d

end_hunk_0
