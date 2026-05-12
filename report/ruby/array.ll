inline.NumInlined: 1460
inline.NumDeleted: 143
begin_hunk_0_@rb_ary_aset:bb.a
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.g = add i32 %0, -4
end_hunk_0
begin_hunk_1_@rb_ary_aset:bb.a
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store i64 %i.v, ptr %i.e, align 8, !tbaa !15
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15   ; 3 uses
  %i.y = trunc i64 %i.x to i1
end_hunk_1
begin_hunk_2_@rb_ary_aset:bb.a
  br label %rb_num2long_inline.exit21

rb_num2long_inline.exit21:                        ; preds = %bb.g, %bb.h
  %.0.i20 = phi i64 [ %i.z, %bb.g ], [ %i.aa, %bb.h ] ; 2 uses
  store i64 %.0.i20, ptr %i.f, align 8, !tbaa !15
  %i.ab = getelementptr i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
end_hunk_2
