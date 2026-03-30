begin_hunk_0
  %i.dy = ashr i32 %i.dn, 16
  %i.dz = sub nsw i32 %i.dx, %i.du                ; 2 uses
  %i.ea = add nsw i32 %i.dv, %i.dy                ; 2 uses
  %3 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %4 = insertelement <4 x i32> %3, i32 %i.dz, i64 1
  %i.eb = mul nsw i32 %i.dp, 35468
  %i.ec = mul nsw i32 %i.do, 20091
  %i.ed = ashr i32 %i.ec, 16
end_hunk_0
begin_hunk_1
  %i.ek = ashr i32 %i.ei, 16
  %i.el = sub nsw i32 %i.ej, %i.eg                ; 2 uses
  %i.em = add nsw i32 %i.eh, %i.ek                ; 2 uses
  %5 = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %6 = insertelement <4 x i32> %5, i32 %i.el, i64 1
  %i.en = sub nsw i32 %i.df, %i.dc
  %i.eo = sub nsw i32 %i.dh, %i.dd                ; 3 uses
  %i.ep = sub nsw i32 %i.di, %i.de                ; 3 uses
end_hunk_1
begin_hunk_2
  %i.eu = add nsw i32 %i.by, %i.dg                ; 2 uses
  %i.ev = add nsw i32 %i.dw, %i.eu                ; 2 uses
  %i.ew = sub nsw i32 %i.dw, %i.eu                ; 2 uses
  %7 = insertelement <4 x i32> %4, i32 %i.ew, i64 2
  %8 = insertelement <4 x i32> %7, i32 %i.ev, i64 3 ; 2 uses
  %9 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %10 = insertelement <4 x i32> %9, i32 %i.ew, i64 1
  %i.ex = insertelement <4 x i32> %10, i32 %i.dz, i64 2
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.ea, i64 3 ; 2 uses
  %11 = add nsw <4 x i32> %8, %i.ey
  %12 = sub nsw <4 x i32> %8, %i.ey
  %13 = shufflevector <4 x i32> %11, <4 x i32> %12, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ez = ashr <4 x i32> %13, splat (i32 3)
  %i.fa = add nsw <4 x i32> %i.ez, %i.ah
  %i.fb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fa, <4 x i32> zeroinitializer)
  %i.fc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fb, <4 x i32> splat (i32 255))
end_hunk_2
begin_hunk_3
  %i.fj = add nsw i32 %i.et, 4                    ; 2 uses
  %i.fk = add nsw i32 %i.fj, %i.fi                ; 2 uses
  %i.fl = sub nsw i32 %i.fj, %i.fi                ; 2 uses
  %14 = insertelement <4 x i32> %6, i32 %i.fl, i64 2
  %15 = insertelement <4 x i32> %14, i32 %i.fk, i64 3 ; 2 uses
  %16 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %17 = insertelement <4 x i32> %16, i32 %i.fl, i64 1
  %i.fm = insertelement <4 x i32> %17, i32 %i.el, i64 2
  %i.fn = insertelement <4 x i32> %i.fm, i32 %i.em, i64 3 ; 2 uses
  %18 = add nsw <4 x i32> %15, %i.fn
  %19 = sub nsw <4 x i32> %15, %i.fn
  %20 = shufflevector <4 x i32> %18, <4 x i32> %19, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fo = ashr <4 x i32> %20, splat (i32 3)
  %i.fp = add nsw <4 x i32> %i.fo, %i.ca
  %i.fq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fp, <4 x i32> zeroinitializer)
  %i.fr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fq, <4 x i32> splat (i32 255))
end_hunk_3
begin_hunk_4
  %i.ge = sub nsw i32 %i.ga, %i.fx                ; 2 uses
  %i.gf = sub nsw i32 %i.fy, %i.gb                ; 2 uses
  %i.gg = add nsw i32 %i.gc, %i.fz                ; 2 uses
  %21 = insertelement <4 x i32> poison, i32 %i.gg, i64 0
  %22 = insertelement <4 x i32> %21, i32 %i.gf, i64 1
  %23 = insertelement <4 x i32> %22, i32 %i.ge, i64 2
  %24 = insertelement <4 x i32> %23, i32 %i.gd, i64 3 ; 2 uses
  %i.gh = insertelement <4 x i32> poison, i32 %i.gd, i64 0
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 1
  %i.gj = insertelement <4 x i32> %i.gi, i32 %i.gf, i64 2
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.gg, i64 3 ; 2 uses
  %25 = add nsw <4 x i32> %24, %i.gk
  %26 = sub nsw <4 x i32> %24, %i.gk
  %27 = shufflevector <4 x i32> %25, <4 x i32> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gl = ashr <4 x i32> %27, splat (i32 3)
  %i.gm = add nsw <4 x i32> %i.gl, %i.ce
  %i.gn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gm, <4 x i32> zeroinitializer)
  %i.go = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gn, <4 x i32> splat (i32 255))
end_hunk_4
begin_hunk_5
  %i.hf = add nsw i32 %i.gw, %i.hb                ; 2 uses
  %i.hg = load <4 x i8>, ptr %i.cf, align 1, !tbaa !12
  %i.hh = zext <4 x i8> %i.hg to <4 x i32>
  %28 = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %29 = insertelement <4 x i32> %28, i32 %i.he, i64 1
  %30 = insertelement <4 x i32> %29, i32 %i.hd, i64 2
  %31 = insertelement <4 x i32> %30, i32 %i.hc, i64 3 ; 2 uses
  %i.hi = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hd, i64 1
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.he, i64 2
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hf, i64 3 ; 2 uses
  %32 = add nsw <4 x i32> %31, %i.hl
  %33 = sub nsw <4 x i32> %31, %i.hl
  %34 = shufflevector <4 x i32> %32, <4 x i32> %33, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hm = ashr <4 x i32> %34, splat (i32 3)
  %i.hn = add nsw <4 x i32> %i.hm, %i.hh
  %i.ho = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hn, <4 x i32> zeroinitializer)
  %i.hp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ho, <4 x i32> splat (i32 255))
end_hunk_5
