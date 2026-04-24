inline.NumInlined: 2001
inline.NumDeleted: 588
begin_hunk_0_@_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandReadUnalignedEiNS0_11MachineTypeE:bb.a
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 4, %bb.b ], [ 2, %bb.a ]      ; 2 uses
  %.016.a = phi i32 [ 4, %bb.b ], [ 2, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.a = add i8 %.sroa.2.0.extract.trunc, -2
end_hunk_0
begin_hunk_1_@_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandReadUnalignedEiNS0_11MachineTypeE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 107 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %spec.select.peel = select i1 %switch.selectcmp, i16 514, i16 770
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.i = sext i32 %i.c to i64
end_hunk_1
begin_hunk_2_@_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandReadUnalignedEiNS0_11MachineTypeE:bb.a
  %i.aa = zext nneg i32 %i.b to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = add nsw i64 %.016, -1
  br label %.lr.ph

bb.g:                                             ; preds = %.peel.next, %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
end_hunk_2
begin_hunk_3_@_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandReadUnalignedEiNS0_11MachineTypeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.016
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.g, !llvm.loop !513

._crit_edge:                                      ; preds = %.lr.ph
end_hunk_3
