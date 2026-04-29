inline.NumInlined: 24
inline.NumDeleted: 14
begin_hunk_0_@_ZN2v88internal10DateParser16ReadMillisecondsENS1_9DateTokenE:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.g, %vector.body ] ; 2 uses
  %vec.phi.a = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.g = mul <4 x i32> %vec.phi, splat (i32 10)   ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi.a, splat (i32 4)
  %i.h = icmp eq i32 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %.not18 = icmp ugt <4 x i32> %vec.phi.a, %broadcast.splat
  %i.i = select <4 x i1> %.not18, <4 x i32> %vec.phi, <4 x i32> %i.g
  %i.j = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.i)
  %i.k = sdiv i32 %1, %i.j
  br label %bb.f
end_hunk_0
