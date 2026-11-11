Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@nsvg__startElement:bb.a

nsvg__parseCoordinate.exit208.i:                  ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %nsvg__parseCoordinate.exit203.i
  %.1172.i = phi float [ %.0171244.i, %nsvg__parseCoordinate.exit203.i ], [ %i.wv, %bb.cz ], [ %i.xb, %bb.db ], [ %i.wz, %bb.da ], [ %i.wh, %bb.cu ], [ %i.wk, %bb.cv ], [ %i.wn, %bb.cw ], [ %i.wq, %bb.cx ], [ %i.ws, %bb.cy ], [ %i.wb, %bb.ct ] ; 6 uses
  %i.xc = load ptr, ptr %i.rw, align 8, !tbaa !20 ; 4 uses
  %i.xd = load i8, ptr %i.xc, align 1
  %.not255.i = icmp eq i8 %i.xd, 114
  br i1 %.not255.i, label %sub_1233.i, label %.tail235.thread.i

sub_1233.i:                                       ; preds = %nsvg__parseCoordinate.exit208.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  %i.xf = load i8, ptr %i.xe, align 1             ; 2 uses
  %.not256.i = icmp eq i8 %i.xf, 120
  br i1 %.not256.i, label %nsvg__parseCoordinate.exit208.tail.i, label %sub_1237.i

nsvg__parseCoordinate.exit208.tail.i:             ; preds = %sub_1233.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xc, i64 2
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = icmp eq i8 %i.xh, 0
  br i1 %i.xi, label %bb.dc, label %.tail235.thread.i

bb.dc:                                            ; preds = %nsvg__parseCoordinate.exit208.tail.i
  %i.xj = load ptr, ptr %i.rx, align 8, !tbaa !20
  %.val188.i = load float, ptr %i.rr, align 8, !tbaa !48
  %i.xk = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.xj) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i209.i = trunc i64 %i.xk to i32
  %i.xl = bitcast i32 %.sroa.0.0.extract.trunc.i.i209.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i210.i = lshr i64 %i.xk, 32
  %.sroa.12.0.extract.trunc.i.i211.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i210.i to i32
  %i.xm = load i32, ptr %i.rh, align 8, !tbaa !54
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [312 x i8], ptr %0, i64 %i.xn ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i211.i, label %sub_0236.i [
    i32 7, label %bb.dk
    i32 9, label %bb.dj
    i32 2, label %bb.dd
    i32 3, label %bb.de
    i32 4, label %bb.df
    i32 5, label %bb.dg
    i32 6, label %bb.dh
    i32 8, label %bb.di
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.xp = fdiv float %i.xl, 7.200000e+01
  %i.xq = load float, ptr %i.rs, align 4, !tbaa !39
  %i.xr = fmul float %i.xp, %i.xq
  br label %sub_0236.i

bb.de:                                            ; preds = %bb.dc
  %i.xs = fdiv float %i.xl, 6.000000e+00
  %i.xt = load float, ptr %i.rs, align 4, !tbaa !39
  %i.xu = fmul float %i.xs, %i.xt
  br label %sub_0236.i

bb.df:                                            ; preds = %bb.dc
  %i.xv = fdiv float %i.xl, 2.540000e+01
  %i.xw = load float, ptr %i.rs, align 4, !tbaa !39
  %i.xx = fmul float %i.xv, %i.xw
  br label %sub_0236.i

bb.dg:                                            ; preds = %bb.dc
  %i.xy = fdiv float %i.xl, 2.540000e+00
  %i.xz = load float, ptr %i.rs, align 4, !tbaa !39
  %i.ya = fmul float %i.xy, %i.xz
  br label %sub_0236.i

bb.dh:                                            ; preds = %bb.dc
  %i.yb = load float, ptr %i.rs, align 4, !tbaa !39
  %i.yc = fmul float %i.yb, %i.xl
  br label %sub_0236.i

bb.di:                                            ; preds = %bb.dc
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xo, i64 292
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !55
  %i.yf = fmul float %i.ye, %i.xl
  br label %sub_0236.i

bb.dj:                                            ; preds = %bb.dc
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xo, i64 292
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !55
  %i.yi = fmul float %i.yh, %i.xl
  %i.yj = fmul float %i.yi, 5.200000e-01
  br label %sub_0236.i

bb.dk:                                            ; preds = %bb.dc
  %i.yk = fdiv float %i.xl, 1.000000e+02
  %i.yl = tail call float @llvm.fmuladd.f32(float %i.yk, float %.val188.i, float 0.000000e+00)
  br label %sub_0236.i

sub_0236.i:                                       ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc
  %.0.i.i212.i = phi float [ %i.yf, %bb.di ], [ %i.yl, %bb.dk ], [ %i.yj, %bb.dj ], [ %i.xr, %bb.dd ], [ %i.xu, %bb.de ], [ %i.xx, %bb.df ], [ %i.ya, %bb.dg ], [ %i.yc, %bb.dh ], [ %i.xl, %bb.dc ]
  %i.ym = tail call float @llvm.fabs.f32(float %.0.i.i212.i) ; 2 uses
  %.pre.i92 = load ptr, ptr %i.rw, align 8, !tbaa !20 ; 3 uses
  %.pre260.i = load i8, ptr %.pre.i92, align 1
  %.not257.i = icmp eq i8 %.pre260.i, 114
  br i1 %.not257.i, label %sub_0236.i.sub_1237.i_crit_edge, label %.tail235.thread.i

sub_0236.i.sub_1237.i_crit_edge:                  ; preds = %sub_0236.i
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %.pre.i92, i64 1
  %.pre176 = load i8, ptr %.phi.trans.insert175, align 1
  br label %sub_1237.i

sub_1237.i:                                       ; preds = %sub_0236.i.sub_1237.i_crit_edge, %sub_1233.i
  %i.yn = phi i8 [ %.pre176, %sub_0236.i.sub_1237.i_crit_edge ], [ %i.xf, %sub_1233.i ]
  %.1168269.i = phi float [ %i.ym, %sub_0236.i.sub_1237.i_crit_edge ], [ %.0167245.i, %sub_1233.i ] ; 3 uses
  %i.yo = phi ptr [ %.pre.i92, %sub_0236.i.sub_1237.i_crit_edge ], [ %i.xc, %sub_1233.i ]
  %.not258.i = icmp eq i8 %i.yn, 121
  br i1 %.not258.i, label %.tail235.i, label %.tail235.thread.i

.tail235.i:                                       ; preds = %sub_1237.i
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 2
  %i.yq = load i8, ptr %i.yp, align 1
  %i.yr = icmp eq i8 %i.yq, 0
  br i1 %i.yr, label %bb.dl, label %.tail235.thread.i

bb.dl:                                            ; preds = %.tail235.i
  %i.ys = load ptr, ptr %i.rx, align 8, !tbaa !20
  %.val191.i = load float, ptr %i.ru, align 4, !tbaa !51
  %i.yt = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.ys) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i214.i = trunc i64 %i.yt to i32
  %i.yu = bitcast i32 %.sroa.0.0.extract.trunc.i.i214.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i215.i = lshr i64 %i.yt, 32
  %.sroa.12.0.extract.trunc.i.i216.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i215.i to i32
  %i.yv = load i32, ptr %i.rh, align 8, !tbaa !54
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [312 x i8], ptr %0, i64 %i.yw ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i216.i, label %nsvg__parseCoordinate.exit218.i [
    i32 7, label %bb.dt
    i32 9, label %bb.ds
    i32 2, label %bb.dm
    i32 3, label %bb.dn
    i32 4, label %bb.do
    i32 5, label %bb.dp
    i32 6, label %bb.dq
    i32 8, label %bb.dr
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.yy = fdiv float %i.yu, 7.200000e+01
  %i.yz = load float, ptr %i.rs, align 4, !tbaa !39
  %i.za = fmul float %i.yy, %i.yz
  br label %nsvg__parseCoordinate.exit218.i

bb.dn:                                            ; preds = %bb.dl
  %i.zb = fdiv float %i.yu, 6.000000e+00
  %i.zc = load float, ptr %i.rs, align 4, !tbaa !39
  %i.zd = fmul float %i.zb, %i.zc
  br label %nsvg__parseCoordinate.exit218.i

bb.do:                                            ; preds = %bb.dl
  %i.ze = fdiv float %i.yu, 2.540000e+01
  %i.zf = load float, ptr %i.rs, align 4, !tbaa !39
  %i.zg = fmul float %i.ze, %i.zf
  br label %nsvg__parseCoordinate.exit218.i

bb.dp:                                            ; preds = %bb.dl
  %i.zh = fdiv float %i.yu, 2.540000e+00
  %i.zi = load float, ptr %i.rs, align 4, !tbaa !39
  %i.zj = fmul float %i.zh, %i.zi
  br label %nsvg__parseCoordinate.exit218.i

bb.dq:                                            ; preds = %bb.dl
  %i.zk = load float, ptr %i.rs, align 4, !tbaa !39
  %i.zl = fmul float %i.zk, %i.yu
  br label %nsvg__parseCoordinate.exit218.i

bb.dr:                                            ; preds = %bb.dl
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 292
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !55
  %i.zo = fmul float %i.zn, %i.yu
  br label %nsvg__parseCoordinate.exit218.i

bb.ds:                                            ; preds = %bb.dl
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yx, i64 292
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !55
  %i.zr = fmul float %i.zq, %i.yu
  %i.zs = fmul float %i.zr, 5.200000e-01
  br label %nsvg__parseCoordinate.exit218.i

bb.dt:                                            ; preds = %bb.dl
  %i.zt = fdiv float %i.yu, 1.000000e+02
  %i.zu = tail call float @llvm.fmuladd.f32(float %i.zt, float %.val191.i, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit218.i

nsvg__parseCoordinate.exit218.i:                  ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.0.i.i217.i = phi float [ %i.zo, %bb.dr ], [ %i.zu, %bb.dt ], [ %i.zs, %bb.ds ], [ %i.za, %bb.dm ], [ %i.zd, %bb.dn ], [ %i.zg, %bb.do ], [ %i.zj, %bb.dp ], [ %i.zl, %bb.dq ], [ %i.yu, %bb.dl ]
  %i.zv = tail call float @llvm.fabs.f32(float %.0.i.i217.i)
  br label %.tail235.thread.i

.tail235.thread.i:                                ; preds = %nsvg__parseCoordinate.exit208.tail.i, %nsvg__parseCoordinate.exit218.i, %.tail235.i, %sub_1237.i, %sub_0236.i, %nsvg__parseCoordinate.exit208.i, %bb.br
  %.2182.i = phi float [ %.0180241.i, %bb.br ], [ %.1181.i, %nsvg__parseCoordinate.exit218.i ], [ %.1181.i, %.tail235.i ], [ %.1181.i, %sub_0236.i ], [ %.1181.i, %sub_1237.i ], [ %.1181.i, %nsvg__parseCoordinate.exit208.i ], [ %.1181.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2179.i = phi float [ %.0177242.i, %bb.br ], [ %.1178.i, %nsvg__parseCoordinate.exit218.i ], [ %.1178.i, %.tail235.i ], [ %.1178.i, %sub_0236.i ], [ %.1178.i, %sub_1237.i ], [ %.1178.i, %nsvg__parseCoordinate.exit208.i ], [ %.1178.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2176.i = phi float [ %.0174243.i, %bb.br ], [ %.1175.i, %nsvg__parseCoordinate.exit218.i ], [ %.1175.i, %.tail235.i ], [ %.1175.i, %sub_0236.i ], [ %.1175.i, %sub_1237.i ], [ %.1175.i, %nsvg__parseCoordinate.exit208.i ], [ %.1175.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2173.i = phi float [ %.0171244.i, %bb.br ], [ %.1172.i, %nsvg__parseCoordinate.exit218.i ], [ %.1172.i, %.tail235.i ], [ %.1172.i, %sub_0236.i ], [ %.1172.i, %sub_1237.i ], [ %.1172.i, %nsvg__parseCoordinate.exit208.i ], [ %.1172.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2169.i = phi float [ %.0167245.i, %bb.br ], [ %.1168269.i, %nsvg__parseCoordinate.exit218.i ], [ %.1168269.i, %.tail235.i ], [ %i.ym, %sub_0236.i ], [ %.1168269.i, %sub_1237.i ], [ %.0167245.i, %nsvg__parseCoordinate.exit208.i ], [ %.0167245.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.1.i74 = phi float [ %.0166246.i, %bb.br ], [ %i.zv, %nsvg__parseCoordinate.exit218.i ], [ %.0166246.i, %.tail235.i ], [ %.0166246.i, %sub_0236.i ], [ %.0166246.i, %sub_1237.i ], [ %.0166246.i, %nsvg__parseCoordinate.exit208.i ], [ %.0166246.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i73, 2 ; 2 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i75
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !20 ; 2 uses
  %.not.i76 = icmp eq ptr %i.zx, null
  br i1 %.not.i76, label %._crit_edge.i77, label %bb.br, !llvm.loop !179

._crit_edge.i77:                                  ; preds = %.tail235.thread.i, %nsvg__pushAttr.exit71
  %.0180.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2182.i, %.tail235.thread.i ] ; 10 uses
  %.0177.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2179.i, %.tail235.thread.i ] ; 11 uses
  %.0174.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2176.i, %.tail235.thread.i ] ; 4 uses
  %.0171.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2173.i, %.tail235.thread.i ] ; 4 uses
  %.0167.lcssa.i = phi float [ -1.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2169.i, %.tail235.thread.i ] ; 3 uses
  %.0166.lcssa.i = phi float [ -1.000000e+00, %nsvg__pushAttr.exit71 ], [ %.1.i74, %.tail235.thread.i ] ; 4 uses
  %3 = fcmp olt float %.0167.lcssa.i, 0.000000e+00
  %4 = fcmp ogt float %.0166.lcssa.i, 0.000000e+00
  %or.cond.i = select i1 %3, i1 %4, i1 false
  %.3170.i = select i1 %or.cond.i, float %.0166.lcssa.i, float %.0167.lcssa.i ; 3 uses
  %5 = fcmp olt float %.0166.lcssa.i, 0.000000e+00
  %6 = fcmp ogt float %.3170.i, 0.000000e+00
  %or.cond3.i = select i1 %5, i1 %6, i1 false
  %.2.i78 = select i1 %or.cond3.i, float %.0167.lcssa.i, float %.0166.lcssa.i ; 2 uses
  %7 = fcmp olt float %.3170.i, 0.000000e+00
  %spec.store.select.i = select i1 %7, float 0.000000e+00, float %.3170.i ; 2 uses
  %8 = fcmp olt float %.2.i78, 0.000000e+00
  %spec.store.select8.i = select i1 %8, float 0.000000e+00, float %.2.i78 ; 2 uses
  %9 = fmul float %.0174.lcssa.i, 5.000000e-01    ; 2 uses
  %10 = fcmp ogt float %spec.store.select.i, %9
  %.4.i79 = select i1 %10, float %9, float %spec.store.select.i ; 5 uses
  %11 = fmul float %.0171.lcssa.i, 5.000000e-01   ; 2 uses
  %12 = fcmp ogt float %spec.store.select8.i, %11
  %.3.i80 = select i1 %12, float %11, float %spec.store.select8.i ; 5 uses
  %i.zy = fcmp une float %.0174.lcssa.i, 0.000000e+00
  %i.zz = fcmp une float %.0171.lcssa.i, 0.000000e+00
  %or.cond5.i = select i1 %i.zy, i1 %i.zz, i1 false
  br i1 %or.cond5.i, label %bb.du, label %nsvg__parseRect.exit

bb.du:                                            ; preds = %._crit_edge.i77
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 5 uses
  store i32 0, ptr %i.aaa, align 8, !tbaa !82
  %i.aab = fcmp olt float %.4.i79, f0x3727C5AC
  %i.aac = fcmp olt float %.3.i80, f0x38D1B717
  %or.cond7.i81 = select i1 %i.aab, i1 true, i1 %i.aac
  br i1 %or.cond7.i81, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !83 ; 3 uses
  %.not.i.i.i82 = icmp sgt i32 %i.aae, 0
  br i1 %.not.i.i.i82, label %._crit_edge.i.i.i89, label %bb.dw

._crit_edge.i.i.i89:                              ; preds = %bb.dv
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i.i90 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !78
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %.not16.i.i.i83 = icmp eq i32 %i.aae, 0
  %i.aaf = shl nsw i32 %i.aae, 1
  %spec.select.i.i.i84 = select i1 %.not16.i.i.i83, i32 8, i32 %i.aaf ; 2 uses
  store i32 %spec.select.i.i.i84, ptr %i.aad, align 4, !tbaa !83
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !78
  %i.aai = shl nsw i32 %spec.select.i.i.i84, 1
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = shl nsw i64 %i.aaj, 2
  %i.aal = tail call ptr @realloc(ptr noundef %i.aah, i64 noundef %i.aak) #32 ; 3 uses
  store ptr %i.aal, ptr %i.aag, align 8, !tbaa !78
  %.not17.i.i.i85 = icmp eq ptr %i.aal, null
  br i1 %.not17.i.i.i85, label %nsvg__moveTo.exit.i88, label %._crit_edge18.i.i.i86

._crit_edge18.i.i.i86:                            ; preds = %bb.dw
  %.pre19.i.i.i87 = load i32, ptr %i.aaa, align 8, !tbaa !82
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge18.i.i.i86, %._crit_edge.i.i.i89
  %i.aam = phi i32 [ 0, %._crit_edge.i.i.i89 ], [ %.pre19.i.i.i87, %._crit_edge18.i.i.i86 ] ; 2 uses
  %i.aan = phi ptr [ %.pre.i.i.i90, %._crit_edge.i.i.i89 ], [ %i.aal, %._crit_edge18.i.i.i86 ]
  %i.aao = shl nsw i32 %i.aam, 1
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.aap ; 2 uses
  store float %.0180.lcssa.i, ptr %i.aaq, align 4, !tbaa !30
  %i.aar = getelementptr i8, ptr %i.aaq, i64 4
  store float %.0177.lcssa.i, ptr %i.aar, align 4, !tbaa !30
  %i.aas = add nsw i32 %i.aam, 1
  store i32 %i.aas, ptr %i.aaa, align 8, !tbaa !82
  br label %nsvg__moveTo.exit.i88

nsvg__moveTo.exit.i88:                            ; preds = %bb.dx, %bb.dw
  %i.aat = fadd float %.0180.lcssa.i, %.0174.lcssa.i ; 2 uses
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.aat, float noundef %.0177.lcssa.i)
  %i.aau = fadd float %.0177.lcssa.i, %.0171.lcssa.i ; 2 uses
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.aat, float noundef %i.aau)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %.0180.lcssa.i, float noundef %i.aau)
  br label %bb.eb

bb.dy:                                            ; preds = %bb.du
  %i.aav = fadd float %.0180.lcssa.i, %.4.i79     ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !83 ; 3 uses
  %.not.i.i219.i = icmp sgt i32 %i.aax, 0
  br i1 %.not.i.i219.i, label %._crit_edge.i.i225.i, label %bb.dz

._crit_edge.i.i225.i:                             ; preds = %bb.dy
  %.phi.trans.insert.i.i226.i = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i227.i = load ptr, ptr %.phi.trans.insert.i.i226.i, align 8, !tbaa !78
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %.not16.i.i220.i = icmp eq i32 %i.aax, 0
  %i.aay = shl nsw i32 %i.aax, 1
  %spec.select.i.i221.i = select i1 %.not16.i.i220.i, i32 8, i32 %i.aay ; 2 uses
  store i32 %spec.select.i.i221.i, ptr %i.aaw, align 4, !tbaa !83
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !78
  %i.abb = shl nsw i32 %spec.select.i.i221.i, 1
  %i.abc = sext i32 %i.abb to i64
  %i.abd = shl nsw i64 %i.abc, 2
  %i.abe = tail call ptr @realloc(ptr noundef %i.aba, i64 noundef %i.abd) #32 ; 3 uses
  store ptr %i.abe, ptr %i.aaz, align 8, !tbaa !78
  %.not17.i.i222.i = icmp eq ptr %i.abe, null
  br i1 %.not17.i.i222.i, label %nsvg__moveTo.exit228.i, label %._crit_edge18.i.i223.i

._crit_edge18.i.i223.i:                           ; preds = %bb.dz
  %.pre19.i.i224.i = load i32, ptr %i.aaa, align 8, !tbaa !82
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge18.i.i223.i, %._crit_edge.i.i225.i
  %i.abf = phi i32 [ 0, %._crit_edge.i.i225.i ], [ %.pre19.i.i224.i, %._crit_edge18.i.i223.i ] ; 2 uses
  %i.abg = phi ptr [ %.pre.i.i227.i, %._crit_edge.i.i225.i ], [ %i.abe, %._crit_edge18.i.i223.i ]
  %i.abh = shl nsw i32 %i.abf, 1
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.abi ; 2 uses
  store float %i.aav, ptr %i.abj, align 4, !tbaa !30
  %i.abk = getelementptr i8, ptr %i.abj, i64 4
  store float %.0177.lcssa.i, ptr %i.abk, align 4, !tbaa !30
  %i.abl = add nsw i32 %i.abf, 1
  store i32 %i.abl, ptr %i.aaa, align 8, !tbaa !82
  br label %nsvg__moveTo.exit228.i

nsvg__moveTo.exit228.i:                           ; preds = %bb.ea, %bb.dz
  %i.abm = fadd float %.0180.lcssa.i, %.0174.lcssa.i ; 6 uses
  %i.abn = fsub float %i.abm, %.4.i79             ; 2 uses
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.abn, float noundef %.0177.lcssa.i)
  %13 = fneg float %.4.i79
  %i.abo = fadd float %.0177.lcssa.i, %.3.i80     ; 2 uses
  %i.abp = fadd float %.0177.lcssa.i, %.0171.lcssa.i ; 6 uses
  %i.abq = fsub float %i.abp, %.3.i80             ; 2 uses
  %14 = fneg float %.3.i80
  %15 = insertelement <4 x float> poison, float %13, i64 0
  %16 = insertelement <4 x float> %15, float %.3.i80, i64 1
  %17 = insertelement <4 x float> %16, float %14, i64 2
  %18 = insertelement <4 x float> %17, float %.4.i79, i64 3
  %i.abr = insertelement <4 x float> poison, float %i.abm, i64 0
  %i.abs = insertelement <4 x float> %i.abr, float %.0177.lcssa.i, i64 1
  %i.abt = insertelement <4 x float> %i.abs, float %i.abp, i64 2
  %i.abu = insertelement <4 x float> %i.abt, float %.0180.lcssa.i, i64 3
  %i.abv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> splat (float f0x3EE53AEE), <4 x float> %i.abu) ; 4 uses
  %i.abw = extractelement <4 x float> %i.abv, i64 0 ; 2 uses
  %i.abx = extractelement <4 x float> %i.abv, i64 1 ; 2 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.abw, float noundef %.0177.lcssa.i, float noundef %i.abm, float noundef %i.abx, float noundef %i.abm, float noundef %i.abo)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.abm, float noundef %i.abq)
  %i.aby = extractelement <4 x float> %i.abv, i64 2 ; 2 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.abm, float noundef %i.aby, float noundef %i.abw, float noundef %i.abp, float noundef %i.abn, float noundef %i.abp)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.aav, float noundef %i.abp)
  %i.abz = extractelement <4 x float> %i.abv, i64 3 ; 2 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.abz, float noundef %i.abp, float noundef %.0180.lcssa.i, float noundef %i.aby, float noundef %.0180.lcssa.i, float noundef %i.abq)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %.0180.lcssa.i, float noundef %i.abo)
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %.0180.lcssa.i, float noundef %i.abx, float noundef %i.abz, float noundef %.0177.lcssa.i, float noundef %i.aav, float noundef %.0177.lcssa.i)
  br label %bb.eb

bb.eb:                                            ; preds = %nsvg__moveTo.exit228.i, %nsvg__moveTo.exit.i88
  tail call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  tail call fastcc void @nsvg__addShape(ptr noundef nonnull %0)
  br label %nsvg__parseRect.exit

nsvg__parseRect.exit:                             ; preds = %._crit_edge.i77, %bb.eb
  %i.aca = load i32, ptr %i.rh, align 8, !tbaa !54 ; 2 uses
  %i.acb = icmp sgt i32 %i.aca, 0
  br i1 %i.acb, label %bb.ec, label %nsvg__popAttr.exit

bb.ec:                                            ; preds = %nsvg__parseRect.exit
  %i.acc = add nsw i32 %i.aca, -1
  store i32 %i.acc, ptr %i.rh, align 8, !tbaa !54
  br label %nsvg__popAttr.exit

bb.ed:                                            ; preds = %bb.bo
  %i.acd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.19) #31
  %i.ace = icmp eq i32 %i.acd, 0
  br i1 %i.ace, label %bb.ee, label %bb.fm

bb.ee:                                            ; preds = %bb.ed
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 7 uses
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !54 ; 3 uses
  %i.ach = icmp slt i32 %i.acg, 127
  br i1 %i.ach, label %bb.ef, label %nsvg__pushAttr.exit96

bb.ef:                                            ; preds = %bb.ee
  %i.aci = add nsw i32 %i.acg, 1                  ; 2 uses
  store i32 %i.aci, ptr %i.acf, align 8, !tbaa !54
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr inbounds [312 x i8], ptr %0, i64 %i.acj
  %i.acl = sext i32 %i.acg to i64
  %i.acm = getelementptr inbounds [312 x i8], ptr %0, i64 %i.acl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ack, ptr noundef nonnull align 8 dereferenceable(312) %i.acm, i64 312, i1 false)
  br label %nsvg__pushAttr.exit96

nsvg__pushAttr.exit96:                            ; preds = %bb.ee, %bb.ef
  %i.acn = load ptr, ptr %2, align 8, !tbaa !20   ; 2 uses
  %.not113.i = icmp eq ptr %i.acn, null
  br i1 %.not113.i, label %nsvg__parseCircle.exit, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %nsvg__pushAttr.exit96
  %i.aco = getelementptr i8, ptr %0, i64 40000
  %i.acp = getelementptr i8, ptr %0, i64 40008    ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 15 uses
  %i.acr = getelementptr i8, ptr %0, i64 40004
  %i.acs = getelementptr i8, ptr %0, i64 40012    ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %nsvg__parseCoordinate.exit100.tail.thread.i, %.lr.ph.i97
  %indvars.iv.i98 = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i101, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 2 uses
  %i.act = phi ptr [ %i.acn, %.lr.ph.i97 ], [ %i.ahi, %nsvg__parseCoordinate.exit100.tail.thread.i ]
  %.083116.i = phi float [ 0.000000e+00, %.lr.ph.i97 ], [ %.1.i100, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 3 uses
  %.084115.i = phi float [ 0.000000e+00, %.lr.ph.i97 ], [ %.2.i99, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 4 uses
  %.086114.i = phi float [ 0.000000e+00, %.lr.ph.i97 ], [ %.288.i, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 4 uses
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i98 ; 4 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 8 ; 4 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !20
  %i.acx = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.act, ptr noundef %i.acw)
  %.not90.i = icmp eq i32 %i.acx, 0
  br i1 %.not90.i, label %sub_0.i114, label %nsvg__parseCoordinate.exit100.tail.thread.i

sub_0.i114:                                       ; preds = %bb.eg
  %i.acy = load ptr, ptr %i.acu, align 8, !tbaa !20 ; 3 uses
  %i.acz = load i8, ptr %i.acy, align 1
  %.not120.i = icmp eq i8 %i.acz, 99
  br i1 %.not120.i, label %sub_1.i, label %nsvg__parseCoordinate.exit.i115

sub_1.i:                                          ; preds = %sub_0.i114
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 1
  %i.adb = load i8, ptr %i.ada, align 1
  %.not121.i = icmp eq i8 %i.adb, 120
  br i1 %.not121.i, label %.tail.i118, label %nsvg__parseCoordinate.exit.i115

.tail.i118:                                       ; preds = %sub_1.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 2
  %i.add = load i8, ptr %i.adc, align 1
  %i.ade = icmp eq i8 %i.add, 0
  br i1 %i.ade, label %bb.eh, label %nsvg__parseCoordinate.exit.i115

bb.eh:                                            ; preds = %.tail.i118
  %i.adf = load ptr, ptr %i.acv, align 8, !tbaa !20
  %.val.i119 = load float, ptr %i.aco, align 8, !tbaa !50
  %.val92.i = load float, ptr %i.acp, align 8, !tbaa !48
  %i.adg = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.adf) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i120 = trunc i64 %i.adg to i32
  %i.adh = bitcast i32 %.sroa.0.0.extract.trunc.i.i.i120 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i.i121 = lshr i64 %i.adg, 32
  %.sroa.12.0.extract.trunc.i.i.i122 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i.i121 to i32
  %i.adi = load i32, ptr %i.acf, align 8, !tbaa !54
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds [312 x i8], ptr %0, i64 %i.adj ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i.i122, label %nsvg__parseCoordinate.exit.i115 [
    i32 7, label %bb.ep
    i32 9, label %bb.eo
    i32 2, label %bb.ei
    i32 3, label %bb.ej
    i32 4, label %bb.ek
    i32 5, label %bb.el
    i32 6, label %bb.em
    i32 8, label %bb.en
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.adl = fdiv float %i.adh, 7.200000e+01
  %i.adm = load float, ptr %i.acq, align 4, !tbaa !39
  %i.adn = fmul float %i.adl, %i.adm
  br label %nsvg__parseCoordinate.exit.i115

bb.ej:                                            ; preds = %bb.eh
  %i.ado = fdiv float %i.adh, 6.000000e+00
  %i.adp = load float, ptr %i.acq, align 4, !tbaa !39
  %i.adq = fmul float %i.ado, %i.adp
  br label %nsvg__parseCoordinate.exit.i115

bb.ek:                                            ; preds = %bb.eh
  %i.adr = fdiv float %i.adh, 2.540000e+01
  %i.ads = load float, ptr %i.acq, align 4, !tbaa !39
  %i.adt = fmul float %i.adr, %i.ads
  br label %nsvg__parseCoordinate.exit.i115

bb.el:                                            ; preds = %bb.eh
  %i.adu = fdiv float %i.adh, 2.540000e+00
  %i.adv = load float, ptr %i.acq, align 4, !tbaa !39
  %i.adw = fmul float %i.adu, %i.adv
  br label %nsvg__parseCoordinate.exit.i115

bb.em:                                            ; preds = %bb.eh
  %i.adx = load float, ptr %i.acq, align 4, !tbaa !39
  %i.ady = fmul float %i.adx, %i.adh
  br label %nsvg__parseCoordinate.exit.i115

bb.en:                                            ; preds = %bb.eh
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adk, i64 292
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !55
  %i.aeb = fmul float %i.aea, %i.adh
  br label %nsvg__parseCoordinate.exit.i115

bb.eo:                                            ; preds = %bb.eh
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adk, i64 292
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !55
  %i.aee = fmul float %i.aed, %i.adh
  %i.aef = fmul float %i.aee, 5.200000e-01
  br label %nsvg__parseCoordinate.exit.i115

bb.ep:                                            ; preds = %bb.eh
  %i.aeg = fdiv float %i.adh, 1.000000e+02
  %i.aeh = tail call float @llvm.fmuladd.f32(float %i.aeg, float %.val92.i, float %.val.i119)
  br label %nsvg__parseCoordinate.exit.i115

nsvg__parseCoordinate.exit.i115:                  ; preds = %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %.tail.i118, %sub_1.i, %sub_0.i114
  %.187.i = phi float [ %.086114.i, %.tail.i118 ], [ %i.aeb, %bb.en ], [ %i.aeh, %bb.ep ], [ %i.aef, %bb.eo ], [ %i.adn, %bb.ei ], [ %i.adq, %bb.ej ], [ %i.adt, %bb.ek ], [ %i.adw, %bb.el ], [ %i.ady, %bb.em ], [ %i.adh, %bb.eh ], [ %.086114.i, %sub_0.i114 ], [ %.086114.i, %sub_1.i ] ; 3 uses
  %i.aei = load ptr, ptr %i.acu, align 8, !tbaa !20 ; 3 uses
  %i.aej = load i8, ptr %i.aei, align 1
  %.not122.i = icmp eq i8 %i.aej, 99
  br i1 %.not122.i, label %sub_1107.i, label %nsvg__parseCoordinate.exit100.i

sub_1107.i:                                       ; preds = %nsvg__parseCoordinate.exit.i115
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 1
  %i.ael = load i8, ptr %i.aek, align 1
  %.not123.i = icmp eq i8 %i.ael, 121
  br i1 %.not123.i, label %nsvg__parseCoordinate.exit.tail.i117, label %nsvg__parseCoordinate.exit100.i

nsvg__parseCoordinate.exit.tail.i117:             ; preds = %sub_1107.i
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aei, i64 2
  %i.aen = load i8, ptr %i.aem, align 1
  %i.aeo = icmp eq i8 %i.aen, 0
  br i1 %i.aeo, label %bb.eq, label %nsvg__parseCoordinate.exit100.i

bb.eq:                                            ; preds = %nsvg__parseCoordinate.exit.tail.i117
  %i.aep = load ptr, ptr %i.acv, align 8, !tbaa !20
  %.val91.i = load float, ptr %i.acr, align 4, !tbaa !53
  %.val93.i = load float, ptr %i.acs, align 4, !tbaa !51
  %i.aeq = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.aep) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i96.i = trunc i64 %i.aeq to i32
  %i.aer = bitcast i32 %.sroa.0.0.extract.trunc.i.i96.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i97.i = lshr i64 %i.aeq, 32
  %.sroa.12.0.extract.trunc.i.i98.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i97.i to i32
  %i.aes = load i32, ptr %i.acf, align 8, !tbaa !54
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds [312 x i8], ptr %0, i64 %i.aet ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i98.i, label %nsvg__parseCoordinate.exit100.i [
    i32 7, label %bb.ey
    i32 9, label %bb.ex
    i32 2, label %bb.er
    i32 3, label %bb.es
    i32 4, label %bb.et
end_hunk_0
