inline.NumInlined: 25
begin_hunk_0_@png_push_read_sig:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.l, i64 %..i, i1 false)
  %i.m = sub nuw i64 %spec.select, %..i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i
  %i.o = sub i64 %i.f, %..i                       ; 2 uses
  store i64 %i.o, ptr %i.e, align 8, !tbaa !29
  %i.p = sub nuw i64 %i.j, %..i
  store i64 %i.p, ptr %i.i, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i
  store ptr %i.q, ptr %i.k, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@png_push_read_sig:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.035.i, ptr align 1 %i.v, i64 %.036..i, i1 false)
  %i.w = sub i64 %i.r, %.036..i
  store i64 %i.w, ptr %i.e, align 8, !tbaa !29
  %i.x = sub nuw i64 %i.t, %.036..i
  store i64 %i.x, ptr %i.s, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.036..i
  store ptr %i.y, ptr %i.u, align 8, !tbaa !30
end_hunk_1
begin_hunk_2_@png_push_read_IDAT:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %..i
  %i.p = sub nuw i64 %i.h, %..i                   ; 2 uses
  store i64 %i.p, ptr %i.g, align 8, !tbaa !29
  %i.q = sub nuw i64 %i.k, %..i
  store i64 %i.q, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %..i
  store ptr %i.r, ptr %i.l, align 8, !tbaa !39
end_hunk_2
begin_hunk_3_@png_push_read_IDAT:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.035.i85, ptr align 1 %i.w, i64 %.036..i, i1 false)
  %i.x = sub nuw i64 %i.s, %.036..i
  store i64 %i.x, ptr %i.g, align 8, !tbaa !29
  %i.y = sub nuw i64 %i.u, %.036..i
  store i64 %i.y, ptr %i.t, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.036..i
  store ptr %i.z, ptr %i.v, align 8, !tbaa !30
end_hunk_3
begin_hunk_4_@png_push_fill_buffer:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %., i1 false)
  %i.f = sub nuw i64 %2, %.
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
end_hunk_4
