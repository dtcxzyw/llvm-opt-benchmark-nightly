Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/cwebp?download=true
inline.NumInlined: 29
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a
  %i.wv = and i32 %i.wu, 16777215
  %i.ww = or disjoint i32 %i.wv, %i.ws
  store i32 %i.ww, ptr %i.wq, align 4, !tbaa !12
  %indvars.iv.next1786 = add nuw nsw i64 %indvars.iv1785, 1 ; 2 uses
  %i.wx = load i32, ptr %i.we, align 8, !tbaa !18 ; 2 uses
  %i.wy = sext i32 %i.wx to i64
  %i.wz = icmp slt i64 %indvars.iv.next1786, %i.wy
  br i1 %i.wz, label %.lr.ph1401, label %._crit_edge1402.loopexit, !llvm.loop !38

._crit_edge1402.loopexit:                         ; preds = %.lr.ph1401
  %.pre1788 = load i32, ptr %i.wb, align 4, !tbaa !19
  br label %._crit_edge1402

._crit_edge1402:                                  ; preds = %._crit_edge1402.loopexit, %.preheader
  %i.xa = phi i32 [ %.pre1788, %._crit_edge1402.loopexit ], [ %i.wn, %.preheader ] ; 2 uses
  %i.xb = phi i32 [ %i.wx, %._crit_edge1402.loopexit ], [ %i.wo, %.preheader ]
  %i.xc = load i32, ptr %i.wf, align 8, !tbaa !86
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds [4 x i8], ptr %.04791404, i64 %i.xd
  %i.xf = load i32, ptr %i.wg, align 8, !tbaa !86
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %.04781405, i64 %i.xg
  %i.xi = add nuw nsw i32 %.04801403, 1           ; 2 uses
  %i.xj = icmp slt i32 %i.xi, %i.xa
  br i1 %i.xj, label %.preheader, label %._crit_edge1406, !llvm.loop !39

._crit_edge1406:                                  ; preds = %._crit_edge1402, %.preheader.lr.ph, %bb.gz
  call void @WebPPictureFree(ptr noundef nonnull %9) #11
  br label %bb.ha

.thread921:                                       ; preds = %bb.gt, %bb.gx, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.kp

bb.ha:                                            ; preds = %bb.gy, %._crit_edge1406
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %ApplyResizeMode.exit
  %.b616 = load i1, ptr @verbose, align 4
  %brmerge = or i1 %i.qm, %i.us
  %or.cond953 = select i1 %.b616, i1 %brmerge, i1 false
  br i1 %or.cond953, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.xk = call fastcc double @StopwatchReadAndReset(ptr noundef %8)
  %i.xl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xl, ptr noundef nonnull @.str.98, double noundef %i.xk) #14 ; 0 uses
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !20
  %i.xp = icmp sgt i32 %i.xo, 0
  br i1 %i.xp, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.xq = load <2 x i32>, ptr %i.qt, align 8, !tbaa !12
  %i.xr = add nsw <2 x i32> %i.xq, splat (i32 15)
  %i.xs = sdiv <2 x i32> %i.xr, splat (i32 16)    ; 2 uses
  %i.xt = extractelement <2 x i32> %i.xs, i64 0
  %i.xu = extractelement <2 x i32> %i.xs, i64 1
  %i.xv = mul nsw i32 %i.xu, %i.xt
  %i.xw = sext i32 %i.xv to i64
  %i.xx = call ptr @WebPMalloc(i64 noundef %i.xw) #11
  %i.xy = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %i.xx, ptr %i.xy, align 8, !tbaa !26
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.xz = icmp slt i32 %.05101079, 0              ; 2 uses
  %i.ya = load i32, ptr %4, align 4
  %i.yb = icmp ne i32 %i.ya, 0
  %or.cond42 = select i1 %i.xz, i1 true, i1 %i.yb
  br i1 %or.cond42, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.yc = call i32 @WebPPictureCopy(ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  %.not721 = icmp eq i32 %i.yc, 0
  br i1 %.not721, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.yd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite722 = call i64 @fwrite(ptr nonnull @.str.95, i64 37, i64 1, ptr %i.yd) #12 ; 0 uses
  br label %bb.kp

bb.hi:                                            ; preds = %bb.hg, %bb.hf
  %.b615 = load i1, ptr @verbose, align 4
  br i1 %.b615, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ye = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #11 ; 0 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.yf = call i32 @WebPEncode(ptr noundef nonnull %4, ptr noundef nonnull %2) #11
  %.not723 = icmp eq i32 %i.yf, 0
  br i1 %.not723, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.yg = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite724 = call i64 @fwrite(ptr nonnull @.str.99, i64 37, i64 1, ptr %i.yg) #12 ; 0 uses
  %i.yh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !88 ; 2 uses
  %i.yk = zext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr @kErrorMessages, i64 %i.yk
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !44
  %i.yn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yh, ptr noundef nonnull @.str.100, i32 noundef %i.yj, ptr noundef %i.ym) #14 ; 0 uses
  br label %bb.kp

bb.hm:                                            ; preds = %bb.hk
  %.b = load i1, ptr @verbose, align 4
  br i1 %.b, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.yo = call fastcc double @StopwatchReadAndReset(ptr noundef %8)
  %i.yp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yp, ptr noundef nonnull @.str.101, double noundef %i.yo) #14 ; 0 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.yr = icmp sgt i32 %.05101079, -1             ; 2 uses
  %or.cond44 = select i1 %i.pf, i1 %i.yr, i1 false
  %i.ys = load i32, ptr %4, align 4
  %i.yt = icmp ne i32 %i.ys, 0
  %or.cond47 = select i1 %or.cond44, i1 %i.yt, i1 false
  br i1 %or.cond47, label %bb.hp, label %bb.hx

bb.hp:                                            ; preds = %bb.ho
  %i.yu = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !54
  %i.yw = icmp eq i32 %i.yv, 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 256, i1 false)
  br i1 %i.yw, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.yx = getelementptr inbounds nuw i8, ptr %3, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yx, i8 0, i64 16, i1 false)
  br label %bb.hw

bb.hr:                                            ; preds = %bb.hp
  %i.yy = call i32 @WebPPictureInitInternal(ptr noundef nonnull %2, i32 noundef 528) #11
  %.not725 = icmp eq i32 %i.yy, 0
  br i1 %.not725, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.yz = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite726 = call i64 @fwrite(ptr nonnull @.str, i64 25, i64 1, ptr %i.yz) #12 ; 0 uses
  br label %bb.kp

bb.ht:                                            ; preds = %bb.hr
  store i32 1, ptr %2, align 8, !tbaa !76
  %i.za = load ptr, ptr %6, align 8, !tbaa !90
  %i.zb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !91
  %i.zd = call i32 @WebPPictureHasTransparency(ptr noundef nonnull %3) #11
  %i.ze = call i32 @ReadWebP(ptr noundef %i.za, i64 noundef %i.zc, ptr noundef nonnull %2, i32 noundef %i.zd, ptr noundef null) #11
  %.not727 = icmp eq i32 %i.ze, 0
  br i1 %.not727, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.zf = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite728 = call i64 @fwrite(ptr nonnull @.str.102, i64 44, i64 1, ptr %i.zf) #12 ; 0 uses
  %i.zg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zh = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !88 ; 2 uses
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr @kErrorMessages, i64 %i.zj
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !44
  %i.zm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zg, ptr noundef nonnull @.str.100, i32 noundef %i.zi, ptr noundef %i.zl) #14 ; 0 uses
  br label %bb.kp

bb.hv:                                            ; preds = %bb.ht
  %i.zn = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !24
  %i.zp = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !24
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hq
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr null, ptr %i.zq, align 8, !tbaa !24
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.ho
  %.not729 = icmp eq ptr %.04991065, null
  br i1 %.not729, label %bb.in, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.zr = load i32, ptr %2, align 8, !tbaa !76
  %.not730 = icmp eq i32 %i.zr, 0
  br i1 %.not730, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.zs = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite732 = call i64 @fwrite(ptr nonnull @.str.103, i64 55, i64 1, ptr %i.zs) #12 ; 0 uses
  br label %bb.in

bb.ia:                                            ; preds = %bb.hy
  %i.zt = load i32, ptr %i.qt, align 8, !tbaa !18
  %11 = add nsw i32 %i.zt, 1                      ; 2 uses
  %12 = sdiv i32 %11, 2
  %13 = load i32, ptr %i.un, align 4, !tbaa !19   ; 2 uses
  %14 = add nsw i32 %13, 1
  %15 = sdiv i32 %14, 2                           ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !78
  %i.zw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !80
  %i.zy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !82
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !92
  %i.aac = call i32 @WebPPictureHasTransparency(ptr noundef nonnull %2) #11
  %.not.i765 = icmp eq i32 %i.aac, 0
  %.pre.i = load i32, ptr %i.un, align 4, !tbaa !19 ; 2 uses
  %spec.select.i = select i1 %.not.i765, i32 0, i32 %.pre.i ; 3 uses
  %i.aad = call noalias ptr @fopen(ptr noundef nonnull readonly %.04991065, ptr noundef nonnull @.str.89) ; 10 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %DumpPicture.exit.thread, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.aaf = and i32 %11, -2
  %i.aag = add i32 %.pre.i, %15
  %i.aah = add i32 %i.aag, %spec.select.i
  %i.aai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aad, ptr noundef nonnull @.str.197, i32 noundef %i.aaf, i32 noundef %i.aah) #11 ; 0 uses
  %i.aaj = load i32, ptr %i.un, align 4, !tbaa !19
  %i.aak = icmp sgt i32 %i.aaj, 0
  br i1 %i.aak, label %.lr.ph.i, label %.preheader65.i

.lr.ph.i:                                         ; preds = %bb.ib
  %i.aal = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.ic

.preheader65.i:                                   ; preds = %bb.if, %bb.ib
  %i.aam = icmp sgt i32 %13, 0
  br i1 %i.aam, label %.lr.ph73.i, label %.preheader.i

.lr.ph73.i:                                       ; preds = %.preheader65.i
  %i.aan = sext i32 %12 to i64                    ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %2, i64 44
  %smax.i = call i32 @llvm.smax.i32(i32 %15, i32 1)
  br label %bb.ig

bb.ic:                                            ; preds = %bb.if, %.lr.ph.i
  %.05469.i = phi ptr [ %i.zv, %.lr.ph.i ], [ %i.aax, %bb.if ] ; 2 uses
  %.05668.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aay, %bb.if ]
  %i.aap = load i32, ptr %i.qt, align 8, !tbaa !18
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = call i64 @fwrite(ptr noundef %.05469.i, i64 noundef %i.aaq, i64 noundef 1, ptr noundef nonnull %i.aad)
  %.not63.i = icmp eq i64 %i.aar, 1
  br i1 %.not63.i, label %bb.id, label %DumpPicture.exit.thread925

bb.id:                                            ; preds = %bb.ic
  %i.aas = load i32, ptr %i.qt, align 8, !tbaa !18
  %i.aat = and i32 %i.aas, 1
  %.not64.i = icmp eq i32 %i.aat, 0
  br i1 %.not64.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aau = call i32 @fputc(i32 noundef 0, ptr noundef nonnull %i.aad) ; 0 uses
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.aav = load i32, ptr %i.aal, align 8, !tbaa !79
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds i8, ptr %.05469.i, i64 %i.aaw
  %i.aay = add nuw nsw i32 %.05668.i, 1           ; 2 uses
  %i.aaz = load i32, ptr %i.un, align 4, !tbaa !19
  %i.aba = icmp slt i32 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.ic, label %.preheader65.i, !llvm.loop !40

.preheader.i:                                     ; preds = %bb.ii, %.preheader65.i
  %i.abb = icmp sgt i32 %spec.select.i, 0
  br i1 %i.abb, label %.lr.ph76.i, label %DumpPicture.exit

.lr.ph76.i:                                       ; preds = %.preheader.i
  %i.abc = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.ij

bb.ig:                                            ; preds = %bb.ii, %.lr.ph73.i
  %.05272.i = phi ptr [ %i.zz, %.lr.ph73.i ], [ %i.abi, %bb.ii ] ; 2 uses
  %.05371.i = phi ptr [ %i.zx, %.lr.ph73.i ], [ %i.abh, %bb.ii ] ; 2 uses
  %.170.i = phi i32 [ 0, %.lr.ph73.i ], [ %i.abj, %bb.ii ]
  %i.abd = call i64 @fwrite(ptr noundef %.05371.i, i64 noundef %i.aan, i64 noundef 1, ptr noundef nonnull %i.aad)
  %.not61.i = icmp eq i64 %i.abd, 1
  br i1 %.not61.i, label %bb.ih, label %DumpPicture.exit.thread925

bb.ih:                                            ; preds = %bb.ig
  %i.abe = call i64 @fwrite(ptr noundef %.05272.i, i64 noundef %i.aan, i64 noundef 1, ptr noundef nonnull %i.aad)
  %.not62.i = icmp eq i64 %i.abe, 1
  br i1 %.not62.i, label %bb.ii, label %DumpPicture.exit.thread925

bb.ii:                                            ; preds = %bb.ih
  %i.abf = load i32, ptr %i.aao, align 4, !tbaa !81
  %i.abg = sext i32 %i.abf to i64                 ; 2 uses
  %i.abh = getelementptr inbounds i8, ptr %.05371.i, i64 %i.abg
  %i.abi = getelementptr inbounds i8, ptr %.05272.i, i64 %i.abg
  %i.abj = add nuw nsw i32 %.170.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.abj, %smax.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.ig, !llvm.loop !41

bb.ij:                                            ; preds = %bb.im, %.lr.ph76.i
  %.075.i = phi ptr [ %i.aab, %.lr.ph76.i ], [ %i.abs, %bb.im ] ; 2 uses
  %.274.i = phi i32 [ 0, %.lr.ph76.i ], [ %i.abt, %bb.im ]
  %i.abk = load i32, ptr %i.qt, align 8, !tbaa !18
  %i.abl = sext i32 %i.abk to i64
  %i.abm = call i64 @fwrite(ptr noundef %.075.i, i64 noundef %i.abl, i64 noundef 1, ptr noundef nonnull %i.aad)
  %.not59.i = icmp eq i64 %i.abm, 1
  br i1 %.not59.i, label %bb.ik, label %DumpPicture.exit.thread925

bb.ik:                                            ; preds = %bb.ij
  %i.abn = load i32, ptr %i.qt, align 8, !tbaa !18
  %i.abo = and i32 %i.abn, 1
  %.not60.i = icmp eq i32 %i.abo, 0
  br i1 %.not60.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.abp = call i32 @fputc(i32 noundef 0, ptr noundef nonnull %i.aad) ; 0 uses
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.abq = load i32, ptr %i.abc, align 8, !tbaa !93
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds i8, ptr %.075.i, i64 %i.abr
  %i.abt = add nuw nsw i32 %.274.i, 1             ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.abt, %spec.select.i
  br i1 %exitcond81.not.i, label %DumpPicture.exit, label %bb.ij, !llvm.loop !42

DumpPicture.exit.thread925:                       ; preds = %bb.ic, %bb.ih, %bb.ig, %bb.ij
  %i.abu = call i32 @fclose(ptr noundef nonnull %i.aad) ; 0 uses
  br label %DumpPicture.exit.thread

DumpPicture.exit:                                 ; preds = %bb.im, %.preheader.i
  %i.abv = call i32 @fclose(ptr noundef nonnull %i.aad) ; 0 uses
  br label %bb.in

DumpPicture.exit.thread:                          ; preds = %bb.ia, %DumpPicture.exit.thread925
  %i.abw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.abx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abw, ptr noundef nonnull @.str.104, ptr noundef nonnull %.04991065) #14 ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %DumpPicture.exit, %bb.hz, %DumpPicture.exit.thread, %bb.hx
  %i.aby = icmp ne ptr %.0581918, null
  %or.cond49 = and i1 %i.uj, %i.aby
  br i1 %or.cond49, label %bb.io, label %bb.jz

bb.io:                                            ; preds = %bb.in
  %.val757 = load ptr, ptr %6, align 8            ; 7 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val758 = load i64, ptr %i.abz, align 8        ; 5 uses
  %i.aca = and i32 %.05141093, 1
  %.not.i.i766 = icmp eq i32 %i.aca, 0
  %i.acb = load ptr, ptr %7, align 8
  %.not8.i.i = icmp eq ptr %i.acb, null
  %or.cond950 = select i1 %.not.i.i766, i1 true, i1 %.not8.i.i
  br i1 %or.cond950, label %UpdateFlagsAndSize.exit.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.acc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !94 ; 3 uses
  %.not9.i.i = icmp eq i64 %i.acd, 0
  br i1 %.not9.i.i, label %UpdateFlagsAndSize.exit.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.ace = add i64 %i.acd, 8
  %i.acf = and i64 %i.acd, 1
  %i.acg = add i64 %i.ace, %i.acf
  br label %UpdateFlagsAndSize.exit.i

UpdateFlagsAndSize.exit.i:                        ; preds = %bb.iq, %bb.ip, %bb.io
  %.013.i = phi i32 [ 0, %bb.io ], [ 8, %bb.iq ], [ 0, %bb.ip ] ; 3 uses
  %.010.i = phi i64 [ 0, %bb.io ], [ %i.acg, %bb.iq ], [ 0, %bb.ip ] ; 3 uses
  %.not82.i = phi i1 [ true, %bb.io ], [ false, %bb.iq ], [ true, %bb.ip ] ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aci = and i32 %.05141093, 2
  %.not.i89.i = icmp eq i32 %i.aci, 0
  %i.acj = load ptr, ptr %i.ach, align 8
  %.not8.i90.i = icmp eq ptr %i.acj, null
  %or.cond951 = select i1 %.not.i89.i, i1 true, i1 %.not8.i90.i
  br i1 %or.cond951, label %UpdateFlagsAndSize.exit93.i, label %bb.ir

bb.ir:                                            ; preds = %UpdateFlagsAndSize.exit.i
  %i.ack = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !94 ; 3 uses
  %.not9.i91.i = icmp eq i64 %i.acl, 0
  br i1 %.not9.i91.i, label %UpdateFlagsAndSize.exit93.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.acm = or disjoint i32 %.013.i, 32
  %i.acn = and i64 %i.acl, 1
  %i.aco = add i64 %.010.i, 8
  %i.acp = add i64 %i.aco, %i.acl
  %i.acq = add i64 %i.acp, %i.acn
  br label %UpdateFlagsAndSize.exit93.i

UpdateFlagsAndSize.exit93.i:                      ; preds = %bb.is, %bb.ir, %UpdateFlagsAndSize.exit.i
  %.114.i = phi i32 [ %.013.i, %UpdateFlagsAndSize.exit.i ], [ %i.acm, %bb.is ], [ %.013.i, %bb.ir ] ; 3 uses
  %.111.i = phi i64 [ %.010.i, %UpdateFlagsAndSize.exit.i ], [ %i.acq, %bb.is ], [ %.010.i, %bb.ir ] ; 3 uses
  %.not79.i = phi i1 [ true, %UpdateFlagsAndSize.exit.i ], [ false, %bb.is ], [ true, %bb.ir ]
  %i.acr = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.acs = and i32 %.05141093, 4
  %.not.i94.i = icmp eq i32 %i.acs, 0
  %i.act = load ptr, ptr %i.acr, align 8
  %.not8.i95.i = icmp eq ptr %i.act, null
  %or.cond952 = select i1 %.not.i94.i, i1 true, i1 %.not8.i95.i
  br i1 %or.cond952, label %UpdateFlagsAndSize.exit98.i, label %bb.it

bb.it:                                            ; preds = %UpdateFlagsAndSize.exit93.i
  %i.acu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !94 ; 3 uses
  %.not9.i96.i = icmp eq i64 %i.acv, 0
  br i1 %.not9.i96.i, label %UpdateFlagsAndSize.exit98.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.acw = or i32 %.114.i, 4
  %i.acx = and i64 %i.acv, 1
  %i.acy = add i64 %.111.i, 8
  %i.acz = add i64 %i.acy, %i.acv
  %i.ada = add i64 %i.acz, %i.acx
  br label %UpdateFlagsAndSize.exit98.i

UpdateFlagsAndSize.exit98.i:                      ; preds = %bb.iu, %bb.it, %UpdateFlagsAndSize.exit93.i
  %.215.i = phi i32 [ %.114.i, %UpdateFlagsAndSize.exit93.i ], [ %i.acw, %bb.iu ], [ %.114.i, %bb.it ] ; 3 uses
  %.212.i = phi i64 [ %.111.i, %UpdateFlagsAndSize.exit93.i ], [ %i.ada, %bb.iu ], [ %.111.i, %bb.it ] ; 2 uses
  %.not83.i = phi i1 [ true, %UpdateFlagsAndSize.exit93.i ], [ false, %bb.iu ], [ true, %bb.it ] ; 2 uses
  %i.adb = icmp ult i64 %.val758, 20
  br i1 %i.adb, label %WriteWebPWithMetadata.exit.thread, label %bb.iv

bb.iv:                                            ; preds = %UpdateFlagsAndSize.exit98.i
  %i.adc = add i64 %.val758, -8
  %i.add = add i64 %i.adc, %.212.i                ; 2 uses
  %i.ade = icmp ugt i64 %i.add, -10
  br i1 %i.ade, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.adf = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.198, i64 63, i64 1, ptr %i.adf) #12 ; 0 uses
  br label %WriteWebPWithMetadata.exit.thread

end_hunk_0
