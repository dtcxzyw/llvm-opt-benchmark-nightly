Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_format?download=true
inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicode_Format:bb.a
  %.not.i210.i.i = icmp eq i32 %i.va, 0
  br i1 %.not.i210.i.i, label %bb.hx, label %PyUnicode_MAX_CHAR_VALUE.exit.i.i

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
  %i.xf = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.xg = load i64, ptr %i.ax, align 8, !tbaa !65 ; 10 uses
  switch i32 %i.xe, label %bb.ja [
    i32 1, label %bb.ix
    i32 2, label %bb.iy
    i32 4, label %bb.iz
  ]

bb.ix:                                            ; preds = %bb.iw
  %i.xh = trunc nuw nsw i32 %.0160.i.i to i8
  %i.xi = getelementptr i8, ptr %i.xf, i64 %i.xg
  call void @llvm.memset.p0.i64(ptr align 1 %i.xi, i8 %i.xh, i64 %i.xd, i1 false)
  %.pre233.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit.i.i

bb.iy:                                            ; preds = %bb.iw
  %i.xj = trunc nuw nsw i32 %.0160.i.i to i16     ; 3 uses
  %i.xk = getelementptr [2 x i8], ptr %i.xf, i64 %i.xg ; 7 uses
  %i.xl = getelementptr [2 x i8], ptr %i.xk, i64 %i.xd ; 2 uses
  %i.xm = icmp ult ptr %i.xk, %i.xl
  br i1 %i.xm, label %iter.check741, label %_PyUnicode_Fill.exit.i.i

iter.check741:                                    ; preds = %bb.iy
  %i.xn = shl i64 %.3170.i.i, 1
  %i.xo = xor i64 %i.xn, -1
  %4 = lshr i64 %i.xo, 1
  %5 = add i64 %4, %i.xb
  %6 = and i64 %5, 9223372036854775807            ; 3 uses
  %i.xp = add nuw i64 %6, 1                       ; 5 uses
  %min.iters.check728 = icmp samesign ult i64 %6, 3
  br i1 %min.iters.check728, label %.lr.ph30.i.i.i.preheader, label %vector.main.loop.iter.check729

vector.main.loop.iter.check729:                   ; preds = %iter.check741
  %min.iters.check730 = icmp samesign ult i64 %6, 15
  br i1 %min.iters.check730, label %vec.epilog.ph745, label %vector.ph731

vector.ph731:                                     ; preds = %vector.main.loop.iter.check729
  %i.xq = and i64 %i.xp, 12
  %n.vec732 = and i64 %i.xp, -16                  ; 4 uses
  %i.xr = shl i64 %n.vec732, 1
  %i.xs = getelementptr i8, ptr %i.xk, i64 %i.xr
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.xj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body733

vector.body733:                                   ; preds = %vector.body733, %vector.ph731
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next736, %vector.body733 ] ; 2 uses
  %i.xt = shl i64 %index734, 1
  %next.gep735 = getelementptr i8, ptr %i.xk, i64 %i.xt ; 2 uses
  %i.xu = getelementptr i8, ptr %next.gep735, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep735, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.xu, align 2, !tbaa !59
  %index.next736 = add nuw i64 %index734, 16      ; 2 uses
  %i.xv = icmp eq i64 %index.next736, %n.vec732
  br i1 %i.xv, label %middle.block737, label %vector.body733, !llvm.loop !78

middle.block737:                                  ; preds = %vector.body733
  %cmp.n738 = icmp eq i64 %i.xp, %n.vec732
  br i1 %cmp.n738, label %_PyUnicode_Fill.exit.i.i, label %vec.epilog.iter.check743

vec.epilog.iter.check743:                         ; preds = %middle.block737
  %min.epilog.iters.check744 = icmp eq i64 %i.xq, 0
  br i1 %min.epilog.iters.check744, label %.lr.ph30.i.i.i.preheader, label %vec.epilog.ph745, !prof !33

vec.epilog.ph745:                                 ; preds = %vector.main.loop.iter.check729, %vec.epilog.iter.check743
  %vec.epilog.resume.val739 = phi i64 [ %n.vec732, %vec.epilog.iter.check743 ], [ 0, %vector.main.loop.iter.check729 ]
  %n.vec746 = and i64 %i.xp, -4                   ; 3 uses
  %i.xw = shl i64 %n.vec746, 1
  %i.xx = getelementptr i8, ptr %i.xk, i64 %i.xw
  %broadcast.splatinsert747 = insertelement <4 x i16> poison, i16 %i.xj, i64 0
  %broadcast.splat748 = shufflevector <4 x i16> %broadcast.splatinsert747, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body749

vec.epilog.vector.body749:                        ; preds = %vec.epilog.vector.body749, %vec.epilog.ph745
  %index750 = phi i64 [ %vec.epilog.resume.val739, %vec.epilog.ph745 ], [ %index.next752, %vec.epilog.vector.body749 ] ; 2 uses
  %i.xy = shl i64 %index750, 1
  %next.gep751 = getelementptr i8, ptr %i.xk, i64 %i.xy
  store <4 x i16> %broadcast.splat748, ptr %next.gep751, align 2, !tbaa !59
  %index.next752 = add nuw i64 %index750, 4       ; 2 uses
  %i.xz = icmp eq i64 %index.next752, %n.vec746
  br i1 %i.xz, label %vec.epilog.middle.block753, label %vec.epilog.vector.body749, !llvm.loop !79

vec.epilog.middle.block753:                       ; preds = %vec.epilog.vector.body749
  %cmp.n754 = icmp eq i64 %i.xp, %n.vec746
  br i1 %cmp.n754, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph30.i.i.i.preheader

.lr.ph30.i.i.i.preheader:                         ; preds = %iter.check741, %vec.epilog.iter.check743, %vec.epilog.middle.block753
  %.02629.i.i.i.ph = phi ptr [ %i.xk, %iter.check741 ], [ %i.xs, %vec.epilog.iter.check743 ], [ %i.xx, %vec.epilog.middle.block753 ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %.lr.ph30.i.i.i.preheader, %.lr.ph30.i.i.i
  %.02629.i.i.i = phi ptr [ %i.ya, %.lr.ph30.i.i.i ], [ %.02629.i.i.i.ph, %.lr.ph30.i.i.i.preheader ] ; 2 uses
  store i16 %i.xj, ptr %.02629.i.i.i, align 2, !tbaa !59
  %i.ya = getelementptr i8, ptr %.02629.i.i.i, i64 2 ; 2 uses
  %i.yb = icmp ult ptr %i.ya, %i.xl
  br i1 %i.yb, label %.lr.ph30.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !80

bb.iz:                                            ; preds = %bb.iw
  %i.yc = getelementptr [4 x i8], ptr %i.xf, i64 %i.xg ; 5 uses
  %i.yd = getelementptr [4 x i8], ptr %i.yc, i64 %i.xd ; 2 uses
  %i.ye = icmp ult ptr %i.yc, %i.yd
  br i1 %i.ye, label %.lr.ph.i.i.i.preheader, label %_PyUnicode_Fill.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iz
  %i.yf = shl i64 %.3170.i.i, 2
  %i.yg = xor i64 %i.yf, -1
  %7 = lshr i64 %i.yg, 2
  %8 = add i64 %7, %i.xb
  %9 = and i64 %8, 4611686018427387903            ; 2 uses
  %i.yh = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check757 = icmp samesign ult i64 %9, 7
  br i1 %min.iters.check757, label %.lr.ph.i.i.i.preheader777, label %vector.ph758

vector.ph758:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec759 = and i64 %i.yh, 9223372036854775800  ; 3 uses
  %i.yi = shl i64 %n.vec759, 2
  %i.yj = getelementptr i8, ptr %i.yc, i64 %i.yi
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %.0160.i.i, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph758
  %index763 = phi i64 [ 0, %vector.ph758 ], [ %index.next765, %vector.body762 ] ; 2 uses
  %i.yk = shl i64 %index763, 2
  %next.gep764 = getelementptr i8, ptr %i.yc, i64 %i.yk ; 2 uses
  %i.yl = getelementptr i8, ptr %next.gep764, i64 16
  store <4 x i32> %broadcast.splat761, ptr %next.gep764, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat761, ptr %i.yl, align 4, !tbaa !7
  %index.next765 = add nuw i64 %index763, 8       ; 2 uses
  %i.ym = icmp eq i64 %index.next765, %n.vec759
  br i1 %i.ym, label %middle.block766, label %vector.body762, !llvm.loop !81

middle.block766:                                  ; preds = %vector.body762
  %cmp.n767 = icmp eq i64 %i.yh, %n.vec759
  br i1 %cmp.n767, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph.i.i.i.preheader777

.lr.ph.i.i.i.preheader777:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block766
  %.028.i.i.i.ph = phi ptr [ %i.yc, %.lr.ph.i.i.i.preheader ], [ %i.yj, %middle.block766 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader777, %.lr.ph.i.i.i
  %.028.i.i.i = phi ptr [ %i.yn, %.lr.ph.i.i.i ], [ %.028.i.i.i.ph, %.lr.ph.i.i.i.preheader777 ] ; 2 uses
  store i32 %.0160.i.i, ptr %.028.i.i.i, align 4, !tbaa !7
  %i.yn = getelementptr i8, ptr %.028.i.i.i, i64 4 ; 2 uses
  %i.yo = icmp ult ptr %i.yn, %i.yd
  br i1 %i.yo, label %.lr.ph.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !82

bb.ja:                                            ; preds = %bb.iw
  unreachable

_PyUnicode_Fill.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph30.i.i.i, %middle.block766, %middle.block737, %vec.epilog.middle.block753, %bb.iz, %bb.iy, %bb.ix
  %i.yp = phi i64 [ %i.xg, %middle.block737 ], [ %i.xg, %bb.iz ], [ %.pre233.i.i, %bb.ix ], [ %i.xg, %bb.iy ], [ %i.xg, %middle.block766 ], [ %i.xg, %vec.epilog.middle.block753 ], [ %i.xg, %.lr.ph30.i.i.i ], [ %i.xg, %.lr.ph.i.i.i ]
  %i.yq = add i64 %i.yp, %i.xd
  store i64 %i.yq, ptr %i.ax, align 8, !tbaa !65
  store i64 %.3170.i.i, ptr %i.ap, align 8, !tbaa !69
  br label %bb.jb

bb.jb:                                            ; preds = %_PyUnicode_Fill.exit.i.i, %bb.iv
  %i.yr = phi i64 [ %.3170.i.i, %_PyUnicode_Fill.exit.i.i ], [ %i.xb, %bb.iv ] ; 4 uses
  br i1 %.not196.i33.i, label %bb.jc, label %bb.jq

bb.jc:                                            ; preds = %bb.jb
  %.not200.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not200.i.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ys = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.yt = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.yu = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.ys, label %bb.jg [
    i32 1, label %bb.je
    i32 2, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  %i.yv = trunc nuw nsw i32 %.1164.i.i to i8
  %i.yw = getelementptr i8, ptr %i.yt, i64 %i.yu
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !14
  %.pre234.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit214.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.yx = trunc nuw nsw i32 %.1164.i.i to i16
  %i.yy = getelementptr [2 x i8], ptr %i.yt, i64 %i.yu
  store i16 %i.yx, ptr %i.yy, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit214.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.yz = getelementptr [4 x i8], ptr %i.yt, i64 %i.yu
  store i32 %.1164.i.i, ptr %i.yz, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit214.i.i

PyUnicode_WRITE.exit214.i.i:                      ; preds = %bb.jg, %bb.jf, %bb.je
  %i.za = phi i64 [ %.pre234.i.i, %bb.je ], [ %i.yu, %bb.jf ], [ %i.yu, %bb.jg ]
  %i.zb = add i64 %i.za, 1
  store i64 %i.zb, ptr %i.ax, align 8, !tbaa !65
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
  %i.zc = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zd = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.ze = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zc, label %bb.jm [
    i32 1, label %bb.jk
    i32 2, label %bb.jl
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.zf = getelementptr i8, ptr %i.zd, i64 %i.ze
  store i8 48, ptr %i.zf, align 1, !tbaa !14
  %.pre235.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre236.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit215.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.zg = getelementptr [2 x i8], ptr %i.zd, i64 %i.ze
  store i16 48, ptr %i.zg, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit215.i.i

bb.jm:                                            ; preds = %bb.jj
  %i.zh = getelementptr [4 x i8], ptr %i.zd, i64 %i.ze
  store i32 48, ptr %i.zh, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit215.i.i

PyUnicode_WRITE.exit215.i.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.zi = phi i64 [ %.pre236.i.i, %bb.jk ], [ %i.ze, %bb.jl ], [ %i.ze, %bb.jm ] ; 3 uses
  %i.zj = phi ptr [ %.pre235.i.i, %bb.jk ], [ %i.zd, %bb.jl ], [ %i.zd, %bb.jm ] ; 3 uses
  %i.zk = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zl = add i64 %i.zi, 1                        ; 3 uses
  switch i32 %i.zk, label %bb.jp [
    i32 1, label %bb.jn
    i32 2, label %bb.jo
  ]

bb.jn:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.zm = trunc nuw nsw i32 %.0.i68.i to i8
  %i.zn = getelementptr i8, ptr %i.zj, i64 %i.zl
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !14
  %.pre237.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit216.i.i

bb.jo:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.zo = trunc nuw nsw i32 %.0.i68.i to i16
  %i.zp = getelementptr [2 x i8], ptr %i.zj, i64 %i.zl
  store i16 %i.zo, ptr %i.zp, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit216.i.i

bb.jp:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.zq = getelementptr [4 x i8], ptr %i.zj, i64 %i.zl
  store i32 %.0.i68.i, ptr %i.zq, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit216.i.i

PyUnicode_WRITE.exit216.i.i:                      ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.zr = phi i64 [ %.pre237.i.i, %bb.jn ], [ %i.zi, %bb.jo ], [ %i.zi, %bb.jp ]
  %i.zs = add i64 %i.zr, 2
  store i64 %i.zs, ptr %i.ax, align 8, !tbaa !65
  %i.zt = add nuw nsw i64 %.3.i.i, 2
  br label %bb.jq

bb.jq:                                            ; preds = %PyUnicode_WRITE.exit216.i.i, %bb.ji, %bb.jh, %bb.jb
  %.4.i.i = phi i64 [ %i.zt, %PyUnicode_WRITE.exit216.i.i ], [ %.3.i.i, %bb.ji ], [ %.3.i.i, %bb.jh ], [ %.3.i.i, %bb.jb ]
  %.not202.i.i = icmp eq i64 %.3170.i.i, 0
  br i1 %.not202.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.zu = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.zv = load i64, ptr %i.ax, align 8, !tbaa !65
  call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.zu, i64 noundef %i.zv, ptr noundef nonnull %i.tq, i64 noundef %.4.i.i, i64 noundef %.3170.i.i) #8
  %i.zw = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.zx = add i64 %i.zw, %.3170.i.i
  store i64 %i.zx, ptr %i.ax, align 8, !tbaa !65
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.zy = icmp sgt i64 %i.yr, %.3170.i.i
  br i1 %i.zy, label %bb.jt, label %unicode_format_arg_output.exit.i

bb.jt:                                            ; preds = %bb.js
  %i.zz = sub i64 %i.yr, %.3170.i.i               ; 4 uses
  %i.aaa = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aab = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.aac = load i64, ptr %i.ax, align 8, !tbaa !65 ; 10 uses
  switch i32 %i.aaa, label %bb.jx [
    i32 1, label %bb.ju
    i32 2, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.aad = getelementptr i8, ptr %i.aab, i64 %i.aac
  call void @llvm.memset.p0.i64(ptr align 1 %i.aad, i8 32, i64 %i.zz, i1 false)
  %.pre238.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit221.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.aae = getelementptr [2 x i8], ptr %i.aab, i64 %i.aac ; 7 uses
  %i.aaf = getelementptr [2 x i8], ptr %i.aae, i64 %i.zz ; 2 uses
  %i.aag = icmp ult ptr %i.aae, %i.aaf
  br i1 %i.aag, label %iter.check, label %_PyUnicode_Fill.exit221.i.i

iter.check:                                       ; preds = %bb.jv
  %i.aah = shl i64 %.3170.i.i, 1
  %i.aai = xor i64 %i.aah, -1
  %10 = lshr i64 %i.aai, 1
  %11 = add i64 %10, %i.yr
  %12 = and i64 %11, 9223372036854775807          ; 3 uses
  %i.aaj = add nuw i64 %12, 1                     ; 5 uses
  %min.iters.check = icmp samesign ult i64 %12, 3
  br i1 %min.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check710 = icmp samesign ult i64 %12, 15
  br i1 %min.iters.check710, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aak = and i64 %i.aaj, 12
  %n.vec = and i64 %i.aaj, -16                    ; 4 uses
  %i.aal = shl i64 %n.vec, 1
  %i.aam = getelementptr i8, ptr %i.aae, i64 %i.aal
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aan = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aae, i64 %i.aan ; 2 uses
  %i.aao = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !59
  store <8 x i16> splat (i16 32), ptr %i.aao, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aap = icmp eq i64 %index.next, %n.vec
  br i1 %i.aap, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aaj, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit221.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec711 = and i64 %i.aaj, -4                  ; 3 uses
  %i.aaq = shl i64 %n.vec711, 1
  %i.aar = getelementptr i8, ptr %i.aae, i64 %i.aaq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index712 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next714, %vec.epilog.vector.body ] ; 2 uses
  %i.aas = shl i64 %index712, 1
  %next.gep713 = getelementptr i8, ptr %i.aae, i64 %i.aas
  store <4 x i16> splat (i16 32), ptr %next.gep713, align 2, !tbaa !59
  %index.next714 = add nuw i64 %index712, 4       ; 2 uses
  %i.aat = icmp eq i64 %index.next714, %n.vec711
  br i1 %i.aat, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n715 = icmp eq i64 %i.aaj, %n.vec711
  br i1 %cmp.n715, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph30.i219.i.i.preheader

.lr.ph30.i219.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02629.i220.i.i.ph = phi ptr [ %i.aae, %iter.check ], [ %i.aam, %vec.epilog.iter.check ], [ %i.aar, %vec.epilog.middle.block ]
  br label %.lr.ph30.i219.i.i

.lr.ph30.i219.i.i:                                ; preds = %.lr.ph30.i219.i.i.preheader, %.lr.ph30.i219.i.i
  %.02629.i220.i.i = phi ptr [ %i.aau, %.lr.ph30.i219.i.i ], [ %.02629.i220.i.i.ph, %.lr.ph30.i219.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.02629.i220.i.i, align 2, !tbaa !59
  %i.aau = getelementptr i8, ptr %.02629.i220.i.i, i64 2 ; 2 uses
  %i.aav = icmp ult ptr %i.aau, %i.aaf
  br i1 %i.aav, label %.lr.ph30.i219.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !86

bb.jw:                                            ; preds = %bb.jt
  %i.aaw = getelementptr [4 x i8], ptr %i.aab, i64 %i.aac ; 5 uses
  %i.aax = getelementptr [4 x i8], ptr %i.aaw, i64 %i.zz ; 2 uses
  %i.aay = icmp ult ptr %i.aaw, %i.aax
  br i1 %i.aay, label %.lr.ph.i217.i.i.preheader, label %_PyUnicode_Fill.exit221.i.i

.lr.ph.i217.i.i.preheader:                        ; preds = %bb.jw
  %i.aaz = shl i64 %.3170.i.i, 2
  %i.aba = xor i64 %i.aaz, -1
  %13 = lshr i64 %i.aba, 2
  %14 = add i64 %13, %i.yr
  %15 = and i64 %14, 4611686018427387903          ; 2 uses
  %i.abb = add nuw nsw i64 %15, 1                 ; 2 uses
  %min.iters.check717 = icmp samesign ult i64 %15, 7
  br i1 %min.iters.check717, label %.lr.ph.i217.i.i.preheader775, label %vector.ph718

vector.ph718:                                     ; preds = %.lr.ph.i217.i.i.preheader
  %n.vec719 = and i64 %i.abb, 9223372036854775800 ; 3 uses
  %i.abc = shl i64 %n.vec719, 2
  %i.abd = getelementptr i8, ptr %i.aaw, i64 %i.abc
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next723, %vector.body720 ] ; 2 uses
  %i.abe = shl i64 %index721, 2
  %next.gep722 = getelementptr i8, ptr %i.aaw, i64 %i.abe ; 2 uses
  %i.abf = getelementptr i8, ptr %next.gep722, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep722, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.abf, align 4, !tbaa !7
  %index.next723 = add nuw i64 %index721, 8       ; 2 uses
  %i.abg = icmp eq i64 %index.next723, %n.vec719
  br i1 %i.abg, label %middle.block724, label %vector.body720, !llvm.loop !87

middle.block724:                                  ; preds = %vector.body720
  %cmp.n725 = icmp eq i64 %i.abb, %n.vec719
  br i1 %cmp.n725, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph.i217.i.i.preheader775

.lr.ph.i217.i.i.preheader775:                     ; preds = %.lr.ph.i217.i.i.preheader, %middle.block724
  %.028.i218.i.i.ph = phi ptr [ %i.aaw, %.lr.ph.i217.i.i.preheader ], [ %i.abd, %middle.block724 ]
  br label %.lr.ph.i217.i.i

.lr.ph.i217.i.i:                                  ; preds = %.lr.ph.i217.i.i.preheader775, %.lr.ph.i217.i.i
  %.028.i218.i.i = phi ptr [ %i.abh, %.lr.ph.i217.i.i ], [ %.028.i218.i.i.ph, %.lr.ph.i217.i.i.preheader775 ] ; 2 uses
  store i32 32, ptr %.028.i218.i.i, align 4, !tbaa !7
  %i.abh = getelementptr i8, ptr %.028.i218.i.i, i64 4 ; 2 uses
  %i.abi = icmp ult ptr %i.abh, %i.aax
  br i1 %i.abi, label %.lr.ph.i217.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !88

bb.jx:                                            ; preds = %bb.jt
  unreachable

_PyUnicode_Fill.exit221.i.i:                      ; preds = %.lr.ph.i217.i.i, %.lr.ph30.i219.i.i, %middle.block724, %middle.block, %vec.epilog.middle.block, %bb.jw, %bb.jv, %bb.ju
  %i.abj = phi i64 [ %i.aac, %middle.block ], [ %i.aac, %bb.jw ], [ %.pre238.i.i, %bb.ju ], [ %i.aac, %bb.jv ], [ %i.aac, %middle.block724 ], [ %i.aac, %vec.epilog.middle.block ], [ %i.aac, %.lr.ph30.i219.i.i ], [ %i.aac, %.lr.ph.i217.i.i ]
  %i.abk = add i64 %i.abj, %i.zz
  store i64 %i.abk, ptr %i.ax, align 8, !tbaa !65
  br label %unicode_format_arg_output.exit.i

unicode_format_arg_output.exit.i:                 ; preds = %_PyUnicode_Fill.exit221.i.i, %bb.js, %bb.ic, %bb.gz
  %.0.i54.i = phi i1 [ %i.ty, %bb.gz ], [ true, %bb.ic ], [ false, %_PyUnicode_Fill.exit221.i.i ], [ false, %bb.js ]
  %i.abl = load i32, ptr %i.tq, align 8, !tbaa !14 ; 2 uses
  %.not.i.i47 = icmp sgt i32 %i.abl, -1
  br i1 %.not.i.i47, label %bb.jy, label %Py_DECREF.exit.i

bb.jy:                                            ; preds = %unicode_format_arg_output.exit.i
  %i.abm = add nsw i32 %i.abl, -1                 ; 2 uses
  store i32 %i.abm, ptr %i.tq, align 8, !tbaa !14
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %bb.jz, label %Py_DECREF.exit.i

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.tq) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.jz, %bb.jy, %unicode_format_arg_output.exit.i
  br i1 %.0.i54.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

unicode_format_arg_format.exit.thread93.i:        ; preds = %Py_DECREF.exit.i, %bb.gn, %bb.ff, %Py_DECREF.exit77.i.i.i, %bb.dy
  %i.abo = load ptr, ptr %i.au, align 8, !tbaa !57
  %.not18.i = icmp eq ptr %i.abo, null
  br i1 %.not18.i, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %unicode_format_arg_format.exit.thread93.i
  %i.abp = load i64, ptr %i.af, align 8, !tbaa !55
  %i.abq = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.abr = icmp slt i64 %i.abp, %i.abq
  br i1 %i.abr, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.abs = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.abs, ptr noundef nonnull @.str.5) #8
  br label %unicode_format_arg_parse.exit.thread.i

bb.kc:                                            ; preds = %bb.ka, %unicode_format_arg_format.exit.thread93.i
  %.not.i60.i = icmp eq ptr %i.eu, null
  br i1 %.not.i60.i, label %unicode_format_arg.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.abt = load i32, ptr %i.eu, align 8, !tbaa !14 ; 2 uses
  %.not.i.i61.i = icmp sgt i32 %i.abt, -1
  br i1 %.not.i.i61.i, label %bb.ke, label %unicode_format_arg.exit

bb.ke:                                            ; preds = %bb.kd
  %i.abu = add nsw i32 %i.abt, -1                 ; 2 uses
  store i32 %i.abu, ptr %i.eu, align 8, !tbaa !14
  %i.abv = icmp eq i32 %i.abu, 0
  br i1 %i.abv, label %bb.kf, label %unicode_format_arg.exit

bb.kf:                                            ; preds = %bb.ke
  call void @_Py_Dealloc(ptr noundef nonnull %i.eu) #8
  br label %unicode_format_arg.exit

unicode_format_arg_parse.exit.thread.i:           ; preds = %Py_DECREF.exit.i, %unicode_format_arg_format.exit.i, %bb.gn, %formatchar.exit.i.i, %bb.fg, %bb.ff, %Py_DECREF.exit.i.i.i, %Py_DECREF.exit77.i.i.i, %bb.dy, %unicode_format_getnextarg.exit.i26.i, %bb.ck, %unicode_format_getnextarg.exit.i.i, %bb.kb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gr, %bb.el, %unicode_format_getnextarg.exit.thread.i23.i, %.thread239.i.i, %bb.dk, %bb.ct, %bb.cj, %bb.cb, %bb.bj, %unicode_format_getnextarg.exit.thread.i.i, %bb.az
  %.not.i63.i = icmp eq ptr %i.eu, null
  br i1 %.not.i63.i, label %unicode_format_arg.exit.thread, label %unicode_format_arg_parse.exit.thread.thread108.i

unicode_format_arg_parse.exit.thread.thread108.i: ; preds = %Py_DECREF.exit.i.i, %unicode_format_arg_parse.exit.thread.i, %bb.fu, %bb.fa, %bb.ev, %bb.cv, %bb.cn, %bb.bl, %bb.bd
  %i.abw = phi ptr [ %i.eu, %unicode_format_arg_parse.exit.thread.i ], [ %i.eu, %bb.bd ], [ %i.eu, %bb.cn ], [ %i.eu, %bb.bl ], [ %i.eu, %bb.fa ], [ %i.eu, %bb.cv ], [ %i.eu, %bb.ev ], [ %i.eu, %bb.fu ], [ %i.eg, %Py_DECREF.exit.i.i ] ; 3 uses
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !14 ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.abx, -1
  br i1 %.not.i.i64.i, label %bb.kg, label %unicode_format_arg.exit.thread

bb.kg:                                            ; preds = %unicode_format_arg_parse.exit.thread.thread108.i
  %i.aby = add nsw i32 %i.abx, -1                 ; 2 uses
  store i32 %i.aby, ptr %i.abw, align 8, !tbaa !14
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %bb.kh, label %unicode_format_arg.exit.thread

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.abw) #8
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
  %i.aca = load i64, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %i.acb = add i64 %i.aca, -1                     ; 3 uses
  store i64 %i.acb, ptr %i.t, align 8, !tbaa !50
  %i.acc = icmp sgt i64 %i.acb, -1
  br i1 %i.acc, label %bb.k, label %._crit_edge247.loopexit, !llvm.loop !89

._crit_edge247.loopexit:                          ; preds = %bb.ki
  %.pre = load ptr, ptr %i.au, align 8
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %bb.j
  %i.acd = phi ptr [ %.pre, %._crit_edge247.loopexit ], [ %.sink578, %bb.j ]
  %i.ace = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.acf = load i64, ptr %i.ae, align 8, !tbaa !54 ; 3 uses
  %i.acg = icmp sge i64 %i.ace, %i.acf
  %i.ach = icmp ne ptr %i.acd, null
  %or.cond4 = select i1 %i.acg, i1 true, i1 %i.ach
  br i1 %or.cond4, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge247
  %i.aci = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.acj = icmp slt i64 %i.acf, 0                 ; 2 uses
  %i.ack = select i1 %i.acj, i64 0, i64 %i.ace
  %i.acl = select i1 %i.acj, i64 1, i64 %i.acf
  %i.acm = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aci, ptr noundef nonnull @.str.3, i64 noundef %i.ack, i64 noundef %i.acl) #8 ; 0 uses
  br label %.loopexit

bb.kk:                                            ; preds = %._crit_edge247
  %i.acn = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not25 = icmp eq i32 %i.acn, 0
  br i1 %.not25, label %Py_DECREF.exit30, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aco = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !14 ; 2 uses
  %.not.i29 = icmp sgt i32 %i.acp, -1
  br i1 %.not.i29, label %bb.km, label %Py_DECREF.exit30

bb.km:                                            ; preds = %bb.kl
  %i.acq = add nsw i32 %i.acp, -1                 ; 2 uses
  store i32 %i.acq, ptr %i.aco, align 8, !tbaa !14
  %i.acr = icmp eq i32 %i.acq, 0
  br i1 %i.acr, label %bb.kn, label %Py_DECREF.exit30

bb.kn:                                            ; preds = %bb.km
  call void @_Py_Dealloc(ptr noundef nonnull %i.aco) #8
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk
  %i.acs = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %i.v) #8
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %.critedge, %unicode_format_arg.exit.thread, %bb.kj
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %i.v) #8
  %i.act = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not28 = icmp eq i32 %i.act, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.ko

bb.ko:                                            ; preds = %.loopexit
  %i.acu = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.acv, -1
  br i1 %.not.i, label %bb.kp, label %Py_DECREF.exit

bb.kp:                                            ; preds = %bb.ko
  %i.acw = add nsw i32 %i.acv, -1                 ; 2 uses
  store i32 %i.acw, ptr %i.acu, align 8, !tbaa !14
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.kq, label %Py_DECREF.exit

bb.kq:                                            ; preds = %bb.kp
  call void @_Py_Dealloc(ptr noundef nonnull %i.acu) #8
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
