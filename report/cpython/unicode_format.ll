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
  %i.vd = icmp ugt i32 %.0.i211.i.i, %.0166.i.i
  br i1 %i.vd, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i.i
  %i.ve = add i64 %.2.i43.i, %.1163.i.i
  %i.vf = call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %i.tq, i64 noundef 0, i64 noundef %i.ve) #8
  %i.vg = call i32 @llvm.umax.i32(i32 %.0166.i.i, i32 %i.vf)
  %.pre227.i.i = load i32, ptr %i.av, align 4, !tbaa !63
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %PyUnicode_MAX_CHAR_VALUE.exit.i.i
  %i.vh = phi i32 [ %.pre227.i.i, %bb.hy ], [ %i.uu, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ]
  %i.vi = phi i32 [ %i.uq, %bb.hy ], [ %i.ur, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ] ; 3 uses
  %.1167.i.i = phi i32 [ %i.vg, %bb.hy ], [ %.0166.i.i, %PyUnicode_MAX_CHAR_VALUE.exit.i.i ] ; 2 uses
  %.not193.i46.i = icmp ne i32 %i.vi, 0
  %i.vj = icmp eq i64 %.2.i43.i, %i.ut
  %or.cond.i47.i = select i1 %.not193.i46.i, i1 %i.vj, i1 false
  %i.vk = zext i1 %or.cond.i47.i to i64
  %.0168.i.i = add i64 %i.ut, %i.vk               ; 4 uses
  %.not194.i48.i = icmp ugt i32 %.1167.i.i, %i.vh
  br i1 %.not194.i48.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.vl = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.vm = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = icmp sle i64 %.0168.i.i, %i.vn
  %i.vp = icmp eq i64 %.0168.i.i, 0
  %or.cond3.i.i = or i1 %i.vp, %i.vo
  br i1 %or.cond3.i.i, label %.critedge.i50.i, label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  %.old2.i.i = icmp eq i64 %.0168.i.i, 0
  br i1 %.old2.i.i, label %.critedge.i50.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.vq = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %i.v, i64 noundef %.0168.i.i, i32 noundef %.1167.i.i) #8
  %i.vr = icmp eq i32 %i.vq, -1
  br i1 %i.vr, label %unicode_format_arg_output.exit.i, label %.critedge.i50.i

.critedge.i50.i:                                  ; preds = %bb.ic, %bb.ib, %bb.ia
  %i.vs = phi i32 [ %i.vi, %bb.ib ], [ %i.vi, %bb.ia ], [ %i.uq, %bb.ic ]
  %.not195.i51.i = icmp eq i32 %i.vs, 0
  br i1 %.not195.i51.i, label %bb.ik, label %bb.id

bb.id:                                            ; preds = %.critedge.i50.i
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
  %i.vw = trunc nuw nsw i32 %.1170.i42.i to i8
  %i.vx = getelementptr i8, ptr %i.vu, i64 %i.vv
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !14
  %.pre229.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit.i52.i

bb.ig:                                            ; preds = %bb.ie
  %i.vy = trunc nuw nsw i32 %.1170.i42.i to i16
  %i.vz = getelementptr [2 x i8], ptr %i.vu, i64 %i.vv
  store i16 %i.vy, ptr %i.vz, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit.i52.i

bb.ih:                                            ; preds = %bb.ie
  %i.wa = getelementptr [4 x i8], ptr %i.vu, i64 %i.vv
  store i32 %.1170.i42.i, ptr %i.wa, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i52.i

PyUnicode_WRITE.exit.i52.i:                       ; preds = %bb.ih, %bb.ig, %bb.if
  %i.wb = phi i64 [ %.pre229.i.i, %bb.if ], [ %i.vv, %bb.ig ], [ %i.vv, %bb.ih ]
  %i.wc = add i64 %i.wb, 1
  store i64 %i.wc, ptr %i.ax, align 8, !tbaa !65
  br label %bb.ii

bb.ii:                                            ; preds = %PyUnicode_WRITE.exit.i52.i, %bb.id
  %i.wd = icmp sgt i64 %i.ut, %.2.i43.i
  br i1 %i.wd, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.we = add nsw i64 %i.ut, -1                   ; 2 uses
  store i64 %i.we, ptr %i.ap, align 8, !tbaa !69
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %.critedge.i50.i
  %i.wf = phi i64 [ %i.we, %bb.ij ], [ %i.ut, %bb.ii ], [ %i.ut, %.critedge.i50.i ] ; 3 uses
  %i.wg = and i32 %i.jg, 8
  %.not197.i53.i = icmp eq i32 %i.wg, 0           ; 2 uses
  br i1 %.not197.i53.i, label %bb.iv, label %bb.il

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
  %i.xg = ptrtoint ptr %i.xf to i64               ; 6 uses
  %i.xh = load i64, ptr %i.ax, align 8, !tbaa !65 ; 12 uses
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
  br i1 %i.xn, label %iter.check746, label %_PyUnicode_Fill.exit.i.i

iter.check746:                                    ; preds = %bb.iy
  %i.xo = shl i64 %i.xb, 1
  %i.xp = add i64 %i.xo, %i.xg
  %i.xq = shl i64 %i.xh, 1                        ; 3 uses
  %i.xr = add i64 %i.xp, %i.xq
  %i.xs = shl i64 %.3.i.i, 1
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = add i64 %i.xg, 2
  %i.xv = add i64 %i.xu, %i.xq
  %umax730 = call i64 @llvm.umax.i64(i64 %i.xt, i64 %i.xv)
  %i.xw = xor i64 %i.xg, -1
  %i.xx = add i64 %umax730, %i.xw
  %i.xy = sub i64 %i.xx, %i.xq                    ; 3 uses
  %i.xz = lshr i64 %i.xy, 1
  %i.ya = add nuw i64 %i.xz, 1                    ; 5 uses
  %min.iters.check732 = icmp ult i64 %i.xy, 6
  br i1 %min.iters.check732, label %.lr.ph30.i.i.i.preheader, label %vector.main.loop.iter.check733

vector.main.loop.iter.check733:                   ; preds = %iter.check746
  %min.iters.check734 = icmp ult i64 %i.xy, 30
  br i1 %min.iters.check734, label %vec.epilog.ph750, label %vector.ph735

vector.ph735:                                     ; preds = %vector.main.loop.iter.check733
  %n.mod.vf736 = and i64 %i.ya, 12
  %n.vec737 = and i64 %i.ya, -16                  ; 4 uses
  %i.yb = shl i64 %n.vec737, 1
  %i.yc = getelementptr i8, ptr %i.xl, i64 %i.yb
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body738

vector.body738:                                   ; preds = %vector.body738, %vector.ph735
  %index739 = phi i64 [ 0, %vector.ph735 ], [ %index.next741, %vector.body738 ] ; 2 uses
  %i.yd = shl i64 %index739, 1
  %next.gep740 = getelementptr i8, ptr %i.xl, i64 %i.yd ; 2 uses
  %i.ye = getelementptr i8, ptr %next.gep740, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep740, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.ye, align 2, !tbaa !59
  %index.next741 = add nuw i64 %index739, 16      ; 2 uses
  %i.yf = icmp eq i64 %index.next741, %n.vec737
  br i1 %i.yf, label %middle.block742, label %vector.body738, !llvm.loop !78

middle.block742:                                  ; preds = %vector.body738
  %cmp.n743 = icmp eq i64 %i.ya, %n.vec737
  br i1 %cmp.n743, label %_PyUnicode_Fill.exit.i.i, label %vec.epilog.iter.check748

vec.epilog.iter.check748:                         ; preds = %middle.block742
  %min.epilog.iters.check749 = icmp eq i64 %n.mod.vf736, 0
  br i1 %min.epilog.iters.check749, label %.lr.ph30.i.i.i.preheader, label %vec.epilog.ph750, !prof !33

vec.epilog.ph750:                                 ; preds = %vector.main.loop.iter.check733, %vec.epilog.iter.check748
  %vec.epilog.resume.val744 = phi i64 [ %n.vec737, %vec.epilog.iter.check748 ], [ 0, %vector.main.loop.iter.check733 ]
  %n.vec752 = and i64 %i.ya, -4                   ; 3 uses
  %i.yg = shl i64 %n.vec752, 1
  %i.yh = getelementptr i8, ptr %i.xl, i64 %i.yg
  %broadcast.splatinsert753 = insertelement <4 x i16> poison, i16 %i.xk, i64 0
  %broadcast.splat754 = shufflevector <4 x i16> %broadcast.splatinsert753, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body755

vec.epilog.vector.body755:                        ; preds = %vec.epilog.vector.body755, %vec.epilog.ph750
  %index756 = phi i64 [ %vec.epilog.resume.val744, %vec.epilog.ph750 ], [ %index.next758, %vec.epilog.vector.body755 ] ; 2 uses
  %i.yi = shl i64 %index756, 1
  %next.gep757 = getelementptr i8, ptr %i.xl, i64 %i.yi
  store <4 x i16> %broadcast.splat754, ptr %next.gep757, align 2, !tbaa !59
  %index.next758 = add nuw i64 %index756, 4       ; 2 uses
  %i.yj = icmp eq i64 %index.next758, %n.vec752
  br i1 %i.yj, label %vec.epilog.middle.block759, label %vec.epilog.vector.body755, !llvm.loop !79

vec.epilog.middle.block759:                       ; preds = %vec.epilog.vector.body755
  %cmp.n760 = icmp eq i64 %i.ya, %n.vec752
  br i1 %cmp.n760, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph30.i.i.i.preheader

.lr.ph30.i.i.i.preheader:                         ; preds = %iter.check746, %vec.epilog.iter.check748, %vec.epilog.middle.block759
  %.029.i.i.i.ph = phi ptr [ %i.xl, %iter.check746 ], [ %i.yc, %vec.epilog.iter.check748 ], [ %i.yh, %vec.epilog.middle.block759 ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %.lr.ph30.i.i.i.preheader, %.lr.ph30.i.i.i
  %.029.i.i.i = phi ptr [ %i.yk, %.lr.ph30.i.i.i ], [ %.029.i.i.i.ph, %.lr.ph30.i.i.i.preheader ] ; 2 uses
  store i16 %i.xk, ptr %.029.i.i.i, align 2, !tbaa !59
  %i.yk = getelementptr i8, ptr %.029.i.i.i, i64 2 ; 2 uses
  %i.yl = icmp ult ptr %i.yk, %i.xm
  br i1 %i.yl, label %.lr.ph30.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !80

bb.iz:                                            ; preds = %bb.iw
  %i.ym = getelementptr [4 x i8], ptr %i.xf, i64 %i.xh ; 5 uses
  %i.yn = getelementptr [4 x i8], ptr %i.ym, i64 %i.xd ; 2 uses
  %i.yo = icmp ult ptr %i.ym, %i.yn
  br i1 %i.yo, label %.lr.ph.i.i.i.preheader, label %_PyUnicode_Fill.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iz
  %i.yp = shl i64 %i.xb, 2
  %4 = add i64 %i.yp, %i.xg
  %i.yq = shl i64 %i.xh, 2                        ; 3 uses
  %5 = add i64 %4, %i.yq
  %6 = shl i64 %.3.i.i, 2
  %7 = sub i64 %5, %6
  %i.yr = add i64 %i.xg, 4
  %i.ys = add i64 %i.yr, %i.yq
  %umax762 = call i64 @llvm.umax.i64(i64 %7, i64 %i.ys)
  %8 = xor i64 %i.xg, -1
  %i.yt = add i64 %umax762, %8
  %9 = sub i64 %i.yt, %i.yq                       ; 2 uses
  %i.yu = lshr i64 %9, 2
  %i.yv = add nuw nsw i64 %i.yu, 1                ; 2 uses
  %min.iters.check764 = icmp ult i64 %9, 28
  br i1 %min.iters.check764, label %.lr.ph.i.i.i.preheader785, label %vector.ph765

vector.ph765:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec767 = and i64 %i.yv, 9223372036854775800  ; 3 uses
  %i.yw = shl i64 %n.vec767, 2
  %i.yx = getelementptr i8, ptr %i.ym, i64 %i.yw
  %broadcast.splatinsert768 = insertelement <4 x i32> poison, i32 %.0161.i.i, i64 0
  %broadcast.splat769 = shufflevector <4 x i32> %broadcast.splatinsert768, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph765
  %index771 = phi i64 [ 0, %vector.ph765 ], [ %index.next773, %vector.body770 ] ; 2 uses
  %i.yy = shl i64 %index771, 2
  %next.gep772 = getelementptr i8, ptr %i.ym, i64 %i.yy ; 2 uses
  %i.yz = getelementptr i8, ptr %next.gep772, i64 16
  store <4 x i32> %broadcast.splat769, ptr %next.gep772, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat769, ptr %i.yz, align 4, !tbaa !7
  %index.next773 = add nuw i64 %index771, 8       ; 2 uses
  %i.za = icmp eq i64 %index.next773, %n.vec767
  br i1 %i.za, label %middle.block774, label %vector.body770, !llvm.loop !81

middle.block774:                                  ; preds = %vector.body770
  %cmp.n775 = icmp eq i64 %i.yv, %n.vec767
  br i1 %cmp.n775, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph.i.i.i.preheader785

.lr.ph.i.i.i.preheader785:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block774
  %.02628.i.i.i.ph = phi ptr [ %i.ym, %.lr.ph.i.i.i.preheader ], [ %i.yx, %middle.block774 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader785, %.lr.ph.i.i.i
  %.02628.i.i.i = phi ptr [ %i.zb, %.lr.ph.i.i.i ], [ %.02628.i.i.i.ph, %.lr.ph.i.i.i.preheader785 ] ; 2 uses
  store i32 %.0161.i.i, ptr %.02628.i.i.i, align 4, !tbaa !7
  %i.zb = getelementptr i8, ptr %.02628.i.i.i, i64 4 ; 2 uses
  %i.zc = icmp ult ptr %i.zb, %i.yn
  br i1 %i.zc, label %.lr.ph.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !82

bb.ja:                                            ; preds = %bb.iw
  unreachable

_PyUnicode_Fill.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph30.i.i.i, %middle.block774, %middle.block742, %vec.epilog.middle.block759, %bb.iz, %bb.iy, %bb.ix
  %i.zd = phi i64 [ %i.xh, %middle.block742 ], [ %i.xh, %bb.iz ], [ %.pre233.i.i, %bb.ix ], [ %i.xh, %bb.iy ], [ %i.xh, %middle.block774 ], [ %i.xh, %vec.epilog.middle.block759 ], [ %i.xh, %.lr.ph30.i.i.i ], [ %i.xh, %.lr.ph.i.i.i ]
  %i.ze = add i64 %i.zd, %i.xd
  store i64 %i.ze, ptr %i.ax, align 8, !tbaa !65
  store i64 %.3.i.i, ptr %i.ap, align 8, !tbaa !69
  br label %bb.jb

bb.jb:                                            ; preds = %_PyUnicode_Fill.exit.i.i, %bb.iv
  %i.zf = phi i64 [ %.3.i.i, %_PyUnicode_Fill.exit.i.i ], [ %i.xb, %bb.iv ] ; 4 uses
  br i1 %.not196.i33.i, label %bb.jc, label %bb.jq

bb.jc:                                            ; preds = %bb.jb
  %.not200.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not200.i.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.zg = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zh = load ptr, ptr %i.az, align 8, !tbaa !67 ; 3 uses
  %i.zi = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zg, label %bb.jg [
    i32 1, label %bb.je
    i32 2, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  %i.zj = trunc nuw nsw i32 %.1170.i42.i to i8
  %i.zk = getelementptr i8, ptr %i.zh, i64 %i.zi
  store i8 %i.zj, ptr %i.zk, align 1, !tbaa !14
  %.pre234.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit214.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.zl = trunc nuw nsw i32 %.1170.i42.i to i16
  %i.zm = getelementptr [2 x i8], ptr %i.zh, i64 %i.zi
  store i16 %i.zl, ptr %i.zm, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit214.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.zn = getelementptr [4 x i8], ptr %i.zh, i64 %i.zi
  store i32 %.1170.i42.i, ptr %i.zn, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit214.i.i

PyUnicode_WRITE.exit214.i.i:                      ; preds = %bb.jg, %bb.jf, %bb.je
  %i.zo = phi i64 [ %.pre234.i.i, %bb.je ], [ %i.zi, %bb.jf ], [ %i.zi, %bb.jg ]
  %i.zp = add i64 %i.zo, 1
  store i64 %i.zp, ptr %i.ax, align 8, !tbaa !65
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
  %i.zq = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zr = load ptr, ptr %i.az, align 8, !tbaa !67 ; 5 uses
  %i.zs = load i64, ptr %i.ax, align 8, !tbaa !65 ; 5 uses
  switch i32 %i.zq, label %bb.jm [
    i32 1, label %bb.jk
    i32 2, label %bb.jl
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.zt = getelementptr i8, ptr %i.zr, i64 %i.zs
  store i8 48, ptr %i.zt, align 1, !tbaa !14
  %.pre235.i.i = load ptr, ptr %i.az, align 8, !tbaa !67
  %.pre236.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit215.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.zu = getelementptr [2 x i8], ptr %i.zr, i64 %i.zs
  store i16 48, ptr %i.zu, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit215.i.i

bb.jm:                                            ; preds = %bb.jj
  %i.zv = getelementptr [4 x i8], ptr %i.zr, i64 %i.zs
  store i32 48, ptr %i.zv, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit215.i.i

PyUnicode_WRITE.exit215.i.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.zw = phi i64 [ %.pre236.i.i, %bb.jk ], [ %i.zs, %bb.jl ], [ %i.zs, %bb.jm ] ; 3 uses
  %i.zx = phi ptr [ %.pre235.i.i, %bb.jk ], [ %i.zr, %bb.jl ], [ %i.zr, %bb.jm ] ; 3 uses
  %i.zy = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.zz = add i64 %i.zw, 1                        ; 3 uses
  switch i32 %i.zy, label %bb.jp [
    i32 1, label %bb.jn
    i32 2, label %bb.jo
  ]

bb.jn:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aaa = trunc nuw nsw i32 %.0.i68.i to i8
  %i.aab = getelementptr i8, ptr %i.zx, i64 %i.zz
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !14
  %.pre237.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %PyUnicode_WRITE.exit216.i.i

bb.jo:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aac = trunc nuw nsw i32 %.0.i68.i to i16
  %i.aad = getelementptr [2 x i8], ptr %i.zx, i64 %i.zz
  store i16 %i.aac, ptr %i.aad, align 2, !tbaa !59
  br label %PyUnicode_WRITE.exit216.i.i

bb.jp:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aae = getelementptr [4 x i8], ptr %i.zx, i64 %i.zz
  store i32 %.0.i68.i, ptr %i.aae, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit216.i.i

PyUnicode_WRITE.exit216.i.i:                      ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.aaf = phi i64 [ %.pre237.i.i, %bb.jn ], [ %i.zw, %bb.jo ], [ %i.zw, %bb.jp ]
  %i.aag = add i64 %i.aaf, 2
  store i64 %i.aag, ptr %i.ax, align 8, !tbaa !65
  %i.aah = add nuw nsw i64 %.3165.i.i, 2
  br label %bb.jq

bb.jq:                                            ; preds = %PyUnicode_WRITE.exit216.i.i, %bb.ji, %bb.jh, %bb.jb
  %.4.i.i = phi i64 [ %i.aah, %PyUnicode_WRITE.exit216.i.i ], [ %.3165.i.i, %bb.ji ], [ %.3165.i.i, %bb.jh ], [ %.3165.i.i, %bb.jb ]
  %.not202.i.i = icmp eq i64 %.3.i.i, 0
  br i1 %.not202.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aai = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.aaj = load i64, ptr %i.ax, align 8, !tbaa !65
  call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.aai, i64 noundef %i.aaj, ptr noundef nonnull %i.tq, i64 noundef %.4.i.i, i64 noundef %.3.i.i) #8
  %i.aak = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.aal = add i64 %i.aak, %.3.i.i
  store i64 %i.aal, ptr %i.ax, align 8, !tbaa !65
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.aam = icmp sgt i64 %i.zf, %.3.i.i
  br i1 %i.aam, label %bb.jt, label %unicode_format_arg_output.exit.i

bb.jt:                                            ; preds = %bb.js
  %i.aan = sub i64 %i.zf, %.3.i.i                 ; 4 uses
  %i.aao = load i32, ptr %i.ay, align 8, !tbaa !66
  %i.aap = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %i.aaq = ptrtoint ptr %i.aap to i64             ; 6 uses
  %i.aar = load i64, ptr %i.ax, align 8, !tbaa !65 ; 12 uses
  switch i32 %i.aao, label %bb.jx [
    i32 1, label %bb.ju
    i32 2, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.aas = getelementptr i8, ptr %i.aap, i64 %i.aar
  call void @llvm.memset.p0.i64(ptr align 1 %i.aas, i8 32, i64 %i.aan, i1 false)
  %.pre238.i.i = load i64, ptr %i.ax, align 8, !tbaa !65
  br label %_PyUnicode_Fill.exit221.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.aat = getelementptr [2 x i8], ptr %i.aap, i64 %i.aar ; 7 uses
  %i.aau = getelementptr [2 x i8], ptr %i.aat, i64 %i.aan ; 2 uses
  %i.aav = icmp ult ptr %i.aat, %i.aau
  br i1 %i.aav, label %iter.check, label %_PyUnicode_Fill.exit221.i.i

iter.check:                                       ; preds = %bb.jv
  %i.aaw = shl i64 %i.zf, 1
  %i.aax = add i64 %i.aaw, %i.aaq
  %i.aay = shl i64 %i.aar, 1                      ; 3 uses
  %i.aaz = add i64 %i.aax, %i.aay
  %i.aba = shl i64 %.3.i.i, 1
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = add i64 %i.aaq, 2
  %i.abd = add i64 %i.abc, %i.aay
  %umax = call i64 @llvm.umax.i64(i64 %i.abb, i64 %i.abd)
  %i.abe = xor i64 %i.aaq, -1
  %i.abf = add i64 %umax, %i.abe
  %i.abg = sub i64 %i.abf, %i.aay                 ; 3 uses
  %i.abh = lshr i64 %i.abg, 1
  %i.abi = add nuw i64 %i.abh, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.abg, 6
  br i1 %min.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check711 = icmp ult i64 %i.abg, 30
  br i1 %min.iters.check711, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.abi, 12
  %n.vec = and i64 %i.abi, -16                    ; 4 uses
  %i.abj = shl i64 %n.vec, 1
  %i.abk = getelementptr i8, ptr %i.aat, i64 %i.abj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aat, i64 %i.abl ; 2 uses
  %i.abm = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !59
  store <8 x i16> splat (i16 32), ptr %i.abm, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abn = icmp eq i64 %index.next, %n.vec
  br i1 %i.abn, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abi, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit221.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec713 = and i64 %i.abi, -4                  ; 3 uses
  %i.abo = shl i64 %n.vec713, 1
  %i.abp = getelementptr i8, ptr %i.aat, i64 %i.abo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index714 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next716, %vec.epilog.vector.body ] ; 2 uses
  %i.abq = shl i64 %index714, 1
  %next.gep715 = getelementptr i8, ptr %i.aat, i64 %i.abq
  store <4 x i16> splat (i16 32), ptr %next.gep715, align 2, !tbaa !59
  %index.next716 = add nuw i64 %index714, 4       ; 2 uses
  %i.abr = icmp eq i64 %index.next716, %n.vec713
  br i1 %i.abr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n717 = icmp eq i64 %i.abi, %n.vec713
  br i1 %cmp.n717, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph30.i219.i.i.preheader

.lr.ph30.i219.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i220.i.i.ph = phi ptr [ %i.aat, %iter.check ], [ %i.abk, %vec.epilog.iter.check ], [ %i.abp, %vec.epilog.middle.block ]
  br label %.lr.ph30.i219.i.i

.lr.ph30.i219.i.i:                                ; preds = %.lr.ph30.i219.i.i.preheader, %.lr.ph30.i219.i.i
  %.029.i220.i.i = phi ptr [ %i.abs, %.lr.ph30.i219.i.i ], [ %.029.i220.i.i.ph, %.lr.ph30.i219.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.029.i220.i.i, align 2, !tbaa !59
  %i.abs = getelementptr i8, ptr %.029.i220.i.i, i64 2 ; 2 uses
  %i.abt = icmp ult ptr %i.abs, %i.aau
  br i1 %i.abt, label %.lr.ph30.i219.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !86

bb.jw:                                            ; preds = %bb.jt
  %i.abu = getelementptr [4 x i8], ptr %i.aap, i64 %i.aar ; 5 uses
  %i.abv = getelementptr [4 x i8], ptr %i.abu, i64 %i.aan ; 2 uses
  %i.abw = icmp ult ptr %i.abu, %i.abv
  br i1 %i.abw, label %.lr.ph.i217.i.i.preheader, label %_PyUnicode_Fill.exit221.i.i

.lr.ph.i217.i.i.preheader:                        ; preds = %bb.jw
  %i.abx = shl i64 %i.zf, 2
  %10 = add i64 %i.abx, %i.aaq
  %i.aby = shl i64 %i.aar, 2                      ; 3 uses
  %11 = add i64 %10, %i.aby
  %12 = shl i64 %.3.i.i, 2
  %13 = sub i64 %11, %12
  %i.abz = add i64 %i.aaq, 4
  %i.aca = add i64 %i.abz, %i.aby
  %umax719 = call i64 @llvm.umax.i64(i64 %13, i64 %i.aca)
  %14 = xor i64 %i.aaq, -1
  %i.acb = add i64 %umax719, %14
  %15 = sub i64 %i.acb, %i.aby                    ; 2 uses
  %i.acc = lshr i64 %15, 2
  %i.acd = add nuw nsw i64 %i.acc, 1              ; 2 uses
  %min.iters.check720 = icmp ult i64 %15, 28
  br i1 %min.iters.check720, label %.lr.ph.i217.i.i.preheader783, label %vector.ph721

vector.ph721:                                     ; preds = %.lr.ph.i217.i.i.preheader
  %n.vec723 = and i64 %i.acd, 9223372036854775800 ; 3 uses
  %i.ace = shl i64 %n.vec723, 2
  %i.acf = getelementptr i8, ptr %i.abu, i64 %i.ace
  br label %vector.body724

vector.body724:                                   ; preds = %vector.body724, %vector.ph721
  %index725 = phi i64 [ 0, %vector.ph721 ], [ %index.next727, %vector.body724 ] ; 2 uses
  %i.acg = shl i64 %index725, 2
  %next.gep726 = getelementptr i8, ptr %i.abu, i64 %i.acg ; 2 uses
  %i.ach = getelementptr i8, ptr %next.gep726, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep726, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.ach, align 4, !tbaa !7
  %index.next727 = add nuw i64 %index725, 8       ; 2 uses
  %i.aci = icmp eq i64 %index.next727, %n.vec723
  br i1 %i.aci, label %middle.block728, label %vector.body724, !llvm.loop !87

middle.block728:                                  ; preds = %vector.body724
  %cmp.n729 = icmp eq i64 %i.acd, %n.vec723
  br i1 %cmp.n729, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph.i217.i.i.preheader783

.lr.ph.i217.i.i.preheader783:                     ; preds = %.lr.ph.i217.i.i.preheader, %middle.block728
  %.02628.i218.i.i.ph = phi ptr [ %i.abu, %.lr.ph.i217.i.i.preheader ], [ %i.acf, %middle.block728 ]
  br label %.lr.ph.i217.i.i

.lr.ph.i217.i.i:                                  ; preds = %.lr.ph.i217.i.i.preheader783, %.lr.ph.i217.i.i
  %.02628.i218.i.i = phi ptr [ %i.acj, %.lr.ph.i217.i.i ], [ %.02628.i218.i.i.ph, %.lr.ph.i217.i.i.preheader783 ] ; 2 uses
  store i32 32, ptr %.02628.i218.i.i, align 4, !tbaa !7
  %i.acj = getelementptr i8, ptr %.02628.i218.i.i, i64 4 ; 2 uses
  %i.ack = icmp ult ptr %i.acj, %i.abv
  br i1 %i.ack, label %.lr.ph.i217.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !88

bb.jx:                                            ; preds = %bb.jt
  unreachable

_PyUnicode_Fill.exit221.i.i:                      ; preds = %.lr.ph.i217.i.i, %.lr.ph30.i219.i.i, %middle.block728, %middle.block, %vec.epilog.middle.block, %bb.jw, %bb.jv, %bb.ju
  %i.acl = phi i64 [ %i.aar, %middle.block ], [ %i.aar, %bb.jw ], [ %.pre238.i.i, %bb.ju ], [ %i.aar, %bb.jv ], [ %i.aar, %middle.block728 ], [ %i.aar, %vec.epilog.middle.block ], [ %i.aar, %.lr.ph30.i219.i.i ], [ %i.aar, %.lr.ph.i217.i.i ]
  %i.acm = add i64 %i.acl, %i.aan
  store i64 %i.acm, ptr %i.ax, align 8, !tbaa !65
  br label %unicode_format_arg_output.exit.i

unicode_format_arg_output.exit.i:                 ; preds = %_PyUnicode_Fill.exit221.i.i, %bb.js, %bb.ic, %bb.gz
  %.0.i54.i = phi i1 [ %i.ty, %bb.gz ], [ true, %bb.ic ], [ false, %_PyUnicode_Fill.exit221.i.i ], [ false, %bb.js ]
  %i.acn = load i32, ptr %i.tq, align 8, !tbaa !14 ; 2 uses
  %.not.i.i47 = icmp sgt i32 %i.acn, -1
  br i1 %.not.i.i47, label %bb.jy, label %Py_DECREF.exit.i

bb.jy:                                            ; preds = %unicode_format_arg_output.exit.i
  %i.aco = add nsw i32 %i.acn, -1                 ; 2 uses
  store i32 %i.aco, ptr %i.tq, align 8, !tbaa !14
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %bb.jz, label %Py_DECREF.exit.i

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.tq) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.jz, %bb.jy, %unicode_format_arg_output.exit.i
  br i1 %.0.i54.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

unicode_format_arg_format.exit.thread93.i:        ; preds = %Py_DECREF.exit.i, %bb.gn, %bb.ff, %Py_DECREF.exit77.i.i.i, %bb.dy
  %i.acq = load ptr, ptr %i.au, align 8, !tbaa !57
  %.not18.i = icmp eq ptr %i.acq, null
  br i1 %.not18.i, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %unicode_format_arg_format.exit.thread93.i
  %i.acr = load i64, ptr %i.af, align 8, !tbaa !55
  %i.acs = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.act = icmp slt i64 %i.acr, %i.acs
  br i1 %i.act, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.acu = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.acu, ptr noundef nonnull @.str.5) #8
  br label %unicode_format_arg_parse.exit.thread.i

bb.kc:                                            ; preds = %bb.ka, %unicode_format_arg_format.exit.thread93.i
  %.not.i60.i = icmp eq ptr %i.eu, null
  br i1 %.not.i60.i, label %unicode_format_arg.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.acv = load i32, ptr %i.eu, align 8, !tbaa !14 ; 2 uses
  %.not.i.i61.i = icmp sgt i32 %i.acv, -1
  br i1 %.not.i.i61.i, label %bb.ke, label %unicode_format_arg.exit

bb.ke:                                            ; preds = %bb.kd
  %i.acw = add nsw i32 %i.acv, -1                 ; 2 uses
  store i32 %i.acw, ptr %i.eu, align 8, !tbaa !14
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.kf, label %unicode_format_arg.exit

bb.kf:                                            ; preds = %bb.ke
  call void @_Py_Dealloc(ptr noundef nonnull %i.eu) #8
  br label %unicode_format_arg.exit

unicode_format_arg_parse.exit.thread.i:           ; preds = %Py_DECREF.exit.i, %unicode_format_arg_format.exit.i, %bb.gn, %formatchar.exit.i.i, %bb.fg, %bb.ff, %Py_DECREF.exit.i.i.i, %Py_DECREF.exit77.i.i.i, %bb.dy, %unicode_format_getnextarg.exit.i26.i, %bb.ck, %unicode_format_getnextarg.exit.i.i, %bb.kb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gr, %bb.el, %unicode_format_getnextarg.exit.thread.i23.i, %.thread239.i.i, %bb.dk, %bb.ct, %bb.cj, %bb.cb, %bb.bj, %unicode_format_getnextarg.exit.thread.i.i, %bb.az
  %.not.i63.i = icmp eq ptr %i.eu, null
  br i1 %.not.i63.i, label %unicode_format_arg.exit.thread, label %unicode_format_arg_parse.exit.thread.thread108.i

unicode_format_arg_parse.exit.thread.thread108.i: ; preds = %Py_DECREF.exit.i.i, %unicode_format_arg_parse.exit.thread.i, %bb.fu, %bb.fa, %bb.ev, %bb.cv, %bb.cn, %bb.bl, %bb.bd
  %i.acy = phi ptr [ %i.eu, %unicode_format_arg_parse.exit.thread.i ], [ %i.eu, %bb.bd ], [ %i.eu, %bb.cn ], [ %i.eu, %bb.bl ], [ %i.eu, %bb.fa ], [ %i.eu, %bb.cv ], [ %i.eu, %bb.ev ], [ %i.eu, %bb.fu ], [ %i.eg, %Py_DECREF.exit.i.i ] ; 3 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !14 ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.acz, -1
  br i1 %.not.i.i64.i, label %bb.kg, label %unicode_format_arg.exit.thread

bb.kg:                                            ; preds = %unicode_format_arg_parse.exit.thread.thread108.i
  %i.ada = add nsw i32 %i.acz, -1                 ; 2 uses
  store i32 %i.ada, ptr %i.acy, align 8, !tbaa !14
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.kh, label %unicode_format_arg.exit.thread

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.acy) #8
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
  %i.adc = load i64, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %i.add = add i64 %i.adc, -1                     ; 3 uses
  store i64 %i.add, ptr %i.t, align 8, !tbaa !50
  %i.ade = icmp sgt i64 %i.add, -1
  br i1 %i.ade, label %bb.k, label %._crit_edge247.loopexit, !llvm.loop !89

._crit_edge247.loopexit:                          ; preds = %bb.ki
  %.pre = load ptr, ptr %i.au, align 8
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %bb.j
  %i.adf = phi ptr [ %.pre, %._crit_edge247.loopexit ], [ %.sink579, %bb.j ]
  %i.adg = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.adh = load i64, ptr %i.ae, align 8, !tbaa !54 ; 3 uses
  %i.adi = icmp sge i64 %i.adg, %i.adh
  %i.adj = icmp ne ptr %i.adf, null
  %or.cond4 = select i1 %i.adi, i1 true, i1 %i.adj
  br i1 %or.cond4, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge247
  %i.adk = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.adl = icmp slt i64 %i.adh, 0                 ; 2 uses
  %i.adm = select i1 %i.adl, i64 0, i64 %i.adg
  %i.adn = select i1 %i.adl, i64 1, i64 %i.adh
  %i.ado = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.adk, ptr noundef nonnull @.str.3, i64 noundef %i.adm, i64 noundef %i.adn) #8 ; 0 uses
  br label %.loopexit

bb.kk:                                            ; preds = %._crit_edge247
  %i.adp = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not25 = icmp eq i32 %i.adp, 0
  br i1 %.not25, label %Py_DECREF.exit30, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.adq = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.adr = load i32, ptr %i.adq, align 8, !tbaa !14 ; 2 uses
  %.not.i29 = icmp sgt i32 %i.adr, -1
  br i1 %.not.i29, label %bb.km, label %Py_DECREF.exit30

bb.km:                                            ; preds = %bb.kl
  %i.ads = add nsw i32 %i.adr, -1                 ; 2 uses
  store i32 %i.ads, ptr %i.adq, align 8, !tbaa !14
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.kn, label %Py_DECREF.exit30

bb.kn:                                            ; preds = %bb.km
  call void @_Py_Dealloc(ptr noundef nonnull %i.adq) #8
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk
  %i.adu = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %i.v) #8
  br label %Py_DECREF.exit

.loopexit:                                        ; preds = %.critedge, %unicode_format_arg.exit.thread, %bb.kj
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %i.v) #8
  %i.adv = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not28 = icmp eq i32 %i.adv, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.ko

bb.ko:                                            ; preds = %.loopexit
  %i.adw = load ptr, ptr %3, align 8, !tbaa !58   ; 3 uses
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.adx, -1
  br i1 %.not.i, label %bb.kp, label %Py_DECREF.exit

bb.kp:                                            ; preds = %bb.ko
  %i.ady = add nsw i32 %i.adx, -1                 ; 2 uses
  store i32 %i.ady, ptr %i.adw, align 8, !tbaa !14
  %i.adz = icmp eq i32 %i.ady, 0
  br i1 %i.adz, label %bb.kq, label %Py_DECREF.exit

bb.kq:                                            ; preds = %bb.kp
  call void @_Py_Dealloc(ptr noundef nonnull %i.adw) #8
end_hunk_0
