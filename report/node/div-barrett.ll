begin_hunk_0
  %i.bf = add i32 %i.be, 2
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = add nuw nsw i32 %i.bg, 1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %4) ; 3 uses
  %i.bi = sub nuw i32 %4, %.sroa.speculated
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj
  %i.bl = add i32 %.sroa.speculated, %i.bd
  %.sroa.speculated.i.i132 = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.bl) ; 3 uses
  store ptr %i.bk, ptr %9, align 8
  store i32 %.sroa.speculated, ptr %.sroa.4165.0..sroa_idx, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bb, i32 %.sroa.speculated.i.i132, ptr %.sroa.0194.0.copyload, i32 %i.bd, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %9) #10
  %i.bm = load i32, ptr %i.ax, align 8
  %i.bn = icmp eq i32 %i.bm, 1
end_hunk_0
