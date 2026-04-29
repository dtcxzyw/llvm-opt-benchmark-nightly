inline.NumInlined: 39
inline.NumDeleted: 33
begin_hunk_0_@_ZN8Parallel7gathervI7double2EEvPKT_iPS2_PKi:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 2147483646               ; 4 uses
  %i.g = and i64 %i.d, 1
  %i.h = shl nuw nsw i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %4 = shl nuw nsw i64 %n.vec, 4
  %i.j = getelementptr i8, ptr %0, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 4                 ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %5 = getelementptr i8, ptr %2, i64 %offset.idx
  %next.gep11.a = getelementptr i8, ptr %5, i64 16
  %offset.idx12 = shl i64 %index, 4               ; 2 uses
  %next.gep13.a = getelementptr i8, ptr %0, i64 %offset.idx12
  %i.k = getelementptr i8, ptr %0, i64 %offset.idx12
  %next.gep14 = getelementptr i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %next.gep13.a, align 8
  %wide.load15 = load <2 x double>, ptr %next.gep14, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load15, ptr %next.gep11.a, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !8
end_hunk_0
