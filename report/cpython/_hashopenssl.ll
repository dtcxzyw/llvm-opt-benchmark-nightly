inline.NumInlined: 180
inline.NumDeleted: 73
begin_hunk_0_@_hashlib_scrypt:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.g = add i64 %2, -5
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
end_hunk_0
begin_hunk_1_@_hashlib_hmac_new:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1                           ; 2 uses
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.g = icmp ult i64 %i.e, 3
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
end_hunk_1
