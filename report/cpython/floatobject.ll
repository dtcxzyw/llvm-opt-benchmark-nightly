inline.NumInlined: 182
inline.NumDeleted: 43
begin_hunk_0_@float_pow:bb.a
  br i1 %i.ci, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.cj = tail call double @llvm.trunc.f64(double %.0100102105)
  %i.ck = fcmp une double %i.cj, %.0100102105
  br i1 %i.ck, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_0
begin_hunk_1_@float_as_integer_ratio:bb.a
  %.064124126.i = phi double [ %.064.i, %bb.h ], [ -1.000000e+00, %bb.d ]
  %i.s = call double @frexp(double noundef %.064124126.i, ptr noundef nonnull %i.a) #17, !inline_history !238 ; 4 uses
  %.promoted.i = load i32, ptr %i.a, align 4      ; 2 uses
  %i.t = tail call double @llvm.trunc.f64(double %i.s)
  %i.u = fcmp une double %i.t, %i.s
  br i1 %i.u, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
end_hunk_1
begin_hunk_2_@float_as_integer_ratio:bb.a
  %i.x = add i32 %i.v, -1                         ; 2 uses
  %i.y = add nuw nsw i32 %.020104.i, 1
  %i.z = icmp samesign ult i32 %.020104.i, 299
  %i.aa = tail call double @llvm.trunc.f64(double %i.w)
  %i.ab = fcmp une double %i.aa, %i.w
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !239

end_hunk_2
begin_hunk_3_@float_is_integer:bb.a
bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #20, !inline_history !254
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.g = tail call double @llvm.trunc.f64(double %i.a)
  %i.h = fcmp oeq double %i.g, %i.a
  %i.i = select i1 %i.h, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
end_hunk_3
begin_hunk_4_@_PyInterpreterState_Main

declare i32 @_PyStructSequence_InitBuiltinWithFlags(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

end_hunk_4
