Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@inflate:bb.a
  store i32 %i.vo, ptr %i.ar, align 4, !tbaa !80
  %i.vp = zext i32 %.lcssa199519982000 to i64
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.vp
  store i16 %.sroa.42.0.copyload.le, ptr %i.vq, align 2, !tbaa !97
  br label %bb.fc

bb.eu:                                            ; preds = %._crit_edge1955
  switch i16 %.sroa.42.0.copyload.le, label %.preheader1276 [
    i16 16, label %.preheader1278
    i16 17, label %.preheader1280
  ]

.preheader1280:                                   ; preds = %bb.eu
  %i.vr = add nuw nsw i32 %.lcssa1945, 3          ; 2 uses
  %i.vs = icmp ult i32 %.30.lcssa, %i.vr
  br i1 %i.vs, label %.lr.ph1968.preheader, label %._crit_edge1969

.lr.ph1968.preheader:                             ; preds = %.preheader1280
  %i.vt = zext nneg i32 %.30.lcssa to i64
  %i.vu = zext nneg i32 %i.vr to i64
  br label %.lr.ph1968

.preheader1278:                                   ; preds = %bb.eu
  %i.vv = add nuw nsw i32 %.lcssa1945, 2          ; 2 uses
  %i.vw = icmp ult i32 %.30.lcssa, %i.vv
  br i1 %i.vw, label %.lr.ph1978.preheader, label %._crit_edge1979

.lr.ph1978.preheader:                             ; preds = %.preheader1278
  %i.vx = zext nneg i32 %.30.lcssa to i64
  %i.vy = zext nneg i32 %i.vv to i64
  br label %.lr.ph1978

.preheader1276:                                   ; preds = %bb.eu
  %i.vz = add nuw nsw i32 %.lcssa1945, 7          ; 2 uses
  %i.wa = icmp ult i32 %.30.lcssa, %i.vz
  br i1 %i.wa, label %.lr.ph1988.preheader, label %._crit_edge1989

.lr.ph1988.preheader:                             ; preds = %.preheader1276
  %i.wb = zext nneg i32 %.30.lcssa to i64
  %i.wc = zext nneg i32 %i.vz to i64
  br label %.lr.ph1988

.lr.ph1978:                                       ; preds = %.lr.ph1978.preheader, %bb.ev
  %indvars.iv2800 = phi i64 [ %i.vx, %.lr.ph1978.preheader ], [ %indvars.iv.next2801, %bb.ev ] ; 3 uses
  %.319601976 = phi i64 [ %.30959.lcssa, %.lr.ph1978.preheader ], [ %i.wj, %bb.ev ] ; 2 uses
  %.3510271975 = phi i32 [ %.341026.lcssa, %.lr.ph1978.preheader ], [ %i.we, %bb.ev ] ; 2 uses
  %.3510911974 = phi ptr [ %.341090.lcssa, %.lr.ph1978.preheader ], [ %i.wf, %bb.ev ] ; 3 uses
  %i.wd = icmp eq i32 %.3510271975, 0
  br i1 %i.wd, label %.loopexit1277.loopexit2341, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph1978
  %i.we = add i32 %.3510271975, -1                ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.3510911974, i64 1 ; 2 uses
  %i.wg = load i8, ptr %.3510911974, align 1, !tbaa !45
  %i.wh = zext i8 %i.wg to i64
  %i.wi = shl i64 %i.wh, %indvars.iv2800
  %i.wj = add i64 %i.wi, %.319601976              ; 2 uses
  %indvars.iv.next2801 = add nuw nsw i64 %indvars.iv2800, 8 ; 3 uses
  %i.wk = icmp samesign ult i64 %indvars.iv.next2801, %i.vy
  br i1 %i.wk, label %.lr.ph1978, label %._crit_edge1979.loopexit, !llvm.loop !63

._crit_edge1979.loopexit:                         ; preds = %bb.ev
  %i.wl = trunc nuw nsw i64 %indvars.iv.next2801 to i32
  br label %._crit_edge1979

._crit_edge1979:                                  ; preds = %._crit_edge1979.loopexit, %.preheader1278
  %.351091.lcssa = phi ptr [ %.341090.lcssa, %.preheader1278 ], [ %i.wf, %._crit_edge1979.loopexit ] ; 2 uses
  %.351027.lcssa = phi i32 [ %.341026.lcssa, %.preheader1278 ], [ %i.we, %._crit_edge1979.loopexit ] ; 2 uses
  %.31960.lcssa = phi i64 [ %.30959.lcssa, %.preheader1278 ], [ %i.wj, %._crit_edge1979.loopexit ]
  %.31.lcssa = phi i32 [ %.30.lcssa, %.preheader1278 ], [ %i.wl, %._crit_edge1979.loopexit ]
  %i.wm = zext nneg i8 %.sroa.1867.0.copyload.lcssa to i64
  %i.wn = lshr i64 %.31960.lcssa, %i.wm           ; 3 uses
  %i.wo = sub nuw i32 %.31.lcssa, %.lcssa1945     ; 2 uses
  %i.wp = icmp eq i32 %.lcssa199519982000, 0
  br i1 %i.wp, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %._crit_edge1979
  store ptr @.str.10, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ex:                                            ; preds = %._crit_edge1979
  %i.wq = add i32 %.lcssa199519982000, -1
  %i.wr = zext i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.wr
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !97
  %i.wu = trunc i64 %i.wn to i32
  %i.wv = and i32 %i.wu, 3
  %i.ww = add nuw nsw i32 %i.wv, 3
  %i.wx = lshr i64 %i.wn, 2
  %i.wy = add i32 %i.wo, -2
  br label %bb.fa

.lr.ph1968:                                       ; preds = %.lr.ph1968.preheader, %bb.ey
  %indvars.iv2797 = phi i64 [ %i.vt, %.lr.ph1968.preheader ], [ %indvars.iv.next2798, %bb.ey ] ; 3 uses
  %.329611966 = phi i64 [ %.30959.lcssa, %.lr.ph1968.preheader ], [ %i.xf, %bb.ey ] ; 2 uses
  %.3610281965 = phi i32 [ %.341026.lcssa, %.lr.ph1968.preheader ], [ %i.xa, %bb.ey ] ; 2 uses
  %.3610921964 = phi ptr [ %.341090.lcssa, %.lr.ph1968.preheader ], [ %i.xb, %bb.ey ] ; 3 uses
  %i.wz = icmp eq i32 %.3610281965, 0
  br i1 %i.wz, label %.loopexit1277.loopexit2342, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph1968
  %i.xa = add i32 %.3610281965, -1                ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.3610921964, i64 1 ; 2 uses
  %i.xc = load i8, ptr %.3610921964, align 1, !tbaa !45
  %i.xd = zext i8 %i.xc to i64
  %i.xe = shl i64 %i.xd, %indvars.iv2797
  %i.xf = add i64 %i.xe, %.329611966              ; 2 uses
  %indvars.iv.next2798 = add nuw nsw i64 %indvars.iv2797, 8 ; 3 uses
  %i.xg = icmp samesign ult i64 %indvars.iv.next2798, %i.vu
  br i1 %i.xg, label %.lr.ph1968, label %._crit_edge1969.loopexit, !llvm.loop !64

._crit_edge1969.loopexit:                         ; preds = %bb.ey
  %i.xh = trunc nuw nsw i64 %indvars.iv.next2798 to i32
  br label %._crit_edge1969

._crit_edge1969:                                  ; preds = %._crit_edge1969.loopexit, %.preheader1280
  %.361092.lcssa = phi ptr [ %.341090.lcssa, %.preheader1280 ], [ %i.xb, %._crit_edge1969.loopexit ]
  %.361028.lcssa = phi i32 [ %.341026.lcssa, %.preheader1280 ], [ %i.xa, %._crit_edge1969.loopexit ]
  %.32961.lcssa = phi i64 [ %.30959.lcssa, %.preheader1280 ], [ %i.xf, %._crit_edge1969.loopexit ]
  %.32.lcssa = phi i32 [ %.30.lcssa, %.preheader1280 ], [ %i.xh, %._crit_edge1969.loopexit ]
  %i.xi = zext nneg i8 %.sroa.1867.0.copyload.lcssa to i64
  %i.xj = lshr i64 %.32961.lcssa, %i.xi           ; 2 uses
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = and i32 %i.xk, 7
  %i.xm = add nuw nsw i32 %i.xl, 3
  %i.xn = lshr i64 %i.xj, 3
  %reass.sub = sub i32 %.32.lcssa, %.lcssa1945
  %i.xo = add i32 %reass.sub, -3
  br label %bb.fa

.lr.ph1988:                                       ; preds = %.lr.ph1988.preheader, %bb.ez
  %indvars.iv2803 = phi i64 [ %i.wb, %.lr.ph1988.preheader ], [ %indvars.iv.next2804, %bb.ez ] ; 3 uses
  %.339621986 = phi i64 [ %.30959.lcssa, %.lr.ph1988.preheader ], [ %i.xv, %bb.ez ] ; 2 uses
  %.3710291985 = phi i32 [ %.341026.lcssa, %.lr.ph1988.preheader ], [ %i.xq, %bb.ez ] ; 2 uses
  %.3710931984 = phi ptr [ %.341090.lcssa, %.lr.ph1988.preheader ], [ %i.xr, %bb.ez ] ; 3 uses
  %i.xp = icmp eq i32 %.3710291985, 0
  br i1 %i.xp, label %.loopexit1277.loopexit, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph1988
  %i.xq = add i32 %.3710291985, -1                ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.3710931984, i64 1 ; 2 uses
  %i.xs = load i8, ptr %.3710931984, align 1, !tbaa !45
  %i.xt = zext i8 %i.xs to i64
  %i.xu = shl i64 %i.xt, %indvars.iv2803
  %i.xv = add i64 %i.xu, %.339621986              ; 2 uses
  %indvars.iv.next2804 = add nuw nsw i64 %indvars.iv2803, 8 ; 3 uses
  %i.xw = icmp samesign ult i64 %indvars.iv.next2804, %i.wc
  br i1 %i.xw, label %.lr.ph1988, label %._crit_edge1989.loopexit, !llvm.loop !65

._crit_edge1989.loopexit:                         ; preds = %bb.ez
  %i.xx = trunc nuw nsw i64 %indvars.iv.next2804 to i32
  br label %._crit_edge1989

._crit_edge1989:                                  ; preds = %._crit_edge1989.loopexit, %.preheader1276
  %.371093.lcssa = phi ptr [ %.341090.lcssa, %.preheader1276 ], [ %i.xr, %._crit_edge1989.loopexit ]
  %.371029.lcssa = phi i32 [ %.341026.lcssa, %.preheader1276 ], [ %i.xq, %._crit_edge1989.loopexit ]
  %.33962.lcssa = phi i64 [ %.30959.lcssa, %.preheader1276 ], [ %i.xv, %._crit_edge1989.loopexit ]
  %.33.lcssa = phi i32 [ %.30.lcssa, %.preheader1276 ], [ %i.xx, %._crit_edge1989.loopexit ]
  %i.xy = zext nneg i8 %.sroa.1867.0.copyload.lcssa to i64
  %i.xz = lshr i64 %.33962.lcssa, %i.xy           ; 2 uses
  %i.ya = trunc i64 %i.xz to i32
  %i.yb = and i32 %i.ya, 127
  %i.yc = add nuw nsw i32 %i.yb, 11
  %i.yd = lshr i64 %i.xz, 7
  %reass.sub2340 = sub i32 %.33.lcssa, %.lcssa1945
  %i.ye = add i32 %reass.sub2340, -7
  br label %bb.fa

bb.fa:                                            ; preds = %._crit_edge1969, %._crit_edge1989, %bb.ex
  %.381094 = phi ptr [ %.351091.lcssa, %bb.ex ], [ %.361092.lcssa, %._crit_edge1969 ], [ %.371093.lcssa, %._crit_edge1989 ] ; 2 uses
  %.381030 = phi i32 [ %.351027.lcssa, %bb.ex ], [ %.361028.lcssa, %._crit_edge1969 ], [ %.371029.lcssa, %._crit_edge1989 ] ; 2 uses
  %.34963 = phi i64 [ %i.wx, %bb.ex ], [ %i.xn, %._crit_edge1969 ], [ %i.yd, %._crit_edge1989 ] ; 2 uses
  %.34 = phi i32 [ %i.wy, %bb.ex ], [ %i.xo, %._crit_edge1969 ], [ %i.ye, %._crit_edge1989 ] ; 2 uses
  %.5907 = phi i32 [ %i.ww, %bb.ex ], [ %i.xm, %._crit_edge1969 ], [ %i.yc, %._crit_edge1989 ] ; 12 uses
  %.0898 = phi i16 [ %i.wt, %bb.ex ], [ 0, %._crit_edge1969 ], [ 0, %._crit_edge1989 ] ; 7 uses
  %i.yf = add i32 %.5907, %.lcssa199519982000
  %i.yg = icmp ugt i32 %i.yf, %i.ui
  br i1 %i.yg, label %bb.fb, label %iter.check3981

iter.check3981:                                   ; preds = %bb.fa
  %min.iters.check3969 = icmp ult i32 %.5907, 4
  %i.yh = sub nsw i32 0, %.5907
  %i.yi = icmp ugt i32 %.lcssa199519982000, %i.yh
  %or.cond3998 = select i1 %min.iters.check3969, i1 true, i1 %i.yi
  br i1 %or.cond3998, label %.preheader.preheader, label %vector.main.loop.iter.check3970

vector.main.loop.iter.check3970:                  ; preds = %iter.check3981
  %min.iters.check3971 = icmp ult i32 %.5907, 16
  br i1 %min.iters.check3971, label %vec.epilog.ph3985, label %vector.ph3972

vector.ph3972:                                    ; preds = %vector.main.loop.iter.check3970
  %i.yj = and i32 %.5907, 12
  %n.vec3973 = and i32 %.5907, -16                ; 4 uses
  %i.yk = and i32 %.5907, 15
  %i.yl = add i32 %.lcssa199519982000, %n.vec3973 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0898, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body3974

vector.body3974:                                  ; preds = %vector.body3974, %vector.ph3972
  %index3975 = phi i32 [ 0, %vector.ph3972 ], [ %index.next3976, %vector.body3974 ] ; 2 uses
  %i.ym = add i32 %.lcssa199519982000, %index3975
  %i.yn = zext i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.yn ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.yo, align 2, !tbaa !97
  store <8 x i16> %broadcast.splat, ptr %i.yp, align 2, !tbaa !97
  %index.next3976 = add nuw i32 %index3975, 16    ; 2 uses
  %i.yq = icmp eq i32 %index.next3976, %n.vec3973
  br i1 %i.yq, label %middle.block3977, label %vector.body3974, !llvm.loop !66

middle.block3977:                                 ; preds = %vector.body3974
  %cmp.n3978 = icmp eq i32 %.5907, %n.vec3973
  br i1 %cmp.n3978, label %.loopexit, label %vec.epilog.iter.check3983

vec.epilog.iter.check3983:                        ; preds = %middle.block3977
  %min.epilog.iters.check3984 = icmp eq i32 %i.yj, 0
  br i1 %min.epilog.iters.check3984, label %.preheader.preheader, label %vec.epilog.ph3985, !prof !101

vec.epilog.ph3985:                                ; preds = %vector.main.loop.iter.check3970, %vec.epilog.iter.check3983
  %vec.epilog.resume.val3979 = phi i32 [ %n.vec3973, %vec.epilog.iter.check3983 ], [ 0, %vector.main.loop.iter.check3970 ]
  %n.vec3986 = and i32 %.5907, -4                 ; 3 uses
  %i.yr = and i32 %.5907, 3
  %i.ys = add i32 %.lcssa199519982000, %n.vec3986 ; 2 uses
  %broadcast.splatinsert3987 = insertelement <4 x i16> poison, i16 %.0898, i64 0
  %broadcast.splat3988 = shufflevector <4 x i16> %broadcast.splatinsert3987, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3989

vec.epilog.vector.body3989:                       ; preds = %vec.epilog.vector.body3989, %vec.epilog.ph3985
  %index3990 = phi i32 [ %vec.epilog.resume.val3979, %vec.epilog.ph3985 ], [ %index.next3991, %vec.epilog.vector.body3989 ] ; 2 uses
  %i.yt = add i32 %.lcssa199519982000, %index3990
  %i.yu = zext i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.yu
  store <4 x i16> %broadcast.splat3988, ptr %i.yv, align 2, !tbaa !97
  %index.next3991 = add nuw i32 %index3990, 4     ; 2 uses
  %i.yw = icmp eq i32 %index.next3991, %n.vec3986
  br i1 %i.yw, label %vec.epilog.middle.block3992, label %vec.epilog.vector.body3989, !llvm.loop !67

vec.epilog.middle.block3992:                      ; preds = %vec.epilog.vector.body3989
  %cmp.n3993 = icmp eq i32 %.5907, %n.vec3986
  br i1 %cmp.n3993, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check3981, %vec.epilog.iter.check3983, %vec.epilog.middle.block3992
  %.69081996.ph = phi i32 [ %.5907, %iter.check3981 ], [ %i.yk, %vec.epilog.iter.check3983 ], [ %i.yr, %vec.epilog.middle.block3992 ] ; 4 uses
  %.ph = phi i32 [ %.lcssa199519982000, %iter.check3981 ], [ %i.yl, %vec.epilog.iter.check3983 ], [ %i.ys, %vec.epilog.middle.block3992 ] ; 2 uses
  %i.yx = add nsw i32 %.69081996.ph, -1
  %xtraiter = and i32 %.69081996.ph, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.69081996.prol = phi i32 [ %i.yz, %.preheader.prol ], [ %.69081996.ph, %.preheader.preheader ]
  %i.yy = phi i32 [ %i.za, %.preheader.prol ], [ %.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.yz = add i32 %.69081996.prol, -1             ; 2 uses
  %i.za = add i32 %i.yy, 1                        ; 3 uses
  %i.zb = zext i32 %i.yy to i64
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.zb
  store i16 %.0898, ptr %i.zc, align 2, !tbaa !97
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !68

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa4061.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.za, %.preheader.prol ]
  %.69081996.unr = phi i32 [ %.69081996.ph, %.preheader.preheader ], [ %i.yz, %.preheader.prol ]
  %.unr = phi i32 [ %.ph, %.preheader.preheader ], [ %i.za, %.preheader.prol ]
  %i.zd = icmp ult i32 %i.yx, 3
  br i1 %i.zd, label %.loopexit, label %.preheader

bb.fb:                                            ; preds = %bb.fa
  store ptr @.str.10, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.69081996 = phi i32 [ %i.zo, %.preheader ], [ %.69081996.unr, %.preheader.prol.loopexit ]
  %i.ze = phi i32 [ %i.zp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.zf = add i32 %i.ze, 1
  %i.zg = zext i32 %i.ze to i64
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.zg
  store i16 %.0898, ptr %i.zh, align 2, !tbaa !97
  %i.zi = add i32 %i.ze, 2
  %i.zj = zext i32 %i.zf to i64
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.zj
  store i16 %.0898, ptr %i.zk, align 2, !tbaa !97
  %i.zl = add i32 %i.ze, 3
  %i.zm = zext i32 %i.zi to i64
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.zm
  store i16 %.0898, ptr %i.zn, align 2, !tbaa !97
  %i.zo = add i32 %.69081996, -4                  ; 2 uses
  %i.zp = add i32 %i.ze, 4                        ; 2 uses
  %i.zq = zext i32 %i.zl to i64
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.zq
  store i16 %.0898, ptr %i.zr, align 2, !tbaa !97
  %.not1185.3 = icmp eq i32 %i.zo, 0
  br i1 %.not1185.3, label %.loopexit, label %.preheader, !llvm.loop !69

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %vec.epilog.middle.block3992, %middle.block3977
  %.lcssa3451 = phi i32 [ %i.ys, %vec.epilog.middle.block3992 ], [ %i.yl, %middle.block3977 ], [ %.lcssa4061.unr, %.preheader.prol.loopexit ], [ %i.zp, %.preheader ] ; 2 uses
  store i32 %.lcssa3451, ptr %i.ar, align 4, !tbaa !80
  br label %bb.fc

bb.fc:                                            ; preds = %.loopexit, %bb.et
  %.lcssa19951999 = phi i32 [ %i.vo, %bb.et ], [ %.lcssa3451, %.loopexit ] ; 2 uses
  %.391095 = phi ptr [ %.341090.lcssa, %bb.et ], [ %.381094, %.loopexit ] ; 2 uses
  %.391031 = phi i32 [ %.341026.lcssa, %bb.et ], [ %.381030, %.loopexit ] ; 2 uses
  %.35964 = phi i64 [ %i.vm, %bb.et ], [ %.34963, %.loopexit ] ; 2 uses
  %.35 = phi i32 [ %i.vn, %bb.et ], [ %.34, %.loopexit ] ; 2 uses
  %i.zs = icmp ult i32 %.lcssa19951999, %i.ui
  br i1 %i.zs, label %.preheader1282, label %._crit_edge2005, !llvm.loop !70

._crit_edge2005:                                  ; preds = %bb.fc, %bb.er
  %.331089.lcssa = phi ptr [ %.321088, %bb.er ], [ %.391095, %bb.fc ] ; 5 uses
  %.331025.lcssa = phi i32 [ %.321024, %bb.er ], [ %.391031, %bb.fc ] ; 5 uses
  %.29958.lcssa = phi i64 [ %.28957, %bb.er ], [ %.35964, %bb.fc ] ; 5 uses
  %.29.lcssa = phi i32 [ %.28, %bb.er ], [ %.35, %bb.fc ] ; 5 uses
  %i.zt = load i16, ptr %i.az, align 8, !tbaa !97
  %i.zu = icmp eq i16 %i.zt, 0
  br i1 %i.zu, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %._crit_edge2005
  store ptr @.str.11, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.fe:                                            ; preds = %._crit_edge2005
  store ptr %i.at, ptr %i.au, align 8, !tbaa !34
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !36
  store i32 9, ptr %i.ax, align 8, !tbaa !98
  %i.zv = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %i.as, i32 noundef %i.ug, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay) #9 ; 2 uses
  %.not1186 = icmp eq i32 %i.zv, 0
  br i1 %.not1186, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store ptr @.str.12, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.fg:                                            ; preds = %bb.fe
  %i.zw = load ptr, ptr %i.au, align 8, !tbaa !34
  store ptr %i.zw, ptr %i.av, align 8, !tbaa !35
  store i32 6, ptr %i.ba, align 4, !tbaa !102
  %i.zx = load i32, ptr %i.ao, align 4, !tbaa !93
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.zy
  %i.aaa = load i32, ptr %i.ap, align 8, !tbaa !94
  %i.aab = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %i.zz, i32 noundef %i.aaa, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay) #9 ; 2 uses
  %.not1187 = icmp eq i32 %i.aab, 0
  br i1 %.not1187, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  store ptr @.str.13, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.fi:                                            ; preds = %bb.fg
  store i32 16199, ptr %i.m, align 8, !tbaa !21
  br i1 %i.bb, label %.loopexit1277, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.k
  %.411097 = phi ptr [ %.331089.lcssa, %bb.fi ], [ %.01056, %bb.k ]
  %.411033 = phi i32 [ %.331025.lcssa, %bb.fi ], [ %.0992, %bb.k ]
  %.37966 = phi i64 [ %.29958.lcssa, %bb.fi ], [ %.0929, %bb.k ]
  %.37 = phi i32 [ %.29.lcssa, %bb.fi ], [ %.0918, %bb.k ]
  %.2 = phi i32 [ 0, %bb.fi ], [ %.0, %bb.k ]
  store i32 16200, ptr %i.m, align 8, !tbaa !21
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.k
  %.421098 = phi ptr [ %.411097, %bb.fj ], [ %.01056, %bb.k ] ; 4 uses
  %.421034 = phi i32 [ %.411033, %bb.fj ], [ %.0992, %bb.k ] ; 7 uses
  %.38967 = phi i64 [ %.37966, %bb.fj ], [ %.0929, %bb.k ] ; 5 uses
  %.38 = phi i32 [ %.37, %bb.fj ], [ %.0918, %bb.k ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.fj ], [ %.0, %bb.k ]   ; 8 uses
  %i.aac = icmp ugt i32 %.421034, 5
  %i.aad = icmp ugt i32 %.0990, 257
  %or.cond5 = select i1 %i.aac, i1 %i.aad, i1 false
  br i1 %or.cond5, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  store ptr %.01053, ptr %i.p, align 8, !tbaa !77
  store i32 %.0990, ptr %i.y, align 8, !tbaa !78
  store ptr %.421098, ptr %0, align 8, !tbaa !47
  store i32 %.421034, ptr %i.aa, align 8, !tbaa !48
  store i64 %.38967, ptr %i.ac, align 8, !tbaa !32
  store i32 %.38, ptr %i.ae, align 8, !tbaa !33
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %.0912) #9
  %i.aae = load ptr, ptr %i.p, align 8, !tbaa !77 ; 2 uses
  %i.aaf = load i32, ptr %i.y, align 8, !tbaa !78 ; 2 uses
  %i.aag = load ptr, ptr %0, align 8, !tbaa !47   ; 2 uses
  %i.aah = load i32, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.aai = load i64, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.aaj = load i32, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.aak = load i32, ptr %i.m, align 8, !tbaa !21
  %i.aal = icmp eq i32 %i.aak, 16191
  br i1 %i.aal, label %bb.fm, label %.thread

bb.fm:                                            ; preds = %bb.fl
  store i32 -1, ptr %i.bc, align 4, !tbaa !38
end_hunk_0
begin_hunk_1_@inflate:bb.a
  %.sroa.054.0.copyload66 = load i8, ptr %.lcssa1448, align 2, !tbaa !45
  %i.agh = zext nneg i8 %.sroa.1867.0.copyload73.lcssa to i64
  %i.agi = lshr i64 %.47976.lcssa, %i.agh
  %i.agj = sub nuw i32 %.47.lcssa, %.lcssa1435
  %i.agk = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.agl = add nsw i32 %i.agk, %.lcssa1435
  br label %bb.gc

bb.gc:                                            ; preds = %._crit_edge2066._crit_edge, %._crit_edge2084
  %i.agm = phi i32 [ %i.agl, %._crit_edge2084 ], [ %.pre2865, %._crit_edge2066._crit_edge ]
  %.521108 = phi ptr [ %.511107.lcssa, %._crit_edge2084 ], [ %.501106.lcssa, %._crit_edge2066._crit_edge ] ; 2 uses
  %.521044 = phi i32 [ %.511043.lcssa, %._crit_edge2084 ], [ %.501042.lcssa, %._crit_edge2066._crit_edge ] ; 2 uses
  %.48977 = phi i64 [ %i.agi, %._crit_edge2084 ], [ %.46975.lcssa, %._crit_edge2066._crit_edge ]
  %.48 = phi i32 [ %i.agj, %._crit_edge2084 ], [ %.46.lcssa, %._crit_edge2066._crit_edge ]
  %.sroa.42.1 = phi i16 [ %.sroa.42.0.copyload104, %._crit_edge2084 ], [ %.sroa.42.0.copyload102.le, %._crit_edge2066._crit_edge ]
  %.sroa.1867.1 = phi i8 [ %.sroa.1867.0.copyload75.lcssa, %._crit_edge2084 ], [ %.sroa.1867.0.copyload73.lcssa, %._crit_edge2066._crit_edge ] ; 2 uses
  %.sroa.054.1 = phi i8 [ %.sroa.054.0.copyload66, %._crit_edge2084 ], [ %.sroa.054.0.copyload65, %._crit_edge2066._crit_edge ]
  %i.agn = zext i8 %.sroa.1867.1 to i32           ; 2 uses
  %i.ago = zext nneg i8 %.sroa.1867.1 to i64
  %i.agp = lshr i64 %.48977, %i.ago               ; 2 uses
  %i.agq = sub i32 %.48, %i.agn                   ; 2 uses
  %i.agr = add nsw i32 %i.agm, %i.agn
  store i32 %i.agr, ptr %i.bc, align 4, !tbaa !38
  %i.ags = zext i8 %.sroa.054.1 to i32            ; 2 uses
  %i.agt = and i32 %i.ags, 64
  %.not1201 = icmp eq i32 %i.agt, 0
  br i1 %.not1201, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  store ptr @.str.15, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ge:                                            ; preds = %bb.gc
  %i.agu = zext i16 %.sroa.42.1 to i32
  store i32 %i.agu, ptr %i.bf, align 8, !tbaa !103
  %i.agv = and i32 %i.ags, 15                     ; 2 uses
  store i32 %i.agv, ptr %i.bd, align 4, !tbaa !79
  store i32 16203, ptr %i.m, align 8, !tbaa !21
  br label %bb.gf

bb.gf:                                            ; preds = %._crit_edge2866, %bb.ge
  %i.agw = phi i32 [ %i.agv, %bb.ge ], [ %.pre2867, %._crit_edge2866 ] ; 7 uses
  %.531109 = phi ptr [ %.521108, %bb.ge ], [ %.01056, %._crit_edge2866 ] ; 4 uses
  %.531045 = phi i32 [ %.521044, %bb.ge ], [ %.0992, %._crit_edge2866 ] ; 6 uses
  %.49978 = phi i64 [ %i.agp, %bb.ge ], [ %.0929, %._crit_edge2866 ] ; 4 uses
  %.49 = phi i32 [ %i.agq, %bb.ge ], [ %.0918, %._crit_edge2866 ] ; 5 uses
  %.6 = phi i32 [ %.5, %bb.ge ], [ %.0, %._crit_edge2866 ] ; 2 uses
  %.not1202 = icmp eq i32 %i.agw, 0
  br i1 %.not1202, label %bb.gg, label %.preheader1303

.preheader1303:                                   ; preds = %bb.gf
  %i.agx = icmp ult i32 %.49, %i.agw
  br i1 %i.agx, label %.lr.ph2095.preheader, label %._crit_edge2096

.lr.ph2095.preheader:                             ; preds = %.preheader1303
  %i.agy = icmp eq i32 %.531045, 0
  br i1 %i.agy, label %.loopexit1277.loopexit2983, label %.lr.ph3935

.lr.ph2095:                                       ; preds = %.lr.ph3935
  %i.agz = icmp eq i32 %i.aha, 0
  br i1 %i.agz, label %.loopexit1277.loopexit2983, label %.lr.ph3935, !llvm.loop !72

.lr.ph3935:                                       ; preds = %.lr.ph2095.preheader, %.lr.ph2095
  %.54111020913934 = phi ptr [ %i.ahb, %.lr.ph2095 ], [ %.531109, %.lr.ph2095.preheader ] ; 2 uses
  %.54104620923933 = phi i32 [ %i.aha, %.lr.ph2095 ], [ %.531045, %.lr.ph2095.preheader ]
  %.5097920933932 = phi i64 [ %i.ahg, %.lr.ph2095 ], [ %.49978, %.lr.ph2095.preheader ]
  %.5020943931 = phi i32 [ %i.ahh, %.lr.ph2095 ], [ %.49, %.lr.ph2095.preheader ] ; 2 uses
  %i.aha = add i32 %.54104620923933, -1           ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.54111020913934, i64 1 ; 2 uses
  %i.ahc = load i8, ptr %.54111020913934, align 1, !tbaa !45
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = zext nneg i32 %.5020943931 to i64
  %i.ahf = shl i64 %i.ahd, %i.ahe
  %i.ahg = add i64 %i.ahf, %.5097920933932        ; 3 uses
  %i.ahh = add i32 %.5020943931, 8                ; 3 uses
  %i.ahi = icmp ult i32 %i.ahh, %i.agw
  br i1 %i.ahi, label %.lr.ph2095, label %._crit_edge2096, !llvm.loop !72

._crit_edge2096:                                  ; preds = %.lr.ph3935, %.preheader1303
  %.541110.lcssa = phi ptr [ %.531109, %.preheader1303 ], [ %i.ahb, %.lr.ph3935 ]
  %.541046.lcssa = phi i32 [ %.531045, %.preheader1303 ], [ %i.aha, %.lr.ph3935 ]
  %.50979.lcssa = phi i64 [ %.49978, %.preheader1303 ], [ %i.ahg, %.lr.ph3935 ] ; 2 uses
  %.50.lcssa = phi i32 [ %.49, %.preheader1303 ], [ %i.ahh, %.lr.ph3935 ]
  %i.ahj = trunc i64 %.50979.lcssa to i32
  %notmask1203 = shl nsw i32 -1, %i.agw
  %i.ahk = xor i32 %notmask1203, -1
  %i.ahl = and i32 %i.ahj, %i.ahk
  %i.ahm = load i32, ptr %i.bf, align 8, !tbaa !103
  %i.ahn = add i32 %i.ahm, %i.ahl
  store i32 %i.ahn, ptr %i.bf, align 8, !tbaa !103
  %i.aho = zext nneg i32 %i.agw to i64
  %i.ahp = lshr i64 %.50979.lcssa, %i.aho
  %i.ahq = sub nuw i32 %.50.lcssa, %i.agw
  %i.ahr = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.ahs = add i32 %i.ahr, %i.agw
  store i32 %i.ahs, ptr %i.bc, align 4, !tbaa !38
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge2096, %bb.gf
  %.551111 = phi ptr [ %.541110.lcssa, %._crit_edge2096 ], [ %.531109, %bb.gf ]
  %.551047 = phi i32 [ %.541046.lcssa, %._crit_edge2096 ], [ %.531045, %bb.gf ]
  %.51980 = phi i64 [ %i.ahp, %._crit_edge2096 ], [ %.49978, %bb.gf ]
  %.51 = phi i32 [ %i.ahq, %._crit_edge2096 ], [ %.49, %bb.gf ]
  store i32 16204, ptr %i.m, align 8, !tbaa !21
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.k
  %.561112 = phi ptr [ %.551111, %bb.gg ], [ %.01056, %bb.k ] ; 4 uses
  %.561048 = phi i32 [ %.551047, %bb.gg ], [ %.0992, %bb.k ] ; 4 uses
  %.52981 = phi i64 [ %.51980, %bb.gg ], [ %.0929, %bb.k ] ; 4 uses
  %.52 = phi i32 [ %.51, %bb.gg ], [ %.0918, %bb.k ] ; 4 uses
  %.7 = phi i32 [ %.6, %bb.gg ], [ %.0, %bb.k ]   ; 4 uses
  %i.aht = icmp eq i32 %.0990, 0
  br i1 %i.aht, label %.loopexit1277, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ahu = sub i32 %.0912, %.0990                 ; 2 uses
  %i.ahv = load i32, ptr %i.bf, align 8, !tbaa !103 ; 3 uses
  %i.ahw = icmp ugt i32 %i.ahv, %i.ahu
  br i1 %i.ahw, label %bb.gj, label %bb.gq

bb.gj:                                            ; preds = %bb.gi
  %i.ahx = sub nuw i32 %i.ahv, %i.ahu             ; 5 uses
  %i.ahy = load i32, ptr %i.bg, align 8, !tbaa !40
  %i.ahz = icmp ugt i32 %i.ahx, %i.ahy
  br i1 %i.ahz, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %bb.gj
  %i.aia = load i32, ptr %i.bh, align 8, !tbaa !37
  %.not1204 = icmp eq i32 %i.aia, 0
  br i1 %.not1204, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store ptr @.str.16, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.gm:                                            ; preds = %bb.gk, %bb.gj
  %i.aib = load i32, ptr %i.bi, align 4, !tbaa !41 ; 3 uses
  %i.aic = icmp ugt i32 %i.ahx, %i.aib
  br i1 %i.aic, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.aid = sub nuw i32 %i.ahx, %i.aib             ; 2 uses
  %i.aie = load i32, ptr %i.bk, align 4, !tbaa !39
  %i.aif = sub i32 %i.aie, %i.aid
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.aig = sub nuw i32 %i.aib, %i.ahx
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.sink3400 = phi i32 [ %i.aig, %bb.go ], [ %i.aif, %bb.gn ]
  %.7909 = phi i32 [ %i.ahx, %bb.go ], [ %i.aid, %bb.gn ]
  %.sink3398 = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.aih = zext i32 %.sink3400 to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %.sink3398, i64 %i.aih
  %i.aij = load i32, ptr %i.an, align 4, !tbaa !52 ; 2 uses
  %spec.select1262 = call i32 @llvm.umin.i32(i32 %.7909, i32 %i.aij)
  br label %iter.check

bb.gq:                                            ; preds = %bb.gi
  %i.aik = zext i32 %i.ahv to i64
  %i.ail = sub nsw i64 0, %i.aik
  %i.aim = getelementptr inbounds i8, ptr %.01053, i64 %i.ail
  %i.ain = load i32, ptr %i.an, align 4, !tbaa !52 ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %bb.gp, %bb.gq
  %i.aio = phi i32 [ %i.ain, %bb.gq ], [ %i.aij, %bb.gp ]
  %.8910 = phi i32 [ %i.ain, %bb.gq ], [ %spec.select1262, %bb.gp ]
  %.1900 = phi ptr [ %i.aim, %bb.gq ], [ %i.aii, %bb.gp ] ; 6 uses
  %spec.select1263 = call i32 @llvm.umin.i32(i32 %.8910, i32 %.0990) ; 6 uses
  %i.aip = sub i32 %i.aio, %spec.select1263
  store i32 %i.aip, ptr %i.an, align 4, !tbaa !52
  %i.aiq = add i32 %spec.select1263, -1           ; 3 uses
  %i.air = zext i32 %i.aiq to i64
  %i.ais = add nuw nsw i64 %i.air, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aiq, 3
  %.19003953 = ptrtoaddr ptr %.1900 to i64
  %i.ait = sub i64 %.19003953, %.010533952
  %diff.check = icmp ugt i64 %i.ait, -32
  %or.cond3999 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond3999, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3954 = icmp ult i32 %i.aiq, 31
  br i1 %min.iters.check3954, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aiu = and i64 %i.ais, 28
  %n.vec = and i64 %i.ais, 8589934560             ; 6 uses
  %i.aiv = getelementptr i8, ptr %.01053, i64 %n.vec ; 2 uses
  %i.aiw = trunc i64 %n.vec to i32
  %i.aix = sub i32 %spec.select1263, %i.aiw
  %i.aiy = getelementptr i8, ptr %.1900, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.01053, i64 %index ; 2 uses
  %next.gep3955 = getelementptr i8, ptr %.1900, i64 %index ; 2 uses
  %i.aiz = getelementptr i8, ptr %next.gep3955, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep3955, align 1, !tbaa !45
  %wide.load3956 = load <16 x i8>, ptr %i.aiz, align 1, !tbaa !45
  %i.aja = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !45
  store <16 x i8> %wide.load3956, ptr %i.aja, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ajb = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajb, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ais, %n.vec
  br i1 %cmp.n, label %.loopexit3996, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aiu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3959 = and i64 %i.ais, 8589934588         ; 5 uses
  %i.ajc = getelementptr i8, ptr %.01053, i64 %n.vec3959 ; 2 uses
  %i.ajd = trunc i64 %n.vec3959 to i32
  %i.aje = sub i32 %spec.select1263, %i.ajd
  %i.ajf = getelementptr i8, ptr %.1900, i64 %n.vec3959
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3960 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3964, %vec.epilog.vector.body ] ; 3 uses
  %next.gep3961 = getelementptr i8, ptr %.01053, i64 %index3960
  %next.gep3962 = getelementptr i8, ptr %.1900, i64 %index3960
  %wide.load3963 = load <4 x i8>, ptr %next.gep3962, align 1, !tbaa !45
  store <4 x i8> %wide.load3963, ptr %next.gep3961, align 1, !tbaa !45
  %index.next3964 = add nuw i64 %index3960, 4     ; 2 uses
  %i.ajg = icmp eq i64 %index.next3964, %n.vec3959
  br i1 %i.ajg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3965 = icmp eq i64 %i.ais, %n.vec3959
  br i1 %cmp.n3965, label %.loopexit3996, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.11054.ph = phi ptr [ %.01053, %iter.check ], [ %i.aiv, %vec.epilog.iter.check ], [ %i.ajc, %vec.epilog.middle.block ] ; 2 uses
  %.10.ph = phi i32 [ %spec.select1263, %iter.check ], [ %i.aix, %vec.epilog.iter.check ], [ %i.aje, %vec.epilog.middle.block ] ; 4 uses
  %.2901.ph = phi ptr [ %.1900, %iter.check ], [ %i.aiy, %vec.epilog.iter.check ], [ %i.ajf, %vec.epilog.middle.block ] ; 2 uses
  %i.ajh = add i32 %.10.ph, -1
  %xtraiter4598 = and i32 %.10.ph, 7              ; 2 uses
  %lcmp.mod4599.not = icmp eq i32 %xtraiter4598, 0
  br i1 %lcmp.mod4599.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.11054.prol = phi ptr [ %i.ajk, %vec.epilog.scalar.ph.prol ], [ %.11054.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.10.prol = phi i32 [ %i.ajl, %vec.epilog.scalar.ph.prol ], [ %.10.ph, %vec.epilog.scalar.ph.preheader ]
  %.2901.prol = phi ptr [ %i.aji, %vec.epilog.scalar.ph.prol ], [ %.2901.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4600 = phi i32 [ %prol.iter4600.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aji = getelementptr inbounds nuw i8, ptr %.2901.prol, i64 1 ; 2 uses
  %i.ajj = load i8, ptr %.2901.prol, align 1, !tbaa !45
  %i.ajk = getelementptr inbounds nuw i8, ptr %.11054.prol, i64 1 ; 3 uses
  store i8 %i.ajj, ptr %.11054.prol, align 1, !tbaa !45
  %i.ajl = add i32 %.10.prol, -1                  ; 2 uses
  %prol.iter4600.next = add i32 %prol.iter4600, 1 ; 2 uses
  %prol.iter4600.cmp.not = icmp eq i32 %prol.iter4600.next, %xtraiter4598
  br i1 %prol.iter4600.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !75

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa4155.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ajk, %vec.epilog.scalar.ph.prol ]
  %.11054.unr = phi ptr [ %.11054.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ajk, %vec.epilog.scalar.ph.prol ]
  %.10.unr = phi i32 [ %.10.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ajl, %vec.epilog.scalar.ph.prol ]
  %.2901.unr = phi ptr [ %.2901.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aji, %vec.epilog.scalar.ph.prol ]
  %i.ajm = icmp ult i32 %i.ajh, 7
  br i1 %i.ajm, label %.loopexit3996, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.11054 = phi ptr [ %i.akk, %vec.epilog.scalar.ph ], [ %.11054.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.10 = phi i32 [ %i.akl, %vec.epilog.scalar.ph ], [ %.10.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2901 = phi ptr [ %i.aki, %vec.epilog.scalar.ph ], [ %.2901.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.2901, i64 1
  %i.ajo = load i8, ptr %.2901, align 1, !tbaa !45
  %i.ajp = getelementptr inbounds nuw i8, ptr %.11054, i64 1
  store i8 %i.ajo, ptr %.11054, align 1, !tbaa !45
  %i.ajq = getelementptr inbounds nuw i8, ptr %.2901, i64 2
  %i.ajr = load i8, ptr %i.ajn, align 1, !tbaa !45
  %i.ajs = getelementptr inbounds nuw i8, ptr %.11054, i64 2
  store i8 %i.ajr, ptr %i.ajp, align 1, !tbaa !45
  %i.ajt = getelementptr inbounds nuw i8, ptr %.2901, i64 3
  %i.aju = load i8, ptr %i.ajq, align 1, !tbaa !45
  %i.ajv = getelementptr inbounds nuw i8, ptr %.11054, i64 3
  store i8 %i.aju, ptr %i.ajs, align 1, !tbaa !45
  %i.ajw = getelementptr inbounds nuw i8, ptr %.2901, i64 4
  %i.ajx = load i8, ptr %i.ajt, align 1, !tbaa !45
  %i.ajy = getelementptr inbounds nuw i8, ptr %.11054, i64 4
  store i8 %i.ajx, ptr %i.ajv, align 1, !tbaa !45
  %i.ajz = getelementptr inbounds nuw i8, ptr %.2901, i64 5
  %i.aka = load i8, ptr %i.ajw, align 1, !tbaa !45
  %i.akb = getelementptr inbounds nuw i8, ptr %.11054, i64 5
  store i8 %i.aka, ptr %i.ajy, align 1, !tbaa !45
  %i.akc = getelementptr inbounds nuw i8, ptr %.2901, i64 6
  %i.akd = load i8, ptr %i.ajz, align 1, !tbaa !45
  %i.ake = getelementptr inbounds nuw i8, ptr %.11054, i64 6
  store i8 %i.akd, ptr %i.akb, align 1, !tbaa !45
  %i.akf = getelementptr inbounds nuw i8, ptr %.2901, i64 7
  %i.akg = load i8, ptr %i.akc, align 1, !tbaa !45
  %i.akh = getelementptr inbounds nuw i8, ptr %.11054, i64 7
  store i8 %i.akg, ptr %i.ake, align 1, !tbaa !45
  %i.aki = getelementptr inbounds nuw i8, ptr %.2901, i64 8
  %i.akj = load i8, ptr %i.akf, align 1, !tbaa !45
  %i.akk = getelementptr inbounds nuw i8, ptr %.11054, i64 8 ; 2 uses
  store i8 %i.akj, ptr %i.akh, align 1, !tbaa !45
  %i.akl = add i32 %.10, -8                       ; 2 uses
  %.not1205.7 = icmp eq i32 %i.akl, 0
  br i1 %.not1205.7, label %.loopexit3996, label %vec.epilog.scalar.ph, !llvm.loop !76

.loopexit3996:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa3506 = phi ptr [ %i.ajc, %vec.epilog.middle.block ], [ %i.aiv, %middle.block ], [ %.lcssa4155.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.akk, %vec.epilog.scalar.ph ] ; 2 uses
  %i.akm = sub i32 %.0990, %spec.select1263       ; 2 uses
  %i.akn = load i32, ptr %i.an, align 4, !tbaa !52
  %i.ako = icmp eq i32 %i.akn, 0
  br i1 %i.ako, label %bb.gr, label %.thread

bb.gr:                                            ; preds = %.loopexit3996
  store i32 16200, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.gs:                                            ; preds = %bb.k
  %i.akp = icmp eq i32 %.0990, 0
  br i1 %i.akp, label %.loopexit1277, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akq = load i32, ptr %i.an, align 4, !tbaa !52
  %i.akr = trunc i32 %i.akq to i8
  %i.aks = getelementptr inbounds nuw i8, ptr %.01053, i64 1
  store i8 %i.akr, ptr %.01053, align 1, !tbaa !45
  %i.akt = add i32 %.0990, -1
  store i32 16200, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.gu:                                            ; preds = %bb.k
  %i.aku = load i32, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %.not1174 = icmp eq i32 %i.aku, 0
  br i1 %.not1174, label %bb.hg, label %.preheader1318

.preheader1318:                                   ; preds = %bb.gu
  %i.akv = icmp ult i32 %.0918, 32
  br i1 %i.akv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1318
  %i.akw = zext nneg i32 %.0918 to i64            ; 6 uses
  %i.akx = icmp eq i32 %.0992, 0
  br i1 %i.akx, label %.loopexit1277.loopexit2361, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.preheader
  %i.aky = add i32 %.0992, -1                     ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.ala = load i8, ptr %.01056, align 1, !tbaa !45
  %i.alb = zext i8 %i.ala to i64
  %i.alc = shl nuw nsw i64 %i.alb, %i.akw
  %i.ald = add i64 %i.alc, %.0929                 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.akw, 8    ; 3 uses
  %i.ale = icmp ult i32 %.0918, 24
  br i1 %i.ale, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.gv
  %i.alf = icmp eq i32 %i.aky, 0
  br i1 %i.alf, label %.loopexit1277.loopexit2361, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph.1
  %i.alg = add i32 %.0992, -2                     ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.01056, i64 2 ; 3 uses
  %i.ali = load i8, ptr %i.akz, align 1, !tbaa !45
  %i.alj = zext i8 %i.ali to i64
  %i.alk = shl nuw nsw i64 %i.alj, %indvars.iv.next
  %i.all = add i64 %i.alk, %i.ald                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.akw, 16 ; 3 uses
  %i.alm = icmp ult i32 %.0918, 16
  br i1 %i.alm, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.gw
  %i.aln = icmp eq i32 %i.alg, 0
  br i1 %i.aln, label %.loopexit1277.loopexit2361, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph.2
  %i.alo = add i32 %.0992, -3                     ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.01056, i64 3 ; 3 uses
  %i.alq = load i8, ptr %i.alh, align 1, !tbaa !45
  %i.alr = zext i8 %i.alq to i64
  %i.als = shl nuw nsw i64 %i.alr, %indvars.iv.next.1
  %i.alt = add i64 %i.als, %i.all                 ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.akw, 24 ; 3 uses
  %i.alu = icmp ult i32 %.0918, 8
  br i1 %i.alu, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %bb.gx
  %i.alv = icmp eq i32 %i.alo, 0
  br i1 %i.alv, label %.loopexit1277.loopexit2361, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.3
  %i.alw = add i32 %.0992, -4
end_hunk_1
