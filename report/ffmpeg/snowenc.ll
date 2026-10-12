Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_frame:bb.a
  %i.ty = phi i32 [ %i.tu, %bb.ap ], [ %i.tv, %bb.aq ] ; 4 uses
  %.pn.i.pn = sext i32 %.pn.i.pn.in to i64
  %.in892 = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i.pn
  %i.tz = load ptr, ptr %.in892, align 8, !tbaa !100 ; 8 uses
  %i.ua = load ptr, ptr %i.eo, align 16, !tbaa !113
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv1267
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !87 ; 5 uses
  %i.ue = load i32, ptr %i.qw, align 8, !tbaa !120 ; 16 uses
  %i.uf = load i32, ptr %i.qy, align 4, !tbaa !121 ; 7 uses
  %i.ug = load i32, ptr %i.lh, align 16, !tbaa !110
  %.not110.i = icmp eq i32 %i.ug, 0
  br i1 %.not110.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.uh = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 524
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !361
  %i.uk = and i32 %i.uj, 512
  %.not111.i = icmp eq i32 %i.uk, 0
  br i1 %.not111.i, label %.preheader913, label %bb.at

.preheader913:                                    ; preds = %bb.as
  %.not112.i1018 = icmp slt i32 %i.tk, 0
  br i1 %.not112.i1018, label %predict_slice.exit, label %.lr.ph1020

.lr.ph1020:                                       ; preds = %.preheader913
  %i.ul = lshr i32 %i.tw, 1                       ; 2 uses
  %i.um = mul i32 %i.tx, %.0.i5871022
  %i.un = lshr i32 %i.tx, 1
  %i.uo = sub i32 %i.um, %i.un                    ; 4 uses
  %i.up = add nsw i32 %.0.i5871022, -1
  %i.uq = icmp sgt i32 %i.ud, 111
  %i.ur = shl nsw i32 %i.ud, 4
  %i.us = select i1 %i.uq, i32 16, i32 %i.ur      ; 2 uses
  %i.ut = icmp eq i32 %.0.i5871022, 0
  %i.uu = icmp slt i32 %i.uo, 0
  %i.uv = mul nsw i32 %i.uo, %i.ty
  %i.uw = sext i32 %i.uv to i64
  %i.ux = sub nsw i64 0, %i.uw
  %i.uy = tail call i32 @llvm.smin.i32(i32 %i.uo, i32 0)
  %.0239.i.i = add i32 %i.tx, %i.uy               ; 2 uses
  %.0236.i.i = tail call i32 @llvm.smax.i32(i32 %i.uo, i32 0) ; 7 uses
  %i.uz = add i32 %.0236.i.i, %.0239.i.i
  %i.va = icmp sgt i32 %i.uz, %i.uf
  %i.vb = sub i32 %i.uf, %.0236.i.i
  %spec.select265.i.i = select i1 %i.va, i32 %i.vb, i32 %.0239.i.i ; 6 uses
  %i.vc = icmp slt i32 %spec.select265.i.i, 1
  %i.vd = mul i32 %i.ue, %.0236.i.i               ; 2 uses
  %i.ve = mul i32 %i.us, 3
  %i.vf = sext i32 %i.ve to i64                   ; 2 uses
  %i.vg = sext i32 %i.us to i64                   ; 3 uses
  %i.vh = sext i32 %i.ud to i64                   ; 6 uses
  %i.vi = lshr i32 %i.ty, 1                       ; 2 uses
  %i.vj = zext nneg i32 %i.vi to i64              ; 4 uses
  %i.vk = mul i32 %i.vi, %i.ty
  %i.vl = zext i32 %i.vk to i64                   ; 5 uses
  %i.vm = sext i32 %i.ue to i64                   ; 2 uses
  %i.vn = sext i32 %spec.select265.i.i to i64     ; 2 uses
  %i.vo = zext i32 %i.ty to i64                   ; 2 uses
  %i.vp = zext i32 %i.tw to i64                   ; 2 uses
  %i.vq = zext nneg i32 %i.ul to i64              ; 2 uses
  %i.vr = add nuw i32 %i.tk, 1
  %wide.trip.count1192 = zext i32 %i.vr to i64
  %.1234.i.i.idx = select i1 %i.uu, i64 %i.ux, i64 0 ; 6 uses
  %invariant.gep1431 = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %smax1862 = tail call i64 @llvm.smax.i64(i64 %i.vn, i64 1)
  %i.vs = add nsw i64 %smax1862, -1               ; 3 uses
  %i.vt = shl i64 %i.vs, 1
  %i.vu = mul i64 %i.vt, %i.vm
  %scevgep1863 = getelementptr i8, ptr %i.td, i64 %i.vu
  %i.vv = add nsw i64 %.1234.i.i.idx, %i.vj       ; 2 uses
  %i.vw = getelementptr i8, ptr %i.tz, i64 %i.vv
  %scevgep1869 = getelementptr i8, ptr %i.vw, i64 %i.vl
  %i.vx = mul i64 %i.vs, %i.vo                    ; 4 uses
  %i.vy = getelementptr i8, ptr %i.tz, i64 %i.vv
  %i.vz = getelementptr i8, ptr %i.vy, i64 %i.vx
  %scevgep1872 = getelementptr i8, ptr %i.vz, i64 %i.vl
  %i.wa = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %scevgep1874 = getelementptr i8, ptr %i.wa, i64 %i.vl
  %i.wb = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %i.wc = getelementptr i8, ptr %i.wb, i64 %i.vx
  %scevgep1876 = getelementptr i8, ptr %i.wc, i64 %i.vl
  %i.wd = add nsw i64 %.1234.i.i.idx, %i.vj       ; 2 uses
  %scevgep1878 = getelementptr i8, ptr %i.tz, i64 %i.wd
  %i.we = getelementptr i8, ptr %i.tz, i64 %i.wd
  %scevgep1880 = getelementptr i8, ptr %i.we, i64 %i.vx
  %i.wf = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %scevgep1882 = getelementptr i8, ptr %i.wf, i64 %i.vx
  %i.wg = mul i64 %i.vs, %i.vh                    ; 4 uses
  %i.wh = insertelement <4 x i32> poison, i32 %i.ue, i64 0
  %i.wi = shufflevector <4 x i32> %i.wh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wj = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.ud, i64 1
  %i.wk = shufflevector <4 x i32> %i.wj, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.wl = or <4 x i32> %i.wi, %i.wk
  %i.wm = icmp slt <4 x i32> %i.wl, zeroinitializer
  %i.wn = or i32 %i.ud, %i.ue
  %i.wo = icmp slt i32 %i.wn, 0
  %i.wp = shufflevector <4 x i1> %i.wm, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.wq = icmp eq i32 %.0.i5871022, %i.tm
  br i1 %i.wq, label %predict_slice.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.wr = mul i32 %i.tx, %.0.i5871022             ; 2 uses
  %i.ws = add nuw nsw i32 %.0.i5871022, 1
  %i.wt = mul nsw i32 %i.tx, %i.ws
  %.114.i = tail call i32 @llvm.smin.i32(i32 %i.uf, i32 %i.wt) ; 2 uses
  %i.wu = icmp slt i32 %i.wr, %.114.i
  %i.wv = icmp sgt i32 %i.ue, 0
  %or.cond1110 = select i1 %i.wu, i1 %i.wv, i1 false
  br i1 %or.cond1110, label %.preheader905.preheader, label %predict_slice.exit

.preheader905.preheader:                          ; preds = %bb.au
  %i.ww = sext i32 %i.wr to i64
  %i.wx = zext nneg i32 %i.ue to i64
  %i.wy = sext i32 %.114.i to i64
  %wide.trip.count1178 = zext nneg i32 %i.ue to i64 ; 6 uses
  %min.iters.check1955 = icmp ult i32 %i.ue, 4
  %min.iters.check1957 = icmp ult i32 %i.ue, 16
  %i.wz = and i64 %wide.trip.count1178, 12
  %n.vec1959 = and i64 %wide.trip.count1178, 2147483632 ; 4 uses
  %cmp.n1966 = icmp eq i64 %n.vec1959, %wide.trip.count1178
  %min.epilog.iters.check1971 = icmp eq i64 %i.wz, 0
  %n.vec1973 = and i64 %wide.trip.count1178, 2147483644 ; 3 uses
  %cmp.n1979 = icmp eq i64 %n.vec1973, %wide.trip.count1178
  br label %iter.check1968

iter.check1968:                                   ; preds = %.preheader905.preheader, %._crit_edge1009
  %indvars.iv1180 = phi i64 [ %i.ww, %.preheader905.preheader ], [ %indvars.iv.next1181, %._crit_edge1009 ] ; 2 uses
  %i.xa = mul nsw i64 %indvars.iv1180, %i.wx
  %invariant.gep1427 = getelementptr [2 x i8], ptr %i.td, i64 %i.xa ; 3 uses
  br i1 %min.iters.check1955, label %vec.epilog.scalar.ph1969.preheader, label %vector.main.loop.iter.check1956

vector.main.loop.iter.check1956:                  ; preds = %iter.check1968
  br i1 %min.iters.check1957, label %vec.epilog.ph1972, label %vector.body1960

vector.body1960:                                  ; preds = %vector.main.loop.iter.check1956, %vector.body1960
  %index1961 = phi i64 [ %index.next1964, %vector.body1960 ], [ 0, %vector.main.loop.iter.check1956 ] ; 2 uses
  %i.xb = getelementptr [2 x i8], ptr %invariant.gep1427, i64 %index1961 ; 3 uses
  %i.xc = getelementptr i8, ptr %i.xb, i64 16     ; 2 uses
  %wide.load1962 = load <8 x i16>, ptr %i.xb, align 2, !tbaa !125
  %wide.load1963 = load <8 x i16>, ptr %i.xc, align 2, !tbaa !125
  %i.xd = add <8 x i16> %wide.load1962, splat (i16 -2048)
  %i.xe = add <8 x i16> %wide.load1963, splat (i16 -2048)
  store <8 x i16> %i.xd, ptr %i.xb, align 2, !tbaa !125
  store <8 x i16> %i.xe, ptr %i.xc, align 2, !tbaa !125
  %index.next1964 = add nuw i64 %index1961, 16    ; 2 uses
  %i.xf = icmp eq i64 %index.next1964, %n.vec1959
  br i1 %i.xf, label %middle.block1965, label %vector.body1960, !llvm.loop !188

middle.block1965:                                 ; preds = %vector.body1960
  br i1 %cmp.n1966, label %._crit_edge1009, label %vec.epilog.iter.check1970

vec.epilog.iter.check1970:                        ; preds = %middle.block1965
  br i1 %min.epilog.iters.check1971, label %vec.epilog.scalar.ph1969.preheader, label %vec.epilog.ph1972, !prof !132

vec.epilog.ph1972:                                ; preds = %vector.main.loop.iter.check1956, %vec.epilog.iter.check1970
  %vec.epilog.resume.val1967 = phi i64 [ %n.vec1959, %vec.epilog.iter.check1970 ], [ 0, %vector.main.loop.iter.check1956 ]
  br label %vec.epilog.vector.body1974

vec.epilog.vector.body1974:                       ; preds = %vec.epilog.vector.body1974, %vec.epilog.ph1972
  %index1975 = phi i64 [ %vec.epilog.resume.val1967, %vec.epilog.ph1972 ], [ %index.next1977, %vec.epilog.vector.body1974 ] ; 2 uses
  %i.xg = getelementptr [2 x i8], ptr %invariant.gep1427, i64 %index1975 ; 2 uses
  %wide.load1976 = load <4 x i16>, ptr %i.xg, align 2, !tbaa !125
  %i.xh = add <4 x i16> %wide.load1976, splat (i16 -2048)
  store <4 x i16> %i.xh, ptr %i.xg, align 2, !tbaa !125
  %index.next1977 = add nuw i64 %index1975, 4     ; 2 uses
  %i.xi = icmp eq i64 %index.next1977, %n.vec1973
  br i1 %i.xi, label %vec.epilog.middle.block1978, label %vec.epilog.vector.body1974, !llvm.loop !189

vec.epilog.middle.block1978:                      ; preds = %vec.epilog.vector.body1974
  br i1 %cmp.n1979, label %._crit_edge1009, label %vec.epilog.scalar.ph1969.preheader

vec.epilog.scalar.ph1969.preheader:               ; preds = %iter.check1968, %vec.epilog.iter.check1970, %vec.epilog.middle.block1978
  %indvars.iv1175.ph = phi i64 [ 0, %iter.check1968 ], [ %n.vec1959, %vec.epilog.iter.check1970 ], [ %n.vec1973, %vec.epilog.middle.block1978 ]
  br label %vec.epilog.scalar.ph1969

vec.epilog.scalar.ph1969:                         ; preds = %vec.epilog.scalar.ph1969.preheader, %vec.epilog.scalar.ph1969
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %vec.epilog.scalar.ph1969 ], [ %indvars.iv1175.ph, %vec.epilog.scalar.ph1969.preheader ] ; 2 uses
  %gep1428 = getelementptr [2 x i8], ptr %invariant.gep1427, i64 %indvars.iv1175 ; 2 uses
  %i.xj = load i16, ptr %gep1428, align 2, !tbaa !125
  %i.xk = add i16 %i.xj, -2048
  store i16 %i.xk, ptr %gep1428, align 2, !tbaa !125
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 1 ; 2 uses
  %exitcond1179.not = icmp eq i64 %indvars.iv.next1176, %wide.trip.count1178
  br i1 %exitcond1179.not, label %._crit_edge1009, label %vec.epilog.scalar.ph1969, !llvm.loop !190

._crit_edge1009:                                  ; preds = %vec.epilog.scalar.ph1969, %vec.epilog.middle.block1978, %middle.block1965
  %indvars.iv.next1181 = add nsw i64 %indvars.iv1180, 1 ; 2 uses
  %i.xl = icmp slt i64 %indvars.iv.next1181, %i.wy
  br i1 %i.xl, label %iter.check1968, label %predict_slice.exit, !llvm.loop !191

bb.av:                                            ; preds = %.lr.ph1020, %add_yblock.exit.i
  %indvars.iv1189 = phi i64 [ 0, %.lr.ph1020 ], [ %indvars.iv.next1190, %add_yblock.exit.i ] ; 6 uses
  %i.xm = mul i64 %indvars.iv1189, %i.vp          ; 2 uses
  %i.xn = trunc i64 %i.xm to i32
  %i.xo = sub i32 %i.xn, %i.ul                    ; 2 uses
  %smax1865 = tail call i32 @llvm.smax.i32(i32 %i.xo, i32 0) ; 2 uses
  %i.xp = add i32 %i.xo, %i.tw
  %smin1866 = tail call i32 @llvm.smin.i32(i32 %i.ue, i32 %i.xp)
  %i.xq = sub i32 %smin1866, %smax1865
  %i.xr = tail call i32 @llvm.umax.i32(i32 %i.xq, i32 1)
  %umax1867 = zext i32 %i.xr to i64               ; 6 uses
  %i.xs = add i32 %i.vd, %smax1865
  %i.xt = sext i32 %i.xs to i64
  %i.xu = add nsw i64 %umax1867, %i.xt
  %i.xv = shl nsw i64 %i.xu, 1
  %scevgep1868 = getelementptr i8, ptr %scevgep1863, i64 %i.xv
  %i.xw = sub i64 %i.xm, %i.vq
  %smin1870 = tail call i64 @llvm.smin.i64(i64 %i.xw, i64 0) ; 2 uses
  %i.xx = sub nsw i64 0, %smin1870                ; 3 uses
  %scevgep1871 = getelementptr i8, ptr %scevgep1869, i64 %i.xx
  %i.xy = sub i64 %umax1867, %smin1870            ; 4 uses
  %scevgep1873 = getelementptr i8, ptr %scevgep1872, i64 %i.xy
  %scevgep1875 = getelementptr i8, ptr %scevgep1874, i64 %i.xx
  %scevgep1877 = getelementptr i8, ptr %scevgep1876, i64 %i.xy
  %scevgep1879 = getelementptr i8, ptr %scevgep1878, i64 %i.xx
  %scevgep1881 = getelementptr i8, ptr %scevgep1880, i64 %i.xy
  %scevgep1883 = getelementptr i8, ptr %scevgep1882, i64 %i.xy
  %i.xz = mul nuw nsw i64 %indvars.iv1189, %i.vp
  %i.ya = sub nsw i64 %i.xz, %i.vq                ; 2 uses
  %i.yb = load i32, ptr %i.o, align 16, !tbaa !107
  %i.yc = load i32, ptr %i.lg, align 8, !tbaa !83 ; 2 uses
  %i.yd = shl i32 %i.yb, %i.yc                    ; 2 uses
  %i.ye = load i32, ptr %i.q, align 4, !tbaa !106
  %i.yf = shl i32 %i.ye, %i.yc
  %i.yg = load ptr, ptr %i.li, align 8, !tbaa !133
  %i.yh = mul nsw i32 %i.yd, %i.up
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr [10 x i8], ptr %i.yg, i64 %indvars.iv1189
  %i.yk = getelementptr i8, ptr %i.yj, i64 -10
  %i.yl = getelementptr [10 x i8], ptr %i.yk, i64 %i.yi ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 10 ; 3 uses
  %i.yn = sext i32 %i.yd to i64                   ; 2 uses
  %i.yo = getelementptr inbounds [10 x i8], ptr %i.yl, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 10 ; 3 uses
  %i.yq = load ptr, ptr %i.lj, align 8, !tbaa !134 ; 6 uses
  %i.yr = icmp eq i64 %indvars.iv1189, 0
  br i1 %i.yr, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not.i.i = icmp slt i64 %indvars.iv1189, %i.yn ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.ym, ptr %i.yl
  %spec.select260.i.i = select i1 %.not.i.i, ptr %i.yp, ptr %i.yo
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0228.i.i = phi ptr [ %i.yl, %bb.aw ], [ %i.ym, %bb.av ] ; 2 uses
  %.0226.i.i = phi ptr [ %spec.select.i.i, %bb.aw ], [ %i.ym, %bb.av ] ; 2 uses
  %.0224.i.i = phi ptr [ %i.yo, %bb.aw ], [ %i.yp, %bb.av ] ; 3 uses
  %.0222.i.i = phi ptr [ %spec.select260.i.i, %bb.aw ], [ %i.yp, %bb.av ] ; 3 uses
  br i1 %i.ut, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not249.i.i = icmp slt i32 %.0.i5871022, %i.yf ; 2 uses
  %spec.select261.i.i = select i1 %.not249.i.i, ptr %.0224.i.i, ptr %.0228.i.i
  %spec.select262.i.i = select i1 %.not249.i.i, ptr %.0222.i.i, ptr %.0226.i.i
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1229.i.i = phi ptr [ %.0228.i.i, %bb.ay ], [ %.0224.i.i, %bb.ax ] ; 20 uses
  %.1227.i.i = phi ptr [ %.0226.i.i, %bb.ay ], [ %.0222.i.i, %bb.ax ] ; 22 uses
  %.1225.i.i = phi ptr [ %spec.select261.i.i, %bb.ay ], [ %.0224.i.i, %bb.ax ] ; 21 uses
  %.1223.i.i = phi ptr [ %spec.select262.i.i, %bb.ay ], [ %.0222.i.i, %bb.ax ] ; 20 uses
  %i.ys = trunc nsw i64 %i.ya to i32              ; 2 uses
  %i.yt = tail call i32 @llvm.smin.i32(i32 %i.ys, i32 0)
  %.0237.i.i = add nsw i32 %i.yt, %i.tw           ; 2 uses
  %.0235.i.i = tail call i32 @llvm.smax.i32(i32 %i.ys, i32 0) ; 7 uses
  %i.yu = tail call i64 @llvm.smin.i64(i64 %i.ya, i64 0)
  %.0233.i.i.idx = sub i64 0, %i.yu
  %i.yv = add nsw i32 %.0237.i.i, %.0235.i.i
  %i.yw = icmp sgt i32 %i.yv, %i.ue
  %i.yx = sub nsw i32 %i.ue, %.0235.i.i
  %spec.select264.i.i = select i1 %i.yw, i32 %i.yx, i32 %.0237.i.i ; 7 uses
  %gep1432 = getelementptr i8, ptr %invariant.gep1431, i64 %.0233.i.i.idx ; 2 uses
  %i.yy = icmp slt i32 %spec.select264.i.i, 1
  %or.cond5.i.i = select i1 %i.yy, i1 true, i1 %i.vc
  br i1 %or.cond5.i.i, label %add_yblock.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.yz = add i32 %.0235.i.i, %i.vd
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr [2 x i8], ptr %i.td, i64 %i.za ; 2 uses
  %i.zc = getelementptr inbounds i8, ptr %i.yq, i64 %i.vf ; 11 uses
  %i.zd = getelementptr inbounds i8, ptr %i.zc, i64 %i.vg ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.zc, ptr noundef %i.yq, i64 noundef %i.vh, i32 noundef %.0235.i.i, i32 noundef %.0236.i.i, i32 noundef %spec.select264.i.i, i32 noundef %spec.select265.i.i, ptr noundef %.1229.i.i, i32 noundef %i.th, i32 noundef %i.ue, i32 noundef %i.uf) #12
  %i.ze = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 8 ; 3 uses
  %i.zf = load i8, ptr %i.ze, align 2, !tbaa !136 ; 4 uses
  %i.zg = and i8 %i.zf, 1
  %.not.i294.i.i = icmp eq i8 %i.zg, 0
  %.phi.trans.insert1287 = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 8
  %.pre1288 = load i8, ptr %.phi.trans.insert1287, align 2, !tbaa !136 ; 2 uses
  %i.zh = and i8 %.pre1288, 1
  %.not16.i295.i.i = icmp eq i8 %i.zh, 0
  %or.cond1447 = select i1 %.not.i294.i.i, i1 true, i1 %.not16.i295.i.i
  br i1 %or.cond1447, label %same_block.exit300.i.i, label %.split1381

.split1381:                                       ; preds = %bb.ba
  %i.zi = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 5
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !86
  %i.zk = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 5
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !86
  %i.zm = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 6
  %i.zn = load i8, ptr %i.zm, align 2, !tbaa !86
  %i.zo = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 6
  %i.zp = load i8, ptr %i.zo, align 2, !tbaa !86
  %i.zq = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 7
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !86
  %i.zs = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 7
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !86
  %i.zu = icmp eq i8 %i.zj, %i.zl
  %i.zv = icmp eq i8 %i.zn, %i.zp
  %i.zw = and i1 %i.zu, %i.zv
  %i.zx = icmp eq i8 %i.zr, %i.zt
  %.not18.i296.i.i = and i1 %i.zw, %i.zx
  br i1 %.not18.i296.i.i, label %bb.bc, label %bb.bb

same_block.exit300.i.i:                           ; preds = %bb.ba
  %i.zy = load i16, ptr %.1229.i.i, align 2, !tbaa !137
  %i.zz = sext i16 %i.zy to i32
  %i.aaa = load i16, ptr %.1227.i.i, align 2, !tbaa !137
  %i.aab = sext i16 %i.aaa to i32
  %i.aac = sub nsw i32 %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 2
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !138
  %i.aaf = sext i16 %i.aae to i32
  %i.aag = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 2
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !138
  %i.aai = sext i16 %i.aah to i32
  %i.aaj = sub nsw i32 %i.aaf, %i.aai
  %i.aak = or i32 %i.aaj, %i.aac
  %i.aal = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 4
  %i.aam = load i8, ptr %i.aal, align 2, !tbaa !139
  %i.aan = zext i8 %i.aam to i32
  %i.aao = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 4
  %i.aap = load i8, ptr %i.aao, align 2, !tbaa !139
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = sub nsw i32 %i.aan, %i.aaq
  %i.aas = or i32 %i.aak, %i.aar
  %i.aat = xor i8 %.pre1288, %i.zf
  %i.aau = and i8 %i.aat, 1
  %i.aav = zext nneg i8 %i.aau to i32
  %i.aaw = or i32 %i.aas, %i.aav
  %.not17.i299.i.i = icmp eq i32 %i.aaw, 0
  br i1 %.not17.i299.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.split1381, %same_block.exit300.i.i
  %i.aax = getelementptr inbounds i8, ptr %i.zd, i64 %i.vg
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.zd, ptr noundef %i.yq, i64 noundef %i.vh, i32 noundef %.0235.i.i, i32 noundef %.0236.i.i, i32 noundef %spec.select264.i.i, i32 noundef %spec.select265.i.i, ptr noundef nonnull %.1227.i.i, i32 noundef %i.th, i32 noundef %i.ue, i32 noundef %i.uf) #12
  %.pre1289 = load i8, ptr %i.ze, align 2, !tbaa !136
  br label %bb.bc

bb.bc:                                            ; preds = %.split1381, %same_block.exit300.i.i, %bb.bb
  %i.aay = phi i8 [ %.pre1289, %bb.bb ], [ %i.zf, %same_block.exit300.i.i ], [ %i.zf, %.split1381 ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.zd, %bb.bb ], [ %i.zc, %same_block.exit300.i.i ], [ %i.zc, %.split1381 ] ; 8 uses
  %.0221.i.i = phi ptr [ %i.aax, %bb.bb ], [ %i.zd, %same_block.exit300.i.i ], [ %i.zd, %.split1381 ] ; 7 uses
  %i.aaz = and i8 %i.aay, 1
  %.not.i287.i.i = icmp eq i8 %i.aaz, 0
  %.phi.trans.insert1291 = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 8
  %.pre1292 = load i8, ptr %.phi.trans.insert1291, align 2, !tbaa !136 ; 4 uses
  %i.aba = and i8 %.pre1292, 1
  %.not16.i288.i.i = icmp eq i8 %i.aba, 0
  %or.cond1448 = select i1 %.not.i287.i.i, i1 true, i1 %.not16.i288.i.i
  br i1 %or.cond1448, label %same_block.exit293.i.i, label %.split1382

.split1382:                                       ; preds = %bb.bc
  %i.abb = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 5
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !86
  %i.abd = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 5
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !86
  %i.abf = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 6
  %i.abg = load i8, ptr %i.abf, align 2, !tbaa !86
  %i.abh = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 6
  %i.abi = load i8, ptr %i.abh, align 2, !tbaa !86
  %i.abj = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 7
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !86
  %i.abl = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 7
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !86
  %i.abn = icmp eq i8 %i.abc, %i.abe
  %i.abo = icmp eq i8 %i.abg, %i.abi
  %i.abp = and i1 %i.abn, %i.abo
  %i.abq = icmp eq i8 %i.abk, %i.abm
  %.not18.i289.i.i = and i1 %i.abp, %i.abq
  br i1 %.not18.i289.i.i, label %bb.bf, label %bb.bd

same_block.exit293.i.i:                           ; preds = %bb.bc
  %i.abr = load i16, ptr %.1229.i.i, align 2, !tbaa !137
  %i.abs = sext i16 %i.abr to i32
  %i.abt = load i16, ptr %.1225.i.i, align 2, !tbaa !137
  %i.abu = sext i16 %i.abt to i32
  %i.abv = sub nsw i32 %i.abs, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 2
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !138
  %i.aby = sext i16 %i.abx to i32
  %i.abz = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !138
  %i.acb = sext i16 %i.aca to i32
  %i.acc = sub nsw i32 %i.aby, %i.acb
  %i.acd = or i32 %i.acc, %i.abv
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.cee = mul nsw i32 %i.cdx, %i.cdf
  %i.cef = sext i32 %i.cee to i64
  %i.ceg = sub nsw i64 0, %i.cef
  %i.ceh = tail call i32 @llvm.smin.i32(i32 %i.cdx, i32 0)
  %.0239.i.i618 = add i32 %i.cde, %i.ceh          ; 2 uses
  %.0236.i.i619 = tail call i32 @llvm.smax.i32(i32 %i.cdx, i32 0) ; 8 uses
  %i.cei = add i32 %.0236.i.i619, %.0239.i.i618
  %i.cej = icmp sgt i32 %i.cei, %i.cdo
  %i.cek = sub i32 %i.cdo, %.0236.i.i619
  %spec.select265.i.i621 = select i1 %i.cej, i32 %i.cek, i32 %.0239.i.i618 ; 6 uses
  %i.cel = icmp slt i32 %spec.select265.i.i621, 1
  %i.cem = mul i32 %i.cdn, %.0236.i.i619          ; 2 uses
  %i.cen = mul i32 %.0236.i.i619, %i.cdk          ; 2 uses
  %i.ceo = mul i32 %i.ceb, 3
  %i.cep = sext i32 %i.ceo to i64                 ; 2 uses
  %i.ceq = sext i32 %i.ceb to i64                 ; 3 uses
  %i.cer = sext i32 %i.cdk to i64                 ; 6 uses
  %i.ces = lshr i32 %i.cdf, 1                     ; 2 uses
  %i.cet = zext nneg i32 %i.ces to i64            ; 4 uses
  %i.ceu = mul i32 %i.ces, %i.cdf
  %i.cev = zext i32 %i.ceu to i64                 ; 5 uses
  %i.cew = sext i32 %i.cdn to i64                 ; 2 uses
  %i.cex = sext i32 %spec.select265.i.i621 to i64 ; 2 uses
  %i.cey = zext i32 %i.cdf to i64                 ; 2 uses
  %i.cez = zext i32 %i.cdd to i64                 ; 2 uses
  %i.cfa = zext nneg i32 %i.cdu to i64            ; 2 uses
  %i.cfb = add nuw i32 %i.ccr, 1
  %wide.trip.count1258 = zext i32 %i.cfb to i64
  %.1234.i.i620.idx = select i1 %i.ced, i64 %i.ceg, i64 0 ; 6 uses
  %invariant.gep1441 = getelementptr i8, ptr %i.cdg, i64 %.1234.i.i620.idx
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cex, i64 1)
  %i.cfc = add nsw i64 %smax, -1                  ; 3 uses
  %i.cfd = mul i64 %i.cfc, %i.cer                 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.cdm, i64 %i.cfd
  %i.cfe = add nsw i64 %.1234.i.i620.idx, %i.cet  ; 2 uses
  %i.cff = getelementptr i8, ptr %i.cdg, i64 %i.cfe
  %scevgep1494 = getelementptr i8, ptr %i.cff, i64 %i.cev
  %i.cfg = mul i64 %i.cfc, %i.cey                 ; 4 uses
  %i.cfh = getelementptr i8, ptr %i.cdg, i64 %i.cfe
  %i.cfi = getelementptr i8, ptr %i.cfh, i64 %i.cfg
  %scevgep1497 = getelementptr i8, ptr %i.cfi, i64 %i.cev
  %i.cfj = getelementptr i8, ptr %i.cdg, i64 %.1234.i.i620.idx
  %scevgep1499 = getelementptr i8, ptr %i.cfj, i64 %i.cev
  %i.cfk = getelementptr i8, ptr %i.cdg, i64 %.1234.i.i620.idx
  %i.cfl = getelementptr i8, ptr %i.cfk, i64 %i.cfg
  %scevgep1501 = getelementptr i8, ptr %i.cfl, i64 %i.cev
  %i.cfm = add nsw i64 %.1234.i.i620.idx, %i.cet  ; 2 uses
  %scevgep1503 = getelementptr i8, ptr %i.cdg, i64 %i.cfm
  %i.cfn = getelementptr i8, ptr %i.cdg, i64 %i.cfm
  %scevgep1505 = getelementptr i8, ptr %i.cfn, i64 %i.cfg
  %i.cfo = getelementptr i8, ptr %i.cdg, i64 %.1234.i.i620.idx
  %scevgep1507 = getelementptr i8, ptr %i.cfo, i64 %i.cfg
  %i.cfp = shl i64 %i.cfc, 1
  %i.cfq = mul i64 %i.cfp, %i.cew
  %scevgep1517 = getelementptr i8, ptr %.pre1298, i64 %i.cfq
  %i.cfr = or i32 %i.cdn, %i.cdk
  %op.rdx2139 = icmp slt i32 %i.cfr, 0
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.cfs = icmp eq i32 %.0.i5841074, %i.cct
  br i1 %i.cfs, label %predict_slice.exit676, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.cft = mul i32 %i.cde, %.0.i5841074           ; 2 uses
  %i.cfu = add nuw nsw i32 %.0.i5841074, 1
  %i.cfv = mul nsw i32 %i.cde, %i.cfu
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cdo, i32 %i.cfv) ; 2 uses
  %i.cfw = icmp slt i32 %i.cft, %..i
  %i.cfx = icmp sgt i32 %i.cdn, 0
  %or.cond1116 = select i1 %i.cfw, i1 %i.cfx, i1 false
  br i1 %or.cond1116, label %.preheader.preheader, label %predict_slice.exit676

.preheader.preheader:                             ; preds = %bb.gm
  %i.cfy = sext i32 %i.cft to i64                 ; 3 uses
  %i.cfz = sext i32 %i.cdk to i64                 ; 3 uses
  %i.cga = zext nneg i32 %i.cdn to i64
  %i.cgb = sext i32 %..i to i64                   ; 3 uses
  %wide.trip.count1244 = zext nneg i32 %i.cdn to i64 ; 8 uses
  %i.cgc = mul nsw i64 %i.cfz, %i.cfy
  %scevgep1572 = getelementptr i8, ptr %i.cdm, i64 %i.cgc
  %i.cgd = add nsw i64 %i.cgb, -1
  %i.cge = mul i64 %i.cgd, %i.cfz
  %i.cgf = getelementptr i8, ptr %i.cdm, i64 %i.cge
  %scevgep1573 = getelementptr i8, ptr %i.cgf, i64 %wide.trip.count1244
  %i.cgg = shl nsw i64 %i.cfy, 1
  %i.cgh = mul nsw i64 %i.cgg, %wide.trip.count1244
  %scevgep1574 = getelementptr i8, ptr %.pre1298, i64 %i.cgh
  %i.cgi = shl nsw i64 %i.cgb, 1
  %i.cgj = mul nsw i64 %i.cgi, %wide.trip.count1244
  %scevgep1575 = getelementptr i8, ptr %.pre1298, i64 %i.cgj
  %min.iters.check1581 = icmp ult i32 %i.cdn, 8
  %bound01576 = icmp ult ptr %scevgep1572, %scevgep1575
  %bound11577 = icmp ult ptr %scevgep1574, %scevgep1573
  %found.conflict1578 = and i1 %bound01576, %bound11577
  %stride.check1579 = icmp slt i32 %i.cdk, 0
  %i.cgk = or i1 %found.conflict1578, %stride.check1579
  %n.vec1583 = and i64 %wide.trip.count1244, 2147483640 ; 3 uses
  %cmp.n1589 = icmp eq i64 %n.vec1583, %wide.trip.count1244
  %xtraiter2181 = and i64 %wide.trip.count1244, 1
  %lcmp.mod2182.not = icmp eq i64 %xtraiter2181, 0
  %i.cgl = add nsw i64 %wide.trip.count1244, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1061
  %indvars.iv1246 = phi i64 [ %i.cfy, %.preheader.preheader ], [ %indvars.iv.next1247, %._crit_edge1061 ] ; 3 uses
  %i.cgm = mul nsw i64 %indvars.iv1246, %i.cga
  %i.cgn = mul nsw i64 %indvars.iv1246, %i.cfz
  %invariant.gep1435 = getelementptr [2 x i8], ptr %.pre1298, i64 %i.cgm ; 4 uses
  %invariant.gep1437 = getelementptr i8, ptr %i.cdm, i64 %i.cgn ; 4 uses
  %brmerge2209 = select i1 %min.iters.check1581, i1 true, i1 %i.cgk
  br i1 %brmerge2209, label %scalar.ph1580.preheader, label %vector.body1584

vector.body1584:                                  ; preds = %.preheader, %vector.body1584
  %index1585 = phi i64 [ %index.next1587, %vector.body1584 ], [ 0, %.preheader ] ; 3 uses
  %i.cgo = getelementptr [2 x i8], ptr %invariant.gep1435, i64 %index1585
  %wide.load1586 = load <8 x i16>, ptr %i.cgo, align 2, !tbaa !125, !alias.scope !394 ; 2 uses
  %i.cgp = sext <8 x i16> %wide.load1586 to <8 x i32>
  %i.cgq = add nsw <8 x i32> %i.cgp, splat (i32 2056)
  %i.cgr = ashr <8 x i32> %i.cgq, splat (i32 4)   ; 2 uses
  %i.cgs = icmp ugt <8 x i32> %i.cgr, splat (i32 255)
  %i.cgt = icmp sgt <8 x i16> %wide.load1586, splat (i16 -2057)
  %i.cgu = sext <8 x i1> %i.cgt to <8 x i32>
  %i.cgv = select <8 x i1> %i.cgs, <8 x i32> %i.cgu, <8 x i32> %i.cgr
  %i.cgw = trunc <8 x i32> %i.cgv to <8 x i8>
  %i.cgx = getelementptr i8, ptr %invariant.gep1437, i64 %index1585
  store <8 x i8> %i.cgw, ptr %i.cgx, align 1, !tbaa !86, !alias.scope !395, !noalias !394
  %index.next1587 = add nuw i64 %index1585, 8     ; 2 uses
  %i.cgy = icmp eq i64 %index.next1587, %n.vec1583
  br i1 %i.cgy, label %middle.block1588, label %vector.body1584, !llvm.loop !270

middle.block1588:                                 ; preds = %vector.body1584
  br i1 %cmp.n1589, label %._crit_edge1061, label %scalar.ph1580.preheader

scalar.ph1580.preheader:                          ; preds = %.preheader, %middle.block1588
  %indvars.iv1241.ph = phi i64 [ %n.vec1583, %middle.block1588 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod2182.not, label %scalar.ph1580.prol.loopexit, label %scalar.ph1580.prol

scalar.ph1580.prol:                               ; preds = %scalar.ph1580.preheader
  %gep1436.prol = getelementptr [2 x i8], ptr %invariant.gep1435, i64 %indvars.iv1241.ph
  %i.cgz = load i16, ptr %gep1436.prol, align 2, !tbaa !125 ; 2 uses
  %i.cha = sext i16 %i.cgz to i32
  %i.chb = add nsw i32 %i.cha, 2056
  %i.chc = ashr i32 %i.chb, 4                     ; 2 uses
  %i.chd = icmp ugt i32 %i.chc, 255
  %isnotneg.i.prol = icmp sgt i16 %i.cgz, -2057
  %i.che = sext i1 %isnotneg.i.prol to i32
  %.0.i596.prol = select i1 %i.chd, i32 %i.che, i32 %i.chc
  %i.chf = trunc i32 %.0.i596.prol to i8
  %gep1438.prol = getelementptr i8, ptr %invariant.gep1437, i64 %indvars.iv1241.ph
  store i8 %i.chf, ptr %gep1438.prol, align 1, !tbaa !86
  %indvars.iv.next1242.prol = or disjoint i64 %indvars.iv1241.ph, 1
  br label %scalar.ph1580.prol.loopexit

scalar.ph1580.prol.loopexit:                      ; preds = %scalar.ph1580.prol, %scalar.ph1580.preheader
  %indvars.iv1241.unr = phi i64 [ %indvars.iv1241.ph, %scalar.ph1580.preheader ], [ %indvars.iv.next1242.prol, %scalar.ph1580.prol ]
  %i.chg = icmp eq i64 %indvars.iv1241.ph, %i.cgl
  br i1 %i.chg, label %._crit_edge1061, label %scalar.ph1580

scalar.ph1580:                                    ; preds = %scalar.ph1580.prol.loopexit, %scalar.ph1580
  %indvars.iv1241 = phi i64 [ %indvars.iv.next1242.1, %scalar.ph1580 ], [ %indvars.iv1241.unr, %scalar.ph1580.prol.loopexit ] ; 4 uses
  %gep1436 = getelementptr [2 x i8], ptr %invariant.gep1435, i64 %indvars.iv1241
  %i.chh = load i16, ptr %gep1436, align 2, !tbaa !125 ; 2 uses
  %i.chi = sext i16 %i.chh to i32
  %i.chj = add nsw i32 %i.chi, 2056
  %i.chk = ashr i32 %i.chj, 4                     ; 2 uses
  %i.chl = icmp ugt i32 %i.chk, 255
  %isnotneg.i = icmp sgt i16 %i.chh, -2057
  %i.chm = sext i1 %isnotneg.i to i32
  %.0.i596 = select i1 %i.chl, i32 %i.chm, i32 %i.chk
  %i.chn = trunc i32 %.0.i596 to i8
  %gep1438 = getelementptr i8, ptr %invariant.gep1437, i64 %indvars.iv1241
  store i8 %i.chn, ptr %gep1438, align 1, !tbaa !86
  %indvars.iv.next1242 = add nuw nsw i64 %indvars.iv1241, 1 ; 2 uses
  %gep1436.1 = getelementptr [2 x i8], ptr %invariant.gep1435, i64 %indvars.iv.next1242
  %i.cho = load i16, ptr %gep1436.1, align 2, !tbaa !125 ; 2 uses
  %i.chp = sext i16 %i.cho to i32
  %i.chq = add nsw i32 %i.chp, 2056
  %i.chr = ashr i32 %i.chq, 4                     ; 2 uses
  %i.chs = icmp ugt i32 %i.chr, 255
  %isnotneg.i.1 = icmp sgt i16 %i.cho, -2057
  %i.cht = sext i1 %isnotneg.i.1 to i32
  %.0.i596.1 = select i1 %i.chs, i32 %i.cht, i32 %i.chr
  %i.chu = trunc i32 %.0.i596.1 to i8
  %gep1438.1 = getelementptr i8, ptr %invariant.gep1437, i64 %indvars.iv.next1242
  store i8 %i.chu, ptr %gep1438.1, align 1, !tbaa !86
  %indvars.iv.next1242.1 = add nuw nsw i64 %indvars.iv1241, 2 ; 2 uses
  %exitcond1245.not.1 = icmp eq i64 %indvars.iv.next1242.1, %wide.trip.count1244
  br i1 %exitcond1245.not.1, label %._crit_edge1061, label %scalar.ph1580, !llvm.loop !271

._crit_edge1061:                                  ; preds = %scalar.ph1580.prol.loopexit, %scalar.ph1580, %middle.block1588
  %indvars.iv.next1247 = add nsw i64 %indvars.iv1246, 1 ; 2 uses
  %i.chv = icmp slt i64 %indvars.iv.next1247, %i.cgb
  br i1 %i.chv, label %.preheader, label %predict_slice.exit676, !llvm.loop !272

bb.gn:                                            ; preds = %.lr.ph1072, %add_yblock.exit.i647
  %indvars.iv1255 = phi i64 [ 0, %.lr.ph1072 ], [ %indvars.iv.next1256, %add_yblock.exit.i647 ] ; 6 uses
  %i.chw = mul i64 %indvars.iv1255, %i.cez        ; 2 uses
  %i.chx = trunc i64 %i.chw to i32
  %i.chy = sub i32 %i.chx, %i.cdu                 ; 2 uses
  %smax1491 = tail call i32 @llvm.smax.i32(i32 %i.chy, i32 0) ; 3 uses
  %i.chz = add i32 %i.chy, %i.cdd
  %smin1492 = tail call i32 @llvm.smin.i32(i32 %i.cdn, i32 %i.chz)
  %i.cia = sub i32 %smin1492, %smax1491
  %i.cib = tail call i32 @llvm.umax.i32(i32 %i.cia, i32 1)
  %umax = zext i32 %i.cib to i64                  ; 7 uses
  %i.cic = add i32 %i.cen, %smax1491
  %i.cid = sext i32 %i.cic to i64
  %i.cie = getelementptr i8, ptr %scevgep, i64 %umax
  %scevgep1493 = getelementptr i8, ptr %i.cie, i64 %i.cid ; 2 uses
  %i.cif = sub i64 %i.chw, %i.cfa
  %smin1495 = tail call i64 @llvm.smin.i64(i64 %i.cif, i64 0) ; 2 uses
  %i.cig = sub nsw i64 0, %smin1495               ; 3 uses
  %scevgep1496 = getelementptr i8, ptr %scevgep1494, i64 %i.cig
  %i.cih = sub i64 %umax, %smin1495               ; 4 uses
  %scevgep1498 = getelementptr i8, ptr %scevgep1497, i64 %i.cih
  %scevgep1500 = getelementptr i8, ptr %scevgep1499, i64 %i.cig
  %scevgep1502 = getelementptr i8, ptr %scevgep1501, i64 %i.cih
  %scevgep1504 = getelementptr i8, ptr %scevgep1503, i64 %i.cig
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %i.cih
  %scevgep1508 = getelementptr i8, ptr %scevgep1507, i64 %i.cih
  %i.cii = add i32 %i.cem, %smax1491
  %i.cij = sext i32 %i.cii to i64
  %i.cik = add nsw i64 %umax, %i.cij
  %i.cil = shl nsw i64 %i.cik, 1
  %scevgep1518 = getelementptr i8, ptr %scevgep1517, i64 %i.cil
  %i.cim = mul nuw nsw i64 %indvars.iv1255, %i.cez
  %i.cin = sub nsw i64 %i.cim, %i.cfa             ; 2 uses
  %i.cio = load i32, ptr %i.o, align 16, !tbaa !107
  %i.cip = load i32, ptr %i.lg, align 8, !tbaa !83 ; 2 uses
  %i.ciq = shl i32 %i.cio, %i.cip                 ; 2 uses
  %i.cir = load i32, ptr %i.q, align 4, !tbaa !106
  %i.cis = shl i32 %i.cir, %i.cip
  %i.cit = load ptr, ptr %i.li, align 8, !tbaa !133
  %i.ciu = mul nsw i32 %i.ciq, %i.cdy
  %i.civ = sext i32 %i.ciu to i64
  %i.ciw = getelementptr [10 x i8], ptr %i.cit, i64 %indvars.iv1255
  %i.cix = getelementptr i8, ptr %i.ciw, i64 -10
  %i.ciy = getelementptr [10 x i8], ptr %i.cix, i64 %i.civ ; 4 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 10 ; 3 uses
  %i.cja = sext i32 %i.ciq to i64                 ; 2 uses
  %i.cjb = getelementptr inbounds [10 x i8], ptr %i.ciy, i64 %i.cja ; 3 uses
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cjb, i64 10 ; 3 uses
  %i.cjd = load ptr, ptr %i.lj, align 8, !tbaa !134 ; 6 uses
  %i.cje = icmp eq i64 %indvars.iv1255, 0
  br i1 %i.cje, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.not.i.i600 = icmp slt i64 %indvars.iv1255, %i.cja ; 2 uses
  %spec.select.i.i601 = select i1 %.not.i.i600, ptr %i.ciz, ptr %i.ciy
  %spec.select260.i.i602 = select i1 %.not.i.i600, ptr %i.cjc, ptr %i.cjb
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.0228.i.i603 = phi ptr [ %i.ciy, %bb.go ], [ %i.ciz, %bb.gn ] ; 2 uses
  %.0226.i.i604 = phi ptr [ %spec.select.i.i601, %bb.go ], [ %i.ciz, %bb.gn ] ; 2 uses
  %.0224.i.i605 = phi ptr [ %i.cjb, %bb.go ], [ %i.cjc, %bb.gn ] ; 3 uses
  %.0222.i.i606 = phi ptr [ %spec.select260.i.i602, %bb.go ], [ %i.cjc, %bb.gn ] ; 3 uses
  br i1 %i.cec, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.not249.i.i607 = icmp slt i32 %.0.i5841074, %i.cis ; 2 uses
  %spec.select261.i.i608 = select i1 %.not249.i.i607, ptr %.0224.i.i605, ptr %.0228.i.i603
  %spec.select262.i.i609 = select i1 %.not249.i.i607, ptr %.0222.i.i606, ptr %.0226.i.i604
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.1229.i.i610 = phi ptr [ %.0228.i.i603, %bb.gq ], [ %.0224.i.i605, %bb.gp ] ; 20 uses
  %.1227.i.i611 = phi ptr [ %.0226.i.i604, %bb.gq ], [ %.0222.i.i606, %bb.gp ] ; 22 uses
  %.1225.i.i612 = phi ptr [ %spec.select261.i.i608, %bb.gq ], [ %.0224.i.i605, %bb.gp ] ; 21 uses
  %.1223.i.i613 = phi ptr [ %spec.select262.i.i609, %bb.gq ], [ %.0222.i.i606, %bb.gp ] ; 20 uses
  %i.cjf = trunc nsw i64 %i.cin to i32            ; 2 uses
  %i.cjg = tail call i32 @llvm.smin.i32(i32 %i.cjf, i32 0)
  %.0237.i.i614 = add nsw i32 %i.cjg, %i.cdd      ; 2 uses
  %.0235.i.i615 = tail call i32 @llvm.smax.i32(i32 %i.cjf, i32 0) ; 8 uses
  %i.cjh = tail call i64 @llvm.smin.i64(i64 %i.cin, i64 0)
  %.0233.i.i616.idx = sub i64 0, %i.cjh
  %i.cji = add nsw i32 %.0237.i.i614, %.0235.i.i615
  %i.cjj = icmp sgt i32 %i.cji, %i.cdn
  %i.cjk = sub nsw i32 %i.cdn, %.0235.i.i615
  %spec.select264.i.i617 = select i1 %i.cjj, i32 %i.cjk, i32 %.0237.i.i614 ; 7 uses
  %gep1442 = getelementptr i8, ptr %invariant.gep1441, i64 %.0233.i.i616.idx ; 2 uses
  %i.cjl = icmp slt i32 %spec.select264.i.i617, 1
  %or.cond5.i.i622 = select i1 %i.cjl, i1 true, i1 %i.cel
  br i1 %or.cond5.i.i622, label %add_yblock.exit.i647, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.cjm = add i32 %.0235.i.i615, %i.cem
  %i.cjn = sext i32 %i.cjm to i64
  %i.cjo = getelementptr [2 x i8], ptr %.pre1298, i64 %i.cjn ; 2 uses
  %i.cjp = add i32 %.0235.i.i615, %i.cen
  %i.cjq = sext i32 %i.cjp to i64
  %i.cjr = getelementptr i8, ptr %i.cdm, i64 %i.cjq ; 4 uses
  %i.cjs = getelementptr inbounds i8, ptr %i.cjd, i64 %i.cep ; 11 uses
  %i.cjt = getelementptr inbounds i8, ptr %i.cjs, i64 %i.ceq ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.cjs, ptr noundef %i.cjd, i64 noundef %i.cer, i32 noundef %.0235.i.i615, i32 noundef %.0236.i.i619, i32 noundef %spec.select264.i.i617, i32 noundef %spec.select265.i.i621, ptr noundef %.1229.i.i610, i32 noundef %i.cco, i32 noundef %i.cdn, i32 noundef %i.cdo) #12
  %i.cju = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 8 ; 3 uses
  %i.cjv = load i8, ptr %i.cju, align 2, !tbaa !136 ; 4 uses
  %i.cjw = and i8 %i.cjv, 1
  %.not.i294.i.i623 = icmp eq i8 %i.cjw, 0
  %.phi.trans.insert1300 = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 8
  %.pre1301 = load i8, ptr %.phi.trans.insert1300, align 2, !tbaa !136 ; 2 uses
  %i.cjx = and i8 %.pre1301, 1
  %.not16.i295.i.i624 = icmp eq i8 %i.cjx, 0
  %or.cond1453 = select i1 %.not.i294.i.i623, i1 true, i1 %.not16.i295.i.i624
  br i1 %or.cond1453, label %same_block.exit300.i.i626, label %.split1389

.split1389:                                       ; preds = %bb.gs
  %i.cjy = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 5
  %i.cjz = load i8, ptr %i.cjy, align 1, !tbaa !86
  %i.cka = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 5
  %i.ckb = load i8, ptr %i.cka, align 1, !tbaa !86
  %i.ckc = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 6
  %i.ckd = load i8, ptr %i.ckc, align 2, !tbaa !86
  %i.cke = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 6
  %i.ckf = load i8, ptr %i.cke, align 2, !tbaa !86
  %i.ckg = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 7
  %i.ckh = load i8, ptr %i.ckg, align 1, !tbaa !86
  %i.cki = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 7
  %i.ckj = load i8, ptr %i.cki, align 1, !tbaa !86
  %i.ckk = icmp eq i8 %i.cjz, %i.ckb
  %i.ckl = icmp eq i8 %i.ckd, %i.ckf
  %i.ckm = and i1 %i.ckk, %i.ckl
  %i.ckn = icmp eq i8 %i.ckh, %i.ckj
  %.not18.i296.i.i625 = and i1 %i.ckm, %i.ckn
  br i1 %.not18.i296.i.i625, label %bb.gu, label %bb.gt

same_block.exit300.i.i626:                        ; preds = %bb.gs
  %i.cko = load i16, ptr %.1229.i.i610, align 2, !tbaa !137
  %i.ckp = sext i16 %i.cko to i32
  %i.ckq = load i16, ptr %.1227.i.i611, align 2, !tbaa !137
  %i.ckr = sext i16 %i.ckq to i32
  %i.cks = sub nsw i32 %i.ckp, %i.ckr
  %i.ckt = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 2
  %i.cku = load i16, ptr %i.ckt, align 2, !tbaa !138
  %i.ckv = sext i16 %i.cku to i32
  %i.ckw = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 2
  %i.ckx = load i16, ptr %i.ckw, align 2, !tbaa !138
  %i.cky = sext i16 %i.ckx to i32
  %i.ckz = sub nsw i32 %i.ckv, %i.cky
  %i.cla = or i32 %i.ckz, %i.cks
  %i.clb = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 4
  %i.clc = load i8, ptr %i.clb, align 2, !tbaa !139
  %i.cld = zext i8 %i.clc to i32
  %i.cle = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 4
  %i.clf = load i8, ptr %i.cle, align 2, !tbaa !139
  %i.clg = zext i8 %i.clf to i32
  %i.clh = sub nsw i32 %i.cld, %i.clg
  %i.cli = or i32 %i.cla, %i.clh
  %i.clj = xor i8 %.pre1301, %i.cjv
  %i.clk = and i8 %i.clj, 1
  %i.cll = zext nneg i8 %i.clk to i32
  %i.clm = or i32 %i.cli, %i.cll
  %.not17.i299.i.i675 = icmp eq i32 %i.clm, 0
  br i1 %.not17.i299.i.i675, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.split1389, %same_block.exit300.i.i626
  %i.cln = getelementptr inbounds i8, ptr %i.cjt, i64 %i.ceq
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.cjt, ptr noundef %i.cjd, i64 noundef %i.cer, i32 noundef %.0235.i.i615, i32 noundef %.0236.i.i619, i32 noundef %spec.select264.i.i617, i32 noundef %spec.select265.i.i621, ptr noundef nonnull %.1227.i.i611, i32 noundef %i.cco, i32 noundef %i.cdn, i32 noundef %i.cdo) #12
  %.pre1302 = load i8, ptr %i.cju, align 2, !tbaa !136
  br label %bb.gu

bb.gu:                                            ; preds = %.split1389, %same_block.exit300.i.i626, %bb.gt
  %i.clo = phi i8 [ %.pre1302, %bb.gt ], [ %i.cjv, %same_block.exit300.i.i626 ], [ %i.cjv, %.split1389 ] ; 6 uses
  %.sroa.7845.0 = phi ptr [ %i.cjt, %bb.gt ], [ %i.cjs, %same_block.exit300.i.i626 ], [ %i.cjs, %.split1389 ] ; 8 uses
  %.0221.i.i630 = phi ptr [ %i.cln, %bb.gt ], [ %i.cjt, %same_block.exit300.i.i626 ], [ %i.cjt, %.split1389 ] ; 7 uses
  %i.clp = and i8 %i.clo, 1
  %.not.i287.i.i631 = icmp eq i8 %i.clp, 0
  %.phi.trans.insert1304 = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 8
  %.pre1305 = load i8, ptr %.phi.trans.insert1304, align 2, !tbaa !136 ; 4 uses
  %i.clq = and i8 %.pre1305, 1
  %.not16.i288.i.i632 = icmp eq i8 %i.clq, 0
  %or.cond1454 = select i1 %.not.i287.i.i631, i1 true, i1 %.not16.i288.i.i632
  br i1 %or.cond1454, label %same_block.exit293.i.i634, label %.split1390

.split1390:                                       ; preds = %bb.gu
  %i.clr = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 5
  %i.cls = load i8, ptr %i.clr, align 1, !tbaa !86
  %i.clt = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 5
  %i.clu = load i8, ptr %i.clt, align 1, !tbaa !86
  %i.clv = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 6
  %i.clw = load i8, ptr %i.clv, align 2, !tbaa !86
  %i.clx = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 6
  %i.cly = load i8, ptr %i.clx, align 2, !tbaa !86
  %i.clz = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 7
  %i.cma = load i8, ptr %i.clz, align 1, !tbaa !86
  %i.cmb = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 7
  %i.cmc = load i8, ptr %i.cmb, align 1, !tbaa !86
  %i.cmd = icmp eq i8 %i.cls, %i.clu
  %i.cme = icmp eq i8 %i.clw, %i.cly
  %i.cmf = and i1 %i.cmd, %i.cme
  %i.cmg = icmp eq i8 %i.cma, %i.cmc
  %.not18.i289.i.i633 = and i1 %i.cmf, %i.cmg
  br i1 %.not18.i289.i.i633, label %bb.gx, label %bb.gv

same_block.exit293.i.i634:                        ; preds = %bb.gu
  %i.cmh = load i16, ptr %.1229.i.i610, align 2, !tbaa !137
  %i.cmi = sext i16 %i.cmh to i32
  %i.cmj = load i16, ptr %.1225.i.i612, align 2, !tbaa !137
  %i.cmk = sext i16 %i.cmj to i32
  %i.cml = sub nsw i32 %i.cmi, %i.cmk
  %i.cmm = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 2
end_hunk_1
begin_hunk_2_@encode_frame:bb.a
  %i.dbo = mul nsw i32 %i.dbh, %i.dap
  %i.dbp = sext i32 %i.dbo to i64
  %i.dbq = sub nsw i64 0, %i.dbp
  %i.dbr = tail call i32 @llvm.smin.i32(i32 %i.dbh, i32 0)
  %.0239.i.i708 = add i32 %i.dao, %i.dbr          ; 2 uses
  %.0236.i.i709 = tail call i32 @llvm.smax.i32(i32 %i.dbh, i32 0) ; 8 uses
  %i.dbs = add i32 %.0236.i.i709, %.0239.i.i708
  %i.dbt = icmp sgt i32 %i.dbs, %i.day
  %i.dbu = sub i32 %i.day, %.0236.i.i709
  %spec.select265.i.i711 = select i1 %i.dbt, i32 %i.dbu, i32 %.0239.i.i708 ; 6 uses
  %i.dbv = icmp slt i32 %spec.select265.i.i711, 1
  %i.dbw = mul i32 %i.dax, %.0236.i.i709          ; 2 uses
  %i.dbx = mul i32 %.0236.i.i709, %i.dau          ; 2 uses
  %i.dby = mul i32 %i.dbl, 3
  %i.dbz = sext i32 %i.dby to i64                 ; 2 uses
  %i.dca = sext i32 %i.dbl to i64                 ; 3 uses
  %i.dcb = sext i32 %i.dau to i64                 ; 6 uses
  %i.dcc = lshr i32 %i.dap, 1                     ; 2 uses
  %i.dcd = zext nneg i32 %i.dcc to i64            ; 4 uses
  %i.dce = mul i32 %i.dcc, %i.dap
  %i.dcf = zext i32 %i.dce to i64                 ; 5 uses
  %i.dcg = sext i32 %i.dax to i64                 ; 2 uses
  %i.dch = sext i32 %spec.select265.i.i711 to i64 ; 2 uses
  %i.dci = zext i32 %i.dap to i64                 ; 2 uses
  %i.dcj = zext i32 %i.dan to i64                 ; 2 uses
  %i.dck = zext nneg i32 %i.dbe to i64            ; 2 uses
  %i.dcl = add nuw i32 %i.dab, 1
  %wide.trip.count1160 = zext i32 %i.dcl to i64
  %.1234.i.i710.idx = select i1 %i.dbn, i64 %i.dbq, i64 0 ; 6 uses
  %invariant.gep1423 = getelementptr i8, ptr %i.daq, i64 %.1234.i.i710.idx
  %smax2016 = tail call i64 @llvm.smax.i64(i64 %i.dch, i64 1)
  %i.dcm = add nsw i64 %smax2016, -1              ; 3 uses
  %i.dcn = mul i64 %i.dcm, %i.dcb                 ; 5 uses
  %scevgep2017 = getelementptr i8, ptr %i.daw, i64 %i.dcn
  %i.dco = add nsw i64 %.1234.i.i710.idx, %i.dcd  ; 2 uses
  %i.dcp = getelementptr i8, ptr %i.daq, i64 %i.dco
  %scevgep2023 = getelementptr i8, ptr %i.dcp, i64 %i.dcf
  %i.dcq = mul i64 %i.dcm, %i.dci                 ; 4 uses
  %i.dcr = getelementptr i8, ptr %i.daq, i64 %i.dco
  %i.dcs = getelementptr i8, ptr %i.dcr, i64 %i.dcq
  %scevgep2026 = getelementptr i8, ptr %i.dcs, i64 %i.dcf
  %i.dct = getelementptr i8, ptr %i.daq, i64 %.1234.i.i710.idx
  %scevgep2028 = getelementptr i8, ptr %i.dct, i64 %i.dcf
  %i.dcu = getelementptr i8, ptr %i.daq, i64 %.1234.i.i710.idx
  %i.dcv = getelementptr i8, ptr %i.dcu, i64 %i.dcq
  %scevgep2030 = getelementptr i8, ptr %i.dcv, i64 %i.dcf
  %i.dcw = add nsw i64 %.1234.i.i710.idx, %i.dcd  ; 2 uses
  %scevgep2032 = getelementptr i8, ptr %i.daq, i64 %i.dcw
  %i.dcx = getelementptr i8, ptr %i.daq, i64 %i.dcw
  %scevgep2034 = getelementptr i8, ptr %i.dcx, i64 %i.dcq
  %i.dcy = getelementptr i8, ptr %i.daq, i64 %.1234.i.i710.idx
  %scevgep2036 = getelementptr i8, ptr %i.dcy, i64 %i.dcq
  %i.dcz = shl i64 %i.dcm, 1
  %i.dda = mul i64 %i.dcz, %i.dcg
  %scevgep2046 = getelementptr i8, ptr %i.czu, i64 %i.dda
  %i.ddb = or i32 %i.dax, %i.dau
  %op.rdx2143 = icmp slt i32 %i.ddb, 0
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.ddc = icmp eq i32 %.0.i995, %i.dad
  br i1 %i.ddc, label %predict_slice.exit768, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ddd = mul i32 %i.dao, %.0.i995               ; 2 uses
  %i.dde = add nuw nsw i32 %.0.i995, 1
  %i.ddf = mul nsw i32 %i.dao, %i.dde
  %..i683 = tail call i32 @llvm.smin.i32(i32 %i.day, i32 %i.ddf) ; 2 uses
  %i.ddg = icmp slt i32 %i.ddd, %..i683
  %i.ddh = icmp sgt i32 %i.dax, 0
  %or.cond1118 = select i1 %i.ddg, i1 %i.ddh, i1 false
  br i1 %or.cond1118, label %.preheader906.preheader, label %predict_slice.exit768

.preheader906.preheader:                          ; preds = %bb.hk
  %i.ddi = sext i32 %i.ddd to i64                 ; 3 uses
  %i.ddj = sext i32 %i.dau to i64                 ; 3 uses
  %i.ddk = zext nneg i32 %i.dax to i64
  %i.ddl = sext i32 %..i683 to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.dax to i64  ; 8 uses
  %i.ddm = mul nsw i64 %i.ddj, %i.ddi
  %scevgep2117 = getelementptr i8, ptr %i.daw, i64 %i.ddm
  %i.ddn = add nsw i64 %i.ddl, -1
  %i.ddo = mul i64 %i.ddn, %i.ddj
  %i.ddp = getelementptr i8, ptr %i.daw, i64 %i.ddo
  %scevgep2118 = getelementptr i8, ptr %i.ddp, i64 %wide.trip.count
  %i.ddq = shl nsw i64 %i.ddi, 1
  %i.ddr = mul nsw i64 %i.ddq, %wide.trip.count
  %scevgep2119 = getelementptr i8, ptr %i.czu, i64 %i.ddr
  %i.dds = shl nsw i64 %i.ddl, 1
  %i.ddt = mul nsw i64 %i.dds, %wide.trip.count
  %scevgep2120 = getelementptr i8, ptr %i.czu, i64 %i.ddt
  %min.iters.check2126 = icmp ult i32 %i.dax, 8
  %bound02121 = icmp ult ptr %scevgep2117, %scevgep2120
  %bound12122 = icmp ult ptr %scevgep2119, %scevgep2118
  %found.conflict2123 = and i1 %bound02121, %bound12122
  %stride.check2124 = icmp slt i32 %i.dau, 0
  %i.ddu = or i1 %found.conflict2123, %stride.check2124
  %n.vec2128 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n2134 = icmp eq i64 %n.vec2128, %wide.trip.count
  %xtraiter2171 = and i64 %wide.trip.count, 1
  %lcmp.mod2172.not = icmp eq i64 %xtraiter2171, 0
  %i.ddv = add nsw i64 %wide.trip.count, -1
  br label %.preheader906

.preheader906:                                    ; preds = %.preheader906.preheader, %._crit_edge982
  %indvars.iv1148 = phi i64 [ %i.ddi, %.preheader906.preheader ], [ %indvars.iv.next1149, %._crit_edge982 ] ; 3 uses
  %i.ddw = mul nsw i64 %indvars.iv1148, %i.ddk
  %i.ddx = mul nsw i64 %indvars.iv1148, %i.ddj
  %invariant.gep = getelementptr [2 x i8], ptr %i.czu, i64 %i.ddw ; 4 uses
  %invariant.gep1419 = getelementptr i8, ptr %i.daw, i64 %i.ddx ; 4 uses
  %brmerge2211 = select i1 %min.iters.check2126, i1 true, i1 %i.ddu
  br i1 %brmerge2211, label %scalar.ph2125.preheader, label %vector.body2129

vector.body2129:                                  ; preds = %.preheader906, %vector.body2129
  %index2130 = phi i64 [ %index.next2132, %vector.body2129 ], [ 0, %.preheader906 ] ; 3 uses
  %i.ddy = getelementptr [2 x i8], ptr %invariant.gep, i64 %index2130
  %wide.load2131 = load <8 x i16>, ptr %i.ddy, align 2, !tbaa !125, !alias.scope !407 ; 2 uses
  %i.ddz = sext <8 x i16> %wide.load2131 to <8 x i32>
  %i.dea = add nsw <8 x i32> %i.ddz, splat (i32 2056)
  %i.deb = ashr <8 x i32> %i.dea, splat (i32 4)   ; 2 uses
  %i.dec = icmp ugt <8 x i32> %i.deb, splat (i32 255)
  %i.ded = icmp sgt <8 x i16> %wide.load2131, splat (i16 -2057)
  %i.dee = sext <8 x i1> %i.ded to <8 x i32>
  %i.def = select <8 x i1> %i.dec, <8 x i32> %i.dee, <8 x i32> %i.deb
  %i.deg = trunc <8 x i32> %i.def to <8 x i8>
  %i.deh = getelementptr i8, ptr %invariant.gep1419, i64 %index2130
  store <8 x i8> %i.deg, ptr %i.deh, align 1, !tbaa !86, !alias.scope !408, !noalias !407
  %index.next2132 = add nuw i64 %index2130, 8     ; 2 uses
  %i.dei = icmp eq i64 %index.next2132, %n.vec2128
  br i1 %i.dei, label %middle.block2133, label %vector.body2129, !llvm.loop !291

middle.block2133:                                 ; preds = %vector.body2129
  br i1 %cmp.n2134, label %._crit_edge982, label %scalar.ph2125.preheader

scalar.ph2125.preheader:                          ; preds = %.preheader906, %middle.block2133
  %indvars.iv1145.ph = phi i64 [ %n.vec2128, %middle.block2133 ], [ 0, %.preheader906 ] ; 5 uses
  br i1 %lcmp.mod2172.not, label %scalar.ph2125.prol.loopexit, label %scalar.ph2125.prol

scalar.ph2125.prol:                               ; preds = %scalar.ph2125.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1145.ph
  %i.dej = load i16, ptr %gep.prol, align 2, !tbaa !125 ; 2 uses
  %i.dek = sext i16 %i.dej to i32
  %i.del = add nsw i32 %i.dek, 2056
  %i.dem = ashr i32 %i.del, 4                     ; 2 uses
  %i.den = icmp ugt i32 %i.dem, 255
  %isnotneg.i685.prol = icmp sgt i16 %i.dej, -2057
  %i.deo = sext i1 %isnotneg.i685.prol to i32
  %.0.i686.prol = select i1 %i.den, i32 %i.deo, i32 %i.dem
  %i.dep = trunc i32 %.0.i686.prol to i8
  %gep1420.prol = getelementptr i8, ptr %invariant.gep1419, i64 %indvars.iv1145.ph
  store i8 %i.dep, ptr %gep1420.prol, align 1, !tbaa !86
  %indvars.iv.next1146.prol = or disjoint i64 %indvars.iv1145.ph, 1
  br label %scalar.ph2125.prol.loopexit

scalar.ph2125.prol.loopexit:                      ; preds = %scalar.ph2125.prol, %scalar.ph2125.preheader
  %indvars.iv1145.unr = phi i64 [ %indvars.iv1145.ph, %scalar.ph2125.preheader ], [ %indvars.iv.next1146.prol, %scalar.ph2125.prol ]
  %i.deq = icmp eq i64 %indvars.iv1145.ph, %i.ddv
  br i1 %i.deq, label %._crit_edge982, label %scalar.ph2125

scalar.ph2125:                                    ; preds = %scalar.ph2125.prol.loopexit, %scalar.ph2125
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146.1, %scalar.ph2125 ], [ %indvars.iv1145.unr, %scalar.ph2125.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1145
  %i.der = load i16, ptr %gep, align 2, !tbaa !125 ; 2 uses
  %i.des = sext i16 %i.der to i32
  %i.det = add nsw i32 %i.des, 2056
  %i.deu = ashr i32 %i.det, 4                     ; 2 uses
  %i.dev = icmp ugt i32 %i.deu, 255
  %isnotneg.i685 = icmp sgt i16 %i.der, -2057
  %i.dew = sext i1 %isnotneg.i685 to i32
  %.0.i686 = select i1 %i.dev, i32 %i.dew, i32 %i.deu
  %i.dex = trunc i32 %.0.i686 to i8
  %gep1420 = getelementptr i8, ptr %invariant.gep1419, i64 %indvars.iv1145
  store i8 %i.dex, ptr %gep1420, align 1, !tbaa !86
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next1146
  %i.dey = load i16, ptr %gep.1, align 2, !tbaa !125 ; 2 uses
  %i.dez = sext i16 %i.dey to i32
  %i.dfa = add nsw i32 %i.dez, 2056
  %i.dfb = ashr i32 %i.dfa, 4                     ; 2 uses
  %i.dfc = icmp ugt i32 %i.dfb, 255
  %isnotneg.i685.1 = icmp sgt i16 %i.dey, -2057
  %i.dfd = sext i1 %isnotneg.i685.1 to i32
  %.0.i686.1 = select i1 %i.dfc, i32 %i.dfd, i32 %i.dfb
  %i.dfe = trunc i32 %.0.i686.1 to i8
  %gep1420.1 = getelementptr i8, ptr %invariant.gep1419, i64 %indvars.iv.next1146
  store i8 %i.dfe, ptr %gep1420.1, align 1, !tbaa !86
  %indvars.iv.next1146.1 = add nuw nsw i64 %indvars.iv1145, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next1146.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge982, label %scalar.ph2125, !llvm.loop !292

._crit_edge982:                                   ; preds = %scalar.ph2125.prol.loopexit, %scalar.ph2125, %middle.block2133
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, 1 ; 2 uses
  %i.dff = icmp slt i64 %indvars.iv.next1149, %i.ddl
  br i1 %i.dff, label %.preheader906, label %predict_slice.exit768, !llvm.loop !272

bb.hl:                                            ; preds = %.lr.ph993, %add_yblock.exit.i737
  %indvars.iv1157 = phi i64 [ 0, %.lr.ph993 ], [ %indvars.iv.next1158, %add_yblock.exit.i737 ] ; 6 uses
  %i.dfg = mul i64 %indvars.iv1157, %i.dcj        ; 2 uses
  %i.dfh = trunc i64 %i.dfg to i32
  %i.dfi = sub i32 %i.dfh, %i.dbe                 ; 2 uses
  %smax2019 = tail call i32 @llvm.smax.i32(i32 %i.dfi, i32 0) ; 3 uses
  %i.dfj = add i32 %i.dfi, %i.dan
  %smin2020 = tail call i32 @llvm.smin.i32(i32 %i.dax, i32 %i.dfj)
  %i.dfk = sub i32 %smin2020, %smax2019
  %i.dfl = tail call i32 @llvm.umax.i32(i32 %i.dfk, i32 1)
  %umax2021 = zext i32 %i.dfl to i64              ; 7 uses
  %i.dfm = add i32 %i.dbx, %smax2019
  %i.dfn = sext i32 %i.dfm to i64
  %i.dfo = getelementptr i8, ptr %scevgep2017, i64 %umax2021
  %scevgep2022 = getelementptr i8, ptr %i.dfo, i64 %i.dfn ; 2 uses
  %i.dfp = sub i64 %i.dfg, %i.dck
  %smin2024 = tail call i64 @llvm.smin.i64(i64 %i.dfp, i64 0) ; 2 uses
  %i.dfq = sub nsw i64 0, %smin2024               ; 3 uses
  %scevgep2025 = getelementptr i8, ptr %scevgep2023, i64 %i.dfq
  %i.dfr = sub i64 %umax2021, %smin2024           ; 4 uses
  %scevgep2027 = getelementptr i8, ptr %scevgep2026, i64 %i.dfr
  %scevgep2029 = getelementptr i8, ptr %scevgep2028, i64 %i.dfq
  %scevgep2031 = getelementptr i8, ptr %scevgep2030, i64 %i.dfr
  %scevgep2033 = getelementptr i8, ptr %scevgep2032, i64 %i.dfq
  %scevgep2035 = getelementptr i8, ptr %scevgep2034, i64 %i.dfr
  %scevgep2037 = getelementptr i8, ptr %scevgep2036, i64 %i.dfr
  %i.dfs = add i32 %i.dbw, %smax2019
  %i.dft = sext i32 %i.dfs to i64
  %i.dfu = add nsw i64 %umax2021, %i.dft
  %i.dfv = shl nsw i64 %i.dfu, 1
  %scevgep2047 = getelementptr i8, ptr %scevgep2046, i64 %i.dfv
  %i.dfw = mul nuw nsw i64 %indvars.iv1157, %i.dcj
  %i.dfx = sub nsw i64 %i.dfw, %i.dck             ; 2 uses
  %i.dfy = load i32, ptr %i.o, align 16, !tbaa !107
  %i.dfz = load i32, ptr %i.lg, align 8, !tbaa !83 ; 2 uses
  %i.dga = shl i32 %i.dfy, %i.dfz                 ; 2 uses
  %i.dgb = load i32, ptr %i.q, align 4, !tbaa !106
  %i.dgc = shl i32 %i.dgb, %i.dfz
  %i.dgd = load ptr, ptr %i.li, align 8, !tbaa !133
  %i.dge = mul nsw i32 %i.dga, %i.dbi
  %i.dgf = sext i32 %i.dge to i64
  %i.dgg = getelementptr [10 x i8], ptr %i.dgd, i64 %indvars.iv1157
  %i.dgh = getelementptr i8, ptr %i.dgg, i64 -10
  %i.dgi = getelementptr [10 x i8], ptr %i.dgh, i64 %i.dgf ; 4 uses
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.dgi, i64 10 ; 3 uses
  %i.dgk = sext i32 %i.dga to i64                 ; 2 uses
  %i.dgl = getelementptr inbounds [10 x i8], ptr %i.dgi, i64 %i.dgk ; 3 uses
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dgl, i64 10 ; 3 uses
  %i.dgn = load ptr, ptr %i.lj, align 8, !tbaa !134 ; 6 uses
  %i.dgo = icmp eq i64 %indvars.iv1157, 0
  br i1 %i.dgo, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.not.i.i690 = icmp slt i64 %indvars.iv1157, %i.dgk ; 2 uses
  %spec.select.i.i691 = select i1 %.not.i.i690, ptr %i.dgj, ptr %i.dgi
  %spec.select260.i.i692 = select i1 %.not.i.i690, ptr %i.dgm, ptr %i.dgl
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.0228.i.i693 = phi ptr [ %i.dgi, %bb.hm ], [ %i.dgj, %bb.hl ] ; 2 uses
  %.0226.i.i694 = phi ptr [ %spec.select.i.i691, %bb.hm ], [ %i.dgj, %bb.hl ] ; 2 uses
  %.0224.i.i695 = phi ptr [ %i.dgl, %bb.hm ], [ %i.dgm, %bb.hl ] ; 3 uses
  %.0222.i.i696 = phi ptr [ %spec.select260.i.i692, %bb.hm ], [ %i.dgm, %bb.hl ] ; 3 uses
  br i1 %i.dbm, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not249.i.i697 = icmp slt i32 %.0.i995, %i.dgc ; 2 uses
  %spec.select261.i.i698 = select i1 %.not249.i.i697, ptr %.0224.i.i695, ptr %.0228.i.i693
  %spec.select262.i.i699 = select i1 %.not249.i.i697, ptr %.0222.i.i696, ptr %.0226.i.i694
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.1229.i.i700 = phi ptr [ %.0228.i.i693, %bb.ho ], [ %.0224.i.i695, %bb.hn ] ; 20 uses
  %.1227.i.i701 = phi ptr [ %.0226.i.i694, %bb.ho ], [ %.0222.i.i696, %bb.hn ] ; 22 uses
  %.1225.i.i702 = phi ptr [ %spec.select261.i.i698, %bb.ho ], [ %.0224.i.i695, %bb.hn ] ; 21 uses
  %.1223.i.i703 = phi ptr [ %spec.select262.i.i699, %bb.ho ], [ %.0222.i.i696, %bb.hn ] ; 20 uses
  %i.dgp = trunc nsw i64 %i.dfx to i32            ; 2 uses
  %i.dgq = tail call i32 @llvm.smin.i32(i32 %i.dgp, i32 0)
  %.0237.i.i704 = add nsw i32 %i.dgq, %i.dan      ; 2 uses
  %.0235.i.i705 = tail call i32 @llvm.smax.i32(i32 %i.dgp, i32 0) ; 8 uses
  %i.dgr = tail call i64 @llvm.smin.i64(i64 %i.dfx, i64 0)
  %.0233.i.i706.idx = sub i64 0, %i.dgr
  %i.dgs = add nsw i32 %.0237.i.i704, %.0235.i.i705
  %i.dgt = icmp sgt i32 %i.dgs, %i.dax
  %i.dgu = sub nsw i32 %i.dax, %.0235.i.i705
  %spec.select264.i.i707 = select i1 %i.dgt, i32 %i.dgu, i32 %.0237.i.i704 ; 7 uses
  %gep1424 = getelementptr i8, ptr %invariant.gep1423, i64 %.0233.i.i706.idx ; 2 uses
  %i.dgv = icmp slt i32 %spec.select264.i.i707, 1
  %or.cond5.i.i712 = select i1 %i.dgv, i1 true, i1 %i.dbv
  br i1 %or.cond5.i.i712, label %add_yblock.exit.i737, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.dgw = add i32 %.0235.i.i705, %i.dbw
  %i.dgx = sext i32 %i.dgw to i64
  %i.dgy = getelementptr [2 x i8], ptr %i.czu, i64 %i.dgx ; 2 uses
  %i.dgz = add i32 %.0235.i.i705, %i.dbx
  %i.dha = sext i32 %i.dgz to i64
  %i.dhb = getelementptr i8, ptr %i.daw, i64 %i.dha ; 4 uses
  %i.dhc = getelementptr inbounds i8, ptr %i.dgn, i64 %i.dbz ; 11 uses
  %i.dhd = getelementptr inbounds i8, ptr %i.dhc, i64 %i.dca ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.dhc, ptr noundef %i.dgn, i64 noundef %i.dcb, i32 noundef %.0235.i.i705, i32 noundef %.0236.i.i709, i32 noundef %spec.select264.i.i707, i32 noundef %spec.select265.i.i711, ptr noundef %.1229.i.i700, i32 noundef %i.czy, i32 noundef %i.dax, i32 noundef %i.day) #12
  %i.dhe = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 8 ; 3 uses
  %i.dhf = load i8, ptr %i.dhe, align 2, !tbaa !136 ; 4 uses
  %i.dhg = and i8 %i.dhf, 1
  %.not.i294.i.i713 = icmp eq i8 %i.dhg, 0
  %.phi.trans.insert1274 = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 8
  %.pre1275 = load i8, ptr %.phi.trans.insert1274, align 2, !tbaa !136 ; 2 uses
  %i.dhh = and i8 %.pre1275, 1
  %.not16.i295.i.i714 = icmp eq i8 %i.dhh, 0
  %or.cond1459 = select i1 %.not.i294.i.i713, i1 true, i1 %.not16.i295.i.i714
  br i1 %or.cond1459, label %same_block.exit300.i.i716, label %.split1395

.split1395:                                       ; preds = %bb.hq
  %i.dhi = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 5
  %i.dhj = load i8, ptr %i.dhi, align 1, !tbaa !86
  %i.dhk = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 5
  %i.dhl = load i8, ptr %i.dhk, align 1, !tbaa !86
  %i.dhm = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 6
  %i.dhn = load i8, ptr %i.dhm, align 2, !tbaa !86
  %i.dho = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 6
  %i.dhp = load i8, ptr %i.dho, align 2, !tbaa !86
  %i.dhq = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 7
  %i.dhr = load i8, ptr %i.dhq, align 1, !tbaa !86
  %i.dhs = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 7
  %i.dht = load i8, ptr %i.dhs, align 1, !tbaa !86
  %i.dhu = icmp eq i8 %i.dhj, %i.dhl
  %i.dhv = icmp eq i8 %i.dhn, %i.dhp
  %i.dhw = and i1 %i.dhu, %i.dhv
  %i.dhx = icmp eq i8 %i.dhr, %i.dht
  %.not18.i296.i.i715 = and i1 %i.dhw, %i.dhx
  br i1 %.not18.i296.i.i715, label %bb.hs, label %bb.hr

same_block.exit300.i.i716:                        ; preds = %bb.hq
  %i.dhy = load i16, ptr %.1229.i.i700, align 2, !tbaa !137
  %i.dhz = sext i16 %i.dhy to i32
  %i.dia = load i16, ptr %.1227.i.i701, align 2, !tbaa !137
  %i.dib = sext i16 %i.dia to i32
  %i.dic = sub nsw i32 %i.dhz, %i.dib
  %i.did = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 2
  %i.die = load i16, ptr %i.did, align 2, !tbaa !138
  %i.dif = sext i16 %i.die to i32
  %i.dig = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 2
  %i.dih = load i16, ptr %i.dig, align 2, !tbaa !138
  %i.dii = sext i16 %i.dih to i32
  %i.dij = sub nsw i32 %i.dif, %i.dii
  %i.dik = or i32 %i.dij, %i.dic
  %i.dil = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 4
  %i.dim = load i8, ptr %i.dil, align 2, !tbaa !139
  %i.din = zext i8 %i.dim to i32
  %i.dio = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 4
  %i.dip = load i8, ptr %i.dio, align 2, !tbaa !139
  %i.diq = zext i8 %i.dip to i32
  %i.dir = sub nsw i32 %i.din, %i.diq
  %i.dis = or i32 %i.dik, %i.dir
  %i.dit = xor i8 %.pre1275, %i.dhf
  %i.diu = and i8 %i.dit, 1
  %i.div = zext nneg i8 %i.diu to i32
  %i.diw = or i32 %i.dis, %i.div
  %.not17.i299.i.i767 = icmp eq i32 %i.diw, 0
  br i1 %.not17.i299.i.i767, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.split1395, %same_block.exit300.i.i716
  %i.dix = getelementptr inbounds i8, ptr %i.dhd, i64 %i.dca
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.dhd, ptr noundef %i.dgn, i64 noundef %i.dcb, i32 noundef %.0235.i.i705, i32 noundef %.0236.i.i709, i32 noundef %spec.select264.i.i707, i32 noundef %spec.select265.i.i711, ptr noundef nonnull %.1227.i.i701, i32 noundef %i.czy, i32 noundef %i.dax, i32 noundef %i.day) #12
  %.pre1276 = load i8, ptr %i.dhe, align 2, !tbaa !136
  br label %bb.hs

bb.hs:                                            ; preds = %.split1395, %same_block.exit300.i.i716, %bb.hr
  %i.diy = phi i8 [ %.pre1276, %bb.hr ], [ %i.dhf, %same_block.exit300.i.i716 ], [ %i.dhf, %.split1395 ] ; 6 uses
  %.sroa.7855.0 = phi ptr [ %i.dhd, %bb.hr ], [ %i.dhc, %same_block.exit300.i.i716 ], [ %i.dhc, %.split1395 ] ; 8 uses
  %.0221.i.i720 = phi ptr [ %i.dix, %bb.hr ], [ %i.dhd, %same_block.exit300.i.i716 ], [ %i.dhd, %.split1395 ] ; 7 uses
  %i.diz = and i8 %i.diy, 1
  %.not.i287.i.i721 = icmp eq i8 %i.diz, 0
  %.phi.trans.insert1278 = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 8
  %.pre1279 = load i8, ptr %.phi.trans.insert1278, align 2, !tbaa !136 ; 4 uses
  %i.dja = and i8 %.pre1279, 1
  %.not16.i288.i.i722 = icmp eq i8 %i.dja, 0
  %or.cond1460 = select i1 %.not.i287.i.i721, i1 true, i1 %.not16.i288.i.i722
  br i1 %or.cond1460, label %same_block.exit293.i.i724, label %.split1396

.split1396:                                       ; preds = %bb.hs
  %i.djb = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 5
  %i.djc = load i8, ptr %i.djb, align 1, !tbaa !86
  %i.djd = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 5
  %i.dje = load i8, ptr %i.djd, align 1, !tbaa !86
  %i.djf = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 6
  %i.djg = load i8, ptr %i.djf, align 2, !tbaa !86
  %i.djh = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 6
  %i.dji = load i8, ptr %i.djh, align 2, !tbaa !86
  %i.djj = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 7
  %i.djk = load i8, ptr %i.djj, align 1, !tbaa !86
  %i.djl = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 7
  %i.djm = load i8, ptr %i.djl, align 1, !tbaa !86
  %i.djn = icmp eq i8 %i.djc, %i.dje
  %i.djo = icmp eq i8 %i.djg, %i.dji
  %i.djp = and i1 %i.djn, %i.djo
  %i.djq = icmp eq i8 %i.djk, %i.djm
  %.not18.i289.i.i723 = and i1 %i.djp, %i.djq
  br i1 %.not18.i289.i.i723, label %bb.hv, label %bb.ht

same_block.exit293.i.i724:                        ; preds = %bb.hs
  %i.djr = load i16, ptr %.1229.i.i700, align 2, !tbaa !137
  %i.djs = sext i16 %i.djr to i32
  %i.djt = load i16, ptr %.1225.i.i702, align 2, !tbaa !137
  %i.dju = sext i16 %i.djt to i32
  %i.djv = sub nsw i32 %i.djs, %i.dju
  %i.djw = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 2
end_hunk_2
begin_hunk_3_@encode_header:bb.a
renorm_encoder.exit.i210:                         ; preds = %bb.be, %._crit_edge.i.i214
  %i.qd = phi i32 [ %i.mo, %bb.be ], [ %.pre.i215, %._crit_edge.i.i214 ]
  %i.qe = phi i32 [ %i.pb, %bb.be ], [ %i.py, %._crit_edge.i.i214 ]
  %i.qf = shl i32 %i.qe, 8
  %i.qg = and i32 %i.qf, 65280
  store i32 %i.qg, ptr %i.a, align 8, !tbaa !142
  %i.qh = shl i32 %i.qd, 8
  store i32 %i.qh, ptr %i.d, align 4, !tbaa !141
  br label %encode_qlogs.exit206

encode_qlogs.exit206:                             ; preds = %._crit_edge.i194, %renorm_encoder.exit.i210, %bb.ba, %.preheader.lr.ph.i191, %put_rac.exit190, %encode_qlogs.exitthread-pre-split
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 6124
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !81
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 6128
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !148
  %i.qn = sub nsw i32 %i.qk, %i.qm
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qn, i32 noundef 1)
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 6344
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !111
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 6348
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !149
  %i.qs = sub nsw i32 %i.qp, %i.qr
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qs, i32 noundef 1)
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 6352
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !82
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 6356
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !151
  %i.qx = sub nsw i32 %i.qu, %i.qw
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qx, i32 noundef 1)
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 6360
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !118
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 6364
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !150
  %i.rc = sub nsw i32 %i.qz, %i.rb
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.rc, i32 noundef 1)
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 6376
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !83
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 6380
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !152
  %i.rh = sub nsw i32 %i.re, %i.rg
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.rh, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_blocks(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.BlockNode, align 2          ; 4 uses
  %3 = alloca [4 x %struct.BlockNode], align 16   ; 7 uses
  %4 = alloca [4 x %struct.BlockNode], align 16   ; 7 uses
  %5 = alloca %struct.BlockNode, align 2          ; 4 uses
  %6 = alloca %struct.BlockNode, align 2          ; 4 uses
  %7 = alloca %struct.BlockNode, align 2          ; 4 uses
  %8 = alloca %struct.BlockNode, align 2          ; 4 uses
  %9 = alloca %struct.BlockNode, align 2          ; 4 uses
  %10 = alloca %struct.BlockNode, align 2         ; 4 uses
  %11 = alloca %struct.BlockNode, align 2         ; 4 uses
  %12 = alloca %struct.BlockNode, align 2         ; 4 uses
  %13 = alloca %struct.BlockNode, align 2         ; 4 uses
  %14 = alloca %struct.BlockNode, align 2         ; 4 uses
  %15 = alloca %struct.BlockNode, align 2         ; 4 uses
  %16 = alloca %struct.BlockNode, align 2         ; 4 uses
  %17 = alloca %struct.BlockNode, align 2         ; 4 uses
  %18 = alloca %struct.BlockNode, align 2         ; 4 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %19 = alloca %struct.RangeCoder, align 8        ; 4 uses
  %i.b = alloca [4224 x i8], align 16             ; 4 uses
  %.sroa.6.i = alloca { [3 x i8], i8, i8 }, align 8 ; 5 uses
  %i.c = alloca [32 x [32 x i8]], align 16        ; 60 uses
  %i.d = alloca [4 x ptr], align 16               ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 20 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.fr64 = freeze i32 %i.f                        ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6372 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !106  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 155980 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.b, label %bb.ed

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !110
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp ne i32 %1, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.c, label %bb.ed

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6376 ; 23 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !83   ; 2 uses
  %i.r = shl i32 %.fr64, %i.q                     ; 7 uses
  %i.s = shl i32 %i.h, %i.q                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %19, ptr noundef nonnull align 8 dereferenceable(560) %i.t, i64 560, i1 false), !tbaa.struct !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.b, ptr noundef nonnull align 8 dereferenceable(4224) %i.u, i64 4224, i1 false)
  %i.v = icmp sgt i32 %i.h, 0
  %i.w = icmp sgt i32 %.fr64, 0
  %or.cond1089.i = and i1 %i.v, %i.w
  br i1 %or.cond1089.i, label %.preheader639.i, label %._crit_edge651.i

.preheader639.i:                                  ; preds = %bb.c, %._crit_edge.i
  %i.x = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.h, %bb.c ]
  %i.y = phi i32 [ %i.af, %._crit_edge.i ], [ %.fr64, %bb.c ] ; 2 uses
  %.0449650.i = phi i32 [ %i.ag, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader639.i, %.lr.ph.i
  %.0452649.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %.preheader639.i ] ; 2 uses
  %i.aa = tail call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0452649.i, i32 noundef %.0449650.i) ; 0 uses
  %i.ab = add nuw nsw i32 %.0452649.i, 1          ; 2 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !107 ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !448

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !106
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader639.i
  %i.ae = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.x, %.preheader639.i ] ; 2 uses
  %i.af = phi i32 [ %i.ac, %._crit_edge.loopexit.i ], [ %i.y, %.preheader639.i ]
  %i.ag = add nuw nsw i32 %.0449650.i, 1          ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.preheader639.i, label %._crit_edge651.i, !llvm.loop !449

._crit_edge651.i:                                 ; preds = %._crit_edge.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.t, ptr noundef nonnull align 8 dereferenceable(560) %19, i64 560, i1 false), !tbaa.struct !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4224) %i.u, ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i64 4224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = icmp sgt i32 %i.s, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 155032 ; 20 uses
  %i.al = xor i32 %i.r, -1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172352 ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168256 ; 17 uses
  %i.ao = add nsw i32 %i.r, -1
  %i.ap = add nsw i32 %i.s, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6392 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6396
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6384 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6332
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6336
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 172400
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 155080
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 155976 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6160
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.bd = sub nsw i32 0, %i.r
  %i.be = sext i32 %i.bd to i64
  %i.bf = sext i32 %i.r to i64                    ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 155984
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.aj, label %.split.us.i, label %.split798.us.thread.i

.split.us.i:                                      ; preds = %._crit_edge651.i
  %i.bj = icmp sgt i32 %i.r, 0
  br i1 %i.bj, label %.preheader638.us.us.preheader.i, label %.split798.us.thread1058.i

.preheader638.us.us.preheader.i:                  ; preds = %.split.us.i
  %i.bk = sext i32 %i.al to i64
  %i.bl = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.bm = zext nneg i32 %i.s to i64               ; 2 uses
  %i.bn = zext nneg i32 %i.ap to i64
  %wide.trip.count923.i = zext nneg i32 %i.r to i64 ; 2 uses
  %scevgep234 = getelementptr i8, ptr %0, i64 172400
  %scevgep237 = getelementptr i8, ptr %0, i64 172400
  %scevgep332.a = getelementptr i8, ptr %i.c, i64 -32
  %scevgep361 = getelementptr i8, ptr %i.c, i64 -32
  br label %.preheader638.us.us.i

.preheader638.us.us.i:                            ; preds = %._crit_edge722.split.us.us.us.i, %.preheader638.us.us.preheader.i
  %.0455764.us.us.i = phi i32 [ %i.bxp, %._crit_edge722.split.us.us.us.i ], [ 0, %.preheader638.us.us.preheader.i ] ; 4 uses
  %.not483.us.us.i = icmp eq i32 %.0455764.us.us.i, 0 ; 2 uses
  br label %.preheader637.us.us.us.i

.preheader637.us.us.us.i:                         ; preds = %._crit_edge719.us.us.us.i, %.preheader638.us.us.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge719.us.us.us.i ], [ 2, %.preheader638.us.us.i ] ; 2 uses
  %indvars.iv925.i = phi i64 [ %indvars.iv.next926.i, %._crit_edge719.us.us.us.i ], [ 0, %.preheader638.us.us.i ] ; 23 uses
  %indvars.iv901.i = phi i32 [ %indvars.iv.next902.i, %._crit_edge719.us.us.us.i ], [ -1, %.preheader638.us.us.i ] ; 5 uses
  %.0445721.us.us.us.i = phi i32 [ %.3448.us.us.us.i, %._crit_edge719.us.us.us.i ], [ 0, %.preheader638.us.us.i ]
  %i.bo = trunc i64 %indvars.iv925.i to i32
  %i.bp = trunc i64 %indvars.iv925.i to i32
  %i.bq = trunc i64 %indvars.iv925.i to i32
  %i.br = mul nuw nsw i64 %indvars.iv925.i, %i.bf
  %i.bs = icmp ne i64 %indvars.iv925.i, 0         ; 4 uses
  %indvars.iv.next926.i = add nuw nsw i64 %indvars.iv925.i, 1 ; 3 uses
  %i.bt = icmp samesign uge i64 %indvars.iv.next926.i, %i.bm ; 4 uses
  %i.bu = icmp eq i64 %indvars.iv925.i, %i.bn     ; 2 uses
  %i.bv = trunc i64 %indvars.iv925.i to i32       ; 20 uses
  %i.bw = add i32 %i.bv, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.dn, %.preheader637.us.us.us.i
  %indvars.iv920.i = phi i64 [ %indvars.iv.next921.i, %bb.dn ], [ 0, %.preheader637.us.us.us.i ] ; 28 uses
  %indvars.iv894.i = phi i32 [ %indvars.iv.next895.i, %bb.dn ], [ -1, %.preheader637.us.us.us.i ] ; 5 uses
  %.1446717.us.us.us.i = phi i32 [ %.3448.us.us.us.i, %bb.dn ], [ %.0445721.us.us.us.i, %.preheader637.us.us.us.i ] ; 4 uses
  %i.bx = trunc i64 %indvars.iv920.i to i32
  %i.by = trunc i64 %indvars.iv920.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.bz = add nuw nsw i64 %indvars.iv920.i, %i.br ; 5 uses
  %i.ca = load ptr, ptr %i.ak, align 8, !tbaa !133 ; 2 uses
  %i.cb = getelementptr [10 x i8], ptr %i.ca, i64 %i.bz ; 19 uses
  %i.cc = sub nsw i64 %i.bz, %i.bf
  %i.cd = getelementptr [10 x i8], ptr %i.ca, i64 %i.cc ; 2 uses
  %i.ce = select i1 %i.bs, ptr %i.cd, ptr null    ; 3 uses
  %i.cf = icmp ne i64 %indvars.iv920.i, 0         ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cb, i64 -10
  %spec.select602.us.us.us.i = select i1 %i.cf, ptr %i.cg, ptr null ; 3 uses
  %indvars.iv.next921.i = add nuw nsw i64 %indvars.iv920.i, 1 ; 3 uses
  %i.ch = icmp slt i64 %indvars.iv.next921.i, %i.bf ; 3 uses
  %i.ci = getelementptr i8, ptr %i.cb, i64 10
  %i.cj = select i1 %i.ch, ptr %i.ci, ptr null    ; 3 uses
  %i.ck = getelementptr [10 x i8], ptr %i.cb, i64 %i.bf ; 3 uses
  %or.cond.us.us.us.i = and i1 %i.bs, %i.cf       ; 2 uses
  %i.cl = getelementptr [10 x i8], ptr %i.cb, i64 %i.bk
  %i.cm = select i1 %or.cond.us.us.us.i, ptr %i.cl, ptr null ; 2 uses
  %or.cond3.us.us.us.i = and i1 %i.bs, %i.ch
  %i.cn = getelementptr i8, ptr %i.cd, i64 10
  %i.co = select i1 %or.cond3.us.us.us.i, ptr %i.cn, ptr null ; 2 uses
  %.not504.us.us.us.i = xor i1 %i.cf, true
  %brmerge.us.us.us.i = or i1 %i.bt, %.not504.us.us.us.i
  %i.cp = getelementptr i8, ptr %i.ck, i64 -10
  %i.cq = select i1 %brmerge.us.us.us.i, ptr null, ptr %i.cp ; 2 uses
  %.not506.us.us.us.i = xor i1 %i.ch, true
  %brmerge508.us.us.us.i = or i1 %i.bt, %.not506.us.us.us.i
  %i.cr = getelementptr i8, ptr %i.ck, i64 10
  %i.cs = select i1 %brmerge508.us.us.us.i, ptr null, ptr %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.p, align 8, !tbaa !83  ; 12 uses
  %i.cu = lshr i32 16, %i.ct                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %.pre942.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !136 ; 4 uses
  %i.cv = and i8 %.pre942.i, 2
  %.not484.us.us.us.i = icmp eq i8 %i.cv, 0
  %or.cond1090.i = select i1 %.not483.us.us.i, i1 true, i1 %.not484.us.us.us.i
  br i1 %or.cond1090.i, label %._crit_edge941.i, label %bb.dn

._crit_edge941.i:                                 ; preds = %bb.d
  %i.cw = or i8 %.pre942.i, 2
  store i8 %i.cw, ptr %.phi.trans.insert.i, align 2, !tbaa !136
  %.sroa.0.0.copyload.us.us.us.i = load i16, ptr %i.cb, align 2, !tbaa !125
  %.sroa.4567.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 6 uses
  %.sroa.4567.0.copyload.us.us.us.i = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !125
  %.sroa.5.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 6 uses
  %.sroa.5.0.copyload568.us.us.us.i = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !86
  %.sroa.6569.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 5 ; 6 uses
  %.sroa.6569.0.copyload.us.us.us.i = load i8, ptr %.sroa.6569.0..sroa_idx.us.us.us.i, align 1
  %.sroa.7.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 6 ; 3 uses
  %.sroa.7.0.copyload.us.us.us.i = load i8, ptr %.sroa.7.0..sroa_idx.us.us.us.i, align 2
  %.sroa.8.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 7 ; 3 uses
  %.sroa.8.0.copyload.us.us.us.i = load i8, ptr %.sroa.8.0..sroa_idx.us.us.us.i, align 1, !tbaa !86
  %i.cx = load i32, ptr %i.am, align 16, !tbaa !513 ; 2 uses
  %.not485.us.us.us.i = icmp eq i32 %i.cx, 0
  br i1 %.not485.us.us.us.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge941.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.an, i8 0, i64 4096, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge941.i
  %i.cy = add i32 %i.cx, 4194304
  store i32 %i.cy, ptr %i.am, align 16, !tbaa !513
  %i.cz = shl nuw nsw i32 %i.cu, 1                ; 9 uses
  %.not.i = icmp ult i32 %i.ct, 5                 ; 3 uses
  br i1 %.not.i, label %.lr.ph654.us.us.us.i, label %.loopexit631.us.us.us.i.thread

.lr.ph654.us.us.us.i:                             ; preds = %bb.f
  %i.da = zext nneg i32 %i.ct to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @ff_obmc_tab, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !100 ; 3 uses
  %i.dd = zext nneg i32 %i.cz to i64              ; 17 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %umax.i to i64 ; 24 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 62
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph654.us.us.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph654.us.us.us.i ], [ %indvars.iv.next.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph654.us.us.us.i ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.df = mul nuw nsw i64 %indvars.iv.i, %i.dd
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.de, ptr align 1 %i.dg, i64 %i.dd, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.next.i
  %i.di = mul nuw nsw i64 %indvars.iv.next.i, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dh, ptr align 1 %i.dj, i64 %i.dd, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge655.us.us.us.i.unr-lcssa, label %bb.g, !llvm.loop !450

._crit_edge655.us.us.us.i.unr-lcssa:              ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge655.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge655.us.us.us.i.unr-lcssa
  %lcmp.mod429 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod429)
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.next.i.1
  %i.dl = mul nuw nsw i64 %indvars.iv.next.i.1, %i.dd
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dk, ptr align 1 %i.dm, i64 %i.dd, i1 false)
  br label %._crit_edge655.us.us.us.i

._crit_edge655.us.us.us.i:                        ; preds = %._crit_edge655.us.us.us.i.unr-lcssa, %.epil.preheader
  br i1 %i.cf, label %.loopexit636.us.us.us.i, label %.lr.ph657.us.us.us.i

.lr.ph657.us.us.us.i:                             ; preds = %._crit_edge655.us.us.us.i
  %i.dn = zext nneg i32 %i.cu to i64              ; 10 uses
  %xtraiter431 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.do = icmp eq i32 %i.ct, 4
  br i1 %i.do, label %.epil.preheader430, label %.lr.ph657.us.us.us.i.new

.lr.ph657.us.us.us.i.new:                         ; preds = %.lr.ph657.us.us.us.i
  %unroll_iter434 = and i64 %wide.trip.count.i, 60
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph657.us.us.us.i.new
  %indvars.iv846.i = phi i64 [ 0, %.lr.ph657.us.us.us.i.new ], [ %indvars.iv.next847.i.3, %bb.h ] ; 5 uses
  %niter435 = phi i64 [ 0, %.lr.ph657.us.us.us.i.new ], [ %niter435.next.3, %bb.h ]
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 16, !tbaa !86
  %i.dr = getelementptr i8, ptr %i.dp, i64 %i.dn
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !86
  %i.du = add i8 %i.dt, %i.dq
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.dp, i8 %i.du, i64 %i.dn, i1 false)
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 16, !tbaa !86
  %i.dy = getelementptr i8, ptr %i.dw, i64 %i.dn
  %i.dz = getelementptr i8, ptr %i.dy, i64 -1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !86
  %i.eb = add i8 %i.ea, %i.dx
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.dw, i8 %i.eb, i64 %i.dn, i1 false)
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 16, !tbaa !86
  %i.ef = getelementptr i8, ptr %i.ed, i64 %i.dn
  %i.eg = getelementptr i8, ptr %i.ef, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !86
  %i.ei = add i8 %i.eh, %i.ee
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ed, i8 %i.ei, i64 %i.dn, i1 false)
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 96 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 16, !tbaa !86
  %i.em = getelementptr i8, ptr %i.ek, i64 %i.dn
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !86
  %i.ep = add i8 %i.eo, %i.el
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ek, i8 %i.ep, i64 %i.dn, i1 false)
  %indvars.iv.next847.i.3 = add nuw nsw i64 %indvars.iv846.i, 4 ; 2 uses
  %niter435.next.3 = add i64 %niter435, 4         ; 2 uses
  %niter435.ncmp.3 = icmp eq i64 %niter435.next.3, %unroll_iter434
  br i1 %niter435.ncmp.3, label %.loopexit636.us.us.us.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !451

.loopexit636.us.us.us.i.loopexit.unr-lcssa:       ; preds = %bb.h
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %.loopexit636.us.us.us.i, label %.epil.preheader430

.epil.preheader430:                               ; preds = %.loopexit636.us.us.us.i.loopexit.unr-lcssa, %.lr.ph657.us.us.us.i
  %indvars.iv846.i.epil.init = phi i64 [ 0, %.lr.ph657.us.us.us.i ], [ %indvars.iv.next847.i.3, %.loopexit636.us.us.us.i.loopexit.unr-lcssa ]
  %lcmp.mod433 = icmp ne i64 %xtraiter431, 0
  call void @llvm.assume(i1 %lcmp.mod433)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader430
  %indvars.iv846.i.epil = phi i64 [ %indvars.iv.next847.i.epil, %bb.i ], [ %indvars.iv846.i.epil.init, %.epil.preheader430 ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.i ], [ 0, %.epil.preheader430 ]
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv846.i.epil ; 3 uses
  %i.er = load i8, ptr %i.eq, align 16, !tbaa !86
  %i.es = getelementptr i8, ptr %i.eq, i64 %i.dn
  %i.et = getelementptr i8, ptr %i.es, i64 -1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !86
  %i.ev = add i8 %i.eu, %i.er
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.eq, i8 %i.ev, i64 %i.dn, i1 false)
  %indvars.iv.next847.i.epil = add nuw nsw i64 %indvars.iv846.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter431
  br i1 %epil.iter.cmp.not, label %.loopexit636.us.us.us.i, label %bb.i, !llvm.loop !452

.loopexit636.us.us.us.i:                          ; preds = %.loopexit636.us.us.us.i.loopexit.unr-lcssa, %bb.i, %._crit_edge655.us.us.us.i
  %i.ew = icmp eq i64 %indvars.iv920.i, %i.bl     ; 2 uses
  br i1 %i.ew, label %.lr.ph659.us.us.us.i, label %.loopexit634.us.us.us.i

.lr.ph659.us.us.us.i:                             ; preds = %.loopexit636.us.us.us.i
end_hunk_3
begin_hunk_4_@encode_blocks:bb.a
  br i1 %exitcond880.not.i.3, label %.loopexit628.us.us.us.thread.i, label %.lr.ph667.us.us.us.i.new, !llvm.loop !472

.loopexit628.us.us.us.i:                          ; preds = %.loopexit631.us.us.us.i.thread, %.loopexit631.us.us.us.i
  %i.lb = phi i1 [ %i.im, %.loopexit631.us.us.us.i.thread ], [ %i.ew, %.loopexit631.us.us.us.i ]
  %i.lc = xor i1 %or.cond.us.us.us.i, true
  %brmerge509.us.us.us.i = or i1 %i.lb, %i.lc
  br i1 %brmerge509.us.us.us.i, label %.loopexit628.us.us.us.thread.i, label %.loopexit.us.us.us.i

.loopexit628.us.us.us.thread.i:                   ; preds = %.prol.loopexit, %.lr.ph667.us.us.us.i.new, %.loopexit628.us.us.us.i, %.preheader627.us.us.us.i
  %i.ld = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !100 ; 4 uses
  %i.lf = load ptr, ptr %i.ar, align 16, !tbaa !113 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !100 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !87 ; 4 uses
  %i.lj = trunc nuw nsw i64 %indvars.iv920.i to i32
  %i.lk = mul nuw nsw i32 %i.cu, %i.lj
  %i.ll = lshr i32 8, %i.ct                       ; 8 uses
  %i.lm = sub nsw i32 %i.lk, %i.ll                ; 6 uses
  %i.ln = mul i32 %i.cu, %i.bv                    ; 4 uses
  %i.lo = sub nsw i32 %i.ln, %i.ll                ; 2 uses
  %i.lp = load i32, ptr %i.as, align 8, !tbaa !120 ; 3 uses
  %i.lq = load i32, ptr %i.at, align 4, !tbaa !121 ; 2 uses
  %i.lr = icmp slt i32 %i.lo, 0
  br i1 %i.lr, label %.lr.ph670.us.us.us.i, label %.preheader626.us.us.us.i

.lr.ph670.us.us.us.i:                             ; preds = %.loopexit628.us.us.us.thread.i
  %i.ls = sext i32 %i.lm to i64                   ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.lg, i64 %i.ls ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %i.le, i64 %i.ls ; 3 uses
  %i.lv = zext nneg i32 %i.cz to i64              ; 3 uses
  %i.lw = sext i32 %i.ln to i64
  %i.lx = sub nsw i32 0, %i.ll
  %i.ly = sext i32 %i.lx to i64
  %i.lz = add nsw i64 %i.lw, %i.ly                ; 3 uses
  %i.ma = sext i32 %i.li to i64                   ; 3 uses
  %i.mb = mul i32 %i.cu, %i.bo                    ; 2 uses
  %i.mc = sub i32 %i.ll, %i.mb
  %.neg = add i32 %i.mb, 1
  %xtraiter460 = and i32 %i.mc, 1
  %lcmp.mod461.not = icmp eq i32 %xtraiter460, 0
  br i1 %lcmp.mod461.not, label %.prol.loopexit459, label %.prol.loopexit459.unr-lcssa

.prol.loopexit459.unr-lcssa:                      ; preds = %.lr.ph670.us.us.us.i
  %i.md = mul nsw i64 %i.lz, %i.ma                ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %i.lt, i64 %i.md
  %i.mf = getelementptr inbounds i8, ptr %i.lu, i64 %i.md
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.me, ptr align 1 %i.mf, i64 %i.lv, i1 false)
  %indvars.iv.next882.i.prol = add nsw i64 %i.lz, 1
  br label %.prol.loopexit459

.prol.loopexit459:                                ; preds = %.prol.loopexit459.unr-lcssa, %.lr.ph670.us.us.us.i
  %indvars.iv881.i.unr = phi i64 [ %i.lz, %.lr.ph670.us.us.us.i ], [ %indvars.iv.next882.i.prol, %.prol.loopexit459.unr-lcssa ]
  %i.mg = icmp eq i32 %i.ll, %.neg
  br i1 %i.mg, label %.preheader626.us.us.us.i, label %.lr.ph670.us.us.us.i.new

.lr.ph670.us.us.us.i.new:                         ; preds = %.prol.loopexit459, %.lr.ph670.us.us.us.i.new
  %indvars.iv881.i = phi i64 [ %indvars.iv.next882.i.1, %.lr.ph670.us.us.us.i.new ], [ %indvars.iv881.i.unr, %.prol.loopexit459 ] ; 3 uses
  %i.mh = mul nsw i64 %indvars.iv881.i, %i.ma     ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %i.lt, i64 %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.lu, i64 %i.mh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mi, ptr align 1 %i.mj, i64 %i.lv, i1 false)
  %indvars.iv.next882.i = add nsw i64 %indvars.iv881.i, 1
  %i.mk = mul nsw i64 %indvars.iv.next882.i, %i.ma ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.lt, i64 %i.mk
  %i.mm = getelementptr inbounds i8, ptr %i.lu, i64 %i.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mm, i64 %i.lv, i1 false)
  %indvars.iv.next882.i.1 = add nsw i64 %indvars.iv881.i, 2 ; 2 uses
  %i.mn = and i64 %indvars.iv.next882.i.1, 4294967295
  %exitcond884.not.i.1 = icmp eq i64 %i.mn, 0
  br i1 %exitcond884.not.i.1, label %.preheader626.us.us.us.i, label %.lr.ph670.us.us.us.i.new, !llvm.loop !473

.preheader626.us.us.us.i:                         ; preds = %.prol.loopexit459, %.lr.ph670.us.us.us.i.new, %.loopexit628.us.us.us.thread.i
  %i.mo = add nsw i32 %i.lo, %i.cz                ; 3 uses
  %i.mp = icmp slt i32 %i.lq, %i.mo
  br i1 %i.mp, label %.lr.ph672.us.us.us.i, label %._crit_edge673.us.us.us.i

.lr.ph672.us.us.us.i:                             ; preds = %.preheader626.us.us.us.i
  %i.mq = sext i32 %i.lm to i64                   ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %i.lg, i64 %i.mq ; 5 uses
  %i.ms = getelementptr inbounds i8, ptr %i.le, i64 %i.mq ; 5 uses
  %i.mt = zext nneg i32 %i.cz to i64              ; 5 uses
  %i.mu = sext i32 %i.lq to i64                   ; 4 uses
  %i.mv = sext i32 %i.li to i64                   ; 5 uses
  %i.mw = mul i32 %indvars.iv, %i.cu
  %i.mx = sub i32 %i.mw, %i.ll
  %i.my = sext i32 %i.mx to i64                   ; 3 uses
  %i.mz = sub nsw i64 %i.my, %i.mu
  %xtraiter465 = and i64 %i.mz, 3                 ; 2 uses
  %lcmp.mod466.not = icmp eq i64 %xtraiter465, 0
  br i1 %lcmp.mod466.not, label %.prol.loopexit464, label %.prol.preheader463

.prol.preheader463:                               ; preds = %.lr.ph672.us.us.us.i, %.prol.preheader463
  %indvars.iv885.i.prol = phi i64 [ %indvars.iv.next886.i.prol, %.prol.preheader463 ], [ %i.mu, %.lr.ph672.us.us.us.i ] ; 2 uses
  %prol.iter467 = phi i64 [ %prol.iter467.next, %.prol.preheader463 ], [ 0, %.lr.ph672.us.us.us.i ]
  %i.na = mul nsw i64 %indvars.iv885.i.prol, %i.mv ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %i.mr, i64 %i.na
  %i.nc = getelementptr inbounds i8, ptr %i.ms, i64 %i.na
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr align 1 %i.nc, i64 %i.mt, i1 false)
  %indvars.iv.next886.i.prol = add nsw i64 %indvars.iv885.i.prol, 1 ; 2 uses
  %prol.iter467.next = add i64 %prol.iter467, 1   ; 2 uses
  %prol.iter467.cmp.not = icmp eq i64 %prol.iter467.next, %xtraiter465
  br i1 %prol.iter467.cmp.not, label %.prol.loopexit464, label %.prol.preheader463, !llvm.loop !474

.prol.loopexit464:                                ; preds = %.prol.preheader463, %.lr.ph672.us.us.us.i
  %indvars.iv885.i.unr = phi i64 [ %i.mu, %.lr.ph672.us.us.us.i ], [ %indvars.iv.next886.i.prol, %.prol.preheader463 ]
  %i.nd = sub nsw i64 %i.mu, %i.my
  %i.ne = icmp ugt i64 %i.nd, -4
  br i1 %i.ne, label %._crit_edge673.us.us.us.i, label %.lr.ph672.us.us.us.i.new

.lr.ph672.us.us.us.i.new:                         ; preds = %.prol.loopexit464, %.lr.ph672.us.us.us.i.new
  %indvars.iv885.i = phi i64 [ %indvars.iv.next886.i.3, %.lr.ph672.us.us.us.i.new ], [ %indvars.iv885.i.unr, %.prol.loopexit464 ] ; 5 uses
  %i.nf = mul nsw i64 %indvars.iv885.i, %i.mv     ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.mr, i64 %i.nf
  %i.nh = getelementptr inbounds i8, ptr %i.ms, i64 %i.nf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ng, ptr align 1 %i.nh, i64 %i.mt, i1 false)
  %indvars.iv.next886.i = add nsw i64 %indvars.iv885.i, 1
  %i.ni = mul nsw i64 %indvars.iv.next886.i, %i.mv ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.mr, i64 %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.ms, i64 %i.ni
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nj, ptr align 1 %i.nk, i64 %i.mt, i1 false)
  %indvars.iv.next886.i.1 = add nsw i64 %indvars.iv885.i, 2
  %i.nl = mul nsw i64 %indvars.iv.next886.i.1, %i.mv ; 2 uses
  %i.nm = getelementptr inbounds i8, ptr %i.mr, i64 %i.nl
  %i.nn = getelementptr inbounds i8, ptr %i.ms, i64 %i.nl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nm, ptr align 1 %i.nn, i64 %i.mt, i1 false)
  %indvars.iv.next886.i.2 = add nsw i64 %indvars.iv885.i, 3
  %i.no = mul nsw i64 %indvars.iv.next886.i.2, %i.mv ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %i.mr, i64 %i.no
  %i.nq = getelementptr inbounds i8, ptr %i.ms, i64 %i.no
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.np, ptr align 1 %i.nq, i64 %i.mt, i1 false)
  %indvars.iv.next886.i.3 = add nsw i64 %indvars.iv885.i, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next886.i.3, %i.my
  br i1 %exitcond.not.3, label %._crit_edge673.us.us.us.i, label %.lr.ph672.us.us.us.i.new, !llvm.loop !475

._crit_edge673.us.us.us.i:                        ; preds = %.prol.loopexit464, %.lr.ph672.us.us.us.i.new, %.preheader626.us.us.us.i
  %i.nr = icmp slt i32 %i.lm, 0
  %or.cond811.i = and i1 %.not.i, %i.nr
  br i1 %or.cond811.i, label %.lr.ph676.us.us.us.i, label %.loopexit625.us.us.us.i

.lr.ph676.us.us.us.i:                             ; preds = %._crit_edge673.us.us.us.i
  %i.ns = sext i32 %i.lm to i64                   ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.lg, i64 %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.le, i64 %i.ns
  %i.nv = sub nsw i32 0, %i.lm
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = sext i32 %i.ln to i64
  %i.ny = sub nsw i32 0, %i.ll
  %i.nz = sext i32 %i.ny to i64
  %i.oa = add nsw i64 %i.nx, %i.nz
  %i.ob = sext i32 %i.li to i64
  %i.oc = sext i32 %i.mo to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph676.us.us.us.i
  %indvars.iv888.i = phi i64 [ %indvars.iv.next889.i, %bb.n ], [ %i.oa, %.lr.ph676.us.us.us.i ] ; 2 uses
  %i.od = mul nsw i64 %indvars.iv888.i, %i.ob     ; 2 uses
  %i.oe = getelementptr inbounds i8, ptr %i.nt, i64 %i.od
  %i.of = getelementptr inbounds i8, ptr %i.nu, i64 %i.od
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oe, ptr nonnull align 1 %i.of, i64 %i.nw, i1 false)
  %indvars.iv.next889.i = add nsw i64 %indvars.iv888.i, 1 ; 2 uses
  %i.og = icmp slt i64 %indvars.iv.next889.i, %i.oc
  br i1 %i.og, label %bb.n, label %.loopexit625.us.us.us.i, !llvm.loop !476

.loopexit625.us.us.us.i:                          ; preds = %bb.n, %._crit_edge673.us.us.us.i
  %i.oh = add nsw i32 %i.lm, %i.cz                ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, %i.lp
  %or.cond812.i = and i1 %.not.i, %i.oi
  br i1 %or.cond812.i, label %.lr.ph678.us.us.us.i, label %.loopexit.us.us.us.i

.lr.ph678.us.us.us.i:                             ; preds = %.loopexit625.us.us.us.i
  %i.oj = sext i32 %i.lp to i64                   ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr %i.lg, i64 %i.oj
  %i.ol = getelementptr inbounds i8, ptr %i.le, i64 %i.oj
  %i.om = sub nsw i32 %i.oh, %i.lp
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = sext i32 %i.ln to i64
  %i.op = sub nsw i32 0, %i.ll
  %i.oq = sext i32 %i.op to i64
  %i.or = add nsw i64 %i.oo, %i.oq
  %i.os = sext i32 %i.li to i64
  %i.ot = sext i32 %i.mo to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph678.us.us.us.i
  %indvars.iv891.i = phi i64 [ %indvars.iv.next892.i, %bb.o ], [ %i.or, %.lr.ph678.us.us.us.i ] ; 2 uses
  %i.ou = mul nsw i64 %indvars.iv891.i, %i.os     ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ok, i64 %i.ou
  %i.ow = getelementptr inbounds i8, ptr %i.ol, i64 %i.ou
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ov, ptr align 1 %i.ow, i64 %i.on, i1 false)
  %indvars.iv.next892.i = add nsw i64 %indvars.iv891.i, 1 ; 2 uses
  %i.ox = icmp slt i64 %indvars.iv.next892.i, %i.ot
  br i1 %i.ox, label %bb.o, label %.loopexit.us.us.us.i, !llvm.loop !477

.loopexit.us.us.us.i:                             ; preds = %bb.o, %.loopexit625.us.us.us.i, %.loopexit628.us.us.us.i
  %i.oy = load i32, ptr %i.au, align 16, !tbaa !96
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %.lr.ph687.us.us.us.i, label %._crit_edge688.us.us.us.i

.lr.ph687.us.us.us.i:                             ; preds = %.loopexit.us.us.us.i
  %i.pa = trunc i64 %indvars.iv920.i to i32       ; 6 uses
  %i.pb = add i32 %i.pa, -1
  br label %bb.p

bb.p:                                             ; preds = %get_dc.exit.us.us.us.i, %.lr.ph687.us.us.us.i
  %indvars.iv909.i = phi i64 [ %indvars.iv.next910.i, %get_dc.exit.us.us.us.i ], [ 0, %.lr.ph687.us.us.us.i ] ; 8 uses
  %i.pc = getelementptr inbounds nuw [37160 x i8], ptr %i.as, i64 %indvars.iv909.i ; 2 uses
  %i.pd = load i32, ptr %i.p, align 8, !tbaa !83  ; 4 uses
  %i.pe = lshr i32 16, %i.pd                      ; 8 uses
  %.not.i562.us.us.us.i = icmp eq i64 %indvars.iv909.i, 0
  br i1 %.not.i562.us.us.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pf = load i32, ptr %i.av, align 4, !tbaa !101 ; 3 uses
  %i.pg = lshr i32 %i.pe, %i.pf
  %i.ph = load i32, ptr %i.aw, align 16, !tbaa !102
  %i.pi = lshr i32 %i.pe, %i.ph
  %i.pj = add nsw i32 %i.pf, %i.pd
  %i.pk = shl nuw nsw i32 %i.pe, 1
  %i.pl = lshr i32 %i.pk, %i.pf
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.pm = shl nuw nsw i32 %i.pe, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn.in.i.us.us.us.i = phi i32 [ %i.pj, %bb.q ], [ %i.pd, %bb.r ]
  %i.pn = phi i32 [ %i.pg, %bb.q ], [ %i.pe, %bb.r ] ; 38 uses
  %i.po = phi i32 [ %i.pi, %bb.q ], [ %i.pe, %bb.r ] ; 21 uses
  %i.pp = phi i32 [ %i.pl, %bb.q ], [ %i.pm, %bb.r ] ; 15 uses
  %.pn.pn.i.us.us.us.i = sext i32 %.pn.pn.in.i.us.us.us.i to i64
  %.in191.i.us.us.us.i = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.pn.i.us.us.us.i
  %i.pq = load ptr, ptr %.in191.i.us.us.us.i, align 8, !tbaa !100 ; 34 uses
  %i.pr = load ptr, ptr %i.ar, align 16, !tbaa !113
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv909.i
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !87 ; 5 uses
  %i.pv = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv909.i
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !100 ; 6 uses
  %i.py = trunc i64 %indvars.iv909.i to i32       ; 5 uses
  %i.pz = shl i32 %i.py, 2
  %i.qa = mul i32 %i.pz, %i.pe
  %i.qb = mul i32 %i.qa, %i.pe
  %i.qc = sext i32 %i.qb to i64                   ; 3 uses
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.qc ; 12 uses
  %i.qe = load i32, ptr %i.e, align 16, !tbaa !107
  %i.qf = shl i32 %i.qe, %i.pd
  %i.qg = load i32, ptr %i.pc, align 8, !tbaa !120 ; 12 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !121 ; 11 uses
  %i.qj = sext i32 %i.qf to i64
  %i.qk = mul nsw i64 %indvars.iv925.i, %i.qj
  %i.ql = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.qm = getelementptr [10 x i8], ptr %i.ql, i64 %i.qk
  %i.qn = getelementptr [10 x i8], ptr %i.qm, i64 %indvars.iv920.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) %i.qn, i64 10, i1 false), !tbaa.struct !518
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 2, !tbaa !136
  %i.qq = or i8 %i.qp, 1
  store i8 %i.qq, ptr %i.qo, align 2, !tbaa !136
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %indvars.iv909.i
  store i8 0, ptr %i.qs, align 1, !tbaa !86
  %i.qt = shl nuw nsw i32 %i.pp, 1
  %i.qu = mul nuw nsw i32 %i.qt, %i.pp
  %i.qv = zext nneg i32 %i.qu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.qd, i8 0, i64 %i.qv, i1 false)
  %i.qw = lshr i32 %i.pn, 1                       ; 12 uses
  %i.qx = lshr i32 %i.po, 1                       ; 11 uses
  %i.qy = mul nuw nsw i32 %i.pp, %i.po            ; 9 uses
  %i.qz = icmp sgt i32 %i.pu, 111
  %i.ra = shl nsw i32 %i.pu, 4
  %i.rb = select i1 %i.qz, i32 16, i32 %i.ra      ; 2 uses
  %i.rc = mul i32 %i.rb, 3
  %i.rd = sext i32 %i.rc to i64                   ; 2 uses
  %i.re = sext i32 %i.rb to i64                   ; 3 uses
  %i.rf = sext i32 %i.pu to i64                   ; 12 uses
  %i.rg = lshr i32 %i.pp, 1                       ; 2 uses
  %i.rh = zext nneg i32 %i.rg to i64              ; 4 uses
  %i.ri = mul i32 %i.rg, %i.pp
  %i.rj = zext i32 %i.ri to i64                   ; 3 uses
  %i.rk = mul nsw i32 %i.pn, %i.pa
  %.neg.i.us.us.us.i = sub i32 %i.qw, %i.rk       ; 9 uses
  %i.rl = mul nsw i32 %i.po, %i.bv
  %.neg175.i.us.us.us.i = sub i32 %i.qx, %i.rl    ; 4 uses
  %i.rm = zext i32 %i.pp to i64                   ; 3 uses
  %i.rn = mul i32 %i.pn, %i.by
  %i.ro = sub i32 %i.qw, %i.rn
  %i.rp = mul i32 %i.po, %i.bq
  %i.rq = sub i32 %i.qx, %i.rp
  %i.rr = shl nsw i64 %i.qc, 1
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.rr
  %i.rs = mul i32 %i.pn, %i.bx
  %i.rt = sub i32 %i.qw, %i.rs
  %i.ru = mul i32 %i.po, %i.bp
  %i.rv = sub i32 %i.qx, %i.ru
  %i.rw = shl nuw nsw i64 %i.rm, 1
  %stride.check295 = icmp slt i32 %i.pu, 0
  %stride.check = icmp slt i32 %i.pu, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge208.i.us.us.us.i, %bb.s
  %.0162234.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1163.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0165233.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1166.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0170232.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %i.bbe, %._crit_edge208.i.us.us.us.i ] ; 9 uses
  %i.rx = lshr i32 %.0170232.i.us.us.us.i, 1      ; 2 uses
  %i.ry = add i32 %i.rx, %i.bv
  %i.rz = mul i32 %i.po, %i.ry
  %i.sa = add i32 %i.qx, %i.rz
  %smin257 = call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.sa)
  %i.sb = add i32 %indvars.iv901.i, %i.rx
  %20 = mul i32 %i.po, %i.sb
  %i.sc = add i32 %i.qx, %20
  %smin259.a = call i32 @llvm.smax.i32(i32 %i.sc, i32 0)
  %i.sd = sub i32 %smin257, %smin259.a
  %i.se = zext i32 %i.sd to i64
  %i.sf = call i64 @llvm.usub.sat.i64(i64 %i.se, i64 1) ; 3 uses
  %i.sg = mul i64 %i.rw, %i.sf
  %i.sh = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.si = add i32 %i.sh, %i.pa
  %i.sj = mul i32 %i.pn, %i.si
  %i.sk = add i32 %i.qw, %i.sj
  %smin260 = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.sk)
  %i.sl = add i32 %indvars.iv894.i, %i.sh
  %21 = mul i32 %i.pn, %i.sl
  %i.sm = add i32 %i.qw, %21
  %smin262 = call i32 @llvm.smax.i32(i32 %i.sm, i32 0)
  %i.sn = sub i32 %smin260, %smin262
  %i.so = call i32 @llvm.umax.i32(i32 %i.sn, i32 1)
  %umax263 = zext i32 %i.so to i64                ; 3 uses
  %i.sp = shl nuw nsw i64 %umax263, 1
  %i.sq = mul nuw i64 %i.sf, %i.rm
  %i.sr = add i64 %i.sq, %umax263                 ; 4 uses
  %i.ss = mul nsw i64 %i.sf, %i.rf
  %i.st = add i64 %i.ss, %umax263                 ; 4 uses
  %i.su = lshr i32 %.0170232.i.us.us.us.i, 1      ; 2 uses
  %i.sv = add i32 %indvars.iv901.i, %i.su
  %i.sw = mul i32 %i.po, %i.sv
  %i.sx = add i32 %i.qx, %i.sw
  %smax227 = call i32 @llvm.smax.i32(i32 %i.sx, i32 0) ; 2 uses
  %i.sy = zext nneg i32 %smax227 to i64           ; 2 uses
  %i.sz = mul nsw i64 %i.rf, %i.sy
  %i.ta = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.tb = add i32 %indvars.iv894.i, %i.ta
  %i.tc = mul i32 %i.pn, %i.tb
  %i.td = add i32 %i.qw, %i.tc
  %smax228 = call i32 @llvm.smax.i32(i32 %i.td, i32 0) ; 2 uses
  %i.te = zext nneg i32 %smax228 to i64           ; 4 uses
  %i.tf = getelementptr i8, ptr %i.px, i64 %i.sz
  %scevgep = getelementptr i8, ptr %i.tf, i64 %i.te
  %i.tg = add nuw nsw i64 %i.te, 1
  %i.th = add i32 %i.ta, %i.pa
  %i.ti = mul i32 %i.pn, %i.th
  %i.tj = add i32 %i.qw, %i.ti
  %smin229 = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.tj)
  %i.tk = zext i32 %smin229 to i64
  %umax230 = call i64 @llvm.umax.i64(i64 %i.tg, i64 %i.tk) ; 3 uses
  %i.tl = add nuw nsw i64 %i.sy, 1
  %i.tm = add i32 %i.su, %i.bv
  %i.tn = mul i32 %i.po, %i.tm
  %i.to = add i32 %i.qx, %i.tn
  %smin231 = call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.to)
  %i.tp = zext i32 %smin231 to i64
  %umax232 = call i64 @llvm.umax.i64(i64 %i.tl, i64 %i.tp)
  %i.tq = add nsw i64 %umax232, -1
  %i.tr = mul i64 %i.tq, %i.rf
  %i.ts = getelementptr i8, ptr %i.px, i64 %umax230
  %scevgep233 = getelementptr i8, ptr %i.ts, i64 %i.tr
  %i.tt = add i32 %i.rt, %smax228
  %i.tu = add i32 %i.rv, %smax227
  %i.tv = mul i32 %i.pp, %i.tu
  %i.tw = add i32 %i.tt, %i.tv
  %i.tx = mul nsw i64 %i.te, -2
  %i.ty = sub nsw i64 %umax230, %i.te
  %i.tz = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.ua = add i32 %indvars.iv894.i, %i.tz
  %i.ub = mul i32 %i.pn, %i.ua
  %i.uc = add i32 %i.qw, %i.ub
  %smax = call i32 @llvm.smax.i32(i32 %i.uc, i32 0) ; 2 uses
  %i.ud = zext nneg i32 %smax to i64              ; 2 uses
  %i.ue = add nuw nsw i64 %i.ud, 1
  %i.uf = add i32 %i.tz, %i.pa
  %i.ug = mul i32 %i.pn, %i.uf
  %i.uh = add i32 %i.qw, %i.ug
  %smin = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.uh)
  %i.ui = zext i32 %smin to i64
  %umax = call i64 @llvm.umax.i64(i64 %i.ue, i64 %i.ui)
  %i.uj = xor i64 %i.ud, -1
  %i.uk = add nsw i64 %umax, %i.uj                ; 2 uses
  %i.ul = add i32 %i.ro, %smax
  %i.um = lshr i32 %.0170232.i.us.us.us.i, 1
  %i.un = add i32 %indvars.iv901.i, %i.um
  %i.uo = mul i32 %i.po, %i.un
  %i.up = add i32 %i.qx, %i.uo
  %smax226 = call i32 @llvm.smax.i32(i32 %i.up, i32 0)
  %i.uq = add i32 %i.rq, %smax226
  %i.ur = mul i32 %i.pp, %i.uq
  %i.us = add i32 %i.ul, %i.ur
  %i.ut = lshr i32 %.0170232.i.us.us.us.i, 1      ; 4 uses
  %i.uu = add i32 %i.ut, %indvars.iv901.i
  %i.uv = mul i32 %i.uu, %i.po
  %i.uw = add i32 %i.uv, %i.qx                    ; 2 uses
  %smax904.i = tail call i32 @llvm.smax.i32(i32 %i.uw, i32 0)
  %i.ux = add i32 %i.uw, %i.po
  %smin905.i = tail call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.ux)
  %i.uy = sub i32 %smin905.i, %smax904.i
  %i.uz = tail call i32 @llvm.umax.i32(i32 %i.uy, i32 1)
  %umax906.i = zext i32 %i.uz to i64
  %i.va = and i32 %.0170232.i.us.us.us.i, 1       ; 4 uses
  %i.vb = add i32 %i.va, %indvars.iv894.i
  %i.vc = mul i32 %i.vb, %i.pn
  %i.vd = add i32 %i.vc, %i.qw                    ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.vd, i32 0)
  %i.ve = add i32 %i.vd, %i.pn
  %smin898.i = tail call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.ve)
  %i.vf = sub i32 %smin898.i, %smax.i             ; 2 uses
  %i.vg = tail call i32 @llvm.umax.i32(i32 %i.vf, i32 1)
  %umax899.i = zext i32 %i.vg to i64              ; 3 uses
  %i.vh = add i32 %i.bw, %i.ut
  %i.vi = mul i32 %i.vh, %i.po
  %i.vj = add i32 %i.vi, %i.qx
  %smax275.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.vj, i32 0)
  %i.vk = zext nneg i32 %smax275.i.us.us.us.i to i64 ; 4 uses
  %i.vl = add i32 %i.pb, %i.va
  %i.vm = mul i32 %i.vl, %i.pn
  %i.vn = add i32 %i.vm, %i.qw
  %smax271.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.vn, i32 0)
  %i.vo = zext nneg i32 %smax271.i.us.us.us.i to i64 ; 15 uses
  %i.vp = add nuw nsw i32 %i.va, %i.pa            ; 3 uses
  %i.vq = add nsw i32 %i.vp, -1                   ; 2 uses
  %i.vr = add nuw nsw i32 %i.ut, %i.bv            ; 3 uses
  %i.vs = add nsw i32 %i.vr, -1                   ; 2 uses
  %i.vt = mul nsw i32 %i.vq, %i.pn
  %i.vu = add nsw i32 %i.vt, %i.qw                ; 6 uses
  %i.vv = mul nsw i32 %i.vs, %i.po
  %i.vw = add nsw i32 %i.vv, %i.qx                ; 6 uses
  %i.vx = mul nuw nsw i32 %i.va, %i.pn
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.qd, i64 %i.vy
  %i.wa = mul i32 %i.ut, %i.qy
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [2 x i8], ptr %i.vz, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.e, align 16, !tbaa !107
  %i.we = load i32, ptr %i.p, align 8, !tbaa !83  ; 2 uses
  %i.wf = shl i32 %i.wd, %i.we                    ; 3 uses
  %i.wg = load i32, ptr %i.g, align 4, !tbaa !106
  %i.wh = shl i32 %i.wg, %i.we
  %i.wi = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.wj = mul nsw i32 %i.wf, %i.vs
  %i.wk = add nsw i32 %i.wj, %i.vq
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [10 x i8], ptr %i.wi, i64 %i.wl ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 10 ; 3 uses
  %i.wo = sext i32 %i.wf to i64
  %i.wp = getelementptr inbounds [10 x i8], ptr %i.wm, i64 %i.wo ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 10 ; 3 uses
  %i.wr = load ptr, ptr %i.ay, align 8, !tbaa !134 ; 6 uses
  %i.ws = icmp eq i32 %i.vp, 0
  br i1 %i.ws, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.us.us.us.i = icmp slt i32 %i.vp, %i.wf ; 2 uses
  %spec.select.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.wn, ptr %i.wm
  %spec.select260.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.wq, ptr %i.wp
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0228.i.i.us.us.us.i = phi ptr [ %i.wm, %bb.u ], [ %i.wn, %bb.t ] ; 2 uses
  %.0226.i.i.us.us.us.i = phi ptr [ %spec.select.i.i.us.us.us.i, %bb.u ], [ %i.wn, %bb.t ] ; 2 uses
  %.0224.i.i.us.us.us.i = phi ptr [ %i.wp, %bb.u ], [ %i.wq, %bb.t ] ; 3 uses
  %.0222.i.i.us.us.us.i = phi ptr [ %spec.select260.i.i.us.us.us.i, %bb.u ], [ %i.wq, %bb.t ] ; 3 uses
  %i.wt = icmp eq i32 %i.vr, 0
  br i1 %i.wt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not249.i.i.us.us.us.i = icmp slt i32 %i.vr, %i.wh ; 2 uses
  %spec.select261.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0224.i.i.us.us.us.i, ptr %.0228.i.i.us.us.us.i
  %spec.select262.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0222.i.i.us.us.us.i, ptr %.0226.i.i.us.us.us.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1229.i.i.us.us.us.i = phi ptr [ %.0228.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1227.i.i.us.us.us.i = phi ptr [ %.0226.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1225.i.i.us.us.us.i = phi ptr [ %spec.select261.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1223.i.i.us.us.us.i = phi ptr [ %spec.select262.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %i.wu = icmp slt i32 %i.vu, 0                   ; 3 uses
  br i1 %i.wu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.wv = sext i32 %i.vu to i64
  %i.ww = sub nsw i64 0, %i.wv                    ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ww
  %i.wy = add nsw i32 %i.vu, %i.pn
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %i.ww
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0237.i.i.us.us.us.i = phi i32 [ %i.wy, %bb.y ], [ %i.pn, %bb.x ] ; 2 uses
  %.0235.i.i.us.us.us.i = phi i32 [ 0, %bb.y ], [ %i.vu, %bb.x ] ; 6 uses
  %.0233.i.i.us.us.us.i = phi ptr [ %i.wx, %bb.y ], [ %i.pq, %bb.x ] ; 3 uses
  %.1231.i.i.us.us.us.i = phi ptr [ %i.wz, %bb.y ], [ %i.wc, %bb.x ] ; 3 uses
  %i.xa = add nsw i32 %.0235.i.i.us.us.us.i, %.0237.i.i.us.us.us.i
  %i.xb = icmp sgt i32 %i.xa, %i.qg
  %i.xc = sub nsw i32 %i.qg, %.0235.i.i.us.us.us.i
  %spec.select264.i.i.us.us.us.i = select i1 %i.xb, i32 %i.xc, i32 %.0237.i.i.us.us.us.i ; 5 uses
  %i.xd = icmp slt i32 %i.vw, 0                   ; 2 uses
  %i.xe = insertelement <2 x ptr> poison, ptr %.1231.i.i.us.us.us.i, i64 0
  %i.xf = insertelement <2 x ptr> %i.xe, ptr %.0233.i.i.us.us.us.i, i64 1
  br i1 %i.xd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.xg = mul nsw i32 %i.vw, %i.pp
  %i.xh = sext i32 %i.xg to i64
  %i.xi = sub nsw i64 0, %i.xh                    ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.0233.i.i.us.us.us.i, i64 %i.xi ; 2 uses
  %i.xk = add nsw i32 %i.vw, %i.po
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %.1231.i.i.us.us.us.i, i64 %i.xi ; 2 uses
  %i.xm = insertelement <2 x ptr> poison, ptr %i.xl, i64 0
  %i.xn = insertelement <2 x ptr> %i.xm, ptr %i.xj, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0239.i.i.us.us.us.i = phi i32 [ %i.xk, %bb.aa ], [ %i.po, %bb.z ] ; 2 uses
  %.0236.i.i.us.us.us.i = phi i32 [ 0, %bb.aa ], [ %i.vw, %bb.z ] ; 6 uses
  %.1234.i.i.us.us.us.i = phi ptr [ %i.xj, %bb.aa ], [ %.0233.i.i.us.us.us.i, %bb.z ] ; 5 uses
  %.3.i.i.us.us.us.i = phi ptr [ %i.xl, %bb.aa ], [ %.1231.i.i.us.us.us.i, %bb.z ] ; 2 uses
  %i.xo = phi <2 x ptr> [ %i.xn, %bb.aa ], [ %i.xf, %bb.z ] ; 2 uses
  %i.xp = add nsw i32 %.0236.i.i.us.us.us.i, %.0239.i.i.us.us.us.i
  %i.xq = icmp sgt i32 %i.xp, %i.qi
  %i.xr = sub nsw i32 %i.qi, %.0236.i.i.us.us.us.i
  %spec.select265.i.i.us.us.us.i = select i1 %i.xq, i32 %i.xr, i32 %.0239.i.i.us.us.us.i ; 5 uses
  %i.xs = icmp slt i32 %spec.select264.i.i.us.us.us.i, 1
  %i.xt = icmp slt i32 %spec.select265.i.i.us.us.us.i, 1
  %or.cond5.i.i.us.us.us.i = select i1 %i.xs, i1 true, i1 %i.xt
  br i1 %or.cond5.i.i.us.us.us.i, label %add_yblock.exit.i.us.us.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.xu = getelementptr inbounds i8, ptr %i.wr, i64 %i.rd ; 11 uses
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 %i.re ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.xu, ptr noundef %i.wr, i64 noundef %i.rf, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef %.1229.i.i.us.us.us.i, i32 noundef %i.py, i32 noundef %i.qg, i32 noundef %i.qi) #12
  %i.xw = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 8 ; 3 uses
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !136 ; 4 uses
  %i.xy = and i8 %i.xx, 1                         ; 2 uses
  %.not.i294.i.i.us.us.us.i = icmp eq i8 %i.xy, 0
  %.phi.trans.insert.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 8 ; 3 uses
  %.pre.i.us.us.us.i = load i8, ptr %.phi.trans.insert.i.us.us.us.i, align 2, !tbaa !136 ; 2 uses
  %i.xz = and i8 %.pre.i.us.us.us.i, 1
  %.not16.i295.i.i.us.us.us.i = icmp eq i8 %i.xz, 0
  %or.cond.i.us.us.us.i = select i1 %.not.i294.i.i.us.us.us.i, i1 true, i1 %.not16.i295.i.i.us.us.us.i
  br i1 %or.cond.i.us.us.us.i, label %same_block.exit300.i.i.us.us.us.i, label %.split.i.us.us.us.i

.split.i.us.us.us.i:                              ; preds = %bb.ac
  %i.ya = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !86
  %i.yc = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 5
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !86
  %i.ye = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.yf = load i8, ptr %i.ye, align 2, !tbaa !86
  %i.yg = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 6
  %i.yh = load i8, ptr %i.yg, align 2, !tbaa !86
  %i.yi = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 7
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !86
  %i.yk = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 7
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !86
  %i.ym = icmp eq i8 %i.yb, %i.yd
  %i.yn = icmp eq i8 %i.yf, %i.yh
  %i.yo = and i1 %i.ym, %i.yn
  %i.yp = icmp eq i8 %i.yj, %i.yl
  %.not18.i296.i.i.us.us.us.i = and i1 %i.yo, %i.yp
  br i1 %.not18.i296.i.i.us.us.us.i, label %bb.ae, label %bb.ad

same_block.exit300.i.i.us.us.us.i:                ; preds = %bb.ac
  %i.yq = load i16, ptr %.1229.i.i.us.us.us.i, align 2, !tbaa !137
  %i.yr = sext i16 %i.yq to i32
  %i.ys = load i16, ptr %.1227.i.i.us.us.us.i, align 2, !tbaa !137
  %i.yt = sext i16 %i.ys to i32
  %i.yu = sub nsw i32 %i.yr, %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 2
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !138
  %i.yx = sext i16 %i.yw to i32
  %i.yy = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 2
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !138
  %i.za = sext i16 %i.yz to i32
  %i.zb = sub nsw i32 %i.yx, %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 4
  %i.zd = load i8, ptr %i.zc, align 2, !tbaa !139
  %i.ze = zext i8 %i.zd to i32
  %i.zf = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 4
  %i.zg = load i8, ptr %i.zf, align 2, !tbaa !139
  %i.zh = zext i8 %i.zg to i32
  %i.zi = sub nsw i32 %i.ze, %i.zh
  %i.zj = xor i8 %.pre.i.us.us.us.i, %i.xx
  %i.zk = and i8 %i.zj, 1
  %i.zl = zext nneg i8 %i.zk to i32
  %i.zm = or i32 %i.yu, %i.zl
  %i.zn = or i32 %i.zm, %i.zb
  %i.zo = or i32 %i.zn, %i.zi
  %.not17.i299.i.i.us.us.us.i = icmp eq i32 %i.zo, 0
  br i1 %.not17.i299.i.i.us.us.us.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %i.zp = getelementptr inbounds i8, ptr %i.xv, i64 %i.re
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.xv, ptr noundef %i.wr, i64 noundef %i.rf, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef nonnull %.1227.i.i.us.us.us.i, i32 noundef %i.py, i32 noundef %i.qg, i32 noundef %i.qi) #12
  %.pre281.i.us.us.us.i = load i8, ptr %i.xw, align 2, !tbaa !136 ; 2 uses
  %.pre978.i = and i8 %.pre281.i.us.us.us.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %.pre-phi979.i = phi i8 [ %.pre978.i, %bb.ad ], [ %i.xy, %same_block.exit300.i.i.us.us.us.i ], [ 1, %.split.i.us.us.us.i ] ; 4 uses
  %i.zq = phi i8 [ %.pre281.i.us.us.us.i, %bb.ad ], [ %i.xx, %same_block.exit300.i.i.us.us.us.i ], [ %i.xx, %.split.i.us.us.us.i ] ; 5 uses
  %.sroa.7.0.i.us.us.us.i = phi ptr [ %i.xv, %bb.ad ], [ %i.xu, %same_block.exit300.i.i.us.us.us.i ], [ %i.xu, %.split.i.us.us.us.i ] ; 8 uses
  %.0221.i.i.us.us.us.i = phi ptr [ %i.zp, %bb.ad ], [ %i.xv, %same_block.exit300.i.i.us.us.us.i ], [ %i.xv, %.split.i.us.us.us.i ] ; 7 uses
  %.not.i287.i.i.us.us.us.i = icmp eq i8 %.pre-phi979.i, 0
  %.phi.trans.insert283.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@encode_q_branch:bb.a
  %i.ats = load ptr, ptr %i.iu, align 8, !tbaa !133
  %i.att = trunc i64 %indvars.iv.i639 to i32
  %i.atu = or disjoint i32 %i.att, 1
  %i.atv = add i32 %i.atm, %i.atu
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [10 x i8], ptr %i.ats, i64 %i.atw ; 5 uses
  store i16 %i.atc, ptr %i.atx, align 2, !tbaa !125
  %.sroa.4.0..sroa_idx.i640.1 = getelementptr inbounds nuw i8, ptr %i.atx, i64 2
  store i16 %i.atd, ptr %.sroa.4.0..sroa_idx.i640.1, align 2, !tbaa !125
  %.sroa.5.0..sroa_idx.i641.1 = getelementptr inbounds nuw i8, ptr %i.atx, i64 4
  store i8 %i.ate, ptr %.sroa.5.0..sroa_idx.i641.1, align 2, !tbaa !86
  %.sroa.6.0..sroa_idx.i642.1 = getelementptr inbounds nuw i8, ptr %i.atx, i64 5
  store <4 x i8> %i.atj, ptr %.sroa.6.0..sroa_idx.i642.1, align 1
  %.sroa.10.0..sroa_idx.i646.1 = getelementptr inbounds nuw i8, ptr %i.atx, i64 9
  store i8 %i.atf, ptr %.sroa.10.0..sroa_idx.i646.1, align 1, !tbaa !86
  %indvars.iv.next.i647.1 = add nuw nsw i64 %indvars.iv.i639, 2 ; 2 uses
  %niter830.next.1 = add i64 %niter830, 2         ; 2 uses
  %niter830.ncmp.1 = icmp eq i64 %niter830.next.1, %unroll_iter829
  br i1 %niter830.ncmp.1, label %._crit_edge.i649.unr-lcssa, label %.preheader.i637.new, !llvm.loop !3

._crit_edge.i649.unr-lcssa:                       ; preds = %.preheader.i637.new
  br i1 %lcmp.mod827.not, label %._crit_edge.i649, label %.epil.preheader824

.epil.preheader824:                               ; preds = %._crit_edge.i649.unr-lcssa, %.preheader.i637
  %indvars.iv.i639.epil.init = phi i64 [ 0, %.preheader.i637 ], [ %indvars.iv.next.i647.1, %._crit_edge.i649.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod828)
  %i.aty = load ptr, ptr %i.iu, align 8, !tbaa !133
  %i.atz = trunc nuw nsw i64 %indvars.iv.i639.epil.init to i32
  %i.aua = add i32 %i.atm, %i.atz
  %i.aub = sext i32 %i.aua to i64
  %i.auc = getelementptr inbounds [10 x i8], ptr %i.aty, i64 %i.aub ; 5 uses
  store i16 %i.atc, ptr %i.auc, align 2, !tbaa !125
  %.sroa.4.0..sroa_idx.i640.epil = getelementptr inbounds nuw i8, ptr %i.auc, i64 2
  store i16 %i.atd, ptr %.sroa.4.0..sroa_idx.i640.epil, align 2, !tbaa !125
  %.sroa.5.0..sroa_idx.i641.epil = getelementptr inbounds nuw i8, ptr %i.auc, i64 4
  store i8 %i.ate, ptr %.sroa.5.0..sroa_idx.i641.epil, align 2, !tbaa !86
  %.sroa.6.0..sroa_idx.i642.epil = getelementptr inbounds nuw i8, ptr %i.auc, i64 5
  store <4 x i8> %i.atj, ptr %.sroa.6.0..sroa_idx.i642.epil, align 1
  %.sroa.10.0..sroa_idx.i646.epil = getelementptr inbounds nuw i8, ptr %i.auc, i64 9
  store i8 %i.atf, ptr %.sroa.10.0..sroa_idx.i646.epil, align 1, !tbaa !86
  br label %._crit_edge.i649

._crit_edge.i649:                                 ; preds = %._crit_edge.i649.unr-lcssa, %.epil.preheader824
  %i.aud = add nuw nsw i32 %.031.i638, 1          ; 2 uses
  %exitcond34.not.i650 = icmp eq i32 %i.aud, %i.atg
  br i1 %exitcond34.not.i650, label %set_blocks.exit.sink.split, label %.preheader.i637, !llvm.loop !4

set_blocks.exit.sink.split:                       ; preds = %._crit_edge.i649, %._crit_edge.i631, %bb.dk, %pred_mv.exit615
  %.sink = phi ptr [ %i.d, %pred_mv.exit615 ], [ %i.c, %bb.dk ], [ %i.d, %._crit_edge.i631 ], [ %i.c, %._crit_edge.i649 ]
  %.0428.ph = phi i32 [ %i.ain, %pred_mv.exit615 ], [ %i.yy, %bb.dk ], [ %i.ain, %._crit_edge.i631 ], [ %i.yy, %._crit_edge.i649 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.ra, ptr noundef nonnull align 16 dereferenceable(4224) %.sink, i64 4224, i1 false)
  br label %set_blocks.exit

set_blocks.exit:                                  ; preds = %._crit_edge.i, %set_blocks.exit.sink.split, %bb.s, %put_rac.exit605
  %.0428 = phi i32 [ %i.apf, %put_rac.exit605 ], [ 0, %bb.s ], [ %.0428.ph, %set_blocks.exit.sink.split ], [ 0, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0428
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_4block_rd(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6376 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83   ; 6 uses
  %i.d = lshr i32 16, %i.c                        ; 19 uses
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 8 uses
  %i.h = shl nuw nsw i32 %i.d, 1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87   ; 7 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !100  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !107
  %i.s = shl i32 %i.r, %i.c                       ; 3 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !120  ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6396
  %i.v = load i32, ptr %i.u, align 4, !tbaa !121  ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 155952
  %i.x = load i32, ptr %i.w, align 16, !tbaa !112 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 244
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !157
  %trunc.i = trunc i32 %i.ab to i8
  switch i8 %trunc.i, label %bb.b [
    i8 5, label %get_penalty_factor.exit
    i8 3, label %bb.c
    i8 11, label %bb.d
    i8 12, label %bb.e
    i8 2, label %bb.f
    i8 14, label %bb.f
    i8 6, label %bb.g
    i8 4, label %bb.g
    i8 1, label %bb.g
    i8 10, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.ac = ashr i32 %i.x, 7
  br label %get_penalty_factor.exit

bb.c:                                             ; preds = %bb.a
  %i.ad = mul nsw i32 %i.x, 3
  %i.ae = ashr i32 %i.ad, 8
  br label %get_penalty_factor.exit

bb.d:                                             ; preds = %bb.a
  %i.af = ashr i32 %i.x, 5
  br label %get_penalty_factor.exit

bb.e:                                             ; preds = %bb.a
  %i.ag = ashr i32 %i.x, 6
  br label %get_penalty_factor.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.ah = ashr i32 %i.x, 6
  br label %get_penalty_factor.exit

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 155956
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116
  %i.ak = ashr i32 %i.aj, 7
  br label %get_penalty_factor.exit

get_penalty_factor.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i188 = phi i32 [ %i.ac, %bb.b ], [ %i.ak, %bb.g ], [ %i.ae, %bb.c ], [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.ah, %bb.f ], [ 1, %bb.a ]
  %i.al = lshr i32 8, %i.c                        ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6372
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 155032 ; 2 uses
  %i.ao = icmp sgt i32 %i.l, 111
  %i.ap = shl nsw i32 %i.l, 4
  %i.aq = select i1 %i.ao, i32 16, i32 %i.ap      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 155080
  %i.as = mul i32 %i.aq, 3
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = sext i32 %i.aq to i64                   ; 3 uses
  %i.av = sext i32 %i.l to i64                    ; 19 uses
  %i.aw = zext nneg i32 %i.d to i64               ; 16 uses
  %i.ax = mul nuw nsw i32 %i.h, %i.d
  %i.ay = zext nneg i32 %i.ax to i64              ; 5 uses
  %i.az = sext i32 %i.t to i64                    ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.m, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.p, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 156784
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 161896
  %i.be = icmp eq i32 %i.c, 1
  %i.bf = zext i1 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = zext nneg i32 %i.h to i64
  %i.bi = add i32 %2, -1
  %i.bj = sext i32 %i.v to i64                    ; 4 uses
  %i.bk = icmp ult i32 %i.c, 5                    ; 2 uses
  %i.bl = add i32 %1, -1
  %i.bm = add i32 %2, -1
  %i.bn = getelementptr i8, ptr %i.g, i64 %i.aw
  %scevgep6 = getelementptr i8, ptr %i.bn, i64 %i.ay
  %scevgep9 = getelementptr i8, ptr %i.g, i64 %i.ay
  %scevgep12 = getelementptr i8, ptr %i.g, i64 %i.ay
  %scevgep14 = getelementptr i8, ptr %i.g, i64 %i.ay
  %i.bo = shl nuw nsw i64 %i.aw, 1
  %scevgep16 = getelementptr i8, ptr %i.g, i64 %i.aw
  %i.bp = add i32 %1, -1
  %i.bq = add i32 %2, -1
  %stride.check28 = icmp slt i32 %i.l, 0
  br label %bb.h

bb.h:                                             ; preds = %get_penalty_factor.exit, %.loopexit
  %.0161231 = phi i32 [ 0, %get_penalty_factor.exit ], [ %i.yg, %.loopexit ]
  %.0165230 = phi i32 [ 0, %get_penalty_factor.exit ], [ %i.yh, %.loopexit ] ; 8 uses
  %i.br = udiv i32 %.0165230, 3
  %i.bs = add i32 %2, %i.br
  %i.bt = mul i32 %i.d, %i.bs
  %i.bu = add i32 %i.al, %i.bt
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = sub nsw i64 %i.bv, %i.bj
  %i.bx = udiv i32 %.0165230, 3
  %i.by = add i32 %i.bq, %i.bx
  %i.bz = mul i32 %i.d, %i.by
  %i.ca = add i32 %i.al, %i.bz                    ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = urem i32 %.0165230, 3
  %i.ce = add i32 %i.bp, %i.cd
  %i.cf = mul i32 %i.d, %i.ce
  %i.cg = add i32 %i.al, %i.cf                    ; 2 uses
  %smax64 = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %i.ch = add i32 %i.cg, %i.d
  %smin65 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ch)
  %i.ci = sub i32 %smin65, %smax64                ; 3 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 1)
  %umax66 = zext i32 %i.cj to i64                 ; 5 uses
  %i.ck = add i32 %i.bl, %.0165230
  %i.cl = udiv i32 %.0165230, 3                   ; 2 uses
  %.neg = mul i32 %i.cl, -3
  %i.cm = add i32 %.neg, %i.ck
  %i.cn = mul i32 %i.d, %i.cm
  %i.co = add i32 %i.al, %i.cn                    ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0) ; 2 uses
  %i.cp = add i32 %i.co, %i.d
  %smin2 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.cp)
  %i.cq = sub i32 %smin2, %smax
  %i.cr = tail call i32 @llvm.umax.i32(i32 %i.cq, i32 1)
  %umax = zext i32 %i.cr to i64                   ; 4 uses
  %i.cs = add i32 %i.bm, %i.cl
  %i.ct = mul i32 %i.d, %i.cs
  %i.cu = add i32 %i.al, %i.ct                    ; 2 uses
  %smax4 = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0) ; 2 uses
  %i.cv = add i32 %i.cu, %i.d
  %smin5 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.cv)
  %i.cw = sub i32 %smin5, %smax4
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = tail call i64 @llvm.usub.sat.i64(i64 %i.cx, i64 1) ; 2 uses
  %i.cz = mul nsw i64 %i.cy, %i.av                ; 2 uses
  %i.da = mul i32 %i.l, %smax4
  %i.db = add i32 %smax, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr i8, ptr %i.m, i64 %i.cz
  %i.de = getelementptr i8, ptr %i.dd, i64 %umax
  %scevgep = getelementptr i8, ptr %i.de, i64 %i.dc
  %i.df = sext i32 %i.co to i64                   ; 4 uses
  %smax7 = tail call i64 @llvm.smax.i64(i64 %i.df, i64 0) ; 2 uses
  %umax10 = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.dg = shl nuw nsw i64 %umax10, 1
  %i.dh = add nsw i64 %i.dg, -1
  %i.di = mul nsw i64 %i.dh, %i.aw
  %i.dj = mul nuw nsw i64 %i.bo, %i.cy
  %i.dk = add i64 %i.cz, %umax                    ; 4 uses
  %i.dl = udiv i32 %.0165230, 3
  %i.dm = add i32 %i.bi, %i.dl
  %i.dn = mul i32 %i.d, %i.dm
  %i.do = add i32 %i.al, %i.dn
  %i.dp = sext i32 %i.do to i64                   ; 4 uses
  %.lhs.trunc = trunc nuw nsw i32 %.0165230 to i8 ; 2 uses
  %i.dq = urem i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.dq to i32
  %i.dr = add nsw i32 %1, %.zext                  ; 3 uses
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  %i.dt = udiv i8 %.lhs.trunc, 3
  %.zext204 = zext nneg i8 %i.dt to i32
  %i.du = add i32 %2, %.zext204                   ; 3 uses
  %i.dv = add i32 %i.du, -1                       ; 2 uses
  %i.dw = mul i32 %i.ds, %i.d
  %i.dx = add i32 %i.dw, %i.al                    ; 6 uses
  %i.dy = mul i32 %i.dv, %i.d
  %i.dz = add i32 %i.dy, %i.al                    ; 6 uses
  %i.ea = load i32, ptr %i.q, align 16, !tbaa !107
  %i.eb = load i32, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  %i.ec = shl i32 %i.ea, %i.eb                    ; 3 uses
  %i.ed = load i32, ptr %i.am, align 4, !tbaa !106
  %i.ee = shl i32 %i.ed, %i.eb
  %i.ef = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.eg = mul nsw i32 %i.ec, %i.dv
  %i.eh = add nsw i32 %i.eg, %i.ds
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [10 x i8], ptr %i.ef, i64 %i.ei ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 10 ; 3 uses
  %i.el = sext i32 %i.ec to i64
  %i.em = getelementptr inbounds [10 x i8], ptr %i.ej, i64 %i.el ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 10 ; 3 uses
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 6 uses
  %i.ep = icmp slt i32 %i.dr, 1
  br i1 %i.ep, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i186 = icmp slt i32 %i.dr, %i.ec          ; 2 uses
  %spec.select.i = select i1 %.not.i186, ptr %i.ek, ptr %i.ej
  %spec.select260.i = select i1 %.not.i186, ptr %i.en, ptr %i.em
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0228.i = phi ptr [ %i.ej, %bb.i ], [ %i.ek, %bb.h ] ; 2 uses
  %.0226.i = phi ptr [ %spec.select.i, %bb.i ], [ %i.ek, %bb.h ] ; 2 uses
  %.0224.i = phi ptr [ %i.em, %bb.i ], [ %i.en, %bb.h ] ; 3 uses
  %.0222.i = phi ptr [ %spec.select260.i, %bb.i ], [ %i.en, %bb.h ] ; 3 uses
  %i.eq = icmp slt i32 %i.du, 1
  br i1 %i.eq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not249.i = icmp slt i32 %i.du, %i.ee          ; 2 uses
  %spec.select261.i = select i1 %.not249.i, ptr %.0224.i, ptr %.0228.i
  %spec.select262.i = select i1 %.not249.i, ptr %.0222.i, ptr %.0226.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1229.i = phi ptr [ %.0228.i, %bb.k ], [ %.0224.i, %bb.j ] ; 20 uses
  %.1227.i = phi ptr [ %.0226.i, %bb.k ], [ %.0222.i, %bb.j ] ; 22 uses
  %.1225.i = phi ptr [ %spec.select261.i, %bb.k ], [ %.0224.i, %bb.j ] ; 21 uses
  %.1223.i = phi ptr [ %spec.select262.i, %bb.k ], [ %.0222.i, %bb.j ] ; 20 uses
  %i.er = icmp slt i32 %i.dx, 0                   ; 2 uses
  %i.es = sext i32 %i.dx to i64                   ; 9 uses
  %i.et = sub nsw i64 0, %i.es
  %i.eu = tail call i32 @llvm.smin.i32(i32 %i.dx, i32 0)
  %.0237.i = add nsw i32 %i.eu, %i.d              ; 2 uses
  %.0235.i = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 0) ; 7 uses
  %.0233.i.idx = select i1 %i.er, i64 %i.et, i64 0
  %.0233.i = getelementptr i8, ptr %i.g, i64 %.0233.i.idx
  %i.ev = add nsw i32 %.0237.i, %.0235.i
  %i.ew = icmp sgt i32 %i.ev, %i.t
  %i.ex = sub nsw i32 %i.t, %.0235.i
  %spec.select264.i = select i1 %i.ew, i32 %i.ex, i32 %.0237.i ; 6 uses
  %i.ey = icmp slt i32 %i.dz, 0                   ; 2 uses
  %i.ez = mul nsw i32 %i.dz, %i.h
  %i.fa = sext i32 %i.ez to i64
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 0)
  %.0239.i = add nsw i32 %i.fc, %i.d              ; 2 uses
  %.0236.i = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 0) ; 7 uses
  %.1234.i.idx = select i1 %i.ey, i64 %i.fb, i64 0 ; 3 uses
  %.1234.i = getelementptr i8, ptr %.0233.i, i64 %.1234.i.idx ; 2 uses
  %i.fd = add nsw i32 %.0239.i, %.0236.i
  %i.fe = icmp sgt i32 %i.fd, %i.v
  %i.ff = sub nsw i32 %i.v, %.0236.i
  %spec.select265.i = select i1 %i.fe, i32 %i.ff, i32 %.0239.i ; 6 uses
  %i.fg = icmp slt i32 %spec.select264.i, 1
  %i.fh = icmp slt i32 %spec.select265.i, 1
  %or.cond5.i = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %or.cond5.i, label %add_yblock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fi = mul i32 %.0236.i, %i.l
  %i.fj = add i32 %i.fi, %.0235.i
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr i8, ptr %i.m, i64 %i.fk   ; 4 uses
  %i.fm = getelementptr inbounds i8, ptr %i.eo, i64 %i.at ; 12 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.au ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.fm, ptr noundef %i.eo, i64 noundef %i.av, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select264.i, i32 noundef %spec.select265.i, ptr noundef %.1229.i, i32 noundef 0, i32 noundef %i.t, i32 noundef %i.v) #12
  %i.fo = getelementptr inbounds nuw i8, ptr %.1229.i, i64 8 ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !136 ; 4 uses
  %i.fq = and i8 %i.fp, 1
  %.not.i294.i = icmp eq i8 %i.fq, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !136 ; 2 uses
  %i.fr = and i8 %.pre, 1
  %.not16.i295.i = icmp eq i8 %i.fr, 0
  %or.cond = select i1 %.not.i294.i, i1 true, i1 %.not16.i295.i
  br i1 %or.cond, label %same_block.exit300.i, label %.split302

.split302:                                        ; preds = %bb.m
  %i.fs = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !86
  %i.fu = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !86
  %i.fw = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !86
  %i.fy = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !86
  %i.ga = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !86
  %i.gc = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !86
  %i.ge = icmp eq i8 %i.ft, %i.fv
  %i.gf = icmp eq i8 %i.fx, %i.fz
  %i.gg = and i1 %i.ge, %i.gf
  %i.gh = icmp eq i8 %i.gb, %i.gd
  %.not18.i296.i = and i1 %i.gg, %i.gh
  br i1 %.not18.i296.i, label %bb.o, label %bb.n

same_block.exit300.i:                             ; preds = %bb.m
  %i.gi = load i16, ptr %.1229.i, align 2, !tbaa !137
  %i.gj = sext i16 %i.gi to i32
  %i.gk = load i16, ptr %.1227.i, align 2, !tbaa !137
  %i.gl = sext i16 %i.gk to i32
  %i.gm = sub nsw i32 %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !138
  %i.gp = sext i16 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !138
  %i.gs = sext i16 %i.gr to i32
  %i.gt = sub nsw i32 %i.gp, %i.gs
  %i.gu = or i32 %i.gt, %i.gm
  %i.gv = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.gw = load i8, ptr %i.gv, align 2, !tbaa !139
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !139
  %i.ha = zext i8 %i.gz to i32
  %i.hb = sub nsw i32 %i.gx, %i.ha
  %i.hc = or i32 %i.gu, %i.hb
  %i.hd = xor i8 %.pre, %i.fp
  %i.he = and i8 %i.hd, 1
  %i.hf = zext nneg i8 %i.he to i32
  %i.hg = or i32 %i.hc, %i.hf
  %.not17.i299.i = icmp eq i32 %i.hg, 0
  br i1 %.not17.i299.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split302, %same_block.exit300.i
  %i.hh = getelementptr inbounds i8, ptr %i.fn, i64 %i.au
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.fn, ptr noundef %i.eo, i64 noundef %i.av, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select264.i, i32 noundef %spec.select265.i, ptr noundef nonnull %.1227.i, i32 noundef 0, i32 noundef %i.t, i32 noundef %i.v) #12
  %.pre258 = load i8, ptr %i.fo, align 2, !tbaa !136
  br label %bb.o

bb.o:                                             ; preds = %.split302, %same_block.exit300.i, %bb.n
  %i.hi = phi i8 [ %.pre258, %bb.n ], [ %i.fp, %same_block.exit300.i ], [ %i.fp, %.split302 ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.fn, %bb.n ], [ %i.fm, %same_block.exit300.i ], [ %i.fm, %.split302 ] ; 9 uses
  %.0221.i = phi ptr [ %i.hh, %bb.n ], [ %i.fn, %same_block.exit300.i ], [ %i.fn, %.split302 ] ; 7 uses
  %i.hj = and i8 %i.hi, 1
  %.not.i287.i = icmp eq i8 %i.hj, 0
  %.phi.trans.insert260 = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %.pre261 = load i8, ptr %.phi.trans.insert260, align 2, !tbaa !136 ; 4 uses
  %i.hk = and i8 %.pre261, 1
  %.not16.i288.i = icmp eq i8 %i.hk, 0
  %or.cond309 = select i1 %.not.i287.i, i1 true, i1 %.not16.i288.i
  br i1 %or.cond309, label %same_block.exit293.i, label %.split303

.split303:                                        ; preds = %bb.o
  %i.hl = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !86
  %i.hn = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !86
  %i.hp = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !86
  %i.hr = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !86
  %i.ht = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !86
  %i.hv = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !86
  %i.hx = icmp eq i8 %i.hm, %i.ho
  %i.hy = icmp eq i8 %i.hq, %i.hs
end_hunk_5
