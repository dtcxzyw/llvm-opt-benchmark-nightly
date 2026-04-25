inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@monitoring_get_events_impl:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 223456
  %i.f = shl nuw nsw i32 1, %0                    ; 4 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i32
  %i.i = lshr i32 %i.h, %0
  %i.j = and i32 %i.i, 1
  %i.k = getelementptr i8, ptr %i.d, i64 223457
  %1 = load <12 x i8>, ptr %i.k, align 1, !tbaa !39
  %2 = zext <12 x i8> %1 to <12 x i32>
  %3 = insertelement <12 x i32> poison, i32 %i.f, i64 0
  %4 = shufflevector <12 x i32> %3, <12 x i32> poison, <12 x i32> zeroinitializer
  %5 = and <12 x i32> %4, %2
  %6 = icmp eq <12 x i32> %5, zeroinitializer
  %7 = select <12 x i1> %6, <12 x i32> zeroinitializer, <12 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096>
  %i.l = getelementptr i8, ptr %i.d, i64 223469
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  %i.n = zext i8 %i.m to i32
end_hunk_0
begin_hunk_1_@monitoring_get_events_impl:bb.a
  %i.y = and i32 %i.f, %i.x
  %.not.15.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.15.i, i32 0, i32 32768
  %i.aa = tail call i32 @llvm.vector.reduce.or.v12i32(<12 x i32> %7)
  %op.rdx = or disjoint i32 %i.aa, %i.p
  %op.rdx4 = or disjoint i32 %i.u, %i.z
  %op.rdx5 = or disjoint i32 %op.rdx, %op.rdx4
  %op.rdx6 = or disjoint i32 %op.rdx5, %i.j
  br label %bb.c

bb.c:                                             ; preds = %check_valid_tool.exit, %bb.b
end_hunk_1
