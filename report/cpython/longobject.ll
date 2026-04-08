inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0_@k_mul:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_PyFreeList_Push.exit.i.i.i.i209, %bb.ae, %bb.aa, %v_iadd.exit
  %i.ge = sub nuw nsw i64 %.039.i245, %i.ds       ; 2 uses
  %i.gf = add i64 %i.ds, %.041.i244
  %.not.i121 = icmp eq i64 %i.ge, 0
  br i1 %.not.i121, label %._crit_edge, label %bb.y
end_hunk_0
begin_hunk_1_@kmul_split:bb.a
  %.val = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = lshr i64 %.val, 3                        ; 2 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 4 uses
  %i.d = sub nuw nsw i64 %i.b, %i.c               ; 2 uses
  %i.e = tail call fastcc ptr @long_alloc(i64 noundef %i.d) ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.b
end_hunk_1
begin_hunk_2_@kmul_split:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.m, i64 %i.n, i1 false)
  %i.o = getelementptr i8, ptr %i.e, i64 24
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.c
  %i.q = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr align 4 %i.p, i64 %i.q, i1 false)
  %i.r = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !25 ; 2 uses
end_hunk_2
