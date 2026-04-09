inline.NumInlined: 173
inline.NumDeleted: 54
begin_hunk_0_@zlib_compress:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
end_hunk_0
begin_hunk_1_@zlib_decompress:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
end_hunk_1
