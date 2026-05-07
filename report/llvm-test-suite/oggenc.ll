inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@floor1_interpolate_fit:bb.a
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !alias.scope !705
  %i.ag = and <4 x i32> %wide.load, splat (i32 32767)
  %i.ah = mul nsw <4 x i32> %i.ag, %broadcast.splat
  %i.ai = getelementptr [4 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load39 = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !708
  %i.aj = and <4 x i32> %wide.load39, splat (i32 32767)
  %i.ak = mul nsw <4 x i32> %i.aj, %broadcast.splat38
end_hunk_0
begin_hunk_1_@mapping0_forward:bb.a
  %wide.load695 = load <4 x i32>, ptr %i.tr, align 4, !alias.scope !864
  %i.ts = and <4 x i32> %wide.load695, splat (i32 32767)
  %i.tt = mul nuw nsw <4 x i32> %i.ts, %broadcast.splat690
  %i.tu = getelementptr [4 x i8], ptr %i.so, i64 %index694 ; 2 uses
  %wide.load696 = load <4 x i32>, ptr %i.tu, align 4, !alias.scope !867
  %i.tv = and <4 x i32> %wide.load696, splat (i32 32767)
  %i.tw = mul nuw nsw <4 x i32> %i.tv, %broadcast.splat692
end_hunk_1
begin_hunk_2_@mapping0_forward:bb.a
  %wide.load659 = load <4 x i32>, ptr %i.xf, align 4, !alias.scope !875
  %i.xg = and <4 x i32> %wide.load659, splat (i32 32767)
  %i.xh = mul nsw <4 x i32> %i.xg, %broadcast.splat
  %i.xi = getelementptr [4 x i8], ptr %i.wc, i64 %index658 ; 2 uses
  %wide.load660 = load <4 x i32>, ptr %i.xi, align 4, !alias.scope !878
  %i.xj = and <4 x i32> %wide.load660, splat (i32 32767)
  %i.xk = mul nuw nsw <4 x i32> %i.xj, %broadcast.splat656
end_hunk_2
