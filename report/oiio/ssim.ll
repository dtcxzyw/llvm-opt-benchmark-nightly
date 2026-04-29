inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@SSIMGetClipped_C:bb.a
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = zext nneg i32 %i.f to i64
  %i.t = add nsw i64 %i.s, -3                     ; 4 uses
  %i.u = add nuw i32 %i.i, 1
  %i.v = zext nneg i32 %i.a to i64
  %i.w = add nsw i64 %i.v, -3
end_hunk_0
begin_hunk_1_@SSIMGetClipped_C:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi130 = phi <4 x i32> [ %i.al, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi131 = phi <4 x i32> [ %i.am, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi132 = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi133 = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi134 = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.ay, %vector.body ]
  %offset.idx = add i64 %i.t, %index              ; 2 uses
  %offset.idx135 = add i64 %i.t, %index
  %i.aq = trunc i64 %offset.idx135 to i32
  %.reass168 = add i32 %i.aq, %invariant.op
  %i.ar = sext i32 %.reass168 to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.ar
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !3
  %i.at = mul <4 x i32> %broadcast.splat, %wide.load ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.090, i64 %offset.idx
  %wide.load136.a = load <4 x i8>, ptr %i.au, align 1, !tbaa !17
  %i.av = zext <4 x i8> %wide.load136.a to <4 x i32> ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05189, i64 %offset.idx
  %wide.load137 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !17
  %i.ax = zext <4 x i8> %wide.load137 to <4 x i32> ; 3 uses
  %i.ay = add <4 x i32> %i.at, %vec.phi134        ; 2 uses
end_hunk_1
