inline.NumInlined: 743
inline.NumDeleted: 339
begin_hunk_0_@_ZNK5folly11IPAddressV48inSubnetENS_5RangeIPKcEE:bb.a
  br label %common.resume

_ZN5folly11IPAddressV49fetchMaskEm.exit:          ; preds = %_ZNK5folly9IPAddress4asV4Ev.exit
  %narrow = sub nuw nsw i8 32, %i.ab
  %i.af = zext nneg i8 %narrow to i64
  %8 = shl nsw i64 -1, %i.af
  %i.ag = trunc i64 %8 to i32
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = load i32, ptr %0, align 4
end_hunk_0
begin_hunk_1_@_ZN5folly11IPAddressV49fetchMaskEm:bb.a
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %1 = sub nuw nsw i64 32, %0
  %2 = shl nsw i64 -1, %1
  %i.d = trunc i64 %2 to i32
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %i.d)
  ret i32 %i.e
}
end_hunk_1
begin_hunk_2_@_ZNK5folly11IPAddressV44maskEm:bb.a

_ZN5folly11IPAddressV49fetchMaskEm.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %6 = sub nuw nsw i64 32, %1
  %7 = shl nsw i64 -1, %6
  %i.k = trunc i64 %7 to i32
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %i.n = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> zeroinitializer
end_hunk_2
