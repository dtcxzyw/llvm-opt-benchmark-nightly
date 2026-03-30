begin_hunk_0
  %i.dy = ashr i32 %i.dn, 16
  %i.dz = sub nsw i32 %i.dx, %i.du                ; 2 uses
  %i.ea = add nsw i32 %i.dv, %i.dy                ; 2 uses
  %i.eb = mul nsw i32 %i.dp, 35468
  %i.ec = mul nsw i32 %i.do, 20091
  %i.ed = ashr i32 %i.ec, 16
end_hunk_0
begin_hunk_1
  %i.ek = ashr i32 %i.ei, 16
  %i.el = sub nsw i32 %i.ej, %i.eg                ; 2 uses
  %i.em = add nsw i32 %i.eh, %i.ek                ; 2 uses
  %i.en = sub nsw i32 %i.df, %i.dc
  %i.eo = sub nsw i32 %i.dh, %i.dd                ; 3 uses
  %i.ep = sub nsw i32 %i.di, %i.de                ; 3 uses
end_hunk_1
begin_hunk_2
  %i.eu = add nsw i32 %i.by, %i.dg                ; 2 uses
  %i.ev = add nsw i32 %i.dw, %i.eu                ; 2 uses
  %i.ew = sub nsw i32 %i.dw, %i.eu                ; 2 uses
  %3 = sub nsw i32 %i.ev, %i.ea
  %4 = sub nsw i32 %i.ew, %i.dz
  %5 = add nsw i32 %i.dz, %i.ew
  %6 = add nsw i32 %i.ea, %i.ev
  %i.ex = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %5, i64 1
  %7 = insertelement <4 x i32> %i.ey, i32 %4, i64 2
  %8 = insertelement <4 x i32> %7, i32 %3, i64 3
  %i.ez = ashr <4 x i32> %8, splat (i32 3)
  %i.fa = add nsw <4 x i32> %i.ez, %i.ah
  %i.fb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fa, <4 x i32> zeroinitializer)
  %i.fc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fb, <4 x i32> splat (i32 255))
end_hunk_2
begin_hunk_3
  %i.fj = add nsw i32 %i.et, 4                    ; 2 uses
  %i.fk = add nsw i32 %i.fj, %i.fi                ; 2 uses
  %i.fl = sub nsw i32 %i.fj, %i.fi                ; 2 uses
  %9 = sub nsw i32 %i.fk, %i.em
  %10 = sub nsw i32 %i.fl, %i.el
  %11 = add nsw i32 %i.el, %i.fl
  %12 = add nsw i32 %i.em, %i.fk
  %i.fm = insertelement <4 x i32> poison, i32 %12, i64 0
  %i.fn = insertelement <4 x i32> %i.fm, i32 %11, i64 1
  %13 = insertelement <4 x i32> %i.fn, i32 %10, i64 2
  %14 = insertelement <4 x i32> %13, i32 %9, i64 3
  %i.fo = ashr <4 x i32> %14, splat (i32 3)
  %i.fp = add nsw <4 x i32> %i.fo, %i.ca
  %i.fq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fp, <4 x i32> zeroinitializer)
  %i.fr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fq, <4 x i32> splat (i32 255))
end_hunk_3
begin_hunk_4
  %i.ge = sub nsw i32 %i.ga, %i.fx                ; 2 uses
  %i.gf = sub nsw i32 %i.fy, %i.gb                ; 2 uses
  %i.gg = add nsw i32 %i.gc, %i.fz                ; 2 uses
  %15 = sub nsw i32 %i.gd, %i.gg
  %16 = sub nsw i32 %i.ge, %i.gf
  %17 = add nsw i32 %i.gf, %i.ge
  %18 = add nsw i32 %i.gg, %i.gd
  %i.gh = insertelement <4 x i32> poison, i32 %18, i64 0
  %i.gi = insertelement <4 x i32> %i.gh, i32 %17, i64 1
  %i.gj = insertelement <4 x i32> %i.gi, i32 %16, i64 2
  %i.gk = insertelement <4 x i32> %i.gj, i32 %15, i64 3
  %i.gl = ashr <4 x i32> %i.gk, splat (i32 3)
  %i.gm = add nsw <4 x i32> %i.gl, %i.ce
  %i.gn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gm, <4 x i32> zeroinitializer)
  %i.go = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gn, <4 x i32> splat (i32 255))
end_hunk_4
begin_hunk_5
  %i.hf = add nsw i32 %i.gw, %i.hb                ; 2 uses
  %i.hg = load <4 x i8>, ptr %i.cf, align 1, !tbaa !12
  %i.hh = zext <4 x i8> %i.hg to <4 x i32>
  %19 = sub nsw i32 %i.hc, %i.hf
  %20 = sub nsw i32 %i.hd, %i.he
  %21 = add nsw i32 %i.he, %i.hd
  %22 = add nsw i32 %i.hf, %i.hc
  %i.hi = insertelement <4 x i32> poison, i32 %22, i64 0
  %i.hj = insertelement <4 x i32> %i.hi, i32 %21, i64 1
  %i.hk = insertelement <4 x i32> %i.hj, i32 %20, i64 2
  %i.hl = insertelement <4 x i32> %i.hk, i32 %19, i64 3
  %i.hm = ashr <4 x i32> %i.hl, splat (i32 3)
  %i.hn = add nsw <4 x i32> %i.hm, %i.hh
  %i.ho = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hn, <4 x i32> zeroinitializer)
  %i.hp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ho, <4 x i32> splat (i32 255))
end_hunk_5
