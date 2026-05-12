inline.NumInlined: 63
inline.NumDeleted: 22
begin_hunk_0_@ossl_x509ext_alloc:bb.a
; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_x509ext_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
end_hunk_0
begin_hunk_1_@ossl_x509ext_initialize:bb.a
  br i1 %i.y, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.z = load i64, ptr %1, align 8, !tbaa !10     ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !10
  %.not51 = icmp eq i32 %0, 1
  br i1 %.not51, label %bb.h, label %bb.g

end_hunk_1
begin_hunk_2_@ossl_x509ext_initialize:bb.a
  %i.bb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 4) #5 ; 3 uses
  store i64 %i.bb, ptr @ossl_x509ext_initialize.rbimpl_id, align 8, !tbaa !10
  %.not.i18 = icmp eq i64 %i.bb, 0
  br i1 %.not.i18, label %.lr.ph.i, label %rbimpl_intern_const.exit.loopexit, !llvm.loop !47

rbimpl_intern_const.exit.loopexit:                ; preds = %.lr.ph.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %rbimpl_intern_const.exit

rbimpl_intern_const.exit:                         ; preds = %rbimpl_intern_const.exit.loopexit, %bb.o
  %3 = phi i64 [ %i.z, %bb.o ], [ %.pre, %rbimpl_intern_const.exit.loopexit ]
  %.lcssa.i = phi i64 [ %.pr.i, %bb.o ], [ %i.bb, %rbimpl_intern_const.exit.loopexit ]
  %i.bc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef %3) #5 ; 0 uses
  %.pr.i19 = load i64, ptr @ossl_x509ext_initialize.rbimpl_id.41, align 8, !tbaa !10 ; 2 uses
  %.not4.i20 = icmp eq i64 %.pr.i19, 0
  br i1 %.not4.i20, label %.lr.ph.i22, label %rbimpl_intern_const.exit24
end_hunk_2
