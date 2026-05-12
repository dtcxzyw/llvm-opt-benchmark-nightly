inline.NumInlined: 309
inline.NumDeleted: 127
begin_hunk_0_@_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.hermes::bigint::TmpStorage", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 1024, ptr %i.a, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_:bb.a
  store i32 1024, ptr %i.c, align 8, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %.pre.i.i, i8 0, i64 8192, i1 false), !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %5 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8192
  store ptr %5, ptr %i.e, align 8, !tbaa !148
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.f = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
end_hunk_1
