inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@current_box_on_cfp:bb.a
  br i1 %.not227.i, label %.lr.ph.i, label %VM_EP_RUBY_LEP.exit

.preheader3.i:                                    ; preds = %bb.a, %.preheader3.i
  %.0.i9 = phi ptr [ %i.k, %.preheader3.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %.0.i9, i64 56     ; 3 uses
  %.not24.i = icmp ult ptr %i.k, %i.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  tail call void @llvm.assume(i1 %.not24.i)
  %i.l = getelementptr i8, ptr %.0.i9, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15, !nonnull !64, !noundef !64 ; 2 uses
end_hunk_0
