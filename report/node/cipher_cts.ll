inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@cts128_cs3_decrypt:bb.a
bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %3, 15                           ; 6 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %spec.store.select = select i1 %i.i, i64 16, i64 %i.h ; 2 uses
  %i.j = add nuw nsw i64 %spec.store.select, 16   ; 2 uses
  %i.k = sub i64 %3, %i.j                         ; 3 uses
  %.not = icmp eq i64 %3, %i.j
  br i1 %.not, label %bb.f, label %bb.d

end_hunk_0
begin_hunk_1_@cts128_cs3_decrypt:bb.a

bb.h:                                             ; preds = %do_xor.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %do_xor.exit, %bb.f, %bb.d, %bb.h, %bb.b
  %.044 = phi i64 [ 0, %bb.d ], [ %i.g, %bb.b ], [ %3, %bb.h ], [ 0, %bb.f ], [ 0, %do_xor.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
end_hunk_1
