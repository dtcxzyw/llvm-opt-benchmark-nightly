inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@MSalignmm_rec:bb.a

vector.ph364:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf365 = and i64 %i.mu, 28
  %n.vec366 = and i64 %i.mu, 4294967264           ; 6 uses
  %.cast367 = trunc nuw i64 %n.vec366 to i32
  %i.mw = sub i32 %i.mt, %.cast367
  %i.mx = sub nsw i64 0, %n.vec366
  %i.my = getelementptr i8, ptr %.092144.i.i, i64 %i.mx ; 2 uses
  %14 = sub nsw i64 0, %n.vec366
  %i.mz = getelementptr i8, ptr %.096143.i.i, i64 %14 ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph364
  %index369 = phi i64 [ 0, %vector.ph364 ], [ %index.next374.a, %vector.body368 ] ; 3 uses
  %offset.idx370 = sub i64 0, %index369
  %next.gep371 = getelementptr i8, ptr %.092144.i.i, i64 %offset.idx370 ; 2 uses
  %offset.idx372 = sub i64 0, %index369
  %next.gep373.a = getelementptr i8, ptr %.096143.i.i, i64 %offset.idx372 ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %next.gep373.a, i64 -16
  %i.nb = getelementptr inbounds i8, ptr %next.gep373.a, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.na, align 1, !tbaa !40
end_hunk_0
begin_hunk_1_@MSalignmm_rec:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec366, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec381 = and i64 %i.mu, 4294967292           ; 5 uses
  %.cast382 = trunc nuw i64 %n.vec381 to i32
  %i.nf = sub i32 %i.mt, %.cast382
  %i.ng = sub nsw i64 0, %n.vec381
  %i.nh = getelementptr i8, ptr %.092144.i.i, i64 %i.ng ; 2 uses
  %15 = sub nsw i64 0, %n.vec381
  %i.ni = getelementptr i8, ptr %.096143.i.i, i64 %15 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index383 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 3 uses
  %i.nj = sub i64 0, %index383
  %next.gep384 = getelementptr i8, ptr %.092144.i.i, i64 %i.nj
  %16 = sub i64 0, %index383
  %next.gep385 = getelementptr i8, ptr %.096143.i.i, i64 %16
  %i.nk = getelementptr inbounds i8, ptr %next.gep385, i64 -4
  store <4 x i8> splat (i8 111), ptr %i.nk, align 1, !tbaa !40
  %i.nl = getelementptr inbounds i8, ptr %next.gep384, i64 -4
end_hunk_1
begin_hunk_2_@MSalignmm_rec:bb.a
  br i1 %or.cond394, label %.lr.ph134.i.i.preheader, label %vector.ph342

vector.ph342:                                     ; preds = %.lr.ph134.preheader.i.i
  %n.vec344 = and i64 %i.op, 2147483640           ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec344 to i32
  %i.or = sub nsw i32 %i.oo, %.cast
  %i.os = sub nsw i64 0, %n.vec344
  %i.ot = getelementptr i8, ptr %.193.lcssa.i.i, i64 %i.os ; 2 uses
  %17 = sub nsw i64 0, %n.vec344
  %i.ou = getelementptr i8, ptr %.197.lcssa.i.i, i64 %17 ; 2 uses
  %i.ov = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1103.lcssa.i.i, i64 0
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph342
  %index346 = phi i64 [ 0, %vector.ph342 ], [ %index.next351, %vector.body345 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ov, %vector.ph342 ], [ %i.pa, %vector.body345 ]
  %vec.phi347 = phi <4 x i32> [ zeroinitializer, %vector.ph342 ], [ %i.pb, %vector.body345 ]
  %offset.idx348 = sub i64 0, %index346
  %next.gep = getelementptr i8, ptr %.193.lcssa.i.i, i64 %offset.idx348 ; 2 uses
  %offset.idx349 = sub i64 0, %index346
  %next.gep350 = getelementptr i8, ptr %.197.lcssa.i.i, i64 %offset.idx349 ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %next.gep350, i64 -4
  %i.ox = getelementptr inbounds i8, ptr %next.gep350, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.ow, align 1, !tbaa !40
end_hunk_2
