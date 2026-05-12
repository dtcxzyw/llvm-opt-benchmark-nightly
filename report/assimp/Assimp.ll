inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL28stbi__compute_transparency16P9stbi__pngPti:bb.a
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %2 = load i16, ptr %0, align 2, !alias.scope !174
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %3 = shl nsw i64 %n.vec, 2
  %4 = getelementptr i8, ptr %.24.val, i64 %3
  %5 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZL28stbi__compute_transparency16P9stbi__pngPti:bb.a
  br i1 %i.z, label %.lr.ph7.preheader7, label %vector.body, !llvm.loop !179

.lr.ph7.preheader7:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph7.preheader
  %.06.ph = phi ptr [ %.24.val, %vector.memcheck ], [ %.24.val, %.lr.ph7.preheader ], [ %4, %vector.body ] ; 2 uses
  %.0225.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.preheader ], [ %5, %vector.body ] ; 4 uses
  %i.aa = sub i32 %i.a, %.0225.ph
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_1
