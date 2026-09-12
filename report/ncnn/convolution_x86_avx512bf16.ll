Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.xr = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4 ; 2 uses
  %i.xu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xt, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xu)
  store <16 x bfloat> %i.xv, ptr %i.xr, align 1, !tbaa !18
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.ig
  %i.xx = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 96
  %i.xy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xw, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xy)
  store <16 x bfloat> %i.xz, ptr %i.xx, align 1, !tbaa !18
  %i.ya = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 128 ; 3 uses
  %indvars.iv.next2192.i.1 = add nuw nsw i64 %indvars.iv2191.i, 2 ; 2 uses
  %niter531.next.1 = add i64 %niter531, 2         ; 2 uses
  %niter531.ncmp.1 = icmp eq i64 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1, label %._crit_edge.us1662.i.unr-lcssa, label %.preheader1586.us.i.new, !llvm.loop !60

._crit_edge.us1662.i.unr-lcssa:                   ; preds = %.preheader1586.us.i.new
  br i1 %lcmp.mod527.not, label %._crit_edge.us1662.i, label %.epil.preheader525

.epil.preheader525:                               ; preds = %._crit_edge.us1662.i.unr-lcssa, %.preheader1586.us.i
  %indvars.iv2191.i.epil.init = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2192.i.1, %._crit_edge.us1662.i.unr-lcssa ]
  %.911741655.us.i.epil.init = phi ptr [ %.811731657.us.i, %.preheader1586.us.i ], [ %i.ya, %._crit_edge.us1662.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i.epil.init ; 2 uses
  %i.yc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yb, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yc)
  store <16 x bfloat> %i.yd, ptr %.911741655.us.i.epil.init, align 1, !tbaa !18
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.ig
  %i.yf = getelementptr inbounds nuw i8, ptr %.911741655.us.i.epil.init, i64 32
  %i.yg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ye, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yg)
  store <16 x bfloat> %i.yh, ptr %i.yf, align 1, !tbaa !18
  %i.yi = getelementptr inbounds nuw i8, ptr %.911741655.us.i.epil.init, i64 64
  br label %._crit_edge.us1662.i

._crit_edge.us1662.i:                             ; preds = %._crit_edge.us1662.i.unr-lcssa, %.epil.preheader525
  %.lcssa519 = phi ptr [ %i.ya, %._crit_edge.us1662.i.unr-lcssa ], [ %i.yi, %.epil.preheader525 ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %i.im ; 2 uses
  %i.yk = add nuw nsw i32 %.311791656.us.i, 2     ; 3 uses
  %i.yl = or disjoint i32 %i.yk, 1
  %i.ym = icmp slt i32 %i.yl, %2
  br i1 %i.ym, label %.preheader1586.us.i, label %.preheader1590.i, !llvm.loop !61

.preheader1590.i:                                 ; preds = %._crit_edge.us1662.i, %.preheader1591.i
  %.31179.lcssa.i = phi i32 [ %.21178.lcssa.i, %.preheader1591.i ], [ %i.yk, %._crit_edge.us1662.i ] ; 2 uses
  %.81173.lcssa.i = phi ptr [ %.51170.lcssa.i, %.preheader1591.i ], [ %.lcssa519, %._crit_edge.us1662.i ]
  %.31097.lcssa.i = phi ptr [ %.21096.lcssa.i, %.preheader1591.i ], [ %i.yj, %._crit_edge.us1662.i ] ; 5 uses
  %i.yn = icmp sge i32 %.31179.lcssa.i, %2
  %brmerge.i = or i1 %i.in, %i.yn
  br i1 %brmerge.i, label %._crit_edge1671.split.i, label %.preheader1585.i

.preheader1585.i:                                 ; preds = %.preheader1590.i, %._crit_edge.i
  %.111670.i = phi ptr [ %.lcssa522, %._crit_edge.i ], [ %.81173.lcssa.i, %.preheader1590.i ] ; 2 uses
  %.411801669.i = phi i32 [ %i.ys, %._crit_edge.i ], [ %.31179.lcssa.i, %.preheader1590.i ]
  br i1 %i.jd, label %.epil.preheader532, label %.preheader1585.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1585.i.new
  br i1 %lcmp.mod534.not, label %._crit_edge.i, label %.epil.preheader532

.epil.preheader532:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1585.i
  %indvars.iv2196.i.epil.init = phi i64 [ 0, %.preheader1585.i ], [ %indvars.iv.next2197.i.3, %._crit_edge.i.unr-lcssa ]
  %.121668.i.epil.init = phi ptr [ %.111670.i, %.preheader1585.i ], [ %i.zl, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod536)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader532
  %indvars.iv2196.i.epil = phi i64 [ %indvars.iv2196.i.epil.init, %.epil.preheader532 ], [ %indvars.iv.next2197.i.epil, %bb.az ] ; 2 uses
  %.121668.i.epil = phi ptr [ %.121668.i.epil.init, %.epil.preheader532 ], [ %i.yr, %bb.az ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader532 ], [ %epil.iter.next, %bb.az ]
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i.epil
  %i.yp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yo, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yp)
  store <16 x bfloat> %i.yq, ptr %.121668.i.epil, align 1, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %.121668.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2197.i.epil = add nuw nsw i64 %indvars.iv2196.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter533
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.az, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.az, %._crit_edge.i.unr-lcssa
  %.lcssa522 = phi ptr [ %i.zl, %._crit_edge.i.unr-lcssa ], [ %i.yr, %bb.az ]
  %i.ys = add nuw nsw i32 %.411801669.i, 1        ; 2 uses
  %exitcond2201.not.i = icmp eq i32 %i.ys, %2
  br i1 %exitcond2201.not.i, label %._crit_edge1671.split.i, label %.preheader1585.i, !llvm.loop !63

.preheader1585.i.new:                             ; preds = %.preheader1585.i, %.preheader1585.i.new
  %indvars.iv2196.i = phi i64 [ %indvars.iv.next2197.i.3, %.preheader1585.i.new ], [ 0, %.preheader1585.i ] ; 5 uses
  %.121668.i = phi ptr [ %i.zl, %.preheader1585.i.new ], [ %.111670.i, %.preheader1585.i ] ; 5 uses
  %niter538 = phi i64 [ %niter538.next.3, %.preheader1585.i.new ], [ 0, %.preheader1585.i ]
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.yu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yt, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yu)
  store <16 x bfloat> %i.yv, ptr %.121668.i, align 1, !tbaa !18
  %i.yw = getelementptr inbounds nuw i8, ptr %.121668.i, i64 32
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.yz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yy, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.za = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yz)
  store <16 x bfloat> %i.za, ptr %i.yw, align 1, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %.121668.i, i64 64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zd, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.zf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ze)
  store <16 x bfloat> %i.zf, ptr %i.zb, align 1, !tbaa !18
  %i.zg = getelementptr inbounds nuw i8, ptr %.121668.i, i64 96
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 12
  %i.zj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zi, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.zk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.zj)
  store <16 x bfloat> %i.zk, ptr %i.zg, align 1, !tbaa !18
  %i.zl = getelementptr inbounds nuw i8, ptr %.121668.i, i64 128 ; 3 uses
  %indvars.iv.next2197.i.3 = add nuw nsw i64 %indvars.iv2196.i, 4 ; 2 uses
  %niter538.next.3 = add i64 %niter538, 4         ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader1585.i.new, !llvm.loop !64

._crit_edge1671.split.i:                          ; preds = %._crit_edge.i, %.preheader1590.i, %.preheader1586.lr.ph.i, %.preheader1587.lr.ph.i
  %indvars.iv.next2203.i = add nuw nsw i64 %indvars.iv2202.i, 16 ; 3 uses
  %i.zm = or disjoint i64 %indvars.iv.next2203.i, 15
  %i.zn = icmp samesign ult i64 %i.zm, %i.ix
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.it
  br i1 %i.zn, label %_ZN4ncnn3MatD2Ev.exit1304.i, label %.preheader1584.loopexit.i, !llvm.loop !65

.preheader1575.loopexit.i:                        ; preds = %._crit_edge1767.split.i
  %i.zo = trunc nuw nsw i64 %indvars.iv.next2264.i to i32
  br label %.preheader1575.i

.preheader1575.i:                                 ; preds = %.preheader1575.loopexit.i, %.preheader1584.i
  %.1.lcssa.i = phi i32 [ %.01092.lcssa.i, %.preheader1584.i ], [ %i.zo, %.preheader1575.loopexit.i ] ; 4 uses
  %i.zp = or disjoint i32 %.1.lcssa.i, 3          ; 2 uses
  %i.zq = icmp slt i32 %i.zp, %3
  br i1 %i.zq, label %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i, label %.preheader1566.i

_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i:                ; preds = %.preheader1575.i
  %i.zr = insertelement <4 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.zs = shufflevector <4 x i32> %i.zr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zt = or disjoint <4 x i32> %i.zs, <i32 0, i32 0, i32 0, i32 3>
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zw = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.zx = shufflevector <4 x i32> %i.zw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zy = mul <4 x i32> %i.zx, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.zz = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.aaa = shufflevector <8 x i32> %i.zz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aab = mul <8 x i32> %i.aaa, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aac = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.aad = shufflevector <16 x i32> %i.aac, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aae = mul <16 x i32> %i.aad, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aaf = icmp sgt i32 %2, 15
  %i.aag = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.aah = shl i32 %i.a, 4
  %i.aai = sext i32 %i.aah to i64                 ; 5 uses
  %i.aaj = shl i32 %i.a, 3
  %i.aak = sext i32 %i.aaj to i64                 ; 5 uses
  %i.aal = shl i32 %i.a, 2
  %i.aam = sext i32 %i.aal to i64                 ; 4 uses
  %i.aan = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.aao = shufflevector <4 x i32> %i.aan, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aap = mul <4 x i32> %i.zy, %i.aao            ; 11 uses
  %i.aaq = sext i32 %i.a to i64                   ; 3 uses
  %i.aar = shl i32 %i.a, 1
  %i.aas = sext i32 %i.aar to i64
  %i.aat = icmp slt i32 %i.a, 1
  %i.aau = add i32 %2, -16                        ; 2 uses
  %i.aav = lshr i32 %i.aau, 2
  %i.aaw = and i32 %i.aav, 1073741820
  %narrow2433.i = add nuw nsw i32 %i.aaw, 4
  %i.aax = zext nneg i32 %narrow2433.i to i64
  %i.aay = mul nsw i64 %i.aai, %i.aax
  %i.aaz = mul i32 %i.a, %2                       ; 5 uses
  %i.aba = insertelement <2 x i32> poison, i32 %i.aaz, i64 0 ; 2 uses
  %i.abb = add nuw <4 x i32> %i.zt, <i32 0, i32 1, i32 2, i32 0>
  %i.abc = shufflevector <2 x i32> %i.aba, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.abd = mul <4 x i32> %i.abc, %i.abb
  %i.abe = and i32 %i.aau, -16
  %i.abf = add nuw i32 %i.abe, 16                 ; 4 uses
  %i.abg = add i32 %2, -8
  %i.abh = zext nneg i32 %.1.lcssa.i to i64
  %i.abi = sext i32 %3 to i64
  %i.abj = or disjoint i32 %i.abf, 7
  %i.abk = icmp slt i32 %i.abj, %2
  %wide.trip.count2284.i = zext i32 %i.a to i64   ; 8 uses
  %i.abl = shufflevector <2 x i32> %i.aba, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.abm = shl <4 x i32> %i.abl, splat (i32 2)
  %i.abn = add nsw i64 %wide.trip.count2284.i, -1 ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count2284.i, 1
  %i.abo = icmp eq i64 %i.abn, 0
  %unroll_iter569 = and i64 %wide.trip.count2284.i, 2147483646
  %lcmp.mod566.not = icmp eq i64 %xtraiter564, 0
  %lcmp.mod568 = trunc i32 %i.a to i1
  %xtraiter572 = and i64 %wide.trip.count2284.i, 3 ; 3 uses
  %i.abp = icmp ult i64 %i.abn, 3
  %unroll_iter577 = and i64 %wide.trip.count2284.i, 2147483644
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  %lcmp.mod576 = icmp ne i64 %xtraiter572, 0
  br label %_ZN4ncnn3MatD2Ev.exit1302.i

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1767.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2263.i = phi i64 [ %i.kp, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2264.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2261.i = phi i32 [ %i.kq, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2262.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2206.i = phi i32 [ %i.kk, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2207.i, %._crit_edge1767.split.i ] ; 2 uses
  %i.abq = sext i32 %indvars.iv2206.i to i64
  %i.abr = shl nsw i64 %i.abq, 2
  %i.abs = load ptr, ptr %0, align 8, !tbaa !15   ; 9 uses
  %i.abt = trunc nuw i64 %indvars.iv2263.i to i32 ; 9 uses
  %i.abu = mul i32 %i.jh, %i.abt
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abv ; 2 uses
  %i.abx = add i32 %i.abt, 1
  %i.aby = mul i32 %i.abx, %i.jh
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abz ; 2 uses
  %i.acb = add i32 %i.abt, 2
  %i.acc = mul i32 %i.acb, %i.jh
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acd ; 2 uses
  %i.acf = add i32 %i.abt, 3
  %i.acg = mul i32 %i.acf, %i.jh
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.ach ; 2 uses
  %i.acj = add i32 %i.abt, 4
  %i.ack = mul i32 %i.acj, %i.jh
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acl ; 2 uses
  %i.acn = add i32 %i.abt, 5
  %i.aco = mul i32 %i.acn, %i.jh
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acp ; 2 uses
  %i.acr = add i32 %i.abt, 6
  %i.acs = mul i32 %i.acr, %i.jh
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.act ; 2 uses
  %i.acv = mul i32 %indvars.iv2261.i, %i.jh
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acw ; 2 uses
  %i.acy = lshr i32 %i.abt, 4
  %6 = lshr i32 %i.abt, 3
  %i.acz = and i32 %6, 1
  %i.ada = add nuw nsw i32 %i.acz, %i.acy
  %i.adb = load ptr, ptr %1, align 8, !tbaa !15, !noalias !132
  %i.adc = load i64, ptr %i.ji, align 8, !tbaa !16, !noalias !132
  %i.add = zext nneg i32 %i.ada to i64
  %i.ade = mul i64 %i.adc, %i.add
  %i.adf = load i64, ptr %i.jj, align 8, !tbaa !17, !noalias !132
  %i.adg = mul i64 %i.ade, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adg ; 4 uses
  br i1 %i.jq, label %.preheader1580.lr.ph.i, label %.preheader1583.i

.preheader1580.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.jr, label %.preheader1580.us.i, label %.preheader1583.thread.i

.preheader1580.us.i:                              ; preds = %.preheader1580.lr.ph.i, %._crit_edge1676.us.i
  %.012311687.us.i = phi ptr [ %i.afu, %._crit_edge1676.us.i ], [ %i.abw, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012351686.us.i = phi ptr [ %i.afv, %._crit_edge1676.us.i ], [ %i.aca, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012371685.us.i = phi ptr [ %i.afw, %._crit_edge1676.us.i ], [ %i.ace, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012391684.us.i = phi ptr [ %i.afx, %._crit_edge1676.us.i ], [ %i.aci, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012411683.us.i = phi ptr [ %i.afy, %._crit_edge1676.us.i ], [ %i.acm, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012441682.us.i = phi ptr [ %i.afz, %._crit_edge1676.us.i ], [ %i.acq, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012461681.us.i = phi ptr [ %i.aga, %._crit_edge1676.us.i ], [ %i.acu, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012481680.us.i = phi ptr [ %i.agb, %._crit_edge1676.us.i ], [ %i.acx, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012501679.us.i = phi ptr [ %i.aft, %._crit_edge1676.us.i ], [ %i.adh, %.preheader1580.lr.ph.i ]
  %.012621678.us.i = phi i32 [ %i.agc, %._crit_edge1676.us.i ], [ 0, %.preheader1580.lr.ph.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1580.us.i
  %indvars.iv2231.i = phi i64 [ 0, %.preheader1580.us.i ], [ %indvars.iv.next2232.i, %bb.ba ] ; 9 uses
  %.112511675.us.i = phi ptr [ %.012501679.us.i, %.preheader1580.us.i ], [ %i.aft, %bb.ba ] ; 9 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %indvars.iv2231.i
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %indvars.iv2231.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %indvars.iv2231.i
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %indvars.iv2231.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %indvars.iv2231.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %indvars.iv2231.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %indvars.iv2231.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %indvars.iv2231.i
  %i.adq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adi, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adj, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ads = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adk, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adl, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adm, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adn, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ado, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adp, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ady = shufflevector <16 x float> %i.adq, <16 x float> %i.adr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adq, <16 x float> %i.adr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.ads, <16 x float> %i.adt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.ads, <16 x float> %i.adt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adu, <16 x float> %i.adv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adu, <16 x float> %i.adv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adw, <16 x float> %i.adx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adw, <16 x float> %i.adx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.ady, <16 x float> %i.aea, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.ady, <16 x float> %i.aea, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.aec, <16 x float> %i.aee, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.aec, <16 x float> %i.aee, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aeo = shufflevector <16 x float> %i.aeg, <16 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aep = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeq = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aer = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aes = shufflevector <16 x float> %i.aeg, <16 x float> %i.aek, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aet = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aeu = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aev = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aew = shufflevector <16 x float> %i.aeo, <16 x float> %i.aep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aex = shufflevector <16 x float> %i.aeq, <16 x float> %i.aer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aey = shufflevector <16 x float> %i.aes, <16 x float> %i.aet, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aez = shufflevector <16 x float> %i.aeu, <16 x float> %i.aev, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afa = shufflevector <16 x float> %i.aeo, <16 x float> %i.aep, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afb = shufflevector <16 x float> %i.aeq, <16 x float> %i.aer, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afc = shufflevector <16 x float> %i.aes, <16 x float> %i.aet, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afd = shufflevector <16 x float> %i.aeu, <16 x float> %i.aev, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afe = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aew)
  store <16 x bfloat> %i.afe, ptr %.112511675.us.i, align 1, !tbaa !18
  %i.aff = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 32
  %i.afg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aex)
  store <16 x bfloat> %i.afg, ptr %i.aff, align 1, !tbaa !18
  %i.afh = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 64
  %i.afi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aey)
  store <16 x bfloat> %i.afi, ptr %i.afh, align 1, !tbaa !18
  %i.afj = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 96
  %i.afk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aez)
  store <16 x bfloat> %i.afk, ptr %i.afj, align 1, !tbaa !18
  %i.afl = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 128
  %i.afm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afa)
  store <16 x bfloat> %i.afm, ptr %i.afl, align 1, !tbaa !18
  %i.afn = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 160
  %i.afo = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afb)
  store <16 x bfloat> %i.afo, ptr %i.afn, align 1, !tbaa !18
  %i.afp = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 192
  %i.afq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afc)
  store <16 x bfloat> %i.afq, ptr %i.afp, align 1, !tbaa !18
  %i.afr = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 224
  %i.afs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afd)
  store <16 x bfloat> %i.afs, ptr %i.afr, align 1, !tbaa !18
  %i.aft = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 256 ; 3 uses
  %indvars.iv.next2232.i = add nuw nsw i64 %indvars.iv2231.i, 1 ; 2 uses
  %exitcond2235.not.i = icmp eq i64 %indvars.iv.next2232.i, %wide.trip.count2234.i
  br i1 %exitcond2235.not.i, label %._crit_edge1676.us.i, label %bb.ba, !llvm.loop !68

._crit_edge1676.us.i:                             ; preds = %bb.ba
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %i.jt ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %i.jt ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %i.jt ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %i.jt ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %i.jt ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %i.jt ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %i.jt ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %i.jt ; 2 uses
  %i.agc = add nuw nsw i32 %.012621678.us.i, 16   ; 2 uses
  %i.agd = or disjoint i32 %i.agc, 15
  %i.age = icmp slt i32 %i.agd, %2
  br i1 %i.age, label %.preheader1580.us.i, label %.preheader1583.i, !llvm.loop !69

.preheader1583.i:                                 ; preds = %._crit_edge1676.us.i, %_ZN4ncnn3MatD2Ev.exit1303.i
  %.01262.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.kn, %._crit_edge1676.us.i ] ; 4 uses
  %.01250.lcssa.i = phi ptr [ %i.adh, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.aft, %._crit_edge1676.us.i ] ; 3 uses
  %.01248.lcssa.i = phi ptr [ %i.acx, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agb, %._crit_edge1676.us.i ]
  %.01246.lcssa.i = phi ptr [ %i.acu, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.aga, %._crit_edge1676.us.i ]
  %.01244.lcssa.i = phi ptr [ %i.acq, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afz, %._crit_edge1676.us.i ]
  %.01241.lcssa.i = phi ptr [ %i.acm, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afy, %._crit_edge1676.us.i ]
  %.01239.lcssa.i = phi ptr [ %i.aci, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afx, %._crit_edge1676.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.ace, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afw, %._crit_edge1676.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.aca, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afv, %._crit_edge1676.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.abw, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afu, %._crit_edge1676.us.i ] ; 3 uses
  %i.agf = or disjoint i32 %.01262.lcssa.i, 7
  %i.agg = icmp slt i32 %i.agf, %2
  br i1 %i.agg, label %.preheader1579.lr.ph.i, label %._crit_edge1722.i

.preheader1583.thread.i:                          ; preds = %.preheader1580.lr.ph.i
  %scevgep2205.i = getelementptr i8, ptr %i.abs, i64 %i.kj
  %scevgep2208.i = getelementptr i8, ptr %scevgep2205.i, i64 %i.abr ; 2 uses
  br i1 %i.kt, label %.preheader1579.preheader.i, label %._crit_edge1722.i

.preheader1579.lr.ph.i:                           ; preds = %.preheader1583.i
  br i1 %i.jr, label %.preheader1579.us.i, label %.preheader1579.preheader.i

.preheader1579.preheader.i:                       ; preds = %.preheader1579.lr.ph.i, %.preheader1583.thread.i
  %.01262.lcssa24772499.i = phi i32 [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.kn, %.preheader1583.thread.i ] ; 2 uses
  %.01250.lcssa24782498.i = phi ptr [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.adh, %.preheader1583.thread.i ]
  %.01231.lcssa24862497.i = phi ptr [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ], [ %scevgep2208.i, %.preheader1583.thread.i ]
  %i.agh = sub i32 %i.ko, %.01262.lcssa24772499.i ; 2 uses
  %i.agi = lshr i32 %i.agh, 1
  %i.agj = and i32 %i.agi, 2147483644
  %narrow2432.i = add nuw i32 %i.agj, 4
  %i.agk = zext i32 %narrow2432.i to i64
  %i.agl = mul nsw i64 %i.agk, %i.jv
  %scevgep2236.i = getelementptr i8, ptr %.01231.lcssa24862497.i, i64 %i.agl
  %i.agm = add i32 %.01262.lcssa24772499.i, 8
  %i.agn = and i32 %i.agh, -8
  %i.ago = add i32 %i.agm, %i.agn
  br label %._crit_edge1722.i

.preheader1579.us.i:                              ; preds = %.preheader1579.lr.ph.i, %._crit_edge1710.us.i
  %.112321721.us.i = phi ptr [ %i.ait, %._crit_edge1710.us.i ], [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112361720.us.i = phi ptr [ %i.aiu, %._crit_edge1710.us.i ], [ %.01235.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112381719.us.i = phi ptr [ %i.aiv, %._crit_edge1710.us.i ], [ %.01237.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112401718.us.i = phi ptr [ %i.aiw, %._crit_edge1710.us.i ], [ %.01239.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112421717.us.i = phi ptr [ %i.aix, %._crit_edge1710.us.i ], [ %.01241.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112451716.us.i = phi ptr [ %i.aiy, %._crit_edge1710.us.i ], [ %.01244.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112471715.us.i = phi ptr [ %i.aiz, %._crit_edge1710.us.i ], [ %.01246.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112491714.us.i = phi ptr [ %i.aja, %._crit_edge1710.us.i ], [ %.01248.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.212521713.us.i = phi ptr [ %i.ais, %._crit_edge1710.us.i ], [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ]
  %.112631712.us.i = phi i32 [ %i.ajb, %._crit_edge1710.us.i ], [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1579.us.i
  %indvars.iv2237.i = phi i64 [ 0, %.preheader1579.us.i ], [ %indvars.iv.next2238.i, %bb.bb ] ; 9 uses
  %.312531708.us.i = phi ptr [ %.212521713.us.i, %.preheader1579.us.i ], [ %i.ais, %bb.bb ] ; 9 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %.112321721.us.i, i64 %indvars.iv2237.i
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.112361720.us.i, i64 %indvars.iv2237.i
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.112381719.us.i, i64 %indvars.iv2237.i
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.112401718.us.i, i64 %indvars.iv2237.i
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.112421717.us.i, i64 %indvars.iv2237.i
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.112451716.us.i, i64 %indvars.iv2237.i
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.112471715.us.i, i64 %indvars.iv2237.i
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.112491714.us.i, i64 %indvars.iv2237.i
  %i.agx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agp, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agq, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agr, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aha = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ags, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agt, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agu, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agv, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahe = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agw, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahf = shufflevector <8 x float> %i.agx, <8 x float> %i.agy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahg = shufflevector <8 x float> %i.agx, <8 x float> %i.agy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahh = shufflevector <8 x float> %i.agz, <8 x float> %i.aha, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahi = shufflevector <8 x float> %i.agz, <8 x float> %i.aha, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahj = shufflevector <8 x float> %i.ahb, <8 x float> %i.ahc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahk = shufflevector <8 x float> %i.ahb, <8 x float> %i.ahc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahl = shufflevector <8 x float> %i.ahd, <8 x float> %i.ahe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahm = shufflevector <8 x float> %i.ahd, <8 x float> %i.ahe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahn = shufflevector <8 x float> %i.ahf, <8 x float> %i.ahh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aho = shufflevector <8 x float> %i.ahf, <8 x float> %i.ahh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod550.not, label %._crit_edge1750.us.i, label %.epil.preheader547

.epil.preheader547:                               ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2250.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2251.i.1, %._crit_edge1750.us.i.unr-lcssa ]
  %.812581748.us.i.epil.init = phi ptr [ %.712571753.us.i, %.preheader1577.us.i ], [ %i.alz, %._crit_edge1750.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod552)
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2250.i.epil.init ; 2 uses
  %i.amb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ama, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amb)
  store <8 x bfloat> %i.amc, ptr %.812581748.us.i.epil.init, align 1, !tbaa !18
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %i.jz
  %i.ame = getelementptr inbounds nuw i8, ptr %.812581748.us.i.epil.init, i64 16
  %i.amf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amd, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amf)
  store <8 x bfloat> %i.amg, ptr %i.ame, align 1, !tbaa !18
  %i.amh = getelementptr inbounds nuw i8, ptr %.812581748.us.i.epil.init, i64 32
  br label %._crit_edge1750.us.i

._crit_edge1750.us.i:                             ; preds = %._crit_edge1750.us.i.unr-lcssa, %.epil.preheader547
  %.lcssa507 = phi ptr [ %i.alz, %._crit_edge1750.us.i.unr-lcssa ], [ %i.amh, %.epil.preheader547 ] ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %i.kd ; 2 uses
  %i.amj = add nuw nsw i32 %.312651752.us.i, 2    ; 3 uses
  %i.amk = or disjoint i32 %i.amj, 1
  %i.aml = icmp slt i32 %i.amk, %2
  br i1 %i.aml, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !75

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31265.lcssa.i = phi i32 [ %.21264.lcssa.i, %.preheader1582.i ], [ %i.amj, %._crit_edge1750.us.i ] ; 2 uses
  %.71257.lcssa.i = phi ptr [ %.41254.lcssa.i, %.preheader1582.i ], [ %.lcssa507, %._crit_edge1750.us.i ]
  %.31234.lcssa.i = phi ptr [ %.21233.lcssa.i, %.preheader1582.i ], [ %i.ami, %._crit_edge1750.us.i ] ; 5 uses
  %i.amm = icmp sge i32 %.31265.lcssa.i, %2
  %brmerge2000.i = or i1 %i.ke, %i.amm
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012601766.i = phi ptr [ %.lcssa510, %._crit_edge1763.i ], [ %.71257.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412661765.i = phi i32 [ %i.amr, %._crit_edge1763.i ], [ %.31265.lcssa.i, %.preheader1581.i ]
  br i1 %i.kx, label %.epil.preheader555, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod558.not, label %._crit_edge1763.i, label %.epil.preheader555

.epil.preheader555:                               ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2255.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2256.i.3, %._crit_edge1763.i.unr-lcssa ]
  %.1112611761.i.epil.init = phi ptr [ %.1012601766.i, %.preheader1576.i ], [ %i.ank, %._crit_edge1763.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod560)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader555
  %indvars.iv2255.i.epil = phi i64 [ %indvars.iv2255.i.epil.init, %.epil.preheader555 ], [ %indvars.iv.next2256.i.epil, %bb.bc ] ; 2 uses
  %.1112611761.i.epil = phi ptr [ %.1112611761.i.epil.init, %.epil.preheader555 ], [ %i.amq, %bb.bc ] ; 2 uses
  %epil.iter557 = phi i64 [ 0, %.epil.preheader555 ], [ %epil.iter557.next, %bb.bc ]
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i.epil
  %i.amo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amn, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amo)
  store <8 x bfloat> %i.amp, ptr %.1112611761.i.epil, align 1, !tbaa !18
  %i.amq = getelementptr inbounds nuw i8, ptr %.1112611761.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2256.i.epil = add nuw nsw i64 %indvars.iv2255.i.epil, 1
  %epil.iter557.next = add i64 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i64 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %._crit_edge1763.i, label %bb.bc, !llvm.loop !76

._crit_edge1763.i:                                ; preds = %bb.bc, %._crit_edge1763.i.unr-lcssa
  %.lcssa510 = phi ptr [ %i.ank, %._crit_edge1763.i.unr-lcssa ], [ %i.amq, %bb.bc ]
  %i.amr = add nuw nsw i32 %.412661765.i, 1       ; 2 uses
  %exitcond2260.not.i = icmp eq i32 %i.amr, %2
  br i1 %exitcond2260.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !77

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2255.i = phi i64 [ %indvars.iv.next2256.i.3, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 5 uses
  %.1112611761.i = phi ptr [ %i.ank, %.preheader1576.i.new ], [ %.1012601766.i, %.preheader1576.i ] ; 5 uses
  %niter562 = phi i64 [ %niter562.next.3, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.amt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ams, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amt)
  store <8 x bfloat> %i.amu, ptr %.1112611761.i, align 1, !tbaa !18
  %i.amv = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 16
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 4
  %i.amy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amx, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amy)
  store <8 x bfloat> %i.amz, ptr %i.amv, align 1, !tbaa !18
  %i.ana = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 32
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  %i.and = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.anc, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ane = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.and)
  store <8 x bfloat> %i.ane, ptr %i.ana, align 1, !tbaa !18
  %i.anf = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 48
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 12
  %i.ani = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.anh, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.anj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ani)
  store <8 x bfloat> %i.anj, ptr %i.anf, align 1, !tbaa !18
  %i.ank = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 64 ; 3 uses
  %indvars.iv.next2256.i.3 = add nuw nsw i64 %indvars.iv2255.i, 4 ; 2 uses
  %niter562.next.3 = add i64 %niter562, 4         ; 2 uses
  %niter562.ncmp.3 = icmp eq i64 %niter562.next.3, %unroll_iter561
  br i1 %niter562.ncmp.3, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !78

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2264.i = add nuw nsw i64 %indvars.iv2263.i, 8 ; 3 uses
  %i.anl = icmp slt i64 %indvars.iv.next2264.i, %invariant.op.i
  %indvars.iv.next2207.i = add i32 %indvars.iv2206.i, %i.kl
  %indvars.iv.next2262.i = add i32 %indvars.iv2261.i, 8
  br i1 %i.anl, label %_ZN4ncnn3MatD2Ev.exit1303.i, label %.preheader1575.loopexit.i, !llvm.loop !79

.preheader1566.loopexit.i:                        ; preds = %._crit_edge1853.split.i
  %i.anm = trunc nsw i64 %indvars.iv.next2314.i to i32
  br label %.preheader1566.i

.preheader1566.i:                                 ; preds = %.preheader1566.loopexit.i, %.preheader1575.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1575.i ], [ %i.anm, %.preheader1566.loopexit.i ] ; 4 uses
  %i.ann = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.ano = icmp slt i32 %i.ann, %3
  br i1 %i.ano, label %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i, label %.preheader1556.i

_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i:                ; preds = %.preheader1566.i
  %i.anp = mul i32 %i.a, %2                       ; 5 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ans = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.ant = shufflevector <4 x i32> %i.ans, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anu = mul <4 x i32> %i.ant, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.anv = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.anw = shufflevector <8 x i32> %i.anv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.anx = mul <8 x i32> %i.anw, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.any = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.anz = shufflevector <16 x i32> %i.any, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aoa = mul <16 x i32> %i.anz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.aob = icmp sgt i32 %2, 15
  %i.aoc = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.aod = shl i32 %i.a, 4
  %i.aoe = sext i32 %i.aod to i64                 ; 3 uses
  %i.aof = shl i32 %i.a, 3
  %i.aog = sext i32 %i.aof to i64                 ; 3 uses
  %i.aoh = shl i32 %i.a, 2
  %i.aoi = sext i32 %i.aoh to i64                 ; 2 uses
  %i.aoj = sext i32 %i.a to i64                   ; 6 uses
  %i.aok = shl i32 %i.a, 1
  %i.aol = sext i32 %i.aok to i64                 ; 2 uses
  %i.aom = icmp slt i32 %i.a, 1
  %i.aon = add i32 %2, -16                        ; 2 uses
  %i.aoo = lshr i32 %i.aon, 2
  %i.aop = and i32 %i.aoo, 1073741820
  %narrow2435.i = add nuw nsw i32 %i.aop, 4
  %i.aoq = zext nneg i32 %narrow2435.i to i64
  %i.aor = mul nsw i64 %i.aoe, %i.aoq
  %i.aos = mul i32 %i.anp, %.2.lcssa.i
  %i.aot = shl i32 %i.anp, 1                      ; 2 uses
  %i.aou = mul i32 %i.ann, %i.anp
  %i.aov = and i32 %i.aon, -16
  %i.aow = add nuw i32 %i.aov, 16                 ; 4 uses
  %i.aox = add i32 %2, -8
  %i.aoy = sext i32 %.2.lcssa.i to i64
  %i.aoz = sext i32 %3 to i64
  %i.apa = or disjoint i32 %i.aow, 7
  %i.apb = icmp slt i32 %i.apa, %2
  %wide.trip.count2326.i = zext i32 %i.a to i64   ; 19 uses
  %i.apc = add nsw i64 %wide.trip.count2326.i, -1 ; 3 uses
  %xtraiter580 = and i64 %wide.trip.count2326.i, 1
  %i.apd = icmp eq i64 %i.apc, 0
  %unroll_iter585 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod582.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod584 = trunc i32 %i.a to i1
  %xtraiter588 = and i64 %wide.trip.count2326.i, 1
  %i.ape = icmp eq i64 %i.apc, 0
  %unroll_iter593 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod592 = trunc i32 %i.a to i1
  %xtraiter596 = and i64 %wide.trip.count2326.i, 1
  %i.apf = icmp eq i64 %i.apc, 0
  %unroll_iter601 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod598.not = icmp eq i64 %xtraiter596, 0
  %lcmp.mod600 = trunc i32 %i.a to i1
  %min.iters.check334 = icmp ult i32 %i.a, 4
  %min.iters.check336 = icmp ult i32 %i.a, 16
  %i.apg = and i64 %wide.trip.count2326.i, 12
  %n.vec338 = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.aph = shl nuw nsw i64 %n.vec338, 3
  %cmp.n349 = icmp eq i64 %n.vec338, %wide.trip.count2326.i
  %min.epilog.iters.check354 = icmp eq i64 %i.apg, 0
  %n.vec356 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.api = shl nuw nsw i64 %n.vec356, 3
  %cmp.n367 = icmp eq i64 %n.vec356, %wide.trip.count2326.i
  %min.iters.check = icmp ult i32 %i.a, 4
  %min.iters.check322 = icmp ult i32 %i.a, 16
  %i.apj = and i64 %wide.trip.count2326.i, 12
  %n.vec = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.apk = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2326.i
  %min.epilog.iters.check = icmp eq i64 %i.apj, 0
  %n.vec324 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.apl = shl nuw nsw i64 %n.vec324, 2
  %cmp.n331 = icmp eq i64 %n.vec324, %wide.trip.count2326.i
  br label %_ZN4ncnn3MatD2Ev.exit1301.i

_ZN4ncnn3MatD2Ev.exit1302.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i
  %indvars.iv2313.i = phi i64 [ %i.abh, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2314.i, %._crit_edge1853.split.i ] ; 2 uses
  %i.apm = phi i32 [ %i.zp, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayj, %._crit_edge1853.split.i ]
  %i.apn = phi <4 x i32> [ %i.abd, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayi, %._crit_edge1853.split.i ] ; 2 uses
  %i.apo = sext <4 x i32> %i.apn to <4 x i64>
  %i.app = shl nsw <4 x i64> %i.apo, splat (i64 2) ; 4 uses
  %i.apq = load ptr, ptr %0, align 8, !tbaa !15   ; 5 uses
  %i.apr = trunc i64 %indvars.iv2313.i to i32     ; 6 uses
  %i.aps = mul i32 %i.aaz, %i.apr
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.apt ; 2 uses
  %i.apv = add i32 %i.apr, 1
  %i.apw = mul i32 %i.apv, %i.aaz
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.apx ; 2 uses
  %i.apz = add i32 %i.apr, 2
  %i.aqa = mul i32 %i.apz, %i.aaz
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.aqb ; 2 uses
  %i.aqd = mul i32 %i.apm, %i.aaz
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.aqe ; 2 uses
  %i.aqg = lshr i32 %i.apr, 4
  %i.aqh = lshr i32 %i.apr, 3
  %i.aqi = and i32 %i.aqh, 1
  %i.aqj = add nuw nsw i32 %i.aqi, %i.aqg
  %7 = lshr i32 %i.apr, 2
  %i.aqk = and i32 %7, 1
  %i.aql = add nuw nsw i32 %i.aqj, %i.aqk
  %i.aqm = load ptr, ptr %1, align 8, !tbaa !15, !noalias !133
  %i.aqn = load i64, ptr %i.zu, align 8, !tbaa !16, !noalias !133
  %i.aqo = zext nneg i32 %i.aql to i64
  %i.aqp = mul i64 %i.aqn, %i.aqo
  %i.aqq = load i64, ptr %i.zv, align 8, !tbaa !17, !noalias !133
  %i.aqr = mul i64 %i.aqp, %i.aqq
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %i.aqr ; 4 uses
  br i1 %i.aaf, label %.preheader1571.lr.ph.i, label %.preheader1574.i

.preheader1571.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1302.i
  br i1 %i.aag, label %.preheader1571.us.i, label %.preheader1574.thread.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1772.us.i
  %.011911779.us.i = phi i32 [ %i.arz, %._crit_edge1772.us.i ], [ 0, %.preheader1571.lr.ph.i ]
  %.011961778.us.i = phi ptr [ %i.aru, %._crit_edge1772.us.i ], [ %i.aqs, %.preheader1571.lr.ph.i ]
  %.012071777.us.i = phi ptr [ %i.ary, %._crit_edge1772.us.i ], [ %i.aqf, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012101776.us.i = phi ptr [ %i.arx, %._crit_edge1772.us.i ], [ %i.aqc, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012131775.us.i = phi ptr [ %i.arw, %._crit_edge1772.us.i ], [ %i.apy, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012161774.us.i = phi ptr [ %i.arv, %._crit_edge1772.us.i ], [ %i.apu, %.preheader1571.lr.ph.i ] ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader1571.us.i
  %indvars.iv2281.i = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2282.i, %bb.bd ] ; 5 uses
  %.111971770.us.i = phi ptr [ %.011961778.us.i, %.preheader1571.us.i ], [ %i.aru, %bb.bd ] ; 5 uses
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.012161774.us.i, i64 %indvars.iv2281.i
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.012131775.us.i, i64 %indvars.iv2281.i
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.012101776.us.i, i64 %indvars.iv2281.i
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.012071777.us.i, i64 %indvars.iv2281.i
  %i.aqx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqt, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqu, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqv, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ara = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqw, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arb = shufflevector <16 x float> %i.aqx, <16 x float> %i.aqy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.arc = shufflevector <16 x float> %i.aqx, <16 x float> %i.aqy, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ard = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.are = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.arb, <16 x float> %i.ard, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.arc, <16 x float> %i.are, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arh = shufflevector <16 x float> %i.arb, <16 x float> %i.ard, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ari = shufflevector <16 x float> %i.arc, <16 x float> %i.are, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arj = shufflevector <16 x float> %i.arf, <16 x float> %i.arg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ark = shufflevector <16 x float> %i.arh, <16 x float> %i.ari, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arl = shufflevector <16 x float> %i.arf, <16 x float> %i.arg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arm = shufflevector <16 x float> %i.arh, <16 x float> %i.ari, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arj)
  store <16 x bfloat> %i.arn, ptr %.111971770.us.i, align 1, !tbaa !18
  %i.aro = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 32
  %i.arp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ark)
  store <16 x bfloat> %i.arp, ptr %i.aro, align 1, !tbaa !18
  %i.arq = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 64
  %i.arr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arl)
  store <16 x bfloat> %i.arr, ptr %i.arq, align 1, !tbaa !18
  %i.ars = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 96
  %i.art = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arm)
  store <16 x bfloat> %i.art, ptr %i.ars, align 1, !tbaa !18
  %i.aru = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 128 ; 3 uses
  %indvars.iv.next2282.i = add nuw nsw i64 %indvars.iv2281.i, 1 ; 2 uses
  %exitcond2285.not.i = icmp eq i64 %indvars.iv.next2282.i, %wide.trip.count2284.i
  br i1 %exitcond2285.not.i, label %._crit_edge1772.us.i, label %bb.bd, !llvm.loop !82

._crit_edge1772.us.i:                             ; preds = %bb.bd
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %.012161774.us.i, i64 %i.aai ; 2 uses
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %.012131775.us.i, i64 %i.aai ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %.012101776.us.i, i64 %i.aai ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %.012071777.us.i, i64 %i.aai ; 2 uses
  %i.arz = add nuw nsw i32 %.011911779.us.i, 16   ; 2 uses
  %i.asa = or disjoint i32 %i.arz, 15
  %i.asb = icmp slt i32 %i.asa, %2
  br i1 %i.asb, label %.preheader1571.us.i, label %.preheader1574.i, !llvm.loop !83

.preheader1574.i:                                 ; preds = %._crit_edge1772.us.i, %_ZN4ncnn3MatD2Ev.exit1302.i
  %.01216.lcssa.i = phi ptr [ %i.apu, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arv, %._crit_edge1772.us.i ] ; 3 uses
  %.01213.lcssa.i = phi ptr [ %i.apy, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arw, %._crit_edge1772.us.i ] ; 3 uses
  %.01210.lcssa.i = phi ptr [ %i.aqc, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arx, %._crit_edge1772.us.i ] ; 3 uses
  %.01207.lcssa.i = phi ptr [ %i.aqf, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.ary, %._crit_edge1772.us.i ] ; 3 uses
  %.01196.lcssa.i = phi ptr [ %i.aqs, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.aru, %._crit_edge1772.us.i ] ; 3 uses
  %.01191.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.abf, %._crit_edge1772.us.i ] ; 4 uses
  %i.asc = or disjoint i32 %.01191.lcssa.i, 7
  %i.asd = icmp slt i32 %i.asc, %2
  br i1 %i.asd, label %.preheader1570.lr.ph.i, label %.preheader1573.i

.preheader1574.thread.i:                          ; preds = %.preheader1571.lr.ph.i
  %scevgep2268.i = getelementptr i8, ptr %i.apq, i64 %i.aay ; 4 uses
  %i.ase = extractelement <4 x i64> %i.app, i64 0
  %scevgep2271.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.ase ; 2 uses
  %i.asf = extractelement <4 x i64> %i.app, i64 1
  %scevgep2274.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.asf ; 2 uses
  %i.asg = extractelement <4 x i64> %i.app, i64 2
  %scevgep2277.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.asg ; 2 uses
  %i.ash = extractelement <4 x i64> %i.app, i64 3
  %scevgep2280.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.ash ; 2 uses
  br i1 %i.abk, label %.preheader1570.preheader.i, label %.preheader1573.i

.preheader1570.lr.ph.i:                           ; preds = %.preheader1574.i
  br i1 %i.aag, label %.preheader1570.us.i, label %.preheader1570.preheader.i

.preheader1570.preheader.i:                       ; preds = %.preheader1570.lr.ph.i, %.preheader1574.thread.i
  %.01216.lcssa25222539.i = phi ptr [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2271.i, %.preheader1574.thread.i ]
  %.01213.lcssa25232538.i = phi ptr [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2274.i, %.preheader1574.thread.i ]
  %.01210.lcssa25242537.i = phi ptr [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2277.i, %.preheader1574.thread.i ]
  %.01207.lcssa25252536.i = phi ptr [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2280.i, %.preheader1574.thread.i ]
  %.01196.lcssa25262535.i = phi ptr [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.aqs, %.preheader1574.thread.i ]
  %.01191.lcssa25272534.i = phi i32 [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.abf, %.preheader1574.thread.i ] ; 2 uses
  %i.asi = sub i32 %i.abg, %.01191.lcssa25272534.i ; 2 uses
  %i.asj = lshr i32 %i.asi, 1
  %i.ask = and i32 %i.asj, 2147483644
  %narrow2434.i = add nuw i32 %i.ask, 4
  %i.asl = zext i32 %narrow2434.i to i64
  %i.asm = mul nsw i64 %i.asl, %i.aak             ; 4 uses
  %scevgep2286.i = getelementptr i8, ptr %.01216.lcssa25222539.i, i64 %i.asm
  %scevgep2287.i = getelementptr i8, ptr %.01213.lcssa25232538.i, i64 %i.asm
  %scevgep2288.i = getelementptr i8, ptr %.01210.lcssa25242537.i, i64 %i.asm
  %scevgep2289.i = getelementptr i8, ptr %.01207.lcssa25252536.i, i64 %i.asm
  %i.asn = add i32 %.01191.lcssa25272534.i, 8
  %i.aso = and i32 %i.asi, -8
  %i.asp = add i32 %i.asn, %i.aso
  br label %.preheader1573.i

.preheader1570.us.i:                              ; preds = %.preheader1570.lr.ph.i, %._crit_edge1794.us.i
  %.111921801.us.i = phi i32 [ %i.ats, %._crit_edge1794.us.i ], [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ]
  %.211981800.us.i = phi ptr [ %i.atn, %._crit_edge1794.us.i ], [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ]
  %.112081799.us.i = phi ptr [ %i.atr, %._crit_edge1794.us.i ], [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112111798.us.i = phi ptr [ %i.atq, %._crit_edge1794.us.i ], [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112141797.us.i = phi ptr [ %i.atp, %._crit_edge1794.us.i ], [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112171796.us.i = phi ptr [ %i.ato, %._crit_edge1794.us.i ], [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1570.us.i
  %indvars.iv2290.i = phi i64 [ 0, %.preheader1570.us.i ], [ %indvars.iv.next2291.i, %bb.be ] ; 5 uses
  %.311991792.us.i = phi ptr [ %.211981800.us.i, %.preheader1570.us.i ], [ %i.atn, %bb.be ] ; 5 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %indvars.iv2290.i
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %indvars.iv2290.i
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %indvars.iv2290.i
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %indvars.iv2290.i
  %i.asu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asq, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asr, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ass, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ast, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asy = shufflevector <8 x float> %i.asu, <8 x float> %i.asv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.asz = shufflevector <8 x float> %i.asu, <8 x float> %i.asv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ata = shufflevector <8 x float> %i.asw, <8 x float> %i.asx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atb = shufflevector <8 x float> %i.asw, <8 x float> %i.asx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atc = shufflevector <8 x float> %i.asy, <8 x float> %i.ata, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atd = shufflevector <8 x float> %i.asz, <8 x float> %i.atb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.ate = shufflevector <8 x float> %i.asy, <8 x float> %i.ata, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.atf = shufflevector <8 x float> %i.asz, <8 x float> %i.atb, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.atg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atc)
  store <8 x bfloat> %i.atg, ptr %.311991792.us.i, align 1, !tbaa !18
  %i.ath = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 16
  %i.ati = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atd)
  store <8 x bfloat> %i.ati, ptr %i.ath, align 1, !tbaa !18
  %i.atj = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 32
  %i.atk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ate)
  store <8 x bfloat> %i.atk, ptr %i.atj, align 1, !tbaa !18
  %i.atl = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 48
  %i.atm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atf)
  store <8 x bfloat> %i.atm, ptr %i.atl, align 1, !tbaa !18
  %i.atn = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 64 ; 3 uses
  %indvars.iv.next2291.i = add nuw nsw i64 %indvars.iv2290.i, 1 ; 2 uses
  %exitcond2294.not.i = icmp eq i64 %indvars.iv.next2291.i, %wide.trip.count2284.i
  br i1 %exitcond2294.not.i, label %._crit_edge1794.us.i, label %bb.be, !llvm.loop !84

._crit_edge1794.us.i:                             ; preds = %bb.be
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %i.aak ; 2 uses
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %i.aak ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %i.aak ; 2 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %i.aak ; 2 uses
  %i.ats = add nuw nsw i32 %.111921801.us.i, 8    ; 3 uses
  %i.att = or disjoint i32 %i.ats, 7
  %i.atu = icmp slt i32 %i.att, %2
  br i1 %i.atu, label %.preheader1570.us.i, label %.preheader1573.i, !llvm.loop !85

.preheader1573.i:                                 ; preds = %._crit_edge1794.us.i, %.preheader1570.preheader.i, %.preheader1574.thread.i, %.preheader1574.i
  %.11217.lcssa.i = phi ptr [ %.01216.lcssa.i, %.preheader1574.i ], [ %scevgep2271.i, %.preheader1574.thread.i ], [ %scevgep2286.i, %.preheader1570.preheader.i ], [ %i.ato, %._crit_edge1794.us.i ] ; 2 uses
  %.11214.lcssa.i = phi ptr [ %.01213.lcssa.i, %.preheader1574.i ], [ %scevgep2274.i, %.preheader1574.thread.i ], [ %scevgep2287.i, %.preheader1570.preheader.i ], [ %i.atp, %._crit_edge1794.us.i ]
  %.11211.lcssa.i = phi ptr [ %.01210.lcssa.i, %.preheader1574.i ], [ %scevgep2277.i, %.preheader1574.thread.i ], [ %scevgep2288.i, %.preheader1570.preheader.i ], [ %i.atq, %._crit_edge1794.us.i ]
  %.11208.lcssa.i = phi ptr [ %.01207.lcssa.i, %.preheader1574.i ], [ %scevgep2280.i, %.preheader1574.thread.i ], [ %scevgep2289.i, %.preheader1570.preheader.i ], [ %i.atr, %._crit_edge1794.us.i ]
  %.21198.lcssa.i = phi ptr [ %.01196.lcssa.i, %.preheader1574.i ], [ %i.aqs, %.preheader1574.thread.i ], [ %.01196.lcssa25262535.i, %.preheader1570.preheader.i ], [ %i.atn, %._crit_edge1794.us.i ] ; 2 uses
  %.11192.lcssa.i = phi i32 [ %.01191.lcssa.i, %.preheader1574.i ], [ %i.abf, %.preheader1574.thread.i ], [ %i.asp, %.preheader1570.preheader.i ], [ %i.ats, %._crit_edge1794.us.i ] ; 3 uses
  %i.atv = or disjoint i32 %.11192.lcssa.i, 3
  %i.atw = icmp slt i32 %i.atv, %2
  br i1 %i.atw, label %.preheader1569.lr.ph.i, label %._crit_edge1824.i

.preheader1569.lr.ph.i:                           ; preds = %.preheader1573.i
  br i1 %i.aag, label %.preheader1569.us.i, label %._crit_edge1853.split.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1816.us.i
  %.211931823.us.i = phi i32 [ %i.avd, %._crit_edge1816.us.i ], [ %.11192.lcssa.i, %.preheader1569.lr.ph.i ]
  %.412001822.us.i = phi ptr [ %i.auy, %._crit_edge1816.us.i ], [ %.21198.lcssa.i, %.preheader1569.lr.ph.i ]
  %.212091821.us.i = phi ptr [ %i.avc, %._crit_edge1816.us.i ], [ %.11208.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212121820.us.i = phi ptr [ %i.avb, %._crit_edge1816.us.i ], [ %.11211.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212151819.us.i = phi ptr [ %i.ava, %._crit_edge1816.us.i ], [ %.11214.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212181818.us.i = phi ptr [ %i.auz, %._crit_edge1816.us.i ], [ %.11217.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.preheader1569.us.i
  %indvars.iv2296.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2297.i, %bb.bf ] ; 5 uses
  %.512011814.us.i = phi ptr [ %.412001822.us.i, %.preheader1569.us.i ], [ %i.auy, %bb.bf ] ; 3 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %.212181818.us.i, i64 %indvars.iv2296.i
end_hunk_1
