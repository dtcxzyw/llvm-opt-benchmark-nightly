inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicode_Format:bb.a
  ]

bb.im:                                            ; preds = %bb.il, %bb.il, %bb.il
  br i1 %.not196.i33.i, label %bb.iu, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.wh = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.wi = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.wj = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.wh, label %bb.iq [
    i32 1, label %bb.io
    i32 2, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.wk = getelementptr i8, ptr %i.wi, i64 %i.wj
  store i8 48, ptr %i.wk, align 1, !tbaa !14
  %.pre230.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre231.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit212.i.i

bb.ip:                                            ; preds = %bb.in
  %i.wl = getelementptr [2 x i8], ptr %i.wi, i64 %i.wj
  store i16 48, ptr %i.wl, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit212.i.i

bb.iq:                                            ; preds = %bb.in
  %i.wm = getelementptr [4 x i8], ptr %i.wi, i64 %i.wj
  store i32 48, ptr %i.wm, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit212.i.i

PyUnicode_WRITE.exit212.i.i:                      ; preds = %bb.iq, %bb.ip, %bb.io
  %i.wn = phi i64 [ %.pre231.i.i, %bb.io ], [ %i.wj, %bb.ip ], [ %i.wj, %bb.iq ] ; 3 uses
  %i.wo = phi ptr [ %.pre230.i.i, %bb.io ], [ %i.wi, %bb.ip ], [ %i.wi, %bb.iq ] ; 3 uses
  %i.wp = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.wq = add i64 %i.wn, 1                        ; 3 uses
  switch i32 %i.wp, label %bb.it [
    i32 1, label %bb.ir
    i32 2, label %bb.is
  ]

bb.ir:                                            ; preds = %PyUnicode_WRITE.exit212.i.i
  %i.wr = trunc nuw nsw i32 %.0.i68.i to i8
  %i.ws = getelementptr i8, ptr %i.wo, i64 %i.wq
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !14
  %.pre232.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit213.i.i

bb.is:                                            ; preds = %PyUnicode_WRITE.exit212.i.i
  %i.wt = trunc nuw nsw i32 %.0.i68.i to i16
  %i.wu = getelementptr [2 x i8], ptr %i.wo, i64 %i.wq
  store i16 %i.wt, ptr %i.wu, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit213.i.i

bb.it:                                            ; preds = %PyUnicode_WRITE.exit212.i.i
  %i.wv = getelementptr [4 x i8], ptr %i.wo, i64 %i.wq
  store i32 %.0.i68.i, ptr %i.wv, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit213.i.i

PyUnicode_WRITE.exit213.i.i:                      ; preds = %bb.it, %bb.is, %bb.ir
  %i.ww = phi i64 [ %.pre232.i.i, %bb.ir ], [ %i.wn, %bb.is ], [ %i.wn, %bb.it ]
  %i.wx = add i64 %i.ww, 2
  store i64 %i.wx, ptr %i.ax, align 8, !tbaa !65
  %i.wy = or disjoint i64 %.1163.i.i, 2
  br label %bb.iu

bb.iu:                                            ; preds = %PyUnicode_WRITE.exit213.i.i, %bb.im
  %.2164.i.i = phi i64 [ %i.wy, %PyUnicode_WRITE.exit213.i.i ], [ %.1163.i.i, %bb.im ]
  %i.wz = add i64 %i.wf, -2
  %spec.select207.i.i = call i64 @llvm.smax.i64(i64 %i.wz, i64 0) ; 2 uses
  store i64 %spec.select207.i.i, ptr %i.ap, align 8, !tbaa !69
  %i.xa = add i64 %.2.i43.i, -2
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.il, %bb.ik
  %i.xb = phi i64 [ %spec.select207.i.i, %bb.iu ], [ %i.wf, %bb.il ], [ %i.wf, %bb.ik ] ; 5 uses
  %.3165.i.i = phi i64 [ %.2164.i.i, %bb.iu ], [ %.1163.i.i, %bb.il ], [ %.1163.i.i, %bb.ik ] ; 4 uses
  %.3.i.i = phi i64 [ %i.xa, %bb.iu ], [ %.2.i43.i, %bb.il ], [ %.2.i43.i, %bb.ik ] ; 13 uses
  %i.xc = icmp sle i64 %i.xb, %.3.i.i
  %brmerge.i = or i1 %i.xc, %.not191.i44.i
  br i1 %brmerge.i, label %bb.jb, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.xd = sub i64 %i.xb, %.3.i.i                  ; 4 uses
  %i.xe = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.xf = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %i.xg = ptrtoaddr ptr %i.xf to i64              ; 6 uses
  %i.xh = load i64, ptr %i.ax, align 8, !tbaa !65 ; 13 uses
  switch i32 %i.xe, label %bb.ja [
    i32 1, label %bb.ix
    i32 2, label %bb.iy
    i32 4, label %bb.iz
  ]

bb.ix:                                            ; preds = %bb.iw
  %i.xi = trunc nuw nsw i32 %.0161.i.i to i8
  %i.xj = getelementptr i8, ptr %i.xf, i64 %i.xh
  call void @llvm.memset.p0.i64(ptr align 1 %i.xj, i8 %i.xi, i64 %i.xd, i1 false)
  %.pre233.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit.i.i

bb.iy:                                            ; preds = %bb.iw
  %i.xk = trunc nuw nsw i32 %.0161.i.i to i16     ; 3 uses
  %i.xl = getelementptr [2 x i8], ptr %i.xf, i64 %i.xh ; 7 uses
  %i.xm = getelementptr [2 x i8], ptr %i.xl, i64 %i.xd ; 2 uses
  %i.xn = icmp ult ptr %i.xl, %i.xm
  br i1 %i.xn, label %iter.check742, label %_PyUnicode_Fill.exit.i.i

iter.check742:                                    ; preds = %bb.iy
  %i.xo = shl i64 %i.xb, 1
  %i.xp = add i64 %i.xo, %i.xg
  %i.xq = shl i64 %i.xh, 1                        ; 3 uses
  %i.xr = add i64 %i.xp, %i.xq
  %i.xs = shl i64 %.3.i.i, 1
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = add i64 %i.xg, 2
  %i.xv = add i64 %i.xu, %i.xq
  %umax727 = call i64 @llvm.umax.i64(i64 %i.xt, i64 %i.xv)
  %i.xw = xor i64 %i.xg, -1
  %i.xx = add i64 %umax727, %i.xw
  %i.xy = sub i64 %i.xx, %i.xq                    ; 3 uses
  %i.xz = lshr i64 %i.xy, 1
  %i.ya = add nuw i64 %i.xz, 1                    ; 5 uses
  %min.iters.check729 = icmp ult i64 %i.xy, 6
  br i1 %min.iters.check729, label %.lr.ph30.i.i.i.preheader, label %vector.main.loop.iter.check730

vector.main.loop.iter.check730:                   ; preds = %iter.check742
  %min.iters.check731 = icmp ult i64 %i.xy, 30
  br i1 %min.iters.check731, label %vec.epilog.ph746, label %vector.ph732

vector.ph732:                                     ; preds = %vector.main.loop.iter.check730
  %i.yb = and i64 %i.ya, 12
  %n.vec733 = and i64 %i.ya, -16                  ; 4 uses
  %i.yc = shl i64 %n.vec733, 1
  %i.yd = getelementptr i8, ptr %i.xl, i64 %i.yc
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph732
  %index735 = phi i64 [ 0, %vector.ph732 ], [ %index.next737, %vector.body734 ] ; 2 uses
  %i.ye = shl i64 %index735, 1
  %next.gep736 = getelementptr i8, ptr %i.xl, i64 %i.ye ; 2 uses
  %i.yf = getelementptr i8, ptr %next.gep736, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep736, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.yf, align 2, !tbaa !59
  %index.next737 = add nuw i64 %index735, 16      ; 2 uses
  %i.yg = icmp eq i64 %index.next737, %n.vec733
  br i1 %i.yg, label %middle.block738, label %vector.body734, !llvm.loop !78

middle.block738:                                  ; preds = %vector.body734
  %cmp.n739 = icmp eq i64 %i.ya, %n.vec733
  br i1 %cmp.n739, label %_PyUnicode_Fill.exit.i.i, label %vec.epilog.iter.check744

vec.epilog.iter.check744:                         ; preds = %middle.block738
  %min.epilog.iters.check745 = icmp eq i64 %i.yb, 0
  br i1 %min.epilog.iters.check745, label %.lr.ph30.i.i.i.preheader, label %vec.epilog.ph746, !prof !33

vec.epilog.ph746:                                 ; preds = %vector.main.loop.iter.check730, %vec.epilog.iter.check744
  %vec.epilog.resume.val740 = phi i64 [ %n.vec733, %vec.epilog.iter.check744 ], [ 0, %vector.main.loop.iter.check730 ]
  %n.vec747 = and i64 %i.ya, -4                   ; 3 uses
  %i.yh = shl i64 %n.vec747, 1
  %i.yi = getelementptr i8, ptr %i.xl, i64 %i.yh
  %broadcast.splatinsert748 = insertelement <4 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat749 = shufflevector <4 x i16> %broadcast.splatinsert748, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body750

vec.epilog.vector.body750:                        ; preds = %vec.epilog.vector.body750, %vec.epilog.ph746
  %index751 = phi i64 [ %vec.epilog.resume.val740, %vec.epilog.ph746 ], [ %index.next753, %vec.epilog.vector.body750 ] ; 2 uses
  %i.yj = shl i64 %index751, 1
  %next.gep752 = getelementptr i8, ptr %i.xl, i64 %i.yj
  store <4 x i16> %broadcast.splat749, ptr %next.gep752, align 2, !tbaa !59
  %index.next753 = add nuw i64 %index751, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next753, %n.vec747
  br i1 %i.yk, label %vec.epilog.middle.block754, label %vec.epilog.vector.body750, !llvm.loop !79

vec.epilog.middle.block754:                       ; preds = %vec.epilog.vector.body750
  %cmp.n755 = icmp eq i64 %i.ya, %n.vec747
  br i1 %cmp.n755, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph30.i.i.i.preheader

.lr.ph30.i.i.i.preheader:                         ; preds = %iter.check742, %vec.epilog.iter.check744, %vec.epilog.middle.block754
  %.029.i.i.i.ph = phi ptr [ %i.xl, %iter.check742 ], [ %i.yd, %vec.epilog.iter.check744 ], [ %i.yi, %vec.epilog.middle.block754 ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %.lr.ph30.i.i.i.preheader, %.lr.ph30.i.i.i
  %.029.i.i.i = phi ptr [ %i.yl, %.lr.ph30.i.i.i ], [ %.029.i.i.i.ph, %.lr.ph30.i.i.i.preheader ] ; 2 uses
  store i16 %i.xk, ptr %.029.i.i.i, align 2, !tbaa !59
  %i.yl = getelementptr i8, ptr %.029.i.i.i, i64 2 ; 2 uses
  %i.ym = icmp ult ptr %i.yl, %i.xm
  br i1 %i.ym, label %.lr.ph30.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !80

bb.iz:                                            ; preds = %bb.iw
  %i.yn = getelementptr [4 x i8], ptr %i.xf, i64 %i.xh ; 5 uses
  %i.yo = getelementptr [4 x i8], ptr %i.yn, i64 %i.xd ; 2 uses
  %i.yp = icmp ult ptr %i.yn, %i.yo
  br i1 %i.yp, label %.lr.ph.i.i.i.preheader, label %_PyUnicode_Fill.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iz
  %i.yq = shl i64 %i.xb, 2
  %i.yr = shl i64 %i.xh, 2                        ; 2 uses
  %4 = add i64 %i.yq, %i.xg
  %5 = add i64 %4, %i.yr
  %6 = shl i64 %.3.i.i, 2
  %7 = sub i64 %5, %6
  %i.ys = add i64 %i.yr, %i.xg
  %i.yt = add i64 %i.ys, 4
  %i.yu = call i64 @llvm.umax.i64(i64 %7, i64 %i.yt)
  %8 = xor i64 %i.xg, -1
  %i.yv = add i64 %i.yu, %8
  %9 = shl i64 %i.xh, 2
  %10 = sub i64 %i.yv, %9                         ; 2 uses
  %i.yw = lshr i64 %10, 2
  %i.yx = add nuw nsw i64 %i.yw, 1                ; 2 uses
  %min.iters.check758 = icmp ult i64 %10, 28
  br i1 %min.iters.check758, label %.lr.ph.i.i.i.preheader778, label %vector.ph759

vector.ph759:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec760 = and i64 %i.yx, 9223372036854775800  ; 3 uses
  %i.yy = shl i64 %n.vec760, 2
  %i.yz = getelementptr i8, ptr %i.yn, i64 %i.yy
  %broadcast.splatinsert761 = insertelement <4 x i32> poison, i32 %.0161.i.i, i64 0
  %broadcast.splat762 = shufflevector <4 x i32> %broadcast.splatinsert761, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph759
  %index764 = phi i64 [ 0, %vector.ph759 ], [ %index.next766, %vector.body763 ] ; 2 uses
  %i.za = shl i64 %index764, 2
  %next.gep765 = getelementptr i8, ptr %i.yn, i64 %i.za ; 2 uses
  %i.zb = getelementptr i8, ptr %next.gep765, i64 16
  store <4 x i32> %broadcast.splat762, ptr %next.gep765, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat762, ptr %i.zb, align 4, !tbaa !7
  %index.next766 = add nuw i64 %index764, 8       ; 2 uses
  %i.zc = icmp eq i64 %index.next766, %n.vec760
  br i1 %i.zc, label %middle.block767, label %vector.body763, !llvm.loop !81

middle.block767:                                  ; preds = %vector.body763
  %cmp.n768 = icmp eq i64 %i.yx, %n.vec760
  br i1 %cmp.n768, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph.i.i.i.preheader778

.lr.ph.i.i.i.preheader778:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block767
  %.02628.i.i.i.ph = phi ptr [ %i.yn, %.lr.ph.i.i.i.preheader ], [ %i.yz, %middle.block767 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader778, %.lr.ph.i.i.i
  %.02628.i.i.i = phi ptr [ %i.zd, %.lr.ph.i.i.i ], [ %.02628.i.i.i.ph, %.lr.ph.i.i.i.preheader778 ] ; 2 uses
  store i32 %.0161.i.i, ptr %.02628.i.i.i, align 4, !tbaa !7
  %i.zd = getelementptr i8, ptr %.02628.i.i.i, i64 4 ; 2 uses
  %i.ze = icmp ult ptr %i.zd, %i.yo
  br i1 %i.ze, label %.lr.ph.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !82

bb.ja:                                            ; preds = %bb.iw
  unreachable

_PyUnicode_Fill.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph30.i.i.i, %middle.block767, %middle.block738, %vec.epilog.middle.block754, %bb.iz, %bb.iy, %bb.ix
  %i.zf = phi i64 [ %i.xh, %middle.block738 ], [ %i.xh, %bb.iz ], [ %.pre233.i.i, %bb.ix ], [ %i.xh, %bb.iy ], [ %i.xh, %middle.block767 ], [ %i.xh, %vec.epilog.middle.block754 ], [ %i.xh, %.lr.ph30.i.i.i ], [ %i.xh, %.lr.ph.i.i.i ]
  %i.zg = add i64 %i.zf, %i.xd
  store i64 %i.zg, ptr %i.ax, align 8, !tbaa !65
  store i64 %.3.i.i, ptr %i.ap, align 8, !tbaa !69
  br label %bb.jb

bb.jb:                                            ; preds = %_PyUnicode_Fill.exit.i.i, %bb.iv
  %i.zh = phi i64 [ %.3.i.i, %_PyUnicode_Fill.exit.i.i ], [ %i.xb, %bb.iv ] ; 4 uses
  br i1 %.not196.i33.i, label %bb.jc, label %bb.jq

bb.jc:                                            ; preds = %bb.jb
  %.not200.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not200.i.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.zi = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zj = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.zk = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zi, label %bb.jg [
    i32 1, label %bb.je
    i32 2, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  %i.zl = trunc nuw nsw i32 %.1170.i42.i to i8
  %i.zm = getelementptr i8, ptr %i.zj, i64 %i.zk
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !14
  %.pre234.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit214.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.zn = trunc nuw nsw i32 %.1170.i42.i to i16
  %i.zo = getelementptr [2 x i8], ptr %i.zj, i64 %i.zk
  store i16 %i.zn, ptr %i.zo, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit214.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.zp = getelementptr [4 x i8], ptr %i.zj, i64 %i.zk
  store i32 %.1170.i42.i, ptr %i.zp, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit214.i.i

PyUnicode_WRITE.exit214.i.i:                      ; preds = %bb.jg, %bb.jf, %bb.je
  %i.zq = phi i64 [ %.pre234.i.i, %bb.je ], [ %i.zk, %bb.jf ], [ %i.zk, %bb.jg ]
  %i.zr = add i64 %i.zq, 1
  store i64 %i.zr, ptr %i.ax, align 8, !tbaa !65
  br label %bb.jh

bb.jh:                                            ; preds = %PyUnicode_WRITE.exit214.i.i, %bb.jc
  br i1 %.not197.i53.i, label %bb.jq, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  switch i32 %.0.i68.i, label %bb.jq [
    i32 120, label %bb.jj
    i32 88, label %bb.jj
    i32 111, label %bb.jj
  ]

bb.jj:                                            ; preds = %bb.ji, %bb.ji, %bb.ji
  %i.zs = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zt = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.zu = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zs, label %bb.jm [
    i32 1, label %bb.jk
    i32 2, label %bb.jl
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.zv = getelementptr i8, ptr %i.zt, i64 %i.zu
  store i8 48, ptr %i.zv, align 1, !tbaa !14
  %.pre235.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre236.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit215.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.zw = getelementptr [2 x i8], ptr %i.zt, i64 %i.zu
  store i16 48, ptr %i.zw, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit215.i.i

bb.jm:                                            ; preds = %bb.jj
  %i.zx = getelementptr [4 x i8], ptr %i.zt, i64 %i.zu
  store i32 48, ptr %i.zx, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit215.i.i

PyUnicode_WRITE.exit215.i.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.zy = phi i64 [ %.pre236.i.i, %bb.jk ], [ %i.zu, %bb.jl ], [ %i.zu, %bb.jm ] ; 3 uses
  %i.zz = phi ptr [ %.pre235.i.i, %bb.jk ], [ %i.zt, %bb.jl ], [ %i.zt, %bb.jm ] ; 3 uses
  %i.aaa = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aab = add i64 %i.zy, 1                       ; 3 uses
  switch i32 %i.aaa, label %bb.jp [
    i32 1, label %bb.jn
    i32 2, label %bb.jo
  ]

bb.jn:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aac = trunc nuw nsw i32 %.0.i68.i to i8
  %i.aad = getelementptr i8, ptr %i.zz, i64 %i.aab
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !14
  %.pre237.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit216.i.i

bb.jo:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aae = trunc nuw nsw i32 %.0.i68.i to i16
  %i.aaf = getelementptr [2 x i8], ptr %i.zz, i64 %i.aab
  store i16 %i.aae, ptr %i.aaf, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit216.i.i

bb.jp:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aag = getelementptr [4 x i8], ptr %i.zz, i64 %i.aab
  store i32 %.0.i68.i, ptr %i.aag, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit216.i.i

PyUnicode_WRITE.exit216.i.i:                      ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.aah = phi i64 [ %.pre237.i.i, %bb.jn ], [ %i.zy, %bb.jo ], [ %i.zy, %bb.jp ]
  %i.aai = add i64 %i.aah, 2
  store i64 %i.aai, ptr %i.ax, align 8, !tbaa !65
  %i.aaj = add nuw nsw i64 %.3165.i.i, 2
  br label %bb.jq

bb.jq:                                            ; preds = %PyUnicode_WRITE.exit216.i.i, %bb.ji, %bb.jh, %bb.jb
  %.4.i.i = phi i64 [ %i.aaj, %PyUnicode_WRITE.exit216.i.i ], [ %.3165.i.i, %bb.ji ], [ %.3165.i.i, %bb.jh ], [ %.3165.i.i, %bb.jb ]
  %.not202.i.i = icmp eq i64 %.3.i.i, 0
  br i1 %.not202.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aak = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.aal = load i64, ptr %i.ax, align 8, !tbaa !65
  call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.aak, i64 noundef %i.aal, ptr noundef nonnull %i.tq, i64 noundef %.4.i.i, i64 noundef %.3.i.i) #8
  %i.aam = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.aan = add i64 %i.aam, %.3.i.i
  store i64 %i.aan, ptr %i.ax, align 8, !tbaa !65
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.aao = icmp sgt i64 %i.zh, %.3.i.i
  br i1 %i.aao, label %bb.jt, label %unicode_format_arg_output.exit.i

bb.jt:                                            ; preds = %bb.js
  %i.aap = sub i64 %i.zh, %.3.i.i                 ; 4 uses
  %i.aaq = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aar = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %i.aas = ptrtoaddr ptr %i.aar to i64            ; 6 uses
  %i.aat = load i64, ptr %i.ax, align 8, !tbaa !65 ; 13 uses
  switch i32 %i.aaq, label %bb.jx [
    i32 1, label %bb.ju
    i32 2, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.aau = getelementptr i8, ptr %i.aar, i64 %i.aat
  call void @llvm.memset.p0.i64(ptr align 1 %i.aau, i8 32, i64 %i.aap, i1 false)
  %.pre238.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit221.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.aav = getelementptr [2 x i8], ptr %i.aar, i64 %i.aat ; 7 uses
  %i.aaw = getelementptr [2 x i8], ptr %i.aav, i64 %i.aap ; 2 uses
  %i.aax = icmp ult ptr %i.aav, %i.aaw
  br i1 %i.aax, label %iter.check, label %_PyUnicode_Fill.exit221.i.i

iter.check:                                       ; preds = %bb.jv
  %i.aay = shl i64 %i.zh, 1
  %i.aaz = add i64 %i.aay, %i.aas
  %i.aba = shl i64 %i.aat, 1                      ; 3 uses
  %i.abb = add i64 %i.aaz, %i.aba
  %i.abc = shl i64 %.3.i.i, 1
  %i.abd = sub i64 %i.abb, %i.abc
  %i.abe = add i64 %i.aas, 2
  %i.abf = add i64 %i.abe, %i.aba
  %umax = call i64 @llvm.umax.i64(i64 %i.abd, i64 %i.abf)
  %i.abg = xor i64 %i.aas, -1
  %i.abh = add i64 %umax, %i.abg
  %i.abi = sub i64 %i.abh, %i.aba                 ; 3 uses
  %i.abj = lshr i64 %i.abi, 1
  %i.abk = add nuw i64 %i.abj, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.abi, 6
  br i1 %min.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check711 = icmp ult i64 %i.abi, 30
  br i1 %min.iters.check711, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abl = and i64 %i.abk, 12
  %n.vec = and i64 %i.abk, -16                    ; 4 uses
  %i.abm = shl i64 %n.vec, 1
  %i.abn = getelementptr i8, ptr %i.aav, i64 %i.abm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abo = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aav, i64 %i.abo ; 2 uses
  %i.abp = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !59
  store <8 x i16> splat (i16 32), ptr %i.abp, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abq = icmp eq i64 %index.next, %n.vec
  br i1 %i.abq, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abk, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit221.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec712 = and i64 %i.abk, -4                  ; 3 uses
  %i.abr = shl i64 %n.vec712, 1
  %i.abs = getelementptr i8, ptr %i.aav, i64 %i.abr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index713 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next715, %vec.epilog.vector.body ] ; 2 uses
  %i.abt = shl i64 %index713, 1
  %next.gep714 = getelementptr i8, ptr %i.aav, i64 %i.abt
  store <4 x i16> splat (i16 32), ptr %next.gep714, align 2, !tbaa !59
  %index.next715 = add nuw i64 %index713, 4       ; 2 uses
  %i.abu = icmp eq i64 %index.next715, %n.vec712
  br i1 %i.abu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n716 = icmp eq i64 %i.abk, %n.vec712
  br i1 %cmp.n716, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph30.i219.i.i.preheader

.lr.ph30.i219.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i220.i.i.ph = phi ptr [ %i.aav, %iter.check ], [ %i.abn, %vec.epilog.iter.check ], [ %i.abs, %vec.epilog.middle.block ]
  br label %.lr.ph30.i219.i.i

.lr.ph30.i219.i.i:                                ; preds = %.lr.ph30.i219.i.i.preheader, %.lr.ph30.i219.i.i
  %.029.i220.i.i = phi ptr [ %i.abv, %.lr.ph30.i219.i.i ], [ %.029.i220.i.i.ph, %.lr.ph30.i219.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.029.i220.i.i, align 2, !tbaa !59
  %i.abv = getelementptr i8, ptr %.029.i220.i.i, i64 2 ; 2 uses
  %i.abw = icmp ult ptr %i.abv, %i.aaw
  br i1 %i.abw, label %.lr.ph30.i219.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !86

bb.jw:                                            ; preds = %bb.jt
  %i.abx = getelementptr [4 x i8], ptr %i.aar, i64 %i.aat ; 5 uses
  %i.aby = getelementptr [4 x i8], ptr %i.abx, i64 %i.aap ; 2 uses
  %i.abz = icmp ult ptr %i.abx, %i.aby
  br i1 %i.abz, label %.lr.ph.i217.i.i.preheader, label %_PyUnicode_Fill.exit221.i.i

.lr.ph.i217.i.i.preheader:                        ; preds = %bb.jw
  %i.aca = shl i64 %i.zh, 2
  %i.acb = shl i64 %i.aat, 2                      ; 2 uses
  %11 = add i64 %i.aca, %i.aas
  %12 = add i64 %11, %i.acb
  %13 = shl i64 %.3.i.i, 2
  %14 = sub i64 %12, %13
  %i.acc = add i64 %i.acb, %i.aas
  %i.acd = add i64 %i.acc, 4
  %i.ace = call i64 @llvm.umax.i64(i64 %14, i64 %i.acd)
  %15 = xor i64 %i.aas, -1
  %i.acf = add i64 %i.ace, %15
  %16 = shl i64 %i.aat, 2
  %17 = sub i64 %i.acf, %16                       ; 2 uses
  %i.acg = lshr i64 %17, 2
  %i.ach = add nuw nsw i64 %i.acg, 1              ; 2 uses
  %min.iters.check718 = icmp ult i64 %17, 28
  br i1 %min.iters.check718, label %.lr.ph.i217.i.i.preheader776, label %vector.ph719

vector.ph719:                                     ; preds = %.lr.ph.i217.i.i.preheader
  %n.vec720 = and i64 %i.ach, 9223372036854775800 ; 3 uses
  %i.aci = shl i64 %n.vec720, 2
  %i.acj = getelementptr i8, ptr %i.abx, i64 %i.aci
  br label %vector.body721

vector.body721:                                   ; preds = %vector.body721, %vector.ph719
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next724, %vector.body721 ] ; 2 uses
  %i.ack = shl i64 %index722, 2
  %next.gep723 = getelementptr i8, ptr %i.abx, i64 %i.ack ; 2 uses
  %i.acl = getelementptr i8, ptr %next.gep723, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep723, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.acl, align 4, !tbaa !7
  %index.next724 = add nuw i64 %index722, 8       ; 2 uses
  %i.acm = icmp eq i64 %index.next724, %n.vec720
  br i1 %i.acm, label %middle.block725, label %vector.body721, !llvm.loop !87

middle.block725:                                  ; preds = %vector.body721
  %cmp.n726 = icmp eq i64 %i.ach, %n.vec720
  br i1 %cmp.n726, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph.i217.i.i.preheader776

.lr.ph.i217.i.i.preheader776:                     ; preds = %.lr.ph.i217.i.i.preheader, %middle.block725
  %.02628.i218.i.i.ph = phi ptr [ %i.abx, %.lr.ph.i217.i.i.preheader ], [ %i.acj, %middle.block725 ]
  br label %.lr.ph.i217.i.i

.lr.ph.i217.i.i:                                  ; preds = %.lr.ph.i217.i.i.preheader776, %.lr.ph.i217.i.i
  %.02628.i218.i.i = phi ptr [ %i.acn, %.lr.ph.i217.i.i ], [ %.02628.i218.i.i.ph, %.lr.ph.i217.i.i.preheader776 ] ; 2 uses
  store i32 32, ptr %.02628.i218.i.i, align 4, !tbaa !7
  %i.acn = getelementptr i8, ptr %.02628.i218.i.i, i64 4 ; 2 uses
  %i.aco = icmp ult ptr %i.acn, %i.aby
  br i1 %i.aco, label %.lr.ph.i217.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !88

bb.jx:                                            ; preds = %bb.jt
  unreachable

_PyUnicode_Fill.exit221.i.i:                      ; preds = %.lr.ph.i217.i.i, %.lr.ph30.i219.i.i, %middle.block725, %middle.block, %vec.epilog.middle.block, %bb.jw, %bb.jv, %bb.ju
  %i.acp = phi i64 [ %i.aat, %middle.block ], [ %i.aat, %bb.jw ], [ %.pre238.i.i, %bb.ju ], [ %i.aat, %bb.jv ], [ %i.aat, %middle.block725 ], [ %i.aat, %vec.epilog.middle.block ], [ %i.aat, %.lr.ph30.i219.i.i ], [ %i.aat, %.lr.ph.i217.i.i ]
  %i.acq = add i64 %i.acp, %i.aap
  store i64 %i.acq, ptr %i.ax, align 8, !tbaa !65
  br label %unicode_format_arg_output.exit.i

unicode_format_arg_output.exit.i:                 ; preds = %_PyUnicode_Fill.exit221.i.i, %bb.js, %bb.ic, %bb.gz
  %.0.i54.i = phi i1 [ %i.ty, %bb.gz ], [ true, %bb.ic ], [ false, %_PyUnicode_Fill.exit221.i.i ], [ false, %bb.js ]
  %i.acr = load i32, ptr %i.tq, align 8, !tbaa !14 ; 2 uses
  %.not.i.i47 = icmp sgt i32 %i.acr, -1
  br i1 %.not.i.i47, label %bb.jy, label %Py_DECREF.exit.i

bb.jy:                                            ; preds = %unicode_format_arg_output.exit.i
  %i.acs = add nsw i32 %i.acr, -1                 ; 2 uses
  store i32 %i.acs, ptr %i.tq, align 8, !tbaa !14
  %i.act = icmp eq i32 %i.acs, 0
  br i1 %i.act, label %bb.jz, label %Py_DECREF.exit.i

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.tq) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.jz, %bb.jy, %unicode_format_arg_output.exit.i
  br i1 %.0.i54.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

unicode_format_arg_format.exit.thread93.i:        ; preds = %Py_DECREF.exit.i, %bb.gn, %bb.ff, %Py_DECREF.exit77.i.i.i, %bb.dy
  %i.acu = load ptr, ptr %i.au, align 8, !tbaa !57
  %.not18.i = icmp eq ptr %i.acu, null
  br i1 %.not18.i, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %unicode_format_arg_format.exit.thread93.i
  %i.acv = load i64, ptr %i.af, align 8, !tbaa !55
  %i.acw = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.acx = icmp slt i64 %i.acv, %i.acw
  br i1 %i.acx, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.acy = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.acy, ptr noundef nonnull @.str.5) #8
  br label %unicode_format_arg_parse.exit.thread.i

bb.kc:                                            ; preds = %bb.ka, %unicode_format_arg_format.exit.thread93.i
  %.not.i60.i = icmp eq ptr %i.eu, null
  br i1 %.not.i60.i, label %unicode_format_arg.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.acz = load i32, ptr %i.eu, align 8, !tbaa !14 ; 2 uses
  %.not.i.i61.i = icmp sgt i32 %i.acz, -1
  br i1 %.not.i.i61.i, label %bb.ke, label %unicode_format_arg.exit

bb.ke:                                            ; preds = %bb.kd
  %i.ada = add nsw i32 %i.acz, -1                 ; 2 uses
  store i32 %i.ada, ptr %i.eu, align 8, !tbaa !14
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.kf, label %unicode_format_arg.exit

bb.kf:                                            ; preds = %bb.ke
  call void @_Py_Dealloc(ptr noundef nonnull %i.eu) #8
  br label %unicode_format_arg.exit

unicode_format_arg_parse.exit.thread.i:           ; preds = %Py_DECREF.exit.i, %unicode_format_arg_format.exit.i, %bb.gn, %formatchar.exit.i.i, %bb.fg, %bb.ff, %Py_DECREF.exit.i.i.i, %Py_DECREF.exit77.i.i.i, %bb.dy, %unicode_format_getnextarg.exit.i26.i, %bb.ck, %unicode_format_getnextarg.exit.i.i, %bb.kb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gr, %bb.el, %unicode_format_getnextarg.exit.thread.i23.i, %.thread239.i.i, %bb.dk, %bb.ct, %bb.cj, %bb.cb, %bb.bj, %unicode_format_getnextarg.exit.thread.i.i, %bb.az
  %.not.i63.i = icmp eq ptr %i.eu, null
  br i1 %.not.i63.i, label %unicode_format_arg.exit.thread, label %unicode_format_arg_parse.exit.thread.thread108.i

unicode_format_arg_parse.exit.thread.thread108.i: ; preds = %Py_DECREF.exit.i.i, %unicode_format_arg_parse.exit.thread.i, %bb.fu, %bb.fa, %bb.ev, %bb.cv, %bb.cn, %bb.bl, %bb.bd
  %i.adc = phi ptr [ %i.eu, %unicode_format_arg_parse.exit.thread.i ], [ %i.eu, %bb.bd ], [ %i.eu, %bb.cn ], [ %i.eu, %bb.bl ], [ %i.eu, %bb.fa ], [ %i.eu, %bb.cv ], [ %i.eu, %bb.ev ], [ %i.eu, %bb.fu ], [ %i.eg, %Py_DECREF.exit.i.i ] ; 3 uses
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !14 ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.add, -1
  br i1 %.not.i.i64.i, label %bb.kg, label %unicode_format_arg.exit.thread

bb.kg:                                            ; preds = %unicode_format_arg_parse.exit.thread.thread108.i
  %i.ade = add nsw i32 %i.add, -1                 ; 2 uses
  store i32 %i.ade, ptr %i.adc, align 8, !tbaa !14
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %bb.kh, label %unicode_format_arg.exit.thread

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.adc) #8
  br label %unicode_format_arg.exit.thread

unicode_format_arg.exit.thread:                   ; preds = %bb.y, %.critedge.i21.i, %unicode_format_arg_parse.exit.thread.i, %unicode_format_arg_parse.exit.thread.thread108.i, %bb.kg, %bb.kh, %bb.ae, %.critedge.thread.i.i, %bb.cx, %bb.cy, %bb.cq, %bb.cp, %bb.bn, %bb.bo, %bb.bg, %bb.bf, %bb.as, %bb.ex, %bb.ey, %bb.fc, %bb.fd, %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.loopexit

unicode_format_arg.exit:                          ; preds = %_PyUnicodeWriter_WriteCharInline.exit.i, %bb.kc, %bb.kd, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ki

bb.ki:                                            ; preds = %unicode_format_arg.exit, %.critedge
  %i.adg = load i64, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %i.adh = add i64 %i.adg, -1                     ; 3 uses
  store i64 %i.adh, ptr %i.t, align 8, !tbaa !50
  %i.adi = icmp sgt i64 %i.adh, -1
  br i1 %i.adi, label %bb.k, label %._crit_edge247.loopexit, !llvm.loop !89

._crit_edge247.loopexit:                          ; preds = %bb.ki
  %.pre = load ptr, ptr %i.au, align 8
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %bb.j
  %i.adj = phi ptr [ %.pre, %._crit_edge247.loopexit ], [ %.sink579, %bb.j ]
  %i.adk = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.adl = load i64, ptr %i.ae, align 8, !tbaa !54 ; 3 uses
  %i.adm = icmp sge i64 %i.adk, %i.adl
  %i.adn = icmp ne ptr %i.adj, null
  %or.cond4 = select i1 %i.adm, i1 true, i1 %i.adn
  br i1 %or.cond4, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge247
  %i.ado = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.adp = icmp slt i64 %i.adl, 0                 ; 2 uses
  %i.adq = select i1 %i.adp, i64 0, i64 %i.adk
  %i.adr = select i1 %i.adp, i64 1, i64 %i.adl
  %i.ads = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ado, ptr noundef nonnull @.str.3, i64 noundef %i.adq, i64 noundef %i.adr) #8 ; 0 uses
  br label %.loopexit

bb.kk:                                            ; preds = %._crit_edge247
  %i.adt = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not25 = icmp eq i32 %i.adt, 0
  br i1 %.not25, label %Py_DECREF.exit30, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.adu = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.adv = load i32, ptr %i.adu, align 8, !tbaa !14 ; 2 uses
  %.not.i29 = icmp sgt i32 %i.adv, -1
  br i1 %.not.i29, label %bb.km, label %Py_DECREF.exit30

bb.km:                                            ; preds = %bb.kl
  %i.adw = add nsw i32 %i.adv, -1                 ; 2 uses
  store i32 %i.adw, ptr %i.adu, align 8, !tbaa !14
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %bb.kn, label %Py_DECREF.exit30

bb.kn:                                            ; preds = %bb.km
  call void @_Py_Dealloc(ptr noundef nonnull %i.adu) #8
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk
  %i.ady = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %i.v) #8
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %.critedge, %unicode_format_arg.exit.thread, %bb.kj
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %i.v) #8
  %i.adz = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not28 = icmp eq i32 %i.adz, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.ko

bb.ko:                                            ; preds = %.loopexit
  %i.aea = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.aeb = load i32, ptr %i.aea, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.aeb, -1
  br i1 %.not.i, label %bb.kp, label %Py_DECREF.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aec = add nsw i32 %i.aeb, -1                 ; 2 uses
  store i32 %i.aec, ptr %i.aea, align 8, !tbaa !14
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.kq, label %Py_DECREF.exit
end_hunk_0
