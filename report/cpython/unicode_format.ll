Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_format?download=true
inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicode_Format:bb.a
  %.not.i210.i.i = icmp eq i32 %i.vb, 0
  br i1 %.not.i210.i.i, label %bb.hx, label %PyUnicode_MAX_CHAR_VALUE.exit.i.i

bb.hx:                                            ; preds = %bb.hw
  %i.vc = lshr i32 %i.ud, 2
  %i.vd = and i32 %i.vc, 7                        ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i32 %i.vd, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i.i = icmp eq i32 %i.vd, 1
  %switch.select6.i.i.i = select i1 %switch.selectcmp5.i.i.i, i32 255, i32 %switch.select.i.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i.i

PyUnicode_MAX_CHAR_VALUE.exit.i.i:                ; preds = %bb.hx, %bb.hw
  %.0.i211.i.i = phi i32 [ %switch.select6.i.i.i, %bb.hx ], [ 127, %bb.hw ]
  %i.ve = icmp ugt i32 %.0.i211.i.i, %.0161.i.i
  br i1 %i.ve, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i.i
  %i.vf = add i64 %.1166.i.i, %.2169.i.i
  %i.vg = call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %i.tr, i64 noundef 0, i64 noundef %i.vf) #8
  %i.vh = call i32 @llvm.umax.i32(i32 %.0161.i.i, i32 %i.vg)
  %.pre227.i.i = load i32, ptr %i.av, align 4, !tbaa !63
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %PyUnicode_MAX_CHAR_VALUE.exit.i.i
  %i.vi = phi i32 [ %.pre227.i.i, %bb.hy ], [ %i.uv, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ]
  %i.vj = phi i32 [ %i.ur, %bb.hy ], [ %i.us, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ] ; 3 uses
  %.1.i45.i = phi i32 [ %i.vh, %bb.hy ], [ %.0161.i.i, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ] ; 2 uses
  %.not193.i46.i = icmp ne i32 %i.vj, 0
  %i.vk = icmp eq i64 %.2169.i.i, %i.uu
  %or.cond.i47.i = select i1 %.not193.i46.i, i1 %i.vk, i1 false
  %i.vl = zext i1 %or.cond.i47.i to i64
  %.0162.i.i = add i64 %i.uu, %i.vl               ; 4 uses
  %.not194.i48.i = icmp ugt i32 %.1.i45.i, %i.vi
  br i1 %.not194.i48.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.vm = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.vn = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = icmp sle i64 %.0162.i.i, %i.vo
  %i.vq = icmp eq i64 %.0162.i.i, 0
  %or.cond3.i.i = or i1 %i.vq, %i.vp
  br i1 %or.cond3.i.i, label %.critedge.i50.i, label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  %.old2.i.i = icmp eq i64 %.0162.i.i, 0
  br i1 %.old2.i.i, label %.critedge.i50.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.vr = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %i.v, i64 noundef %.0162.i.i, i32 noundef %.1.i45.i) #8
  %i.vs = icmp eq i32 %i.vr, -1
  br i1 %i.vs, label %unicode_format_arg_output.exit.i, label %.critedge.i50.i

.critedge.i50.i:                                  ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.vt = phi i32 [ %i.vj, %bb.ib ], [ %i.vj, %bb.ia ], [ %i.ur, %bb.ic ]
  %.not195.i51.i = icmp eq i32 %i.vt, 0
  br i1 %.not195.i51.i, label %bb.ik, label %bb.id

bb.id:                                            ; preds = %.critedge.i50.i
  br i1 %.not196.i34.i, label %bb.ii, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.vu = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.vv = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.vw = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.vu, label %bb.ih [
    i32 1, label %bb.if
    i32 2, label %bb.ig
  ]

bb.if:                                            ; preds = %bb.ie
  %i.vx = trunc nuw nsw i32 %.1164.i.i to i8
  %i.vy = getelementptr i8, ptr %i.vv, i64 %i.vw
  store i8 %i.vx, ptr %i.vy, align 1, !tbaa !14
  %.pre229.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit.i52.i

bb.ig:                                            ; preds = %bb.ie
  %i.vz = trunc nuw nsw i32 %.1164.i.i to i16
  %i.wa = getelementptr [2 x i8], ptr %i.vv, i64 %i.vw
  store i16 %i.vz, ptr %i.wa, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit.i52.i

bb.ih:                                            ; preds = %bb.ie
  %i.wb = getelementptr [4 x i8], ptr %i.vv, i64 %i.vw
  store i32 %.1164.i.i, ptr %i.wb, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i52.i

PyUnicode_WRITE.exit.i52.i:                       ; preds = %bb.ih, %bb.ig, %bb.if
  %i.wc = phi i64 [ %.pre229.i.i, %bb.if ], [ %i.vw, %bb.ig ], [ %i.vw, %bb.ih ]
  %i.wd = add i64 %i.wc, 1
  store i64 %i.wd, ptr %i.ax, align 8, !tbaa !65
  br label %bb.ii

bb.ii:                                            ; preds = %PyUnicode_WRITE.exit.i52.i, %bb.id
  %i.we = icmp sgt i64 %i.uu, %.2169.i.i
  br i1 %i.we, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.wf = add nsw i64 %i.uu, -1                   ; 2 uses
  store i64 %i.wf, ptr %i.ap, align 8, !tbaa !69
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %.critedge.i50.i
  %i.wg = phi i64 [ %i.wf, %bb.ij ], [ %i.uu, %bb.ii ], [ %i.uu, %.critedge.i50.i ] ; 3 uses
  %i.wh = and i32 %i.jh, 8
  %.not197.i53.i = icmp eq i32 %i.wh, 0           ; 2 uses
  br i1 %.not197.i53.i, label %bb.iv, label %bb.il

bb.il:                                            ; preds = %bb.ik
  switch i32 %.0.i69.i, label %bb.iv [
    i32 120, label %bb.im
    i32 88, label %bb.im
    i32 111, label %bb.im
  ]

bb.im:                                            ; preds = %bb.il, %bb.il, %bb.il
  br i1 %.not196.i34.i, label %bb.iu, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.wi = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.wj = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.wk = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.wi, label %bb.iq [
    i32 1, label %bb.io
    i32 2, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.wl = getelementptr i8, ptr %i.wj, i64 %i.wk
  store i8 48, ptr %i.wl, align 1, !tbaa !14
  %.pre230.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre231.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit212.i.i

bb.ip:                                            ; preds = %bb.in
  %i.wm = getelementptr [2 x i8], ptr %i.wj, i64 %i.wk
  store i16 48, ptr %i.wm, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit212.i.i

bb.iq:                                            ; preds = %bb.in
  %i.wn = getelementptr [4 x i8], ptr %i.wj, i64 %i.wk
  store i32 48, ptr %i.wn, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit212.i.i

PyUnicode_WRITE.exit212.i.i:                      ; preds = %bb.iq, %bb.ip, %bb.io
  %i.wo = phi i64 [ %.pre231.i.i, %bb.io ], [ %i.wk, %bb.ip ], [ %i.wk, %bb.iq ] ; 3 uses
  %i.wp = phi ptr [ %.pre230.i.i, %bb.io ], [ %i.wj, %bb.ip ], [ %i.wj, %bb.iq ] ; 3 uses
  %i.wq = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.wr = add i64 %i.wo, 1                        ; 3 uses
  switch i32 %i.wq, label %bb.it [
    i32 1, label %bb.ir
    i32 2, label %bb.is
  ]

bb.ir:                                            ; preds = %PyUnicode_WRITE.exit212.i.i
  %i.ws = trunc nuw nsw i32 %.0.i69.i to i8
  %i.wt = getelementptr i8, ptr %i.wp, i64 %i.wr
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !14
  %.pre232.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit213.i.i

bb.is:                                            ; preds = %PyUnicode_WRITE.exit212.i.i
  %i.wu = trunc nuw nsw i32 %.0.i69.i to i16
  %i.wv = getelementptr [2 x i8], ptr %i.wp, i64 %i.wr
  store i16 %i.wu, ptr %i.wv, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit213.i.i

bb.it:                                            ; preds = %PyUnicode_WRITE.exit212.i.i
  %i.ww = getelementptr [4 x i8], ptr %i.wp, i64 %i.wr
  store i32 %.0.i69.i, ptr %i.ww, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit213.i.i

PyUnicode_WRITE.exit213.i.i:                      ; preds = %bb.it, %bb.is, %bb.ir
  %i.wx = phi i64 [ %.pre232.i.i, %bb.ir ], [ %i.wo, %bb.is ], [ %i.wo, %bb.it ]
  %i.wy = add i64 %i.wx, 2
  store i64 %i.wy, ptr %i.ax, align 8, !tbaa !65
  %i.wz = or disjoint i64 %.1166.i.i, 2
  br label %bb.iu

bb.iu:                                            ; preds = %PyUnicode_WRITE.exit213.i.i, %bb.im
  %.2.i54.i = phi i64 [ %i.wz, %PyUnicode_WRITE.exit213.i.i ], [ %.1166.i.i, %bb.im ]
  %i.xa = add i64 %i.wg, -2
  %spec.select207.i.i = call i64 @llvm.smax.i64(i64 %i.xa, i64 0) ; 2 uses
  store i64 %spec.select207.i.i, ptr %i.ap, align 8, !tbaa !69
  %i.xb = add i64 %.2169.i.i, -2
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.il, %bb.ik
  %i.xc = phi i64 [ %spec.select207.i.i, %bb.iu ], [ %i.wg, %bb.il ], [ %i.wg, %bb.ik ] ; 5 uses
  %.3170.i.i = phi i64 [ %i.xb, %bb.iu ], [ %.2169.i.i, %bb.il ], [ %.2169.i.i, %bb.ik ] ; 13 uses
  %.3.i.i = phi i64 [ %.2.i54.i, %bb.iu ], [ %.1166.i.i, %bb.il ], [ %.1166.i.i, %bb.ik ] ; 4 uses
  %i.xd = icmp sle i64 %i.xc, %.3170.i.i
  %brmerge.i = or i1 %i.xd, %.not191.i43.i
  br i1 %brmerge.i, label %bb.jb, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.xe = sub i64 %i.xc, %.3170.i.i               ; 4 uses
  %i.xf = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.xg = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %4 = ptrtoaddr ptr %i.xg to i64                 ; 6 uses
  %i.xh = load i64, ptr %i.ax, align 8, !tbaa !65 ; 12 uses
  switch i32 %i.xf, label %bb.ja [
    i32 1, label %bb.ix
    i32 2, label %bb.iy
    i32 4, label %bb.iz
  ]

bb.ix:                                            ; preds = %bb.iw
  %i.xi = trunc nuw nsw i32 %.0160.i.i to i8
  %i.xj = getelementptr i8, ptr %i.xg, i64 %i.xh
  call void @llvm.memset.p0.i64(ptr align 1 %i.xj, i8 %i.xi, i64 %i.xe, i1 false)
  %.pre233.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit.i.i

bb.iy:                                            ; preds = %bb.iw
  %i.xk = trunc nuw nsw i32 %.0160.i.i to i16     ; 3 uses
  %i.xl = getelementptr [2 x i8], ptr %i.xg, i64 %i.xh ; 7 uses
  %i.xm = getelementptr [2 x i8], ptr %i.xl, i64 %i.xe ; 2 uses
  %i.xn = icmp ult ptr %i.xl, %i.xm
  br i1 %i.xn, label %iter.check741, label %_PyUnicode_Fill.exit.i.i

iter.check741:                                    ; preds = %bb.iy
  %5 = shl i64 %i.xc, 1
  %6 = add i64 %5, %4
  %7 = shl i64 %i.xh, 1                           ; 3 uses
  %8 = add i64 %6, %7
  %i.xo = shl i64 %.3170.i.i, 1
  %9 = sub i64 %8, %i.xo
  %10 = add i64 %4, 2
  %11 = add i64 %10, %7
  %umax726 = call i64 @llvm.umax.i64(i64 %9, i64 %11)
  %i.xp = xor i64 %4, -1
  %12 = add i64 %umax726, %i.xp
  %13 = sub i64 %12, %7                           ; 3 uses
  %14 = lshr i64 %13, 1
  %i.xq = add nuw i64 %14, 1                      ; 5 uses
  %min.iters.check728 = icmp ult i64 %13, 6
  br i1 %min.iters.check728, label %.lr.ph30.i.i.i.preheader, label %vector.main.loop.iter.check729

vector.main.loop.iter.check729:                   ; preds = %iter.check741
  %min.iters.check730 = icmp ult i64 %13, 30
  br i1 %min.iters.check730, label %vec.epilog.ph745, label %vector.ph731

vector.ph731:                                     ; preds = %vector.main.loop.iter.check729
  %i.xr = and i64 %i.xq, 12
  %n.vec732 = and i64 %i.xq, -16                  ; 4 uses
  %i.xs = shl i64 %n.vec732, 1
  %i.xt = getelementptr i8, ptr %i.xl, i64 %i.xs
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body733

vector.body733:                                   ; preds = %vector.body733, %vector.ph731
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next736, %vector.body733 ] ; 2 uses
  %i.xu = shl i64 %index734, 1
  %next.gep735 = getelementptr i8, ptr %i.xl, i64 %i.xu ; 2 uses
  %i.xv = getelementptr i8, ptr %next.gep735, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep735, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.xv, align 2, !tbaa !59
  %index.next736 = add nuw i64 %index734, 16      ; 2 uses
  %i.xw = icmp eq i64 %index.next736, %n.vec732
  br i1 %i.xw, label %middle.block737, label %vector.body733, !llvm.loop !78

middle.block737:                                  ; preds = %vector.body733
  %cmp.n738 = icmp eq i64 %i.xq, %n.vec732
  br i1 %cmp.n738, label %_PyUnicode_Fill.exit.i.i, label %vec.epilog.iter.check743

vec.epilog.iter.check743:                         ; preds = %middle.block737
  %min.epilog.iters.check744 = icmp eq i64 %i.xr, 0
  br i1 %min.epilog.iters.check744, label %.lr.ph30.i.i.i.preheader, label %vec.epilog.ph745, !prof !33

vec.epilog.ph745:                                 ; preds = %vector.main.loop.iter.check729, %vec.epilog.iter.check743
  %vec.epilog.resume.val739 = phi i64 [ %n.vec732, %vec.epilog.iter.check743 ], [ 0, %vector.main.loop.iter.check729 ]
  %n.vec746 = and i64 %i.xq, -4                   ; 3 uses
  %i.xx = shl i64 %n.vec746, 1
  %i.xy = getelementptr i8, ptr %i.xl, i64 %i.xx
  %broadcast.splatinsert747 = insertelement <4 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat748 = shufflevector <4 x i16> %broadcast.splatinsert747, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body749

vec.epilog.vector.body749:                        ; preds = %vec.epilog.vector.body749, %vec.epilog.ph745
  %index750 = phi i64 [ %vec.epilog.resume.val739, %vec.epilog.ph745 ], [ %index.next752, %vec.epilog.vector.body749 ] ; 2 uses
  %i.xz = shl i64 %index750, 1
  %next.gep751 = getelementptr i8, ptr %i.xl, i64 %i.xz
  store <4 x i16> %broadcast.splat748, ptr %next.gep751, align 2, !tbaa !59
  %index.next752 = add nuw i64 %index750, 4       ; 2 uses
  %i.ya = icmp eq i64 %index.next752, %n.vec746
  br i1 %i.ya, label %vec.epilog.middle.block753, label %vec.epilog.vector.body749, !llvm.loop !79

vec.epilog.middle.block753:                       ; preds = %vec.epilog.vector.body749
  %cmp.n754 = icmp eq i64 %i.xq, %n.vec746
  br i1 %cmp.n754, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph30.i.i.i.preheader

.lr.ph30.i.i.i.preheader:                         ; preds = %iter.check741, %vec.epilog.iter.check743, %vec.epilog.middle.block753
  %.02629.i.i.i.ph = phi ptr [ %i.xl, %iter.check741 ], [ %i.xt, %vec.epilog.iter.check743 ], [ %i.xy, %vec.epilog.middle.block753 ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %.lr.ph30.i.i.i.preheader, %.lr.ph30.i.i.i
  %.02629.i.i.i = phi ptr [ %i.yb, %.lr.ph30.i.i.i ], [ %.02629.i.i.i.ph, %.lr.ph30.i.i.i.preheader ] ; 2 uses
  store i16 %i.xk, ptr %.02629.i.i.i, align 2, !tbaa !59
  %i.yb = getelementptr i8, ptr %.02629.i.i.i, i64 2 ; 2 uses
  %i.yc = icmp ult ptr %i.yb, %i.xm
  br i1 %i.yc, label %.lr.ph30.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !80

bb.iz:                                            ; preds = %bb.iw
  %i.yd = getelementptr [4 x i8], ptr %i.xg, i64 %i.xh ; 5 uses
  %i.ye = getelementptr [4 x i8], ptr %i.yd, i64 %i.xe ; 2 uses
  %i.yf = icmp ult ptr %i.yd, %i.ye
  br i1 %i.yf, label %.lr.ph.i.i.i.preheader, label %_PyUnicode_Fill.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iz
  %15 = shl i64 %i.xc, 2
  %16 = shl i64 %i.xh, 2                          ; 3 uses
  %i.yg = shl i64 %.3170.i.i, 2
  %17 = add i64 %15, %4
  %18 = add i64 %17, %16
  %19 = sub i64 %18, %i.yg
  %20 = add i64 %16, %4
  %21 = add i64 %20, 4
  %22 = call i64 @llvm.umax.i64(i64 %19, i64 %21)
  %i.yh = xor i64 %4, -1
  %23 = add i64 %22, %i.yh
  %24 = sub i64 %23, %16                          ; 2 uses
  %25 = lshr i64 %24, 2
  %i.yi = add nuw nsw i64 %25, 1                  ; 2 uses
  %min.iters.check757 = icmp ult i64 %24, 28
  br i1 %min.iters.check757, label %.lr.ph.i.i.i.preheader777, label %vector.ph758

vector.ph758:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec759 = and i64 %i.yi, 9223372036854775800  ; 3 uses
  %i.yj = shl i64 %n.vec759, 2
  %i.yk = getelementptr i8, ptr %i.yd, i64 %i.yj
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %.0160.i.i, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph758
  %index763 = phi i64 [ 0, %vector.ph758 ], [ %index.next765, %vector.body762 ] ; 2 uses
  %i.yl = shl i64 %index763, 2
  %next.gep764 = getelementptr i8, ptr %i.yd, i64 %i.yl ; 2 uses
  %i.ym = getelementptr i8, ptr %next.gep764, i64 16
  store <4 x i32> %broadcast.splat761, ptr %next.gep764, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat761, ptr %i.ym, align 4, !tbaa !7
  %index.next765 = add nuw i64 %index763, 8       ; 2 uses
  %i.yn = icmp eq i64 %index.next765, %n.vec759
  br i1 %i.yn, label %middle.block766, label %vector.body762, !llvm.loop !81

middle.block766:                                  ; preds = %vector.body762
  %cmp.n767 = icmp eq i64 %i.yi, %n.vec759
  br i1 %cmp.n767, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph.i.i.i.preheader777

.lr.ph.i.i.i.preheader777:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block766
  %.028.i.i.i.ph = phi ptr [ %i.yd, %.lr.ph.i.i.i.preheader ], [ %i.yk, %middle.block766 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader777, %.lr.ph.i.i.i
  %.028.i.i.i = phi ptr [ %i.yo, %.lr.ph.i.i.i ], [ %.028.i.i.i.ph, %.lr.ph.i.i.i.preheader777 ] ; 2 uses
  store i32 %.0160.i.i, ptr %.028.i.i.i, align 4, !tbaa !7
  %i.yo = getelementptr i8, ptr %.028.i.i.i, i64 4 ; 2 uses
  %i.yp = icmp ult ptr %i.yo, %i.ye
  br i1 %i.yp, label %.lr.ph.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !82

bb.ja:                                            ; preds = %bb.iw
  unreachable

_PyUnicode_Fill.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph30.i.i.i, %middle.block766, %middle.block737, %vec.epilog.middle.block753, %bb.iz, %bb.iy, %bb.ix
  %i.yq = phi i64 [ %i.xh, %middle.block737 ], [ %i.xh, %bb.iz ], [ %.pre233.i.i, %bb.ix ], [ %i.xh, %bb.iy ], [ %i.xh, %middle.block766 ], [ %i.xh, %vec.epilog.middle.block753 ], [ %i.xh, %.lr.ph30.i.i.i ], [ %i.xh, %.lr.ph.i.i.i ]
  %i.yr = add i64 %i.yq, %i.xe
  store i64 %i.yr, ptr %i.ax, align 8, !tbaa !65
  store i64 %.3170.i.i, ptr %i.ap, align 8, !tbaa !69
  br label %bb.jb

bb.jb:                                            ; preds = %_PyUnicode_Fill.exit.i.i, %bb.iv
  %i.ys = phi i64 [ %.3170.i.i, %_PyUnicode_Fill.exit.i.i ], [ %i.xc, %bb.iv ] ; 4 uses
  br i1 %.not196.i34.i, label %bb.jc, label %bb.jq

bb.jc:                                            ; preds = %bb.jb
  %.not200.i.i = icmp eq i32 %i.ur, 0
  br i1 %.not200.i.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.yt = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.yu = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.yv = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.yt, label %bb.jg [
    i32 1, label %bb.je
    i32 2, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  %i.yw = trunc nuw nsw i32 %.1164.i.i to i8
  %i.yx = getelementptr i8, ptr %i.yu, i64 %i.yv
  store i8 %i.yw, ptr %i.yx, align 1, !tbaa !14
  %.pre234.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit214.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.yy = trunc nuw nsw i32 %.1164.i.i to i16
  %i.yz = getelementptr [2 x i8], ptr %i.yu, i64 %i.yv
  store i16 %i.yy, ptr %i.yz, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit214.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.za = getelementptr [4 x i8], ptr %i.yu, i64 %i.yv
  store i32 %.1164.i.i, ptr %i.za, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit214.i.i

PyUnicode_WRITE.exit214.i.i:                      ; preds = %bb.jg, %bb.jf, %bb.je
  %i.zb = phi i64 [ %.pre234.i.i, %bb.je ], [ %i.yv, %bb.jf ], [ %i.yv, %bb.jg ]
  %i.zc = add i64 %i.zb, 1
  store i64 %i.zc, ptr %i.ax, align 8, !tbaa !65
  br label %bb.jh

bb.jh:                                            ; preds = %PyUnicode_WRITE.exit214.i.i, %bb.jc
  br i1 %.not197.i53.i, label %bb.jq, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  switch i32 %.0.i69.i, label %bb.jq [
    i32 120, label %bb.jj
    i32 88, label %bb.jj
    i32 111, label %bb.jj
  ]

bb.jj:                                            ; preds = %bb.ji, %bb.ji, %bb.ji
  %i.zd = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.ze = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.zf = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zd, label %bb.jm [
    i32 1, label %bb.jk
    i32 2, label %bb.jl
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.zg = getelementptr i8, ptr %i.ze, i64 %i.zf
  store i8 48, ptr %i.zg, align 1, !tbaa !14
  %.pre235.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre236.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit215.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.zh = getelementptr [2 x i8], ptr %i.ze, i64 %i.zf
  store i16 48, ptr %i.zh, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit215.i.i

bb.jm:                                            ; preds = %bb.jj
  %i.zi = getelementptr [4 x i8], ptr %i.ze, i64 %i.zf
  store i32 48, ptr %i.zi, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit215.i.i

PyUnicode_WRITE.exit215.i.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.zj = phi i64 [ %.pre236.i.i, %bb.jk ], [ %i.zf, %bb.jl ], [ %i.zf, %bb.jm ] ; 3 uses
  %i.zk = phi ptr [ %.pre235.i.i, %bb.jk ], [ %i.ze, %bb.jl ], [ %i.ze, %bb.jm ] ; 3 uses
  %i.zl = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zm = add i64 %i.zj, 1                        ; 3 uses
  switch i32 %i.zl, label %bb.jp [
    i32 1, label %bb.jn
    i32 2, label %bb.jo
  ]

bb.jn:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.zn = trunc nuw nsw i32 %.0.i69.i to i8
  %i.zo = getelementptr i8, ptr %i.zk, i64 %i.zm
  store i8 %i.zn, ptr %i.zo, align 1, !tbaa !14
  %.pre237.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit216.i.i

bb.jo:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.zp = trunc nuw nsw i32 %.0.i69.i to i16
  %i.zq = getelementptr [2 x i8], ptr %i.zk, i64 %i.zm
  store i16 %i.zp, ptr %i.zq, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit216.i.i

bb.jp:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.zr = getelementptr [4 x i8], ptr %i.zk, i64 %i.zm
  store i32 %.0.i69.i, ptr %i.zr, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit216.i.i

PyUnicode_WRITE.exit216.i.i:                      ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.zs = phi i64 [ %.pre237.i.i, %bb.jn ], [ %i.zj, %bb.jo ], [ %i.zj, %bb.jp ]
  %i.zt = add i64 %i.zs, 2
  store i64 %i.zt, ptr %i.ax, align 8, !tbaa !65
  %i.zu = add nuw nsw i64 %.3.i.i, 2
  br label %bb.jq

bb.jq:                                            ; preds = %PyUnicode_WRITE.exit216.i.i, %bb.ji, %bb.jh, %bb.jb
  %.4.i.i = phi i64 [ %i.zu, %PyUnicode_WRITE.exit216.i.i ], [ %.3.i.i, %bb.ji ], [ %.3.i.i, %bb.jh ], [ %.3.i.i, %bb.jb ]
  %.not202.i.i = icmp eq i64 %.3170.i.i, 0
  br i1 %.not202.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.zv = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.zw = load i64, ptr %i.ax, align 8, !tbaa !65
  call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.zv, i64 noundef %i.zw, ptr noundef nonnull %i.tr, i64 noundef %.4.i.i, i64 noundef %.3170.i.i) #8
  %i.zx = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.zy = add i64 %i.zx, %.3170.i.i
  store i64 %i.zy, ptr %i.ax, align 8, !tbaa !65
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.zz = icmp sgt i64 %i.ys, %.3170.i.i
  br i1 %i.zz, label %bb.jt, label %unicode_format_arg_output.exit.i

bb.jt:                                            ; preds = %bb.js
  %i.aaa = sub i64 %i.ys, %.3170.i.i              ; 4 uses
  %i.aab = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aac = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %26 = ptrtoaddr ptr %i.aac to i64               ; 6 uses
  %i.aad = load i64, ptr %i.ax, align 8, !tbaa !65 ; 12 uses
  switch i32 %i.aab, label %bb.jx [
    i32 1, label %bb.ju
    i32 2, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.aae = getelementptr i8, ptr %i.aac, i64 %i.aad
  call void @llvm.memset.p0.i64(ptr align 1 %i.aae, i8 32, i64 %i.aaa, i1 false)
  %.pre238.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit221.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.aaf = getelementptr [2 x i8], ptr %i.aac, i64 %i.aad ; 7 uses
  %i.aag = getelementptr [2 x i8], ptr %i.aaf, i64 %i.aaa ; 2 uses
  %i.aah = icmp ult ptr %i.aaf, %i.aag
  br i1 %i.aah, label %iter.check, label %_PyUnicode_Fill.exit221.i.i

iter.check:                                       ; preds = %bb.jv
  %27 = shl i64 %i.ys, 1
  %28 = add i64 %27, %26
  %29 = shl i64 %i.aad, 1                         ; 3 uses
  %30 = add i64 %28, %29
  %i.aai = shl i64 %.3170.i.i, 1
  %31 = sub i64 %30, %i.aai
  %32 = add i64 %26, 2
  %33 = add i64 %32, %29
  %umax = call i64 @llvm.umax.i64(i64 %31, i64 %33)
  %i.aaj = xor i64 %26, -1
  %34 = add i64 %umax, %i.aaj
  %35 = sub i64 %34, %29                          ; 3 uses
  %36 = lshr i64 %35, 1
  %i.aak = add nuw i64 %36, 1                     ; 5 uses
  %min.iters.check = icmp ult i64 %35, 6
  br i1 %min.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check710 = icmp ult i64 %35, 30
  br i1 %min.iters.check710, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aal = and i64 %i.aak, 12
  %n.vec = and i64 %i.aak, -16                    ; 4 uses
  %i.aam = shl i64 %n.vec, 1
  %i.aan = getelementptr i8, ptr %i.aaf, i64 %i.aam
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aao = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aaf, i64 %i.aao ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !59
  store <8 x i16> splat (i16 32), ptr %i.aap, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aaq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaq, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aak, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit221.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aal, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec711 = and i64 %i.aak, -4                  ; 3 uses
  %i.aar = shl i64 %n.vec711, 1
  %i.aas = getelementptr i8, ptr %i.aaf, i64 %i.aar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index712 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next714, %vec.epilog.vector.body ] ; 2 uses
  %i.aat = shl i64 %index712, 1
  %next.gep713 = getelementptr i8, ptr %i.aaf, i64 %i.aat
  store <4 x i16> splat (i16 32), ptr %next.gep713, align 2, !tbaa !59
  %index.next714 = add nuw i64 %index712, 4       ; 2 uses
  %i.aau = icmp eq i64 %index.next714, %n.vec711
  br i1 %i.aau, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n715 = icmp eq i64 %i.aak, %n.vec711
  br i1 %cmp.n715, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph30.i219.i.i.preheader

.lr.ph30.i219.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02629.i220.i.i.ph = phi ptr [ %i.aaf, %iter.check ], [ %i.aan, %vec.epilog.iter.check ], [ %i.aas, %vec.epilog.middle.block ]
  br label %.lr.ph30.i219.i.i

.lr.ph30.i219.i.i:                                ; preds = %.lr.ph30.i219.i.i.preheader, %.lr.ph30.i219.i.i
  %.02629.i220.i.i = phi ptr [ %i.aav, %.lr.ph30.i219.i.i ], [ %.02629.i220.i.i.ph, %.lr.ph30.i219.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.02629.i220.i.i, align 2, !tbaa !59
  %i.aav = getelementptr i8, ptr %.02629.i220.i.i, i64 2 ; 2 uses
  %i.aaw = icmp ult ptr %i.aav, %i.aag
  br i1 %i.aaw, label %.lr.ph30.i219.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !86

bb.jw:                                            ; preds = %bb.jt
  %i.aax = getelementptr [4 x i8], ptr %i.aac, i64 %i.aad ; 5 uses
  %i.aay = getelementptr [4 x i8], ptr %i.aax, i64 %i.aaa ; 2 uses
  %i.aaz = icmp ult ptr %i.aax, %i.aay
  br i1 %i.aaz, label %.lr.ph.i217.i.i.preheader, label %_PyUnicode_Fill.exit221.i.i

.lr.ph.i217.i.i.preheader:                        ; preds = %bb.jw
  %37 = shl i64 %i.ys, 2
  %38 = shl i64 %i.aad, 2                         ; 3 uses
  %i.aba = shl i64 %.3170.i.i, 2
  %39 = add i64 %37, %26
  %40 = add i64 %39, %38
  %41 = sub i64 %40, %i.aba
  %42 = add i64 %38, %26
  %43 = add i64 %42, 4
  %44 = call i64 @llvm.umax.i64(i64 %41, i64 %43)
  %i.abb = xor i64 %26, -1
  %45 = add i64 %44, %i.abb
  %46 = sub i64 %45, %38                          ; 2 uses
  %47 = lshr i64 %46, 2
  %i.abc = add nuw nsw i64 %47, 1                 ; 2 uses
  %min.iters.check717 = icmp ult i64 %46, 28
  br i1 %min.iters.check717, label %.lr.ph.i217.i.i.preheader775, label %vector.ph718

vector.ph718:                                     ; preds = %.lr.ph.i217.i.i.preheader
  %n.vec719 = and i64 %i.abc, 9223372036854775800 ; 3 uses
  %i.abd = shl i64 %n.vec719, 2
  %i.abe = getelementptr i8, ptr %i.aax, i64 %i.abd
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next723, %vector.body720 ] ; 2 uses
  %i.abf = shl i64 %index721, 2
  %next.gep722 = getelementptr i8, ptr %i.aax, i64 %i.abf ; 2 uses
  %i.abg = getelementptr i8, ptr %next.gep722, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep722, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.abg, align 4, !tbaa !7
  %index.next723 = add nuw i64 %index721, 8       ; 2 uses
  %i.abh = icmp eq i64 %index.next723, %n.vec719
  br i1 %i.abh, label %middle.block724, label %vector.body720, !llvm.loop !87

middle.block724:                                  ; preds = %vector.body720
  %cmp.n725 = icmp eq i64 %i.abc, %n.vec719
  br i1 %cmp.n725, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph.i217.i.i.preheader775

.lr.ph.i217.i.i.preheader775:                     ; preds = %.lr.ph.i217.i.i.preheader, %middle.block724
  %.028.i218.i.i.ph = phi ptr [ %i.aax, %.lr.ph.i217.i.i.preheader ], [ %i.abe, %middle.block724 ]
  br label %.lr.ph.i217.i.i

.lr.ph.i217.i.i:                                  ; preds = %.lr.ph.i217.i.i.preheader775, %.lr.ph.i217.i.i
  %.028.i218.i.i = phi ptr [ %i.abi, %.lr.ph.i217.i.i ], [ %.028.i218.i.i.ph, %.lr.ph.i217.i.i.preheader775 ] ; 2 uses
  store i32 32, ptr %.028.i218.i.i, align 4, !tbaa !7
  %i.abi = getelementptr i8, ptr %.028.i218.i.i, i64 4 ; 2 uses
  %i.abj = icmp ult ptr %i.abi, %i.aay
  br i1 %i.abj, label %.lr.ph.i217.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !88

bb.jx:                                            ; preds = %bb.jt
  unreachable

_PyUnicode_Fill.exit221.i.i:                      ; preds = %.lr.ph.i217.i.i, %.lr.ph30.i219.i.i, %middle.block724, %middle.block, %vec.epilog.middle.block, %bb.jw, %bb.jv, %bb.ju
  %i.abk = phi i64 [ %i.aad, %middle.block ], [ %i.aad, %bb.jw ], [ %.pre238.i.i, %bb.ju ], [ %i.aad, %bb.jv ], [ %i.aad, %middle.block724 ], [ %i.aad, %vec.epilog.middle.block ], [ %i.aad, %.lr.ph30.i219.i.i ], [ %i.aad, %.lr.ph.i217.i.i ]
  %i.abl = add i64 %i.abk, %i.aaa
  store i64 %i.abl, ptr %i.ax, align 8, !tbaa !65
  br label %unicode_format_arg_output.exit.i

unicode_format_arg_output.exit.i:                 ; preds = %_PyUnicode_Fill.exit221.i.i, %bb.js, %bb.ic, %bb.gz
  %.0.i55.i = phi i1 [ %i.tz, %bb.gz ], [ true, %bb.ic ], [ false, %_PyUnicode_Fill.exit221.i.i ], [ false, %bb.js ]
  %i.abm = load i32, ptr %i.tr, align 8, !tbaa !14 ; 2 uses
  %.not.i.i47 = icmp sgt i32 %i.abm, -1
  br i1 %.not.i.i47, label %bb.jy, label %Py_DECREF.exit.i

bb.jy:                                            ; preds = %unicode_format_arg_output.exit.i
  %i.abn = add nsw i32 %i.abm, -1                 ; 2 uses
  store i32 %i.abn, ptr %i.tr, align 8, !tbaa !14
  %i.abo = icmp eq i32 %i.abn, 0
  br i1 %i.abo, label %bb.jz, label %Py_DECREF.exit.i

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.tr) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.jz, %bb.jy, %unicode_format_arg_output.exit.i
  br i1 %.0.i55.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread94.i

unicode_format_arg_format.exit.thread94.i:        ; preds = %Py_DECREF.exit.i, %bb.gn, %bb.ff, %Py_DECREF.exit77.i.i.i, %bb.dy
  %i.abp = load ptr, ptr %i.au, align 8, !tbaa !57
  %.not18.i = icmp eq ptr %i.abp, null
  br i1 %.not18.i, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %unicode_format_arg_format.exit.thread94.i
  %i.abq = load i64, ptr %i.af, align 8, !tbaa !55
  %i.abr = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.abs = icmp slt i64 %i.abq, %i.abr
  br i1 %i.abs, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.abt = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.abt, ptr noundef nonnull @.str.5) #8
  br label %unicode_format_arg_parse.exit.thread.i

bb.kc:                                            ; preds = %bb.ka, %unicode_format_arg_format.exit.thread94.i
  %.not.i61.i = icmp eq ptr %i.ev, null
  br i1 %.not.i61.i, label %unicode_format_arg.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.abu = load i32, ptr %i.ev, align 8, !tbaa !14 ; 2 uses
  %.not.i.i62.i = icmp sgt i32 %i.abu, -1
  br i1 %.not.i.i62.i, label %bb.ke, label %unicode_format_arg.exit

bb.ke:                                            ; preds = %bb.kd
  %i.abv = add nsw i32 %i.abu, -1                 ; 2 uses
  store i32 %i.abv, ptr %i.ev, align 8, !tbaa !14
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.kf, label %unicode_format_arg.exit

bb.kf:                                            ; preds = %bb.ke
  call void @_Py_Dealloc(ptr noundef nonnull %i.ev) #8
  br label %unicode_format_arg.exit

unicode_format_arg_parse.exit.thread.i:           ; preds = %Py_DECREF.exit.i, %unicode_format_arg_format.exit.i, %bb.gn, %formatchar.exit.i.i, %bb.fg, %bb.ff, %Py_DECREF.exit.i.i.i, %Py_DECREF.exit77.i.i.i, %bb.dy, %unicode_format_getnextarg.exit.i27.i, %bb.ck, %unicode_format_getnextarg.exit.i.i, %bb.kb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gr, %bb.el, %unicode_format_getnextarg.exit.thread.i24.i, %.thread239.i.i, %bb.dk, %bb.ct, %bb.cj, %bb.cb, %bb.bj, %unicode_format_getnextarg.exit.thread.i.i, %bb.az
  %.not.i64.i = icmp eq ptr %i.ev, null
  br i1 %.not.i64.i, label %unicode_format_arg.exit.thread, label %unicode_format_arg_parse.exit.thread.thread109.i

unicode_format_arg_parse.exit.thread.thread109.i: ; preds = %Py_DECREF.exit.i.i, %unicode_format_arg_parse.exit.thread.i, %bb.fu, %bb.fa, %bb.ev, %bb.cv, %bb.cn, %bb.bl, %bb.bd
  %i.abx = phi ptr [ %i.ev, %unicode_format_arg_parse.exit.thread.i ], [ %i.ev, %bb.bd ], [ %i.ev, %bb.cn ], [ %i.ev, %bb.bl ], [ %i.ev, %bb.fa ], [ %i.ev, %bb.cv ], [ %i.ev, %bb.ev ], [ %i.ev, %bb.fu ], [ %i.eg, %Py_DECREF.exit.i.i ] ; 3 uses
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !14 ; 2 uses
  %.not.i.i65.i = icmp sgt i32 %i.aby, -1
  br i1 %.not.i.i65.i, label %bb.kg, label %unicode_format_arg.exit.thread

bb.kg:                                            ; preds = %unicode_format_arg_parse.exit.thread.thread109.i
  %i.abz = add nsw i32 %i.aby, -1                 ; 2 uses
  store i32 %i.abz, ptr %i.abx, align 8, !tbaa !14
  %i.aca = icmp eq i32 %i.abz, 0
  br i1 %i.aca, label %bb.kh, label %unicode_format_arg.exit.thread

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.abx) #8
  br label %unicode_format_arg.exit.thread

unicode_format_arg.exit.thread:                   ; preds = %bb.y, %.critedge.i22.i, %unicode_format_arg_parse.exit.thread.i, %unicode_format_arg_parse.exit.thread.thread109.i, %bb.kg, %bb.kh, %bb.ae, %.critedge.thread.i.i, %bb.cx, %bb.cy, %bb.cq, %bb.cp, %bb.bn, %bb.bo, %bb.bg, %bb.bf, %bb.as, %bb.ex, %bb.ey, %bb.fc, %bb.fd, %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.loopexit

unicode_format_arg.exit:                          ; preds = %_PyUnicodeWriter_WriteCharInline.exit.i, %bb.kc, %bb.kd, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ki

bb.ki:                                            ; preds = %unicode_format_arg.exit, %.critedge
  %i.acb = load i64, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %i.acc = add i64 %i.acb, -1                     ; 3 uses
  store i64 %i.acc, ptr %i.t, align 8, !tbaa !50
  %i.acd = icmp sgt i64 %i.acc, -1
  br i1 %i.acd, label %bb.k, label %._crit_edge247.loopexit, !llvm.loop !89

._crit_edge247.loopexit:                          ; preds = %bb.ki
  %.pre378 = load ptr, ptr %i.au, align 8
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %bb.j
  %i.ace = phi ptr [ %.pre378, %._crit_edge247.loopexit ], [ %.sink578, %bb.j ]
  %i.acf = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.acg = load i64, ptr %i.ae, align 8, !tbaa !54 ; 3 uses
  %i.ach = icmp sge i64 %i.acf, %i.acg
  %i.aci = icmp ne ptr %i.ace, null
  %or.cond4 = select i1 %i.ach, i1 true, i1 %i.aci
  br i1 %or.cond4, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge247
  %i.acj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ack = icmp slt i64 %i.acg, 0                 ; 2 uses
  %i.acl = select i1 %i.ack, i64 0, i64 %i.acf
  %i.acm = select i1 %i.ack, i64 1, i64 %i.acg
  %i.acn = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.acj, ptr noundef nonnull @.str.3, i64 noundef %i.acl, i64 noundef %i.acm) #8 ; 0 uses
  br label %.loopexit

bb.kk:                                            ; preds = %._crit_edge247
  %i.aco = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not25 = icmp eq i32 %i.aco, 0
  br i1 %.not25, label %Py_DECREF.exit30, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.acp = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.acq = load i32, ptr %i.acp, align 8, !tbaa !14 ; 2 uses
  %.not.i29 = icmp sgt i32 %i.acq, -1
  br i1 %.not.i29, label %bb.km, label %Py_DECREF.exit30

bb.km:                                            ; preds = %bb.kl
  %i.acr = add nsw i32 %i.acq, -1                 ; 2 uses
  store i32 %i.acr, ptr %i.acp, align 8, !tbaa !14
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %bb.kn, label %Py_DECREF.exit30

bb.kn:                                            ; preds = %bb.km
  call void @_Py_Dealloc(ptr noundef nonnull %i.acp) #8
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk
  %i.act = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %i.v) #8
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %.critedge, %unicode_format_arg.exit.thread, %bb.kj
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %i.v) #8
  %i.acu = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not28 = icmp eq i32 %i.acu, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.ko

bb.ko:                                            ; preds = %.loopexit
  %i.acv = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.acw, -1
  br i1 %.not.i, label %bb.kp, label %Py_DECREF.exit

bb.kp:                                            ; preds = %bb.ko
  %i.acx = add nsw i32 %i.acw, -1                 ; 2 uses
  store i32 %i.acx, ptr %i.acv, align 8, !tbaa !14
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.kq, label %Py_DECREF.exit

bb.kq:                                            ; preds = %bb.kp
  call void @_Py_Dealloc(ptr noundef nonnull %i.acv) #8
end_hunk_0
begin_hunk_1_@PyUnicode_Substring
declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_format_getnextarg(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 4 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 2 uses
  %i.f = icmp sgt i64 %i.d, -1                    ; 2 uses
  %or.cond = or i1 %.not, %i.f
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.b, 1
  store i64 %i.g, ptr %i.a, align 8, !tbaa !55
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !58
  %i.i = tail call ptr @PyTuple_GetItem(ptr noundef %i.h, i64 noundef %i.b) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !58
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.a
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.l = icmp slt i64 %i.d, 0
  %spec.select = select i1 %i.l, i64 1, i64 %i.d
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.23, i64 noundef %spec.select) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.f ], [ null, %bb.g ]
  ret ptr %.0
}

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #2

declare ptr @PyTuple_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyLong_FormatWriter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_ASCII(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @formatfloat(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef nonnull %0) #8 ; 2 uses
  %i.b = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.e = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.d) #8
  %.not38 = icmp eq i32 %i.e, 0
  br i1 %.not38, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %.not39 = icmp eq ptr %i.g, null
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.i = load i32, ptr %2, align 8, !tbaa !61
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.g, i32 noundef %i.i, ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11 ; 2 uses
  %i.o = load i32, ptr %2, align 8, !tbaa !61     ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.33, i64 noundef %i.l, i32 noundef %i.o, ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.34, i32 noundef %i.o, ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %spec.store.select = select i1 %i.t, i32 6, i32 %i.s
  %i.u = getelementptr i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68
  %i.w = lshr i32 %i.v, 1
  %spec.select = and i32 %i.w, 4
  %i.x = load i32, ptr %2, align 8, !tbaa !61
  %i.y = trunc i32 %i.x to i8
  %i.z = tail call ptr @PyOS_double_to_string(double noundef %i.a, i8 noundef signext %i.y, i32 noundef %spec.store.select, i32 noundef %spec.select, ptr noundef null) #8 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #9 ; 2 uses
  %.not37 = icmp eq ptr %4, null
  br i1 %.not37, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef nonnull %4, ptr noundef nonnull %i.z, i64 noundef %i.ab) #8
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef nonnull %i.z) #8
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ae = tail call ptr @_PyUnicode_FromASCII(ptr noundef nonnull %i.z, i64 noundef %i.ab) #8
  store ptr %i.ae, ptr %3, align 8, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %i.z) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.c, %bb.g, %bb.h, %bb.e, %bb.n, %bb.l
  %.031 = phi i32 [ 0, %bb.n ], [ -1, %bb.c ], [ -1, %bb.l ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.i ]
  ret i32 %.031
}

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_IsPrintable(i32 noundef) local_unnamed_addr #2

declare i32 @PyNumber_Check(ptr noundef) local_unnamed_addr #2

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Long(ptr noundef) local_unnamed_addr #2

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

declare ptr @PyOS_double_to_string(double noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_FindMaxChar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_PyUnicode_FastCopyCharacters(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS7_object", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!16, !19, i64 16}
!16 = !{!"", !17, i64 0, !19, i64 16, !19, i64 24, !20, i64 32}
!17 = !{!"_object", !9, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 28}
!29 = distinct !{!29, !24, !26, !27}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !24, !26}
!32 = distinct !{!32, !24, !26, !27}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !24, !26, !27}
!35 = distinct !{!35, !24, !27, !26}
!36 = !{!17, !18, i64 8}
!37 = !{!38, !19, i64 168}
!38 = !{!"_typeobject", !39, i64 0, !40, i64 24, !19, i64 32, !19, i64 40, !13, i64 48, !19, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !19, i64 168, !40, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !19, i64 208, !13, i64 216, !13, i64 224, !41, i64 232, !42, i64 240, !43, i64 248, !18, i64 256, !12, i64 264, !13, i64 272, !13, i64 280, !19, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !13, i64 360, !12, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !44, i64 410}
!39 = !{!"PyVarObject", !17, i64 0, !19, i64 16}
!40 = !{!"p1 omnipotent char", !13, i64 0}
!41 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!42 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!43 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!44 = !{!"short", !9, i64 0}
!45 = !{!46, !12, i64 72}
!46 = !{!"unicode_formatter_t", !12, i64 0, !8, i64 8, !19, i64 16, !19, i64 24, !12, i64 32, !8, i64 40, !19, i64 48, !19, i64 56, !13, i64 64, !12, i64 72, !47, i64 80}
!47 = !{!"", !12, i64 0, !13, i64 8, !8, i64 16, !8, i64 20, !19, i64 24, !19, i64 32, !19, i64 40, !8, i64 48, !9, i64 52, !9, i64 53}
!48 = !{!46, !13, i64 64}
!49 = !{!46, !8, i64 40}
!50 = !{!46, !19, i64 48}
!51 = !{!46, !19, i64 56}
!52 = !{!46, !19, i64 120}
!53 = !{!46, !9, i64 132}
!54 = !{!46, !19, i64 16}
!55 = !{!46, !19, i64 24}
!56 = !{!46, !8, i64 8}
!57 = !{!46, !12, i64 32}
!58 = !{!46, !12, i64 0}
!59 = !{!44, !44, i64 0}
!60 = distinct !{!60, !24}
!61 = !{!62, !8, i64 0}
!62 = !{!"unicode_format_arg_t", !8, i64 0, !8, i64 4, !19, i64 8, !8, i64 16, !8, i64 20, !19, i64 24, !12, i64 32}
!63 = !{!47, !8, i64 20}
!64 = !{!47, !19, i64 24}
!65 = !{!47, !19, i64 32}
!66 = !{!47, !8, i64 16}
!67 = !{!47, !13, i64 8}
!68 = !{!62, !8, i64 4}
!69 = !{!62, !19, i64 8}
!70 = !{!62, !8, i64 16}
!71 = !{!62, !8, i64 20}
!72 = !{!62, !19, i64 24}
!73 = !{!62, !12, i64 32}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24, !26, !27}
!79 = distinct !{!79, !24, !26, !27}
!80 = distinct !{!80, !24, !27, !26}
!81 = distinct !{!81, !24, !26, !27}
!82 = distinct !{!82, !24, !27, !26}
!83 = !{!47, !12, i64 0}
!84 = distinct !{!84, !24, !26, !27}
!85 = distinct !{!85, !24, !26, !27}
!86 = distinct !{!86, !24, !27, !26}
!87 = distinct !{!87, !24, !26, !27}
!88 = distinct !{!88, !24, !27, !26}
!89 = distinct !{!89, !24}
end_hunk_1
