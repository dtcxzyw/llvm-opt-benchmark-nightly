inline.NumInlined: 82
inline.NumDeleted: 14
begin_hunk_0_@ssl3_comp_find:bb.a

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %2, align 8, !tbaa !170
  %i.c = call i32 @OPENSSL_sk_find(ptr noundef nonnull %0, ptr noundef nonnull %2) #13 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d
end_hunk_0
