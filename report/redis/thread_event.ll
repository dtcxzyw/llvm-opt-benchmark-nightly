inline.NumInlined: 26
inline.NumDeleted: 12
begin_hunk_0_@je_tsd_te_init:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.c, ptr %i.b, align 8, !tbaa !12
  %i.d = load i64, ptr @je_opt_tcache_gc_incr_bytes, align 8
end_hunk_0
begin_hunk_1_@je_tsd_te_init:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.k, ptr %i.l, align 8, !tbaa !12
  %spec.select57.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.3.ph.i)
  %.val.val.i = load i64, ptr %i.b, align 8, !tbaa !12
  %i.m = tail call i64 @llvm.umin.i64(i64 %spec.select57.i, i64 4194304)
  %i.n = add i64 %i.m, %.val.val.i                ; 3 uses
  store i64 %i.n, ptr %1, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !11
  %.not.i.i.i = icmp eq i8 %i.p, 0
end_hunk_1
begin_hunk_2_@je_tsd_te_init:bb.a
te_init.exit:                                     ; preds = %bb.e, %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !12
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !12
  %i.ac = load i64, ptr @je_opt_tcache_gc_incr_bytes, align 8
end_hunk_2
begin_hunk_3_@je_tsd_te_init:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !12
  %spec.select58.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %.5.ph.i)
  %.val.val.i3 = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ai = tail call i64 @llvm.umin.i64(i64 %spec.select58.i, i64 4194304)
  %i.aj = add i64 %i.ai, %.val.val.i3             ; 3 uses
  store i64 %i.aj, ptr %2, align 8, !tbaa !12
  %i.ak = load i8, ptr %i.o, align 8, !tbaa !11
  %.not.i.i.i4 = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
end_hunk_3
begin_hunk_4_@je_tsd_te_init:bb.a
  br label %te_init.exit8

bb.k:                                             ; preds = %bb.i
  %.val8.val.i.i.i5 = load i64, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.an = icmp ult i64 %.val8.val.i.i.i5, -4095
  %i.ao = select i1 %i.an, i64 %.val8.val.i.i.i5, i64 0
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !12
end_hunk_4
