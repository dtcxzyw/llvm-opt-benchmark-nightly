inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@monitoring_get_events_impl:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 223456
  %i.f = shl nuw nsw i32 1, %0                    ; 5 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i32
  %i.i = lshr i32 %i.h, %0
  %i.j = and i32 %i.i, 1
  %1 = getelementptr i8, ptr %i.d, i64 223457
  %2 = load <8 x i8>, ptr %1, align 1, !tbaa !39
  %3 = zext <8 x i8> %2 to <8 x i32>
  %4 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %5 = shufflevector <8 x i32> %4, <8 x i32> poison, <8 x i32> zeroinitializer
  %6 = and <8 x i32> %5, %3
  %7 = icmp eq <8 x i32> %6, zeroinitializer
  %8 = select <8 x i1> %7, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256> ; 2 uses
  %i.k = getelementptr i8, ptr %i.d, i64 223465
  %9 = load <4 x i8>, ptr %i.k, align 1, !tbaa !39
  %10 = zext <4 x i8> %9 to <4 x i32>
  %11 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = and <4 x i32> %12, %10
  %14 = icmp eq <4 x i32> %13, zeroinitializer
  %15 = select <4 x i1> %14, <4 x i32> zeroinitializer, <4 x i32> <i32 512, i32 1024, i32 2048, i32 4096>
  %i.l = getelementptr i8, ptr %i.d, i64 223469
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  %i.n = zext i8 %i.m to i32
end_hunk_0
begin_hunk_1_@monitoring_get_events_impl:bb.a
  %i.y = and i32 %i.f, %i.x
  %.not.15.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.15.i, i32 0, i32 32768
  %16 = shufflevector <8 x i32> %8, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or disjoint <4 x i32> %16, %15
  %17 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x i32> %17, <8 x i32> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aa = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %18)
  %op.rdx = or i32 %i.aa, %i.p
  %op.rdx4 = or disjoint i32 %i.u, %i.z
  %op.rdx5 = or i32 %op.rdx, %op.rdx4
  %op.rdx6 = or i32 %op.rdx5, %i.j
  br label %bb.c

bb.c:                                             ; preds = %check_valid_tool.exit, %bb.b
end_hunk_1
