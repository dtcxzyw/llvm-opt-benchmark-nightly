Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_format?download=true
inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicode_Format:bb.a

bb.hx:                                            ; preds = %bb.hw
  %i.vb = lshr i32 %i.uc, 2
  %i.vc = and i32 %i.vb, 7                        ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i32 %i.vc, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i.i = icmp eq i32 %i.vc, 1
  %switch.select6.i.i.i = select i1 %switch.selectcmp5.i.i.i, i32 255, i32 %switch.select.i.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i.i

PyUnicode_MAX_CHAR_VALUE.exit.i.i:                ; preds = %bb.hx, %bb.hw
  %.0.i211.i.i = phi i32 [ %switch.select6.i.i.i, %bb.hx ], [ 127, %bb.hw ]
  %i.vd = icmp ugt i32 %.0.i211.i.i, %.0161.i.i
  br i1 %i.vd, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i.i
  %i.ve = add i64 %.1166.i.i, %.2169.i.i
  %i.vf = call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %i.tq, i64 noundef 0, i64 noundef %i.ve) #8
  %i.vg = call i32 @llvm.umax.i32(i32 %.0161.i.i, i32 %i.vf)
  %.pre227.i.i = load i32, ptr %i.av, align 4, !tbaa !63
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %PyUnicode_MAX_CHAR_VALUE.exit.i.i
  %i.vh = phi i32 [ %.pre227.i.i, %bb.hy ], [ %i.uu, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ]
  %i.vi = phi i32 [ %i.uq, %bb.hy ], [ %i.ur, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ] ; 3 uses
  %.1.i44.i = phi i32 [ %i.vg, %bb.hy ], [ %.0161.i.i, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ] ; 2 uses
  %.not193.i45.i = icmp ne i32 %i.vi, 0
  %i.vj = icmp eq i64 %.2169.i.i, %i.ut
  %or.cond.i46.i = select i1 %.not193.i45.i, i1 %i.vj, i1 false
  %i.vk = zext i1 %or.cond.i46.i to i64
  %.0162.i.i = add i64 %i.ut, %i.vk               ; 4 uses
  %.not194.i47.i = icmp ugt i32 %.1.i44.i, %i.vh
  br i1 %.not194.i47.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.vl = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.vm = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = icmp sle i64 %.0162.i.i, %i.vn
  %i.vp = icmp eq i64 %.0162.i.i, 0
  %or.cond3.i.i = or i1 %i.vp, %i.vo
  br i1 %or.cond3.i.i, label %.critedge.i49.i, label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  %.old2.i.i = icmp eq i64 %.0162.i.i, 0
  br i1 %.old2.i.i, label %.critedge.i49.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.vq = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %i.v, i64 noundef %.0162.i.i, i32 noundef %.1.i44.i) #8
  %i.vr = icmp eq i32 %i.vq, -1
  br i1 %i.vr, label %unicode_format_arg_output.exit.i, label %.critedge.i49.i

.critedge.i49.i:                                  ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.vs = phi i32 [ %i.vi, %bb.ib ], [ %i.vi, %bb.ia ], [ %i.uq, %bb.ic ]
  %.not195.i50.i = icmp eq i32 %i.vs, 0
  br i1 %.not195.i50.i, label %bb.ik, label %bb.id

bb.id:                                            ; preds = %.critedge.i49.i
  br i1 %.not196.i33.i, label %bb.ii, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.vt = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.vu = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.vv = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.vt, label %bb.ih [
    i32 1, label %bb.if
    i32 2, label %bb.ig
  ]

bb.if:                                            ; preds = %bb.ie
  %i.vw = trunc nuw nsw i32 %.1164.i.i to i8
  %i.vx = getelementptr i8, ptr %i.vu, i64 %i.vv
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !14
  %.pre229.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit.i51.i

bb.ig:                                            ; preds = %bb.ie
  %i.vy = trunc nuw nsw i32 %.1164.i.i to i16
  %i.vz = getelementptr [2 x i8], ptr %i.vu, i64 %i.vv
  store i16 %i.vy, ptr %i.vz, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit.i51.i

bb.ih:                                            ; preds = %bb.ie
  %i.wa = getelementptr [4 x i8], ptr %i.vu, i64 %i.vv
  store i32 %.1164.i.i, ptr %i.wa, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i51.i

PyUnicode_WRITE.exit.i51.i:                       ; preds = %bb.ih, %bb.ig, %bb.if
  %i.wb = phi i64 [ %.pre229.i.i, %bb.if ], [ %i.vv, %bb.ig ], [ %i.vv, %bb.ih ]
  %i.wc = add i64 %i.wb, 1
  store i64 %i.wc, ptr %i.ax, align 8, !tbaa !65
  br label %bb.ii

bb.ii:                                            ; preds = %PyUnicode_WRITE.exit.i51.i, %bb.id
  %i.wd = icmp sgt i64 %i.ut, %.2169.i.i
  br i1 %i.wd, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.we = add nsw i64 %i.ut, -1                   ; 2 uses
  store i64 %i.we, ptr %i.ap, align 8, !tbaa !69
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %.critedge.i49.i
  %i.wf = phi i64 [ %i.we, %bb.ij ], [ %i.ut, %bb.ii ], [ %i.ut, %.critedge.i49.i ] ; 3 uses
  %i.wg = and i32 %i.jg, 8
  %.not197.i52.i = icmp eq i32 %i.wg, 0           ; 2 uses
  br i1 %.not197.i52.i, label %bb.iv, label %bb.il

bb.il:                                            ; preds = %bb.ik
  switch i32 %.0.i68.i, label %bb.iv [
    i32 120, label %bb.im
    i32 88, label %bb.im
    i32 111, label %bb.im
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
  %i.wy = or disjoint i64 %.1166.i.i, 2
  br label %bb.iu

bb.iu:                                            ; preds = %PyUnicode_WRITE.exit213.i.i, %bb.im
  %.2.i53.i = phi i64 [ %i.wy, %PyUnicode_WRITE.exit213.i.i ], [ %.1166.i.i, %bb.im ]
  %i.wz = add i64 %i.wf, -2
  %spec.select207.i.i = call i64 @llvm.smax.i64(i64 %i.wz, i64 0) ; 2 uses
  store i64 %spec.select207.i.i, ptr %i.ap, align 8, !tbaa !69
  %i.xa = add i64 %.2169.i.i, -2
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.il, %bb.ik
  %i.xb = phi i64 [ %spec.select207.i.i, %bb.iu ], [ %i.wf, %bb.il ], [ %i.wf, %bb.ik ] ; 5 uses
  %.3170.i.i = phi i64 [ %i.xa, %bb.iu ], [ %.2169.i.i, %bb.il ], [ %.2169.i.i, %bb.ik ] ; 13 uses
  %.3.i.i = phi i64 [ %.2.i53.i, %bb.iu ], [ %.1166.i.i, %bb.il ], [ %.1166.i.i, %bb.ik ] ; 4 uses
  %i.xc = icmp sle i64 %i.xb, %.3170.i.i
  %brmerge.i = or i1 %i.xc, %.not191.i42.i
  br i1 %brmerge.i, label %bb.jb, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.xd = sub i64 %i.xb, %.3170.i.i               ; 4 uses
  %i.xe = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.xf = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %i.xg = ptrtoaddr ptr %i.xf to i64              ; 6 uses
  %i.xh = load i64, ptr %i.ax, align 8, !tbaa !65 ; 12 uses
  switch i32 %i.xe, label %bb.ja [
    i32 1, label %bb.ix
    i32 2, label %bb.iy
    i32 4, label %bb.iz
  ]

bb.ix:                                            ; preds = %bb.iw
  %i.xi = trunc nuw nsw i32 %.0160.i.i to i8
  %i.xj = getelementptr i8, ptr %i.xf, i64 %i.xh
  call void @llvm.memset.p0.i64(ptr align 1 %i.xj, i8 %i.xi, i64 %i.xd, i1 false)
  %.pre233.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit.i.i

bb.iy:                                            ; preds = %bb.iw
  %i.xk = trunc nuw nsw i32 %.0160.i.i to i16     ; 3 uses
  %i.xl = getelementptr [2 x i8], ptr %i.xf, i64 %i.xh ; 7 uses
  %i.xm = getelementptr [2 x i8], ptr %i.xl, i64 %i.xd ; 2 uses
  %i.xn = icmp ult ptr %i.xl, %i.xm
  br i1 %i.xn, label %iter.check741, label %_PyUnicode_Fill.exit.i.i

iter.check741:                                    ; preds = %bb.iy
  %i.xo = shl i64 %i.xb, 1
  %i.xp = add i64 %i.xo, %i.xg
  %i.xq = shl i64 %i.xh, 1                        ; 3 uses
  %i.xr = add i64 %i.xp, %i.xq
  %i.xs = shl i64 %.3170.i.i, 1
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = add i64 %i.xg, 2
  %i.xv = add i64 %i.xu, %i.xq
  %umax726 = call i64 @llvm.umax.i64(i64 %i.xt, i64 %i.xv)
  %i.xw = xor i64 %i.xg, -1
  %i.xx = add i64 %umax726, %i.xw
  %i.xy = sub i64 %i.xx, %i.xq                    ; 3 uses
  %i.xz = lshr i64 %i.xy, 1
  %i.ya = add nuw i64 %i.xz, 1                    ; 5 uses
  %min.iters.check728 = icmp ult i64 %i.xy, 6
  br i1 %min.iters.check728, label %.lr.ph30.i.i.i.preheader, label %vector.main.loop.iter.check729

vector.main.loop.iter.check729:                   ; preds = %iter.check741
  %min.iters.check730 = icmp ult i64 %i.xy, 30
  br i1 %min.iters.check730, label %vec.epilog.ph745, label %vector.ph731

vector.ph731:                                     ; preds = %vector.main.loop.iter.check729
  %i.yb = and i64 %i.ya, 12
  %n.vec732 = and i64 %i.ya, -16                  ; 4 uses
  %i.yc = shl i64 %n.vec732, 1
  %i.yd = getelementptr i8, ptr %i.xl, i64 %i.yc
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body733

vector.body733:                                   ; preds = %vector.body733, %vector.ph731
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next736, %vector.body733 ] ; 2 uses
  %i.ye = shl i64 %index734, 1
  %next.gep735 = getelementptr i8, ptr %i.xl, i64 %i.ye ; 2 uses
  %i.yf = getelementptr i8, ptr %next.gep735, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep735, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.yf, align 2, !tbaa !59
  %index.next736 = add nuw i64 %index734, 16      ; 2 uses
  %i.yg = icmp eq i64 %index.next736, %n.vec732
  br i1 %i.yg, label %middle.block737, label %vector.body733, !llvm.loop !78

middle.block737:                                  ; preds = %vector.body733
  %cmp.n738 = icmp eq i64 %i.ya, %n.vec732
  br i1 %cmp.n738, label %_PyUnicode_Fill.exit.i.i, label %vec.epilog.iter.check743

vec.epilog.iter.check743:                         ; preds = %middle.block737
  %min.epilog.iters.check744 = icmp eq i64 %i.yb, 0
  br i1 %min.epilog.iters.check744, label %.lr.ph30.i.i.i.preheader, label %vec.epilog.ph745, !prof !33

vec.epilog.ph745:                                 ; preds = %vector.main.loop.iter.check729, %vec.epilog.iter.check743
  %vec.epilog.resume.val739 = phi i64 [ %n.vec732, %vec.epilog.iter.check743 ], [ 0, %vector.main.loop.iter.check729 ]
  %n.vec746 = and i64 %i.ya, -4                   ; 3 uses
  %i.yh = shl i64 %n.vec746, 1
  %i.yi = getelementptr i8, ptr %i.xl, i64 %i.yh
  %broadcast.splatinsert747 = insertelement <4 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat748 = shufflevector <4 x i16> %broadcast.splatinsert747, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body749

vec.epilog.vector.body749:                        ; preds = %vec.epilog.vector.body749, %vec.epilog.ph745
  %index750 = phi i64 [ %vec.epilog.resume.val739, %vec.epilog.ph745 ], [ %index.next752, %vec.epilog.vector.body749 ] ; 2 uses
  %i.yj = shl i64 %index750, 1
  %next.gep751 = getelementptr i8, ptr %i.xl, i64 %i.yj
  store <4 x i16> %broadcast.splat748, ptr %next.gep751, align 2, !tbaa !59
  %index.next752 = add nuw i64 %index750, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next752, %n.vec746
  br i1 %i.yk, label %vec.epilog.middle.block753, label %vec.epilog.vector.body749, !llvm.loop !79

vec.epilog.middle.block753:                       ; preds = %vec.epilog.vector.body749
  %cmp.n754 = icmp eq i64 %i.ya, %n.vec746
  br i1 %cmp.n754, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph30.i.i.i.preheader

.lr.ph30.i.i.i.preheader:                         ; preds = %iter.check741, %vec.epilog.iter.check743, %vec.epilog.middle.block753
  %.02629.i.i.i.ph = phi ptr [ %i.xl, %iter.check741 ], [ %i.yd, %vec.epilog.iter.check743 ], [ %i.yi, %vec.epilog.middle.block753 ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %.lr.ph30.i.i.i.preheader, %.lr.ph30.i.i.i
  %.02629.i.i.i = phi ptr [ %i.yl, %.lr.ph30.i.i.i ], [ %.02629.i.i.i.ph, %.lr.ph30.i.i.i.preheader ] ; 2 uses
  store i16 %i.xk, ptr %.02629.i.i.i, align 2, !tbaa !59
  %i.yl = getelementptr i8, ptr %.02629.i.i.i, i64 2 ; 2 uses
  %i.ym = icmp ult ptr %i.yl, %i.xm
  br i1 %i.ym, label %.lr.ph30.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !80

bb.iz:                                            ; preds = %bb.iw
  %i.yn = getelementptr [4 x i8], ptr %i.xf, i64 %i.xh ; 5 uses
  %i.yo = getelementptr [4 x i8], ptr %i.yn, i64 %i.xd ; 2 uses
  %i.yp = icmp ult ptr %i.yn, %i.yo
  br i1 %i.yp, label %.lr.ph.i.i.i.preheader, label %_PyUnicode_Fill.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iz
  %i.yq = shl i64 %i.xb, 2
  %i.yr = shl i64 %i.xh, 2                        ; 3 uses
  %4 = shl i64 %.3170.i.i, 2
  %i.ys = add i64 %i.yq, %i.xg
  %5 = add i64 %i.ys, %i.yr
  %i.yt = sub i64 %5, %4
  %i.yu = add i64 %i.yr, %i.xg
  %i.yv = add i64 %i.yu, 4
  %i.yw = call i64 @llvm.umax.i64(i64 %i.yt, i64 %i.yv)
  %i.yx = xor i64 %i.xg, -1
  %i.yy = add i64 %i.yw, %i.yx
  %i.yz = sub i64 %i.yy, %i.yr                    ; 2 uses
  %i.za = lshr i64 %i.yz, 2
  %i.zb = add nuw nsw i64 %i.za, 1                ; 2 uses
  %min.iters.check757 = icmp ult i64 %i.yz, 28
  br i1 %min.iters.check757, label %.lr.ph.i.i.i.preheader777, label %vector.ph758

vector.ph758:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec759 = and i64 %i.zb, 9223372036854775800  ; 3 uses
  %i.zc = shl i64 %n.vec759, 2
  %i.zd = getelementptr i8, ptr %i.yn, i64 %i.zc
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %.0160.i.i, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph758
  %index763 = phi i64 [ 0, %vector.ph758 ], [ %index.next765, %vector.body762 ] ; 2 uses
  %i.ze = shl i64 %index763, 2
  %next.gep764 = getelementptr i8, ptr %i.yn, i64 %i.ze ; 2 uses
  %i.zf = getelementptr i8, ptr %next.gep764, i64 16
  store <4 x i32> %broadcast.splat761, ptr %next.gep764, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat761, ptr %i.zf, align 4, !tbaa !7
  %index.next765 = add nuw i64 %index763, 8       ; 2 uses
  %i.zg = icmp eq i64 %index.next765, %n.vec759
  br i1 %i.zg, label %middle.block766, label %vector.body762, !llvm.loop !81

middle.block766:                                  ; preds = %vector.body762
  %cmp.n767 = icmp eq i64 %i.zb, %n.vec759
  br i1 %cmp.n767, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph.i.i.i.preheader777

.lr.ph.i.i.i.preheader777:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block766
  %.028.i.i.i.ph = phi ptr [ %i.yn, %.lr.ph.i.i.i.preheader ], [ %i.zd, %middle.block766 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader777, %.lr.ph.i.i.i
  %.028.i.i.i = phi ptr [ %i.zh, %.lr.ph.i.i.i ], [ %.028.i.i.i.ph, %.lr.ph.i.i.i.preheader777 ] ; 2 uses
  store i32 %.0160.i.i, ptr %.028.i.i.i, align 4, !tbaa !7
  %i.zh = getelementptr i8, ptr %.028.i.i.i, i64 4 ; 2 uses
  %i.zi = icmp ult ptr %i.zh, %i.yo
  br i1 %i.zi, label %.lr.ph.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !82

bb.ja:                                            ; preds = %bb.iw
  unreachable

_PyUnicode_Fill.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph30.i.i.i, %middle.block766, %middle.block737, %vec.epilog.middle.block753, %bb.iz, %bb.iy, %bb.ix
  %i.zj = phi i64 [ %i.xh, %middle.block737 ], [ %i.xh, %bb.iz ], [ %.pre233.i.i, %bb.ix ], [ %i.xh, %bb.iy ], [ %i.xh, %middle.block766 ], [ %i.xh, %vec.epilog.middle.block753 ], [ %i.xh, %.lr.ph30.i.i.i ], [ %i.xh, %.lr.ph.i.i.i ]
  %i.zk = add i64 %i.zj, %i.xd
  store i64 %i.zk, ptr %i.ax, align 8, !tbaa !65
  store i64 %.3170.i.i, ptr %i.ap, align 8, !tbaa !69
  br label %bb.jb

bb.jb:                                            ; preds = %_PyUnicode_Fill.exit.i.i, %bb.iv
  %i.zl = phi i64 [ %.3170.i.i, %_PyUnicode_Fill.exit.i.i ], [ %i.xb, %bb.iv ] ; 4 uses
  br i1 %.not196.i33.i, label %bb.jc, label %bb.jq

bb.jc:                                            ; preds = %bb.jb
  %.not200.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not200.i.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.zm = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zn = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.zo = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zm, label %bb.jg [
    i32 1, label %bb.je
    i32 2, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  %i.zp = trunc nuw nsw i32 %.1164.i.i to i8
  %i.zq = getelementptr i8, ptr %i.zn, i64 %i.zo
  store i8 %i.zp, ptr %i.zq, align 1, !tbaa !14
  %.pre234.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit214.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.zr = trunc nuw nsw i32 %.1164.i.i to i16
  %i.zs = getelementptr [2 x i8], ptr %i.zn, i64 %i.zo
  store i16 %i.zr, ptr %i.zs, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit214.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.zt = getelementptr [4 x i8], ptr %i.zn, i64 %i.zo
  store i32 %.1164.i.i, ptr %i.zt, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit214.i.i

PyUnicode_WRITE.exit214.i.i:                      ; preds = %bb.jg, %bb.jf, %bb.je
  %i.zu = phi i64 [ %.pre234.i.i, %bb.je ], [ %i.zo, %bb.jf ], [ %i.zo, %bb.jg ]
  %i.zv = add i64 %i.zu, 1
  store i64 %i.zv, ptr %i.ax, align 8, !tbaa !65
  br label %bb.jh

bb.jh:                                            ; preds = %PyUnicode_WRITE.exit214.i.i, %bb.jc
  br i1 %.not197.i52.i, label %bb.jq, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  switch i32 %.0.i68.i, label %bb.jq [
    i32 120, label %bb.jj
    i32 88, label %bb.jj
    i32 111, label %bb.jj
  ]

bb.jj:                                            ; preds = %bb.ji, %bb.ji, %bb.ji
  %i.zw = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zx = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.zy = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zw, label %bb.jm [
    i32 1, label %bb.jk
    i32 2, label %bb.jl
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.zz = getelementptr i8, ptr %i.zx, i64 %i.zy
  store i8 48, ptr %i.zz, align 1, !tbaa !14
  %.pre235.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre236.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit215.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.aaa = getelementptr [2 x i8], ptr %i.zx, i64 %i.zy
  store i16 48, ptr %i.aaa, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit215.i.i

bb.jm:                                            ; preds = %bb.jj
  %i.aab = getelementptr [4 x i8], ptr %i.zx, i64 %i.zy
  store i32 48, ptr %i.aab, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit215.i.i

PyUnicode_WRITE.exit215.i.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.aac = phi i64 [ %.pre236.i.i, %bb.jk ], [ %i.zy, %bb.jl ], [ %i.zy, %bb.jm ] ; 3 uses
  %i.aad = phi ptr [ %.pre235.i.i, %bb.jk ], [ %i.zx, %bb.jl ], [ %i.zx, %bb.jm ] ; 3 uses
  %i.aae = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aaf = add i64 %i.aac, 1                      ; 3 uses
  switch i32 %i.aae, label %bb.jp [
    i32 1, label %bb.jn
    i32 2, label %bb.jo
  ]

bb.jn:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aag = trunc nuw nsw i32 %.0.i68.i to i8
  %i.aah = getelementptr i8, ptr %i.aad, i64 %i.aaf
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !14
  %.pre237.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit216.i.i

bb.jo:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aai = trunc nuw nsw i32 %.0.i68.i to i16
  %i.aaj = getelementptr [2 x i8], ptr %i.aad, i64 %i.aaf
  store i16 %i.aai, ptr %i.aaj, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit216.i.i

bb.jp:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aak = getelementptr [4 x i8], ptr %i.aad, i64 %i.aaf
  store i32 %.0.i68.i, ptr %i.aak, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit216.i.i

PyUnicode_WRITE.exit216.i.i:                      ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.aal = phi i64 [ %.pre237.i.i, %bb.jn ], [ %i.aac, %bb.jo ], [ %i.aac, %bb.jp ]
  %i.aam = add i64 %i.aal, 2
  store i64 %i.aam, ptr %i.ax, align 8, !tbaa !65
  %i.aan = add nuw nsw i64 %.3.i.i, 2
  br label %bb.jq

bb.jq:                                            ; preds = %PyUnicode_WRITE.exit216.i.i, %bb.ji, %bb.jh, %bb.jb
  %.4.i.i = phi i64 [ %i.aan, %PyUnicode_WRITE.exit216.i.i ], [ %.3.i.i, %bb.ji ], [ %.3.i.i, %bb.jh ], [ %.3.i.i, %bb.jb ]
  %.not202.i.i = icmp eq i64 %.3170.i.i, 0
  br i1 %.not202.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aao = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.aap = load i64, ptr %i.ax, align 8, !tbaa !65
  call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.aao, i64 noundef %i.aap, ptr noundef nonnull %i.tq, i64 noundef %.4.i.i, i64 noundef %.3170.i.i) #8
  %i.aaq = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.aar = add i64 %i.aaq, %.3170.i.i
  store i64 %i.aar, ptr %i.ax, align 8, !tbaa !65
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.aas = icmp sgt i64 %i.zl, %.3170.i.i
  br i1 %i.aas, label %bb.jt, label %unicode_format_arg_output.exit.i

bb.jt:                                            ; preds = %bb.js
  %i.aat = sub i64 %i.zl, %.3170.i.i              ; 4 uses
  %i.aau = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aav = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %i.aaw = ptrtoaddr ptr %i.aav to i64            ; 6 uses
  %i.aax = load i64, ptr %i.ax, align 8, !tbaa !65 ; 12 uses
  switch i32 %i.aau, label %bb.jx [
    i32 1, label %bb.ju
    i32 2, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.aay = getelementptr i8, ptr %i.aav, i64 %i.aax
  call void @llvm.memset.p0.i64(ptr align 1 %i.aay, i8 32, i64 %i.aat, i1 false)
  %.pre238.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit221.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.aaz = getelementptr [2 x i8], ptr %i.aav, i64 %i.aax ; 7 uses
  %i.aba = getelementptr [2 x i8], ptr %i.aaz, i64 %i.aat ; 2 uses
  %i.abb = icmp ult ptr %i.aaz, %i.aba
  br i1 %i.abb, label %iter.check, label %_PyUnicode_Fill.exit221.i.i

iter.check:                                       ; preds = %bb.jv
  %i.abc = shl i64 %i.zl, 1
  %i.abd = add i64 %i.abc, %i.aaw
  %i.abe = shl i64 %i.aax, 1                      ; 3 uses
  %i.abf = add i64 %i.abd, %i.abe
  %i.abg = shl i64 %.3170.i.i, 1
  %i.abh = sub i64 %i.abf, %i.abg
  %i.abi = add i64 %i.aaw, 2
  %i.abj = add i64 %i.abi, %i.abe
  %umax = call i64 @llvm.umax.i64(i64 %i.abh, i64 %i.abj)
  %i.abk = xor i64 %i.aaw, -1
  %i.abl = add i64 %umax, %i.abk
  %i.abm = sub i64 %i.abl, %i.abe                 ; 3 uses
  %i.abn = lshr i64 %i.abm, 1
  %i.abo = add nuw i64 %i.abn, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.abm, 6
  br i1 %min.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check710 = icmp ult i64 %i.abm, 30
  br i1 %min.iters.check710, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abp = and i64 %i.abo, 12
  %n.vec = and i64 %i.abo, -16                    ; 4 uses
  %i.abq = shl i64 %n.vec, 1
  %i.abr = getelementptr i8, ptr %i.aaz, i64 %i.abq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aaz, i64 %i.abs ; 2 uses
  %i.abt = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !59
  store <8 x i16> splat (i16 32), ptr %i.abt, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abu = icmp eq i64 %index.next, %n.vec
  br i1 %i.abu, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abo, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit221.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec711 = and i64 %i.abo, -4                  ; 3 uses
  %i.abv = shl i64 %n.vec711, 1
  %i.abw = getelementptr i8, ptr %i.aaz, i64 %i.abv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index712 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next714, %vec.epilog.vector.body ] ; 2 uses
  %i.abx = shl i64 %index712, 1
  %next.gep713 = getelementptr i8, ptr %i.aaz, i64 %i.abx
  store <4 x i16> splat (i16 32), ptr %next.gep713, align 2, !tbaa !59
  %index.next714 = add nuw i64 %index712, 4       ; 2 uses
  %i.aby = icmp eq i64 %index.next714, %n.vec711
  br i1 %i.aby, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n715 = icmp eq i64 %i.abo, %n.vec711
  br i1 %cmp.n715, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph30.i219.i.i.preheader

.lr.ph30.i219.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02629.i220.i.i.ph = phi ptr [ %i.aaz, %iter.check ], [ %i.abr, %vec.epilog.iter.check ], [ %i.abw, %vec.epilog.middle.block ]
  br label %.lr.ph30.i219.i.i

.lr.ph30.i219.i.i:                                ; preds = %.lr.ph30.i219.i.i.preheader, %.lr.ph30.i219.i.i
  %.02629.i220.i.i = phi ptr [ %i.abz, %.lr.ph30.i219.i.i ], [ %.02629.i220.i.i.ph, %.lr.ph30.i219.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.02629.i220.i.i, align 2, !tbaa !59
  %i.abz = getelementptr i8, ptr %.02629.i220.i.i, i64 2 ; 2 uses
  %i.aca = icmp ult ptr %i.abz, %i.aba
  br i1 %i.aca, label %.lr.ph30.i219.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !86

bb.jw:                                            ; preds = %bb.jt
  %i.acb = getelementptr [4 x i8], ptr %i.aav, i64 %i.aax ; 5 uses
  %i.acc = getelementptr [4 x i8], ptr %i.acb, i64 %i.aat ; 2 uses
  %i.acd = icmp ult ptr %i.acb, %i.acc
  br i1 %i.acd, label %.lr.ph.i217.i.i.preheader, label %_PyUnicode_Fill.exit221.i.i

.lr.ph.i217.i.i.preheader:                        ; preds = %bb.jw
  %i.ace = shl i64 %i.zl, 2
  %i.acf = shl i64 %i.aax, 2                      ; 3 uses
  %6 = shl i64 %.3170.i.i, 2
  %i.acg = add i64 %i.ace, %i.aaw
  %7 = add i64 %i.acg, %i.acf
  %i.ach = sub i64 %7, %6
  %i.aci = add i64 %i.acf, %i.aaw
  %i.acj = add i64 %i.aci, 4
  %i.ack = call i64 @llvm.umax.i64(i64 %i.ach, i64 %i.acj)
  %i.acl = xor i64 %i.aaw, -1
  %i.acm = add i64 %i.ack, %i.acl
  %i.acn = sub i64 %i.acm, %i.acf                 ; 2 uses
  %i.aco = lshr i64 %i.acn, 2
  %i.acp = add nuw nsw i64 %i.aco, 1              ; 2 uses
  %min.iters.check717 = icmp ult i64 %i.acn, 28
  br i1 %min.iters.check717, label %.lr.ph.i217.i.i.preheader775, label %vector.ph718

vector.ph718:                                     ; preds = %.lr.ph.i217.i.i.preheader
  %n.vec719 = and i64 %i.acp, 9223372036854775800 ; 3 uses
  %i.acq = shl i64 %n.vec719, 2
  %i.acr = getelementptr i8, ptr %i.acb, i64 %i.acq
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next723, %vector.body720 ] ; 2 uses
  %i.acs = shl i64 %index721, 2
  %next.gep722 = getelementptr i8, ptr %i.acb, i64 %i.acs ; 2 uses
  %i.act = getelementptr i8, ptr %next.gep722, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep722, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.act, align 4, !tbaa !7
  %index.next723 = add nuw i64 %index721, 8       ; 2 uses
  %i.acu = icmp eq i64 %index.next723, %n.vec719
  br i1 %i.acu, label %middle.block724, label %vector.body720, !llvm.loop !87

middle.block724:                                  ; preds = %vector.body720
  %cmp.n725 = icmp eq i64 %i.acp, %n.vec719
  br i1 %cmp.n725, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph.i217.i.i.preheader775

.lr.ph.i217.i.i.preheader775:                     ; preds = %.lr.ph.i217.i.i.preheader, %middle.block724
  %.028.i218.i.i.ph = phi ptr [ %i.acb, %.lr.ph.i217.i.i.preheader ], [ %i.acr, %middle.block724 ]
  br label %.lr.ph.i217.i.i

.lr.ph.i217.i.i:                                  ; preds = %.lr.ph.i217.i.i.preheader775, %.lr.ph.i217.i.i
  %.028.i218.i.i = phi ptr [ %i.acv, %.lr.ph.i217.i.i ], [ %.028.i218.i.i.ph, %.lr.ph.i217.i.i.preheader775 ] ; 2 uses
  store i32 32, ptr %.028.i218.i.i, align 4, !tbaa !7
  %i.acv = getelementptr i8, ptr %.028.i218.i.i, i64 4 ; 2 uses
  %i.acw = icmp ult ptr %i.acv, %i.acc
  br i1 %i.acw, label %.lr.ph.i217.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !88

bb.jx:                                            ; preds = %bb.jt
  unreachable

_PyUnicode_Fill.exit221.i.i:                      ; preds = %.lr.ph.i217.i.i, %.lr.ph30.i219.i.i, %middle.block724, %middle.block, %vec.epilog.middle.block, %bb.jw, %bb.jv, %bb.ju
  %i.acx = phi i64 [ %i.aax, %middle.block ], [ %i.aax, %bb.jw ], [ %.pre238.i.i, %bb.ju ], [ %i.aax, %bb.jv ], [ %i.aax, %middle.block724 ], [ %i.aax, %vec.epilog.middle.block ], [ %i.aax, %.lr.ph30.i219.i.i ], [ %i.aax, %.lr.ph.i217.i.i ]
  %i.acy = add i64 %i.acx, %i.aat
  store i64 %i.acy, ptr %i.ax, align 8, !tbaa !65
  br label %unicode_format_arg_output.exit.i

unicode_format_arg_output.exit.i:                 ; preds = %_PyUnicode_Fill.exit221.i.i, %bb.js, %bb.ic, %bb.gz
  %.0.i54.i = phi i1 [ %i.ty, %bb.gz ], [ true, %bb.ic ], [ false, %_PyUnicode_Fill.exit221.i.i ], [ false, %bb.js ]
  %i.acz = load i32, ptr %i.tq, align 8, !tbaa !14 ; 2 uses
  %.not.i.i47 = icmp sgt i32 %i.acz, -1
  br i1 %.not.i.i47, label %bb.jy, label %Py_DECREF.exit.i

bb.jy:                                            ; preds = %unicode_format_arg_output.exit.i
  %i.ada = add nsw i32 %i.acz, -1                 ; 2 uses
  store i32 %i.ada, ptr %i.tq, align 8, !tbaa !14
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.jz, label %Py_DECREF.exit.i

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.tq) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.jz, %bb.jy, %unicode_format_arg_output.exit.i
  br i1 %.0.i54.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

unicode_format_arg_format.exit.thread93.i:        ; preds = %Py_DECREF.exit.i, %bb.gn, %bb.ff, %Py_DECREF.exit77.i.i.i, %bb.dy
  %i.adc = load ptr, ptr %i.au, align 8, !tbaa !57
  %.not18.i = icmp eq ptr %i.adc, null
  br i1 %.not18.i, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %unicode_format_arg_format.exit.thread93.i
  %i.add = load i64, ptr %i.af, align 8, !tbaa !55
  %i.ade = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.adf = icmp slt i64 %i.add, %i.ade
  br i1 %i.adf, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.adg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.adg, ptr noundef nonnull @.str.5) #8
  br label %unicode_format_arg_parse.exit.thread.i

bb.kc:                                            ; preds = %bb.ka, %unicode_format_arg_format.exit.thread93.i
  %.not.i60.i = icmp eq ptr %i.eu, null
  br i1 %.not.i60.i, label %unicode_format_arg.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.adh = load i32, ptr %i.eu, align 8, !tbaa !14 ; 2 uses
  %.not.i.i61.i = icmp sgt i32 %i.adh, -1
  br i1 %.not.i.i61.i, label %bb.ke, label %unicode_format_arg.exit

bb.ke:                                            ; preds = %bb.kd
  %i.adi = add nsw i32 %i.adh, -1                 ; 2 uses
  store i32 %i.adi, ptr %i.eu, align 8, !tbaa !14
  %i.adj = icmp eq i32 %i.adi, 0
  br i1 %i.adj, label %bb.kf, label %unicode_format_arg.exit

bb.kf:                                            ; preds = %bb.ke
  call void @_Py_Dealloc(ptr noundef nonnull %i.eu) #8
  br label %unicode_format_arg.exit

unicode_format_arg_parse.exit.thread.i:           ; preds = %Py_DECREF.exit.i, %unicode_format_arg_format.exit.i, %bb.gn, %formatchar.exit.i.i, %bb.fg, %bb.ff, %Py_DECREF.exit.i.i.i, %Py_DECREF.exit77.i.i.i, %bb.dy, %unicode_format_getnextarg.exit.i26.i, %bb.ck, %unicode_format_getnextarg.exit.i.i, %bb.kb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gr, %bb.el, %unicode_format_getnextarg.exit.thread.i23.i, %.thread239.i.i, %bb.dk, %bb.ct, %bb.cj, %bb.cb, %bb.bj, %unicode_format_getnextarg.exit.thread.i.i, %bb.az
  %.not.i63.i = icmp eq ptr %i.eu, null
  br i1 %.not.i63.i, label %unicode_format_arg.exit.thread, label %unicode_format_arg_parse.exit.thread.thread108.i

unicode_format_arg_parse.exit.thread.thread108.i: ; preds = %Py_DECREF.exit.i.i, %unicode_format_arg_parse.exit.thread.i, %bb.fu, %bb.fa, %bb.ev, %bb.cv, %bb.cn, %bb.bl, %bb.bd
  %i.adk = phi ptr [ %i.eu, %unicode_format_arg_parse.exit.thread.i ], [ %i.eu, %bb.bd ], [ %i.eu, %bb.cn ], [ %i.eu, %bb.bl ], [ %i.eu, %bb.fa ], [ %i.eu, %bb.cv ], [ %i.eu, %bb.ev ], [ %i.eu, %bb.fu ], [ %i.eg, %Py_DECREF.exit.i.i ] ; 3 uses
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !14 ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.adl, -1
  br i1 %.not.i.i64.i, label %bb.kg, label %unicode_format_arg.exit.thread

bb.kg:                                            ; preds = %unicode_format_arg_parse.exit.thread.thread108.i
  %i.adm = add nsw i32 %i.adl, -1                 ; 2 uses
  store i32 %i.adm, ptr %i.adk, align 8, !tbaa !14
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.kh, label %unicode_format_arg.exit.thread

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.adk) #8
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
  %i.ado = load i64, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %i.adp = add i64 %i.ado, -1                     ; 3 uses
  store i64 %i.adp, ptr %i.t, align 8, !tbaa !50
  %i.adq = icmp sgt i64 %i.adp, -1
  br i1 %i.adq, label %bb.k, label %._crit_edge247.loopexit, !llvm.loop !89

._crit_edge247.loopexit:                          ; preds = %bb.ki
  %.pre = load ptr, ptr %i.au, align 8
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %bb.j
  %i.adr = phi ptr [ %.pre, %._crit_edge247.loopexit ], [ %.sink578, %bb.j ]
  %i.ads = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.adt = load i64, ptr %i.ae, align 8, !tbaa !54 ; 3 uses
  %i.adu = icmp sge i64 %i.ads, %i.adt
  %i.adv = icmp ne ptr %i.adr, null
  %or.cond4 = select i1 %i.adu, i1 true, i1 %i.adv
  br i1 %or.cond4, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge247
  %i.adw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.adx = icmp slt i64 %i.adt, 0                 ; 2 uses
  %i.ady = select i1 %i.adx, i64 0, i64 %i.ads
  %i.adz = select i1 %i.adx, i64 1, i64 %i.adt
  %i.aea = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.adw, ptr noundef nonnull @.str.3, i64 noundef %i.ady, i64 noundef %i.adz) #8 ; 0 uses
  br label %.loopexit

bb.kk:                                            ; preds = %._crit_edge247
  %i.aeb = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not25 = icmp eq i32 %i.aeb, 0
  br i1 %.not25, label %Py_DECREF.exit30, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aec = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !14 ; 2 uses
  %.not.i29 = icmp sgt i32 %i.aed, -1
  br i1 %.not.i29, label %bb.km, label %Py_DECREF.exit30

bb.km:                                            ; preds = %bb.kl
  %i.aee = add nsw i32 %i.aed, -1                 ; 2 uses
  store i32 %i.aee, ptr %i.aec, align 8, !tbaa !14
  %i.aef = icmp eq i32 %i.aee, 0
  br i1 %i.aef, label %bb.kn, label %Py_DECREF.exit30

bb.kn:                                            ; preds = %bb.km
  call void @_Py_Dealloc(ptr noundef nonnull %i.aec) #8
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk
  %i.aeg = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %i.v) #8
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %.critedge, %unicode_format_arg.exit.thread, %bb.kj
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %i.v) #8
  %i.aeh = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not28 = icmp eq i32 %i.aeh, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.ko

bb.ko:                                            ; preds = %.loopexit
  %i.aei = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.aej, -1
  br i1 %.not.i, label %bb.kp, label %Py_DECREF.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aek = add nsw i32 %i.aej, -1                 ; 2 uses
  store i32 %i.aek, ptr %i.aei, align 8, !tbaa !14
  %i.ael = icmp eq i32 %i.aek, 0
  br i1 %i.ael, label %bb.kq, label %Py_DECREF.exit
end_hunk_0
