Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mv-search?download=true
inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Get_Direct_Motion_Vectors:bb.a
  br i1 %i.ws, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.wt = icmp eq i16 %.1363486, 0
  br i1 %i.wt, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.wu = load ptr, ptr %i.vd, align 8, !tbaa !34
  %i.wv = sext i32 %i.vn to i64
  %i.ww = getelementptr inbounds i8, ptr %i.wu, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !36
  %.not468 = icmp eq i8 %i.wx, 0
  br i1 %.not468, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !61
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !43
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !45 ; 2 uses
  store i16 0, ptr %i.xb, align 2, !tbaa !46
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 2
  store i16 0, ptr %i.xc, align 2, !tbaa !46
  %i.xd = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !76
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.vb
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !34
  %i.xi = sext i32 %i.vj to i64
  %i.xj = getelementptr inbounds i8, ptr %i.xh, i64 %i.xi
  store i8 0, ptr %i.xj, align 1, !tbaa !36
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu, %bb.ct
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !61
  %i.xm = zext nneg i16 %.1363486 to i64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %i.xm
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !43
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !45
  store <2 x i16> %i.up, ptr %i.xp, align 2, !tbaa !46
  %i.xq = trunc nuw i16 %.1363486 to i8
  %i.xr = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !76
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.vb
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !34
  %i.xw = sext i32 %i.vj to i64
  %i.xx = getelementptr inbounds i8, ptr %i.xv, i64 %i.xw
  store i8 %i.xq, ptr %i.xx, align 1, !tbaa !36
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cs
  %i.xy = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !76
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %i.vb
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !34
  %i.yd = sext i32 %i.vj to i64
  %i.ye = getelementptr inbounds i8, ptr %i.yc, i64 %i.yd
  store i8 -1, ptr %i.ye, align 1, !tbaa !36
  %i.yf = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !61
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !43
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !45 ; 2 uses
  store i16 0, ptr %i.yi, align 2, !tbaa !46
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 2
  store i16 0, ptr %i.yj, align 2, !tbaa !46
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cv, %bb.cw, %bb.cx
  %i.yk = load ptr, ptr @img, align 8, !tbaa !9   ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 15268
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !31
  %.not469 = icmp eq i32 %i.ym, 0
  br i1 %.not469, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yn = load ptr, ptr %i.vt, align 8, !tbaa !61
  %i.yo = call i16 @llvm.smax.i16(i16 %.1365485, i16 0)
  %i.yp = zext nneg i16 %i.yo to i64
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !43
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !45 ; 2 uses
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !46
  %i.yu = add i16 %i.yt, -8192
  %or.cond471 = icmp ult i16 %i.yu, -16384
  br i1 %or.cond471, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 2
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !46
  %i.yx = sext i16 %i.yw to i32                   ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !79
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.za ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !7  ; 2 uses
  %i.ze = icmp sgt i32 %i.zd, %i.yx
  br i1 %i.ze, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 20
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !7  ; 2 uses
  %i.zh = icmp slt i32 %i.zg, %i.yx
  br i1 %i.zh, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.zi = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !61
  %i.zk = call i16 @llvm.smax.i16(i16 %.1363486, i16 0)
  %i.zl = zext nneg i16 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %i.zl
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !43
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !45 ; 2 uses
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !46
  %i.zq = add i16 %i.zp, -8192
  %or.cond472 = icmp ult i16 %i.zq, -16384
  br i1 %or.cond472, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 2
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !46
  %i.zt = sext i16 %i.zs to i32                   ; 2 uses
  %i.zu = icmp sgt i32 %i.zd, %i.zt
  %i.zv = icmp slt i32 %i.zg, %i.zt
  %or.cond473 = or i1 %i.zu, %i.zv
  br i1 %or.cond473, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz
  %i.zw = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !76
  %i.zy = getelementptr inbounds [8 x i8], ptr %i.zx, i64 %i.vb
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !34
  %i.aaa = sext i32 %i.vj to i64                  ; 2 uses
  %i.aab = getelementptr inbounds i8, ptr %i.zz, i64 %i.aaa
  store i8 -1, ptr %i.aab, align 1, !tbaa !36
  br label %.critedge.sink.split

bb.df:                                            ; preds = %bb.dd, %bb.cy
  %i.aac = icmp slt i16 %.1365485, 0
  %i.aad = icmp slt i16 %.1363486, 0
  %or.cond14 = select i1 %i.aac, i1 %i.aad, i1 false
  br i1 %or.cond14, label %bb.dg, label %._crit_edge728

._crit_edge728:                                   ; preds = %bb.df
  %.pre729 = sext i32 %i.vj to i64
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aae = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !76
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.aag, i64 %i.vb
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !34
  %i.aaj = sext i32 %i.vj to i64                  ; 3 uses
  %i.aak = getelementptr inbounds i8, ptr %i.aai, i64 %i.aaj
  store i8 0, ptr %i.aak, align 1, !tbaa !36
  %i.aal = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !76
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %i.vb
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !34
  %i.aap = getelementptr inbounds i8, ptr %i.aao, i64 %i.aaj
  store i8 0, ptr %i.aap, align 1, !tbaa !36
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge728, %bb.dg
  %.pre-phi730 = phi i64 [ %.pre729, %._crit_edge728 ], [ %i.aaj, %bb.dg ] ; 8 uses
  %.2366 = phi i16 [ %.1365485, %._crit_edge728 ], [ 0, %bb.dg ] ; 7 uses
  %.2 = phi i16 [ %.1363486, %._crit_edge728 ], [ 0, %bb.dg ] ; 7 uses
  %i.aaq = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !76
  %i.aat = getelementptr inbounds [8 x i8], ptr %i.aas, i64 %i.vb
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !34
  %i.aav = getelementptr inbounds i8, ptr %i.aau, i64 %.pre-phi730
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !36
  %i.aax = icmp eq i8 %i.aaw, -1
  br i1 %i.aax, label %.critedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aay = load ptr, ptr %i.aaq, align 8, !tbaa !76
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.vb
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !34
  %i.abb = getelementptr inbounds i8, ptr %i.aba, i64 %.pre-phi730 ; 2 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !36
  %i.abd = icmp eq i8 %i.abc, -1
  br i1 %i.abd, label %.critedge, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.abe = load ptr, ptr @active_pps, align 8, !tbaa !9
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 196
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !186
  %i.abh = icmp eq i32 %i.abg, 1
  br i1 %i.abh, label %.preheader480, label %.critedge

.preheader480:                                    ; preds = %bb.dj
  %i.abi = load ptr, ptr @active_sps, align 8, !tbaa !9
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !190
  %.fr775 = freeze i32 %i.abk
  %.not829 = icmp eq i32 %.fr775, 0
  %i.abl = load ptr, ptr @wbp_weight, align 8, !tbaa !53 ; 2 uses
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !67
  %i.abn = sext i16 %.2366 to i64                 ; 2 uses
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.abm, i64 %i.abn
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !69
  %i.abq = sext i16 %.2 to i64                    ; 2 uses
  %i.abr = getelementptr inbounds [8 x i8], ptr %i.abp, i64 %i.abq
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !49 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !67
  %i.abv = getelementptr inbounds [8 x i8], ptr %i.abu, i64 %i.abn
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !69
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.abw, i64 %i.abq
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !49 ; 4 uses
  br i1 %.not829, label %bb.dk, label %.preheader480.split

bb.dk:                                            ; preds = %.preheader480
  %4 = load i32, ptr %i.abs, align 4, !tbaa !7
  %5 = load i32, ptr %i.aby, align 4, !tbaa !7
  %6 = add i32 %4, -128
  %7 = add i32 %6, %5
  %or.cond16.us = icmp ult i32 %7, -256
  br i1 %or.cond16.us, label %bb.dn, label %.critedge

bb.dl:                                            ; preds = %.preheader480.split
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !7
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !7
  %i.acd = add i32 %i.aca, -128
  %i.ace = add i32 %i.acd, %i.acc
  %or.cond16.1 = icmp ult i32 %i.ace, -256
  br i1 %or.cond16.1, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !7
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !7
  %i.acj = add i32 %i.acg, -128
  %i.ack = add i32 %i.acj, %i.aci
  %or.cond16.2 = icmp ult i32 %i.ack, -256
  br i1 %or.cond16.2, label %bb.dn, label %.critedge

.preheader480.split:                              ; preds = %.preheader480
  %8 = load i32, ptr %i.abs, align 4, !tbaa !7
  %9 = load i32, ptr %i.aby, align 4, !tbaa !7
  %10 = add i32 %8, -128
  %11 = add i32 %10, %9
  %or.cond16 = icmp ult i32 %11, -256
  br i1 %or.cond16, label %bb.dn, label %bb.dl

bb.dn:                                            ; preds = %.preheader480.split, %bb.dl, %bb.dm, %bb.dk
  store i8 -1, ptr %i.abb, align 1, !tbaa !36
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.de, %bb.dn
  %.pre-phi730.sink822 = phi i64 [ %.pre-phi730, %bb.dn ], [ %i.aaa, %bb.de ] ; 2 uses
  %.3367.ph = phi i16 [ %.2366, %bb.dn ], [ %.1365485, %bb.de ]
  %.3.ph = phi i16 [ %.2, %bb.dn ], [ %.1363486, %bb.de ]
  %i.acl = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !76
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.acn, i64 %i.vb
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !34
  %i.acq = getelementptr inbounds i8, ptr %i.acp, i64 %.pre-phi730.sink822
  store i8 -1, ptr %i.acq, align 1, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %bb.dm, %.critedge.sink.split, %bb.dj, %bb.dk, %bb.di, %bb.dh
  %.pre-phi730.sink = phi i64 [ %.pre-phi730, %bb.di ], [ %.pre-phi730.sink822, %.critedge.sink.split ], [ %.pre-phi730, %bb.dj ], [ %.pre-phi730, %bb.dh ], [ %.pre-phi730, %bb.dk ], [ %.pre-phi730, %bb.dm ]
  %.sink794 = phi i8 [ 1, %bb.di ], [ -1, %.critedge.sink.split ], [ 2, %bb.dj ], [ 0, %bb.dh ], [ 2, %bb.dk ], [ 2, %bb.dm ]
  %.3367 = phi i16 [ %.2366, %bb.di ], [ %.3367.ph, %.critedge.sink.split ], [ %.2366, %bb.dj ], [ %.2366, %bb.dh ], [ %.2366, %bb.dk ], [ %.2366, %bb.dm ] ; 2 uses
  %.3 = phi i16 [ %.2, %bb.di ], [ %.3.ph, %.critedge.sink.split ], [ %.2, %bb.dj ], [ %.2, %bb.dh ], [ %.2, %bb.dk ], [ %.2, %bb.dm ] ; 2 uses
  %i.acr = load ptr, ptr @direct_pdir, align 8, !tbaa !76
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %i.vb
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !34
  %i.acu = getelementptr inbounds i8, ptr %i.act, i64 %.pre-phi730.sink
  store i8 %.sink794, ptr %i.acu, align 1, !tbaa !36
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next498, 4
  br i1 %exitcond.not, label %bb.do, label %bb.cm, !llvm.loop !176

bb.do:                                            ; preds = %.critedge
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next500, 4
  br i1 %exitcond501.not, label %bb.dp, label %bb.cl, !llvm.loop !177

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit479

bb.dq:                                            ; preds = %bb.f
  %i.acv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.acw = sext i32 %i.q to i64
  %i.acx = getelementptr inbounds [264 x i8], ptr %i.acv, i64 %i.acw
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.ek
  %indvars.iv513.a = phi i64 [ 0, %bb.dq ], [ %indvars.iv.next514, %bb.ek ] ; 3 uses
  %i.acy = load ptr, ptr @img, align 8, !tbaa !9  ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 180
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !80
  %i.adb = ashr i32 %i.ada, 2
  %i.adc = trunc nuw nsw i64 %indvars.iv513.a to i32 ; 2 uses
  %i.add = add nsw i32 %i.adb, %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acy, i64 196
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !62
  %i.adg = ashr i32 %i.adf, 2
  %i.adh = add nsw i32 %i.adg, %i.adc
  %i.adi = sext i32 %i.adh to i64                 ; 4 uses
  %i.adj = sext i32 %i.add to i64                 ; 8 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.loopexit
  %indvars.iv509 = phi i64 [ 0, %bb.dr ], [ %indvars.iv.next510, %.loopexit ] ; 3 uses
  %i.adk = load ptr, ptr @img, align 8, !tbaa !9  ; 6 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 176
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !81
  %i.adn = ashr i32 %i.adm, 2
  %i.ado = trunc nuw nsw i64 %indvars.iv509 to i32 ; 2 uses
  %i.adp = add nsw i32 %i.adn, %i.ado             ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adk, i64 192
  %i.adr = load i32, ptr %i.adq, align 8, !tbaa !63
  %i.ads = ashr i32 %i.adr, 2
  %i.adt = add nsw i32 %i.ads, %i.ado
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adk, i64 14384
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !66
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %indvars.iv513.a
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !57
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %indvars.iv509
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !59 ; 6 uses
  %i.aea = load ptr, ptr %.0375, align 8, !tbaa !76
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.aea, i64 %i.adi
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !34
  %i.aed = sext i32 %i.adt to i64                 ; 4 uses
  %i.aee = getelementptr inbounds i8, ptr %i.aec, i64 %i.aed
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !36
  %i.aeg = icmp eq i8 %i.aef, -1
  %i.aeh = zext i1 %i.aeg to i64                  ; 3 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %.0375, i64 %i.aeh
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !76
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.aej, i64 %i.adi
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !34
  %i.aem = getelementptr inbounds i8, ptr %i.ael, i64 %i.aed
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !36
  %i.aeo = icmp eq i8 %i.aen, -1
  br i1 %i.aeo, label %bb.dt, label %.preheader

.preheader:                                       ; preds = %bb.ds
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adk, i64 14456
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !191
  %i.aer = load i32, ptr %i.p, align 8, !tbaa !84
  %i.aes = sext i32 %i.aer to i64                 ; 2 uses
  %i.aet = getelementptr inbounds [4 x i8], ptr @listXsize, i64 %i.aes
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !7
  %i.aev = tail call noundef i32 @llvm.smin.i32(i32 %i.aeq, i32 %i.aeu) ; 2 uses
  %i.aew = icmp sgt i32 %i.aev, 0
  br i1 %i.aew, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %.0374, i64 %i.aeh
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !193
  %i.aez = getelementptr inbounds [8 x i8], ptr %i.aey, i64 %i.adi
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !195
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %i.aed
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !196
  %wide.trip.count = zext nneg i32 %i.aev to i64
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.afd = load ptr, ptr %i.adz, align 8, !tbaa !61
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !43
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !45 ; 2 uses
  store i16 0, ptr %i.aff, align 2, !tbaa !46
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 2
  store i16 0, ptr %i.afg, align 2, !tbaa !46
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !61
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !43
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !45 ; 2 uses
  store i16 0, ptr %i.afk, align 2, !tbaa !46
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 2
  store i16 0, ptr %i.afl, align 2, !tbaa !46
  br label %._crit_edge

bb.du:                                            ; preds = %.lr.ph, %bb.dv
  %indvars.iv502 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next503, %bb.dv ] ; 6 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %indvars.iv502
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !196
  %i.afo = icmp eq i64 %i.afn, %i.afc
  br i1 %i.afo, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count
  br i1 %exitcond505.not, label %._crit_edge, label %bb.du, !llvm.loop !178

bb.dw:                                            ; preds = %bb.du
  %i.afp = getelementptr inbounds nuw i8, ptr %i.adk, i64 14472
  %i.afq = getelementptr inbounds [128 x i8], ptr %i.afp, i64 %i.aes
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %indvars.iv502
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !7 ; 4 uses
  %i.aft = icmp eq i32 %i.afs, 9999
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %.0376, i64 %i.aeh
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !61
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.afv, i64 %i.adi
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !43
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.afx, i64 %i.aed
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !45 ; 4 uses
  %i.aga = load i16, ptr %i.afz, align 2, !tbaa !46 ; 2 uses
  br i1 %i.aft, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.agb = load ptr, ptr %i.adz, align 8, !tbaa !61 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !43
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !45 ; 2 uses
  store i16 %i.aga, ptr %i.agd, align 2, !tbaa !46
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 2
  %i.agf = load i16, ptr %i.age, align 2, !tbaa !46
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 2
  store i16 %i.agf, ptr %i.agg, align 2, !tbaa !46
  %i.agh = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !61
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !43
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !45 ; 2 uses
  store i16 0, ptr %i.agk, align 2, !tbaa !46
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 2
  store i16 0, ptr %i.agl, align 2, !tbaa !46
  %.phi.trans.insert694 = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %indvars.iv502
  %.pre695 = load ptr, ptr %.phi.trans.insert694, align 8, !tbaa !43
  %.pre696 = load ptr, ptr %.pre695, align 8, !tbaa !45
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.agm = sext i16 %i.aga to i32
  %i.agn = mul nsw i32 %i.afs, %i.agm
  %i.ago = add nsw i32 %i.agn, 128
  %i.agp = lshr i32 %i.ago, 8
  %i.agq = trunc i32 %i.agp to i16
  %i.agr = load ptr, ptr %i.adz, align 8, !tbaa !61
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv502
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !43
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !45 ; 3 uses
  store i16 %i.agq, ptr %i.agu, align 2, !tbaa !46
  %i.agv = getelementptr inbounds nuw i8, ptr %i.afz, i64 2 ; 2 uses
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !46
  %i.agx = sext i16 %i.agw to i32
  %i.agy = mul nsw i32 %i.afs, %i.agx
  %i.agz = add nsw i32 %i.agy, 128
  %i.aha = lshr i32 %i.agz, 8
  %i.ahb = trunc i32 %i.aha to i16
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agu, i64 2
  store i16 %i.ahb, ptr %i.ahc, align 2, !tbaa !46
  %i.ahd = add nsw i32 %i.afs, -256               ; 2 uses
  %i.ahe = load i16, ptr %i.afz, align 2, !tbaa !46
  %i.ahf = sext i16 %i.ahe to i32
  %i.ahg = mul nsw i32 %i.ahd, %i.ahf
  %i.ahh = add nsw i32 %i.ahg, 128
  %i.ahi = lshr i32 %i.ahh, 8
  %i.ahj = trunc i32 %i.ahi to i16                ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !61
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !43
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !45 ; 2 uses
  store i16 %i.ahj, ptr %i.ahn, align 2, !tbaa !46
  %i.aho = load i16, ptr %i.agv, align 2, !tbaa !46
  %i.ahp = sext i16 %i.aho to i32
  %i.ahq = mul nsw i32 %i.ahd, %i.ahp
  %i.ahr = add nsw i32 %i.ahq, 128
  %i.ahs = lshr i32 %i.ahr, 8                     ; 2 uses
  %i.aht = trunc i32 %i.ahs to i16
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahn, i64 2
  store i16 %i.aht, ptr %i.ahu, align 2, !tbaa !46
  %i.ahv = add i16 %i.ahj, -8192
  %i.ahw = icmp ult i16 %i.ahv, -16384
  %sext = shl i32 %i.ahs, 16
  %i.ahx = ashr exact i32 %sext, 16
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ahy = phi i32 [ %i.ahx, %bb.dy ], [ 0, %bb.dx ] ; 2 uses
  %or.cond475 = phi i1 [ %i.ahw, %bb.dy ], [ false, %bb.dx ]
  %i.ahz = phi ptr [ %i.agu, %bb.dy ], [ %.pre696, %bb.dx ] ; 2 uses
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !46
  %i.aib = add i16 %i.aia, -8192
  %or.cond474 = icmp ult i16 %i.aib, -16384
  br i1 %or.cond474, label %._crit_edge, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 2
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !46
  %i.aie = sext i16 %i.aid to i32                 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !79
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.aih ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !7 ; 2 uses
  %i.ail = icmp sgt i32 %i.aik, %i.aie
  br i1 %i.ail, label %._crit_edge, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aii, i64 20
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !7 ; 2 uses
  %i.aio = icmp slt i32 %i.ain, %i.aie
  %brmerge = select i1 %i.aio, i1 true, i1 %or.cond475
  br i1 %brmerge, label %._crit_edge, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aip = icmp sgt i32 %i.aik, %i.ahy
  %i.aiq = icmp slt i32 %i.ain, %i.ahy
  %or.cond476 = or i1 %i.aip, %i.aiq
  br i1 %or.cond476, label %._crit_edge, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.air = trunc i64 %indvars.iv502 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.dv, %.preheader, %bb.dz, %bb.ea, %bb.ec, %bb.eb, %bb.ed, %bb.dt
  %.sink813 = phi i8 [ -1, %bb.dz ], [ %i.air, %bb.ed ], [ 0, %bb.dt ], [ -1, %bb.eb ], [ -1, %bb.ec ], [ -1, %bb.ea ], [ -1, %.preheader ], [ -1, %bb.dv ]
  %.sink805 = phi i8 [ -1, %bb.dz ], [ 0, %bb.ed ], [ 0, %bb.dt ], [ -1, %bb.eb ], [ -1, %bb.ec ], [ -1, %bb.ea ], [ -1, %.preheader ], [ -1, %bb.dv ]
  %.sink799 = phi i8 [ -1, %bb.dz ], [ 2, %bb.ed ], [ 2, %bb.dt ], [ -1, %bb.eb ], [ -1, %bb.ec ], [ -1, %bb.ea ], [ -1, %.preheader ], [ -1, %bb.dv ]
  %i.ais = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !76
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.ait, i64 %i.adj
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !34
  %i.aiw = sext i32 %i.adp to i64                 ; 3 uses
  %i.aix = getelementptr inbounds i8, ptr %i.aiv, i64 %i.aiw
  store i8 %.sink813, ptr %i.aix, align 1, !tbaa !36
  %i.aiy = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !76
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.aja, i64 %i.adj
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !34
  %i.ajd = getelementptr inbounds i8, ptr %i.ajc, i64 %i.aiw
  store i8 %.sink805, ptr %i.ajd, align 1, !tbaa !36
  %i.aje = load ptr, ptr @direct_pdir, align 8, !tbaa !76
  %i.ajf = getelementptr inbounds [8 x i8], ptr %i.aje, i64 %i.adj
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !34
  %i.ajh = getelementptr inbounds i8, ptr %i.ajg, i64 %i.aiw
  store i8 %.sink799, ptr %i.ajh, align 1, !tbaa !36
  %i.aji = load ptr, ptr @active_pps, align 8, !tbaa !9
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 196
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !186
  %i.ajl = icmp eq i32 %i.ajk, 1
  br i1 %i.ajl, label %bb.ee, label %.loopexit

bb.ee:                                            ; preds = %._crit_edge
  %i.ajm = load ptr, ptr @direct_pdir, align 8, !tbaa !76
  %i.ajn = getelementptr inbounds [8 x i8], ptr %i.ajm, i64 %i.adj
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !34
  %i.ajp = sext i32 %i.adp to i64                 ; 5 uses
  %i.ajq = getelementptr inbounds i8, ptr %i.ajo, i64 %i.ajp
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !36
  %i.ajs = icmp eq i8 %i.ajr, 2
  br i1 %i.ajs, label %bb.ef, label %.loopexit

bb.ef:                                            ; preds = %bb.ee
  %i.ajt = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83 ; 2 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !76
  %i.ajv = getelementptr inbounds [8 x i8], ptr %i.aju, i64 %i.adj
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !34
  %i.ajx = getelementptr inbounds i8, ptr %i.ajw, i64 %i.ajp ; 2 uses
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !36
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !76
  %i.akb = getelementptr inbounds [8 x i8], ptr %i.aka, i64 %i.adj
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !34
  %i.akd = getelementptr inbounds i8, ptr %i.akc, i64 %i.ajp
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !36
  %i.akf = load ptr, ptr @active_sps, align 8, !tbaa !9
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 32
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !190
  %.fr = freeze i32 %i.akh
  %.not830 = icmp eq i32 %.fr, 0
  %i.aki = load ptr, ptr @wbp_weight, align 8, !tbaa !53 ; 2 uses
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !67
  %i.akk = sext i8 %i.ajy to i64                  ; 2 uses
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.akj, i64 %i.akk
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !69
  %i.akn = sext i8 %i.ake to i64                  ; 2 uses
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.akm, i64 %i.akn
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !49 ; 4 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !67
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.akr, i64 %i.akk
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !69
  %i.aku = getelementptr inbounds [8 x i8], ptr %i.akt, i64 %i.akn
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !49 ; 4 uses
  br i1 %.not830, label %bb.eg, label %.split509

bb.eg:                                            ; preds = %bb.ef
  %12 = load i32, ptr %i.akp, align 4, !tbaa !7
  %13 = load i32, ptr %i.akv, align 4, !tbaa !7
  %14 = add i32 %12, -128
  %15 = add i32 %14, %13
  %or.cond18.us = icmp ult i32 %15, -256
  br i1 %or.cond18.us, label %bb.ej, label %.loopexit

bb.eh:                                            ; preds = %.split509
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akp, i64 4
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !7
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !7
  %i.ala = add i32 %i.akx, -128
  %i.alb = add i32 %i.ala, %i.akz
  %or.cond18.1 = icmp ult i32 %i.alb, -256
  br i1 %or.cond18.1, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !7
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !7
  %i.alg = add i32 %i.ald, -128
  %i.alh = add i32 %i.alg, %i.alf
  %or.cond18.2 = icmp ult i32 %i.alh, -256
  br i1 %or.cond18.2, label %bb.ej, label %.loopexit

.split509:                                        ; preds = %bb.ef
  %16 = load i32, ptr %i.akp, align 4, !tbaa !7
  %17 = load i32, ptr %i.akv, align 4, !tbaa !7
  %18 = add i32 %16, -128
  %19 = add i32 %18, %17
  %or.cond18 = icmp ult i32 %19, -256
  br i1 %or.cond18, label %bb.ej, label %bb.eh

bb.ej:                                            ; preds = %.split509, %bb.eh, %bb.ei, %bb.eg
  store i8 -1, ptr %i.ajx, align 1, !tbaa !36
  %i.ali = load ptr, ptr @direct_ref_idx, align 8, !tbaa !83
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !76
  %i.all = getelementptr inbounds [8 x i8], ptr %i.alk, i64 %i.adj
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !34
  %i.aln = getelementptr inbounds i8, ptr %i.alm, i64 %i.ajp
  store i8 -1, ptr %i.aln, align 1, !tbaa !36
  %i.alo = load ptr, ptr @direct_pdir, align 8, !tbaa !76
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.alo, i64 %i.adj
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !34
  %i.alr = getelementptr inbounds i8, ptr %i.alq, i64 %i.ajp
  store i8 -1, ptr %i.alr, align 1, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ei, %bb.eg, %bb.ej, %._crit_edge, %bb.ee
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next510, 4
  br i1 %exitcond512.not, label %bb.ek, label %bb.ds, !llvm.loop !179

bb.ek:                                            ; preds = %.loopexit
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513.a, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next514, 4
  br i1 %exitcond516.not, label %.loopexit479, label %bb.dr, !llvm.loop !180

.loopexit479:                                     ; preds = %bb.ek, %bb.dp
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"any p2 pointer", !8, i64 0}
!12 = !{!"p2 omnipotent char", !11, i64 0}
!13 = !{!"any p3 pointer", !11, i64 0}
!14 = !{!"p3 int", !13, i64 0}
!15 = !{!"any p4 pointer", !13, i64 0}
!16 = !{!"p4 int", !15, i64 0}
!17 = !{!"p1 _ZTS10macroblock", !8, i64 0}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!"any p5 pointer", !15, i64 0}
!21 = !{!"any p6 pointer", !20, i64 0}
!22 = !{!"p6 short", !21, i64 0}
!23 = !{!"p1 _ZTS18DecRefPicMarking_s", !8, i64 0}
!24 = !{!"p2 double", !11, i64 0}
!25 = !{!"p3 double", !13, i64 0}
!26 = !{!"short", !5, i64 0}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !10, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 128, !12, i64 136, !6, i64 144, !14, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !16, i64 14160, !14, i64 14168, !14, i64 14176, !14, i64 14184, !16, i64 14192, !16, i64 14200, !8, i64 14208, !8, i64 14216, !17, i64 14224, !18, i64 14232, !18, i64 14240, !6, i64 14248, !6, i64 14252, !6, i64 14256, !6, i64 14260, !5, i64 14264, !6, i64 14328, !6, i64 14332, !6, i64 14336, !6, i64 14340, !6, i64 14344, !19, i64 14352, !6, i64 14360, !6, i64 14364, !6, i64 14368, !6, i64 14372, !22, i64 14376, !22, i64 14384, !22, i64 14392, !22, i64 14400, !5, i64 14408, !6, i64 14440, !6, i64 14444, !6, i64 14448, !6, i64 14452, !6, i64 14456, !6, i64 14460, !6, i64 14464, !6, i64 14468, !5, i64 14472, !6, i64 15240, !6, i64 15244, !6, i64 15248, !6, i64 15252, !6, i64 15256, !6, i64 15260, !6, i64 15264, !6, i64 15268, !6, i64 15272, !6, i64 15276, !6, i64 15280, !6, i64 15284, !6, i64 15288, !5, i64 15292, !6, i64 15296, !6, i64 15300, !5, i64 15304, !6, i64 15312, !6, i64 15316, !6, i64 15320, !6, i64 15324, !6, i64 15328, !6, i64 15332, !6, i64 15336, !6, i64 15340, !6, i64 15344, !6, i64 15348, !6, i64 15352, !6, i64 15356, !6, i64 15360, !6, i64 15364, !6, i64 15368, !6, i64 15372, !23, i64 15376, !6, i64 15384, !6, i64 15388, !6, i64 15392, !6, i64 15396, !6, i64 15400, !6, i64 15404, !6, i64 15408, !6, i64 15412, !6, i64 15416, !6, i64 15420, !6, i64 15424, !6, i64 15428, !6, i64 15432, !6, i64 15436, !6, i64 15440, !6, i64 15444, !6, i64 15448, !6, i64 15452, !6, i64 15456, !6, i64 15460, !6, i64 15464, !6, i64 15468, !6, i64 15472, !24, i64 15480, !25, i64 15488, !14, i64 15496, !24, i64 15504, !6, i64 15512, !6, i64 15516, !6, i64 15520, !6, i64 15524, !6, i64 15528, !6, i64 15532, !6, i64 15536, !6, i64 15540, !6, i64 15544, !6, i64 15548, !5, i64 15552, !5, i64 15576, !6, i64 15584, !6, i64 15588, !26, i64 15592, !6, i64 15596, !6, i64 15600, !6, i64 15604, !6, i64 15608, !6, i64 15612}
!28 = !{!27, !6, i64 12}
!29 = !{!"pix_pos", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!30 = !{!29, !6, i64 0}
!31 = !{!27, !6, i64 15268}
!32 = !{!29, !6, i64 20}
!33 = !{!"p1 omnipotent char", !8, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!29, !6, i64 16}
!36 = !{!5, !5, i64 0}
!37 = !{!27, !17, i64 14224}
!38 = !{!"long long", !5, i64 0}
!39 = !{!"macroblock", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !6, i64 20, !5, i64 24, !17, i64 56, !17, i64 64, !6, i64 72, !5, i64 76, !5, i64 332, !5, i64 348, !6, i64 364, !38, i64 368, !5, i64 376, !5, i64 392, !38, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !26, i64 480, !19, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528}
!40 = !{!39, !6, i64 424}
!41 = !{!29, !6, i64 4}
!42 = !{!"p2 short", !11, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 short", !8, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!26, !26, i64 0}
!47 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !6, i64 1560, !6, i64 1564, !6, i64 1568, !6, i64 1572, !6, i64 1576, !6, i64 1580, !5, i64 1584, !6, i64 2084, !6, i64 2088, !6, i64 2092, !6, i64 2096, !6, i64 2100, !6, i64 2104, !6, i64 2108, !6, i64 2112, !6, i64 2116, !6, i64 2120, !6, i64 2124, !6, i64 2128, !6, i64 2132, !6, i64 2136, !6, i64 2140, !6, i64 2144, !6, i64 2148, !6, i64 2152, !6, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !6, i64 2928, !6, i64 2932, !6, i64 2936, !6, i64 2940, !6, i64 2944, !6, i64 2948, !6, i64 2952, !6, i64 2956, !6, i64 2960, !6, i64 2964, !6, i64 2968, !6, i64 2972, !5, i64 2976, !6, i64 4000, !6, i64 4004, !6, i64 4008, !6, i64 4012, !6, i64 4016, !6, i64 4020, !6, i64 4024, !6, i64 4028, !6, i64 4032, !6, i64 4036, !6, i64 4040, !6, i64 4044, !6, i64 4048, !6, i64 4052, !6, i64 4056, !6, i64 4060, !6, i64 4064, !6, i64 4068, !6, i64 4072, !6, i64 4076, !19, i64 4080, !6, i64 4088, !6, i64 4092, !6, i64 4096, !6, i64 4100, !6, i64 4104, !6, i64 4108, !6, i64 4112, !6, i64 4116, !6, i64 4120, !6, i64 4124, !6, i64 4128, !6, i64 4132, !6, i64 4136, !6, i64 4140, !6, i64 4144, !6, i64 4148, !6, i64 4152, !6, i64 4156, !6, i64 4160, !6, i64 4164, !6, i64 4168, !6, i64 4172, !6, i64 4176, !6, i64 4180, !6, i64 4184, !6, i64 4188, !5, i64 4192, !5, i64 4448, !6, i64 4704, !6, i64 4708, !6, i64 4712, !6, i64 4716, !6, i64 4720, !6, i64 4724, !6, i64 4728, !6, i64 4732, !6, i64 4736, !6, i64 4740, !6, i64 4744, !6, i64 4748, !6, i64 4752, !6, i64 4756, !6, i64 4760, !6, i64 4764, !6, i64 4768, !6, i64 4772, !5, i64 4776, !6, i64 5032, !6, i64 5036, !18, i64 5040, !18, i64 5048, !33, i64 5056, !18, i64 5064, !6, i64 5072, !6, i64 5076, !6, i64 5080, !6, i64 5084, !6, i64 5088, !6, i64 5092, !6, i64 5096, !6, i64 5100, !6, i64 5104, !6, i64 5108, !6, i64 5112, !6, i64 5116, !6, i64 5120, !6, i64 5124, !6, i64 5128, !6, i64 5132, !6, i64 5136, !19, i64 5144, !19, i64 5152, !19, i64 5160, !5, i64 5168, !6, i64 5208, !5, i64 5212, !6, i64 5244, !6, i64 5248, !6, i64 5252, !6, i64 5256, !6, i64 5260, !6, i64 5264, !6, i64 5268, !6, i64 5272, !6, i64 5276, !6, i64 5280, !6, i64 5284, !6, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !6, i64 5648, !6, i64 5652, !6, i64 5656, !6, i64 5660, !5, i64 5664, !5, i64 5704, !6, i64 5744, !6, i64 5748, !6, i64 5752, !6, i64 5756, !6, i64 5760, !6, i64 5764, !6, i64 5768, !6, i64 5772, !6, i64 5776, !5, i64 5780, !6, i64 5792}
!48 = !{!47, !6, i64 28}
!49 = !{!18, !18, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!47, !6, i64 5776}
!52 = !{!47, !6, i64 5244}
!53 = !{!16, !16, i64 0}
!54 = !{!22, !22, i64 0}
!55 = !{!27, !22, i64 14376}
!56 = !{!"p5 short", !20, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p4 short", !15, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p3 short", !13, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!27, !6, i64 196}
!63 = !{!27, !6, i64 192}
!64 = !{!47, !6, i64 5100}
!65 = !{!"llvm.loop.unswitch.partial.disable"}
!66 = !{!27, !22, i64 14384}
!67 = !{!14, !14, i64 0}
!68 = !{!"p2 int", !11, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTS16storable_picture", !8, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p3 omnipotent char", !13, i64 0}
!73 = !{!"p3 long long", !13, i64 0}
!74 = !{!"storable_picture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !6, i64 6360, !6, i64 6364, !6, i64 6368, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !6, i64 6392, !6, i64 6396, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !6, i64 6420, !6, i64 6424, !6, i64 6428, !6, i64 6432, !42, i64 6440, !58, i64 6448, !58, i64 6456, !56, i64 6464, !60, i64 6472, !33, i64 6480, !72, i64 6488, !73, i64 6496, !73, i64 6504, !58, i64 6512, !12, i64 6520, !12, i64 6528, !70, i64 6536, !70, i64 6544, !70, i64 6552, !6, i64 6560, !6, i64 6564, !6, i64 6568, !6, i64 6572, !6, i64 6576, !6, i64 6580, !6, i64 6584}
!75 = !{!74, !72, i64 6488}
!76 = !{!12, !12, i64 0}
!77 = !{!74, !58, i64 6512}
!78 = !{!47, !6, i64 4168}
!79 = !{!27, !6, i64 8}
!80 = !{!27, !6, i64 180}
!81 = !{!27, !6, i64 176}
!82 = !{!27, !6, i64 20}
!83 = !{!72, !72, i64 0}
!84 = !{!39, !6, i64 432}
!85 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7}
!86 = distinct !{!86, !50}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50, !110, !111}
!89 = distinct !{!89, !50, !111, !110}
!90 = distinct !{!90, !50}
!91 = distinct !{!91, !50}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !92}
!97 = distinct !{!97, !50, !110, !111}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !98}
!102 = distinct !{!102, !98}
!103 = distinct !{!103, !50, !110, !111}
!104 = distinct !{!104, !50, !110}
!105 = distinct !{!105, !50, !110}
!106 = distinct !{!106, !50}
!107 = !{!27, !6, i64 32}
!108 = !{!27, !6, i64 15520}
!109 = !{!27, !6, i64 15524}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!93}
!113 = !{!96, !95, !94}
!114 = !{!96}
!115 = !{!95, !94}
!116 = !{!95}
!117 = !{!94}
!118 = !{!99}
!119 = !{!102, !101, !100}
!120 = !{!102}
!121 = !{!101, !100}
!122 = !{!101}
!123 = !{!100}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !50, !65}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !141}
!132 = distinct !{!132, !50}
!133 = distinct !{!133, !50}
!134 = distinct !{!134, !50}
!135 = distinct !{!135, !50}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = !{!"llvm.loop.unroll.disable"}
!142 = !{!47, !6, i64 4120}
!143 = !{!47, !6, i64 24}
!144 = !{!27, !6, i64 24}
!145 = !{!47, !6, i64 4124}
!146 = !{!47, !6, i64 2120}
!147 = !{!47, !6, i64 2124}
!148 = !{!47, !6, i64 2128}
!149 = !{!47, !6, i64 2132}
!150 = !{!47, !6, i64 4128}
!151 = !{!"long", !5, i64 0}
!152 = !{!"timeb", !151, i64 0, !26, i64 8, !26, i64 10, !26, i64 12}
!153 = !{!152, !151, i64 0}
!154 = !{!152, !26, i64 8}
!155 = !{!151, !151, i64 0}
end_hunk_0
