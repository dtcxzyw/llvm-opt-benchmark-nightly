inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@partA__align:bb.a

vector.ph749:                                     ; preds = %vector.memcheck736
  %n.vec751 = and i64 %i.kz, -8                   ; 3 uses
  %i.lc = load float, ptr %i.kw, align 4, !tbaa !14, !alias.scope !94
  %broadcast.splatinsert756 = insertelement <4 x float> poison, float %i.lc, i64 0
  %broadcast.splat757 = shufflevector <4 x float> %broadcast.splatinsert756, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %19 = or disjoint i64 %n.vec751, 1
  br label %vector.body752

vector.body752:                                   ; preds = %vector.body752, %vector.ph749
end_hunk_0
begin_hunk_1_@partA__align:bb.a

vector.ph778:                                     ; preds = %vector.memcheck764
  %n.vec780 = and i64 %i.ma, -8                   ; 3 uses
  %i.md = load float, ptr %i.lx, align 4, !tbaa !14, !alias.scope !103
  %broadcast.splatinsert785 = insertelement <4 x float> poison, float %i.md, i64 0
  %broadcast.splat786 = shufflevector <4 x float> %broadcast.splatinsert785, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %20 = or disjoint i64 %n.vec780, 1
  br label %vector.body781

vector.body781:                                   ; preds = %vector.body781, %vector.ph778
end_hunk_1
