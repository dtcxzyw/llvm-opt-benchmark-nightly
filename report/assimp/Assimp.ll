inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.ci = shl nuw nsw i64 %n.vec535, 1
  %cmp.n548 = icmp eq i64 %n.vec535, %i.bq
  %min.iters.check506 = icmp ult i32 %i.z, 8
  %n.vec509 = and i64 %i.bm, 4294967288           ; 5 uses
  %i.cj = shl nuw nsw i64 %n.vec509, 1
  %i.ck = trunc nuw i64 %n.vec509 to i32
  %8 = shl nuw nsw i64 %n.vec509, 1
  %cmp.n524 = icmp eq i64 %n.vec509, %i.bm
  %i.cl = and i64 %i.bg, 1
  %lcmp.mod836.not.not = icmp eq i64 %i.cl, 0
end_hunk_0
begin_hunk_1_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a

vector.ph507:                                     ; preds = %.lr.ph382.preheader
  %i.xm = getelementptr i8, ptr %i.em, i64 %i.cj
  %i.xn = getelementptr i8, ptr %i.ed, i64 %8
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph507
  %index511 = phi i64 [ 0, %vector.ph507 ], [ %index.next522, %vector.body510 ] ; 3 uses
  %offset.idx512 = shl i64 %index511, 1
  %next.gep = getelementptr i8, ptr %i.em, i64 %offset.idx512
  %offset.idx513 = shl i64 %index511, 1           ; 8 uses
  %next.gep514.a = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %i.xo = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep515.a = getelementptr i8, ptr %i.xo, i64 2
  %i.xp = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep516.a = getelementptr i8, ptr %i.xp, i64 4
  %i.xq = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep517.a = getelementptr i8, ptr %i.xq, i64 6
  %i.xr = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep518.a = getelementptr i8, ptr %i.xr, i64 8
  %i.xs = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep519.a = getelementptr i8, ptr %i.xs, i64 10
  %i.xt = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.xt, i64 12
  %i.xu = getelementptr i8, ptr %i.ed, i64 %offset.idx513 ; 2 uses
  %next.gep521 = getelementptr i8, ptr %i.xu, i64 14
  %i.xv = load i8, ptr %next.gep514.a, align 1
  %i.xw = load i8, ptr %next.gep515.a, align 1
end_hunk_1
