Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/error_resilience?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_er_frame_end:bb.a
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !63
  %.fr = freeze ptr %i.vw
  %i.vx = icmp eq ptr %.fr, null                  ; 2 uses
  %spec.select759 = select i1 %i.vx, i32 2, i32 1
  %i.vy = zext i1 %i.vx to i64
  br label %.thread756

.thread756:                                       ; preds = %bb.cq, %bb.cp
  %i.vz = phi i64 [ %i.vy, %bb.cq ], [ 1, %bb.cp ] ; 2 uses
  %i.wa = phi i32 [ %spec.select759, %bb.cq ], [ 2, %bb.cp ]
  %i.wb = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.wc = getelementptr inbounds i8, ptr %i.wb, i64 %i.vs
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !43
  %i.we = and i32 %i.vu, 7
  %.not680 = icmp ne i32 %i.we, 0
  %i.wf = and i8 %i.wd, 10
  %i.wg = icmp ne i8 %i.wf, 2
  %or.cond729 = select i1 %.not680, i1 true, i1 %i.wg
  br i1 %or.cond729, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %.thread756
  %i.wh = and i32 %i.vu, 64
  %.not683 = icmp eq i32 %i.wh, 0
  br i1 %.not683, label %bb.cs, label %.loopexit775.loopexit

.loopexit775.loopexit:                            ; preds = %bb.cr
  %i.wi = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.wj = trunc i64 %i.wi to i32
  %i.wk = mul i32 %i.vl, %i.wj
  %reass.add766 = add i32 %i.wk, %i.vp
  %reass.mul767 = shl i32 %reass.add766, 1
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.vz
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !62 ; 2 uses
  %i.wn = sext i32 %reass.mul767 to i64           ; 2 uses
  %i.wo = getelementptr [4 x i8], ptr %i.wm, i64 %i.wn
  %i.wp = load <4 x i16>, ptr %i.wo, align 2, !tbaa !67
  %i.wq = sext <4 x i16> %i.wp to <4 x i32>
  store <4 x i32> %i.wq, ptr %i.vb, align 8, !tbaa !47
  %i.wr = getelementptr [4 x i8], ptr %i.wm, i64 %i.wi
  %i.ws = getelementptr [4 x i8], ptr %i.wr, i64 %i.wn
  %i.wt = load <4 x i16>, ptr %i.ws, align 2, !tbaa !67
  %i.wu = sext <4 x i16> %i.wt to <4 x i32>
  store <4 x i32> %i.wu, ptr %i.vf, align 8, !tbaa !47
  br label %.loopexit775

bb.cs:                                            ; preds = %bb.cr
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.vz
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !62
  %i.wx = load i64, ptr %i.a, align 8, !tbaa !53
  %i.wy = mul nsw i64 %i.wx, %i.vk
  %i.wz = getelementptr [4 x i8], ptr %i.ww, i64 %i.wy
  %.idx = shl i64 %indvars.iv939, 3
  %i.xa = getelementptr i8, ptr %i.wz, i64 %.idx  ; 2 uses
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !67
  %i.xc = sext i16 %i.xb to i32
  store i32 %i.xc, ptr %i.vb, align 8, !tbaa !47
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 2
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !67
  %i.xf = sext i16 %i.xe to i32
  store i32 %i.xf, ptr %i.vc, align 4, !tbaa !47
  br label %.loopexit775

.loopexit775:                                     ; preds = %.loopexit775.loopexit, %bb.cs
  %.0570 = phi i32 [ 0, %bb.cs ], [ 1, %.loopexit775.loopexit ]
  %i.xg = load ptr, ptr %i.vd, align 8, !tbaa !68
  %i.xh = load ptr, ptr %i.ve, align 8, !tbaa !69
  tail call void %i.xg(ptr noundef %i.xh, i32 noundef 0, i32 noundef %i.wa, i32 noundef %.0570, ptr noundef nonnull %i.vb, i32 noundef %i.vp, i32 noundef %i.vl, i32 noundef 0, i32 noundef 0) #10
  %.pre1020 = load i32, ptr %i.v, align 4, !tbaa !45
  br label %bb.ct

bb.ct:                                            ; preds = %.thread756, %.loopexit775
  %i.xi = phi i32 [ %i.vm, %.thread756 ], [ %.pre1020, %.loopexit775 ] ; 4 uses
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 1 ; 2 uses
  %i.xj = sext i32 %i.xi to i64
  %i.xk = icmp slt i64 %indvars.iv.next940, %i.xj
  br i1 %i.xk, label %bb.cp, label %._crit_edge852.loopexit, !llvm.loop !94

._crit_edge852.loopexit:                          ; preds = %bb.ct
  %.pre1021 = load i32, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge852

._crit_edge852:                                   ; preds = %._crit_edge852.loopexit, %.preheader776
  %i.xl = phi i32 [ %.pre1021, %._crit_edge852.loopexit ], [ %i.vg, %.preheader776 ] ; 3 uses
  %i.xm = phi i32 [ %i.xi, %._crit_edge852.loopexit ], [ %i.vh, %.preheader776 ]
  %i.xn = phi i32 [ %i.xi, %._crit_edge852.loopexit ], [ %i.vi, %.preheader776 ]
  %indvars.iv.next943 = add nuw nsw i64 %indvars.iv942, 1 ; 2 uses
  %i.xo = sext i32 %i.xl to i64
  %i.xp = icmp slt i64 %indvars.iv.next943, %i.xo
  br i1 %i.xp, label %.preheader776, label %._crit_edge854, !llvm.loop !95

._crit_edge854:                                   ; preds = %._crit_edge852, %.loopexit777
  %i.xq = phi i32 [ %i.ux, %.loopexit777 ], [ %i.xl, %._crit_edge852 ] ; 3 uses
  %i.xr = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 120
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !122
  %i.xu = icmp eq i32 %i.xt, 3
  br i1 %i.xu, label %.preheader774, label %bb.dh

.preheader774:                                    ; preds = %._crit_edge854
  %i.xv = icmp sgt i32 %i.xq, 0
  %.pre1027.pre1032 = load i32, ptr %i.v, align 4, !tbaa !45 ; 3 uses
  br i1 %i.xv, label %.preheader773.lr.ph, label %._crit_edge874.split

.preheader773.lr.ph:                              ; preds = %.preheader774
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 434
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %.preheader773

.preheader773:                                    ; preds = %.preheader773.lr.ph, %._crit_edge857
  %i.yi = phi i32 [ %i.xq, %.preheader773.lr.ph ], [ %i.aae, %._crit_edge857 ]
  %i.yj = phi i32 [ %.pre1027.pre1032, %.preheader773.lr.ph ], [ %i.aaf, %._crit_edge857 ] ; 2 uses
  %i.yk = phi i32 [ %.pre1027.pre1032, %.preheader773.lr.ph ], [ %i.aag, %._crit_edge857 ] ; 2 uses
  %.2594858 = phi i32 [ 0, %.preheader773.lr.ph ], [ %i.aah, %._crit_edge857 ] ; 5 uses
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph856, label %._crit_edge857

.lr.ph856:                                        ; preds = %.preheader773, %bb.dg
  %i.ym = phi i32 [ %i.aab, %bb.dg ], [ %i.yj, %.preheader773 ]
  %.3589855 = phi i32 [ %i.aac, %bb.dg ], [ 0, %.preheader773 ] ; 4 uses
  %i.yn = load i64, ptr %i.a, align 8, !tbaa !53
  %i.yo = trunc i64 %i.yn to i32
  %i.yp = mul i32 %.2594858, %i.yo
  %reass.add = add i32 %i.yp, %.3589855
  %reass.mul = shl i32 %reass.add, 1
  %i.yq = load i64, ptr %i.xw, align 8, !tbaa !21
  %i.yr = trunc i64 %i.yq to i32
  %i.ys = mul i32 %.2594858, %i.yr
  %i.yt = add i32 %i.ys, %.3589855
  %i.yu = load ptr, ptr %i.xx, align 8, !tbaa !65
  %i.yv = sext i32 %i.yt to i64                   ; 2 uses
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !47
  %i.yy = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 %i.yv
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !43
  %i.zb = and i32 %i.yx, 7
  %.not670 = icmp ne i32 %i.zb, 0
  %i.zc = and i8 %i.za, 10
  %i.zd = icmp ne i8 %i.zc, 10
  %or.cond731 = select i1 %.not670, i1 true, i1 %i.zd
  br i1 %or.cond731, label %bb.dg, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph856
  %i.ze = load ptr, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  %.not673 = icmp eq ptr %i.ze, null
  br i1 %.not673, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !63
  %.not674 = icmp eq ptr %i.zf, null
  br i1 %.not674, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0567 = phi i32 [ 3, %bb.cv ], [ 2, %bb.cw ]   ; 2 uses
  %i.zg = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 2 uses
  %.not675 = icmp eq ptr %i.zg, null
  br i1 %.not675, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !63
  %.not676 = icmp eq ptr %i.zh, null
  br i1 %.not676, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.zi = and i32 %.0567, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.1568 = phi i32 [ %.0567, %bb.cy ], [ %i.zi, %bb.cz ]
  %i.zj = load i16, ptr %i.xy, align 8, !tbaa !124 ; 2 uses
  %.not677 = icmp eq i16 %i.zj, 0
  br i1 %.not677, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zk = load ptr, ptr %0, align 8, !tbaa !24
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !54
  %.not678 = icmp eq i32 %i.zm, 27
  br i1 %.not678, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1219) #10
  tail call void @abort() #11
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.zn = load i16, ptr %i.xz, align 2, !tbaa !125
  %2 = zext i16 %i.zn to i32                      ; 3 uses
  %3 = zext i16 %i.zj to i32                      ; 2 uses
  %i.zo = load ptr, ptr %i.ya, align 8, !tbaa !126
  tail call void @ff_thread_progress_await(ptr noundef %i.zo, i32 noundef %.2594858) #10
  %i.zp = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.zq = sext i32 %reass.mul to i64
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 2
  %4 = sub nsw i32 %2, %3                         ; 2 uses
  %i.zt = load i16, ptr %i.zr, align 2, !tbaa !67
  %i.zu = sext i16 %i.zt to i32                   ; 2 uses
  %i.zv = mul nsw i32 %i.zu, %2
  %i.zw = load i16, ptr %i.zs, align 2, !tbaa !67
  %i.zx = sext i16 %i.zw to i32                   ; 2 uses
  %5 = mul nsw i32 %i.zx, %2
  %i.zy = mul nsw i32 %4, %i.zu
  %6 = mul nsw i32 %4, %i.zx
  %7 = insertelement <4 x i32> poison, i32 %i.zv, i64 0
  %8 = insertelement <4 x i32> %7, i32 %i.zy, i64 1
  %9 = insertelement <4 x i32> %8, i32 %5, i64 2
  %10 = insertelement <4 x i32> %9, i32 %6, i64 3
  %11 = insertelement <4 x i32> poison, i32 %3, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = sdiv <4 x i32> %10, %12                   ; 3 uses
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %14, ptr %i.yc, align 8, !tbaa !47
  %15 = extractelement <4 x i32> %13, i64 1
  store i32 %15, ptr %i.ye, align 8, !tbaa !47
  %16 = extractelement <4 x i32> %13, i64 3
  br label %bb.df

bb.de:                                            ; preds = %bb.da
  store i32 0, ptr %i.yc, align 8, !tbaa !47
  store i32 0, ptr %i.yd, align 4, !tbaa !47
  store i32 0, ptr %i.ye, align 8, !tbaa !47
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %storemerge = phi i32 [ %16, %bb.dd ], [ 0, %bb.de ]
  store i32 %storemerge, ptr %i.yf, align 4, !tbaa !47
  %i.zz = load ptr, ptr %i.yg, align 8, !tbaa !68
  %i.aaa = load ptr, ptr %i.yh, align 8, !tbaa !69
  tail call void %i.zz(ptr noundef %i.aaa, i32 noundef 0, i32 noundef %.1568, i32 noundef 0, ptr noundef nonnull %i.yc, i32 noundef %.3589855, i32 noundef %.2594858, i32 noundef 0, i32 noundef 0) #10
  %.pre1023 = load i32, ptr %i.v, align 4, !tbaa !45
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph856, %bb.df
  %i.aab = phi i32 [ %i.ym, %.lr.ph856 ], [ %.pre1023, %bb.df ] ; 4 uses
  %i.aac = add nuw nsw i32 %.3589855, 1           ; 2 uses
  %i.aad = icmp slt i32 %i.aac, %i.aab
  br i1 %i.aad, label %.lr.ph856, label %._crit_edge857.loopexit, !llvm.loop !96

._crit_edge857.loopexit:                          ; preds = %bb.dg
  %.pre1024 = load i32, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge857

._crit_edge857:                                   ; preds = %._crit_edge857.loopexit, %.preheader773
  %i.aae = phi i32 [ %.pre1024, %._crit_edge857.loopexit ], [ %i.yi, %.preheader773 ] ; 3 uses
  %i.aaf = phi i32 [ %i.aab, %._crit_edge857.loopexit ], [ %i.yj, %.preheader773 ] ; 2 uses
  %i.aag = phi i32 [ %i.aab, %._crit_edge857.loopexit ], [ %i.yk, %.preheader773 ]
  %i.aah = add nuw nsw i32 %.2594858, 1           ; 2 uses
  %i.aai = icmp slt i32 %i.aah, %i.aae
  br i1 %i.aai, label %.preheader773, label %.loopexit, !llvm.loop !97

bb.dh:                                            ; preds = %._crit_edge854
  tail call fastcc void @guess_mv(ptr noundef nonnull %0)
  %.pre1025 = load i32, ptr %i.c, align 8, !tbaa !20
  %.pre1027.pre = load i32, ptr %i.v, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge857, %bb.dh
  %.pre1027 = phi i32 [ %.pre1027.pre, %bb.dh ], [ %i.aaf, %._crit_edge857 ] ; 4 uses
  %i.aaj = phi i32 [ %.pre1025, %bb.dh ], [ %i.aae, %._crit_edge857 ] ; 5 uses
  %i.aak = icmp sgt i32 %i.aaj, 0
  br i1 %i.aak, label %.preheader772.lr.ph, label %._crit_edge874.split

.preheader772.lr.ph:                              ; preds = %.loopexit
  %i.aal = icmp sgt i32 %.pre1027, 0
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %i.aal, label %.preheader772.lr.ph.split, label %._crit_edge874.split

.preheader772.lr.ph.split:                        ; preds = %.preheader772.lr.ph
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !21 ; 2 uses
  %i.aau = load ptr, ptr %i.aar, align 8, !tbaa !65
  %wide.trip.count970 = zext nneg i32 %i.aaj to i64
  %wide.trip.count965 = zext nneg i32 %.pre1027 to i64
  br label %.preheader772

.preheader772:                                    ; preds = %.preheader772.lr.ph.split, %._crit_edge872
  %indvars.iv967 = phi i64 [ 0, %.preheader772.lr.ph.split ], [ %indvars.iv.next968, %._crit_edge872 ] ; 6 uses
  %i.aav = mul i64 %indvars.iv967, %i.aat
  %i.aaw = shl nuw nsw i64 %indvars.iv967, 1
  %i.aax = mul nsw i64 %i.aat, %indvars.iv967     ; 2 uses
  %indvars.iv967.tr = trunc nuw i64 %indvars.iv967 to i32
  %i.aay = shl nuw i32 %indvars.iv967.tr, 4
  %indvars.iv967.tr1100 = trunc nuw i64 %indvars.iv967 to i32
  %i.aaz = shl nuw i32 %indvars.iv967.tr1100, 3   ; 2 uses
  br label %bb.di

bb.di:                                            ; preds = %.preheader772, %bb.dm
  %indvars.iv962 = phi i64 [ 0, %.preheader772 ], [ %indvars.iv.next963, %bb.dm ] ; 7 uses
  %i.aba = add i64 %i.aav, %indvars.iv962
  %sext1098 = shl i64 %i.aba, 32
  %i.abb = ashr exact i64 %sext1098, 30
  %i.abc = getelementptr inbounds i8, ptr %i.aau, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !47
  %i.abe = and i32 %i.abd, 7
  %.not667 = icmp eq i32 %i.abe, 0
  br i1 %.not667, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.abf = load i32, ptr %i.hc, align 8, !tbaa !119
  %.not668 = icmp eq i32 %i.abf, 0
  br i1 %.not668, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.abg = load ptr, ptr %i.q, align 8, !tbaa !50 ; 3 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !63
  %i.abi = shl nuw nsw i64 %indvars.iv962, 4
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abi
  %i.abk = load i32, ptr %i.ah, align 4, !tbaa !47 ; 9 uses
  %i.abl = mul nsw i32 %i.aay, %i.abk
  %i.abm = sext i32 %i.abl to i64
  %i.abn = getelementptr inbounds i8, ptr %i.abj, i64 %i.abm ; 64 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !63
  %i.abq = load i32, ptr %i.aam, align 4, !tbaa !47 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !63 ; 2 uses
  %i.abt = load i32, ptr %i.aan, align 4, !tbaa !47 ; 2 uses
  %i.abu = load ptr, ptr %i.aao, align 8, !tbaa !62
  %i.abv = load i64, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %i.abw = mul nsw i64 %i.abv, %i.aaw
  %i.abx = getelementptr [2 x i8], ptr %i.abu, i64 %i.abw
  %.idx1099 = shl i64 %indvars.iv962, 2
  %i.aby = getelementptr i8, ptr %i.abx, i64 %.idx1099
  br label %.preheader770

.preheader770:                                    ; preds = %bb.dk, %.preheader770
  %.0559863 = phi i32 [ 0, %bb.dk ], [ %i.arv, %.preheader770 ] ; 5 uses
  %i.abz = shl nuw nsw i32 %.0559863, 3
  %i.aca = and i32 %i.abz, 8                      ; 8 uses
  %i.acb = shl nuw nsw i32 %.0559863, 2
  %i.acc = and i32 %i.acb, 8                      ; 8 uses
  %i.acd = mul i32 %i.acc, %i.abk
  %i.ace = add i32 %i.acd, %i.aca                 ; 8 uses
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds i8, ptr %i.abn, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !43
  %i.aci = zext i8 %i.ach to i32
  %i.acj = sext i32 %i.ace to i64
  %i.ack = getelementptr i8, ptr %i.abn, i64 %i.acj
  %i.acl = getelementptr i8, ptr %i.ack, i64 1
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !43
  %i.acn = zext i8 %i.acm to i32
  %i.aco = add nuw nsw i32 %i.aci, %i.acn
  %i.acp = sext i32 %i.ace to i64
  %i.acq = getelementptr i8, ptr %i.abn, i64 %i.acp
  %i.acr = getelementptr i8, ptr %i.acq, i64 2
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !43
  %i.act = zext i8 %i.acs to i32
  %i.acu = add nuw nsw i32 %i.aco, %i.act
  %i.acv = sext i32 %i.ace to i64
  %i.acw = getelementptr i8, ptr %i.abn, i64 %i.acv
  %i.acx = getelementptr i8, ptr %i.acw, i64 3
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !43
  %i.acz = zext i8 %i.acy to i32
  %i.ada = add nuw nsw i32 %i.acu, %i.acz
  %i.adb = sext i32 %i.ace to i64
  %i.adc = getelementptr i8, ptr %i.abn, i64 %i.adb
  %i.add = getelementptr i8, ptr %i.adc, i64 4
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !43
  %i.adf = zext i8 %i.ade to i32
  %i.adg = add nuw nsw i32 %i.ada, %i.adf
  %i.adh = sext i32 %i.ace to i64
  %i.adi = getelementptr i8, ptr %i.abn, i64 %i.adh
  %i.adj = getelementptr i8, ptr %i.adi, i64 5
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !43
  %i.adl = zext i8 %i.adk to i32
  %i.adm = add nuw nsw i32 %i.adg, %i.adl
  %i.adn = sext i32 %i.ace to i64
  %i.ado = getelementptr i8, ptr %i.abn, i64 %i.adn
  %i.adp = getelementptr i8, ptr %i.ado, i64 6
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !43
  %i.adr = zext i8 %i.adq to i32
  %i.ads = add nuw nsw i32 %i.adm, %i.adr
  %i.adt = sext i32 %i.ace to i64
  %i.adu = getelementptr i8, ptr %i.abn, i64 %i.adt
  %i.adv = getelementptr i8, ptr %i.adu, i64 7
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !43
  %i.adx = zext i8 %i.adw to i32
  %i.ady = add nuw nsw i32 %i.ads, %i.adx
  %i.adz = or disjoint i32 %i.acc, 1
  %i.aea = mul i32 %i.adz, %i.abk
  %i.aeb = add i32 %i.aea, %i.aca                 ; 8 uses
  %i.aec = sext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds i8, ptr %i.abn, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !43
  %i.aef = zext i8 %i.aee to i32
  %i.aeg = add nuw nsw i32 %i.ady, %i.aef
  %i.aeh = add i32 %i.aeb, 1
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds i8, ptr %i.abn, i64 %i.aei
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !43
  %i.ael = zext i8 %i.aek to i32
  %i.aem = add nuw nsw i32 %i.aeg, %i.ael
  %i.aen = add i32 %i.aeb, 2
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds i8, ptr %i.abn, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !43
  %i.aer = zext i8 %i.aeq to i32
  %i.aes = add nuw nsw i32 %i.aem, %i.aer
  %i.aet = add i32 %i.aeb, 3
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds i8, ptr %i.abn, i64 %i.aeu
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !43
  %i.aex = zext i8 %i.aew to i32
  %i.aey = add nuw nsw i32 %i.aes, %i.aex
  %i.aez = add i32 %i.aeb, 4
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr inbounds i8, ptr %i.abn, i64 %i.afa
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !43
  %i.afd = zext i8 %i.afc to i32
  %i.afe = add nuw nsw i32 %i.aey, %i.afd
  %i.aff = add i32 %i.aeb, 5
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds i8, ptr %i.abn, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !43
  %i.afj = zext i8 %i.afi to i32
  %i.afk = add nuw nsw i32 %i.afe, %i.afj
  %i.afl = add i32 %i.aeb, 6
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds i8, ptr %i.abn, i64 %i.afm
end_hunk_0
