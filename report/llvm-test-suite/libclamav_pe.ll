Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_pe?download=true
inline.NumInlined: 58
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_scanpe:bb.a
  %i.bfa = call i32 @close(i32 noundef %i.bes) #13 ; 0 uses
  %i.bfb = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2878 = icmp eq i8 %i.bfb, 0                ; 2 uses
  br i1 %i.bez, label %bb.xg, label %bb.xj

bb.xg:                                            ; preds = %bb.xf
  br i1 %.not2878, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  %i.bfc = call i32 @unlink(ptr noundef nonnull %i.ber) #13 ; 0 uses
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  call void @free(ptr noundef nonnull %i.ber) #13
  br label %.critedge3020

bb.xj:                                            ; preds = %bb.xf
  br i1 %.not2878, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  %i.bfd = call i32 @unlink(ptr noundef nonnull %i.ber) #13 ; 0 uses
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xj
  call void @free(ptr noundef nonnull %i.ber) #13
  br label %.critedge3020

bb.xm:                                            ; preds = %bb.xb
  call void @free(ptr noundef nonnull %i.bel) #13
  %i.bfe = call i32 @close(i32 noundef %i.bes) #13 ; 0 uses
  %i.bff = call i32 @unlink(ptr noundef nonnull %i.ber) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.215) #13
  %i.bfg = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bfh = and i32 %i.bfg, 256
  %.not2875 = icmp eq i32 %i.bfh, 0
  call void @free(ptr noundef nonnull %i.ber) #13
  br i1 %.not2875, label %bb.xp, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bfi = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.216, ptr %i.bfi, align 8, !tbaa !64
  br label %.critedge3020

bb.xo:                                            ; preds = %bb.xb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.217) #13
  %i.bfj = call i32 @close(i32 noundef %i.bes) #13 ; 0 uses
  %i.bfk = call i32 @unlink(ptr noundef nonnull %i.ber) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bel, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.ber) #13
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xm, %bb.xo, %bb.wo, %bb.wn, %bb.wm, %.critedge3049
  %i.bfl = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !71 ; 5 uses
  %i.bfn = and i32 %i.bfm, 1024
  %i.bfo = icmp ne i32 %i.bfn, 0
  %or.cond195 = and i1 %i.bdi, %i.bfo
  br i1 %or.cond195, label %bb.xq, label %bb.yn

bb.xq:                                            ; preds = %bb.xp
  %i.bfp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bfq = load i32, ptr %i.bfp, align 8, !tbaa !16
  %i.bfr = add nsw i32 %i.ak, -1                  ; 2 uses
  %i.bfs = zext nneg i32 %i.bfr to i64
  %i.bft = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bfs ; 2 uses
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !26
  %i.bfv = add i32 %i.bfu, 96
  %i.bfw = icmp eq i32 %i.bfq, %i.bfv
  br i1 %i.bfw, label %bb.xr, label %bb.yn

bb.xr:                                            ; preds = %bb.xq
  %bcmp2880 = call i32 @bcmp(ptr noundef nonnull dereferenceable(51) %i.f, ptr noundef nonnull dereferenceable(51) @.str.218, i64 51)
  %i.bfx = icmp eq i32 %bcmp2880, 0
  br i1 %i.bfx, label %bb.xs, label %bb.yn

bb.xs:                                            ; preds = %bb.xr
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !29
  %i.bga = add i32 %i.bfz, 3165
  %i.bgb = zext i32 %i.bga to i64
  %.not2881 = icmp ult i64 %i.ej, %i.bgb
  br i1 %.not2881, label %bb.yn, label %bb.xt

bb.xt:                                            ; preds = %bb.xs
  %i.bgc = call ptr @cli_malloc(i64 noundef %i.ej) #13 ; 8 uses
  %i.bgd = icmp eq ptr %i.bgc, null
  br i1 %i.bgd, label %bb.xu, label %bb.xv

bb.xu:                                            ; preds = %bb.xt
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xv:                                            ; preds = %bb.xt
  %i.bge = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bgf = trunc i64 %i.ej to i32                 ; 2 uses
  %i.bgg = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bgc, i32 noundef %i.bgf) #13
  %i.bgh = sext i32 %i.bgg to i64
  %.not2882 = icmp eq i64 %i.ej, %i.bgh
  br i1 %.not2882, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.219, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.bgc) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xx:                                            ; preds = %bb.xv
  %i.bgi = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2883 = icmp eq ptr %i.bgi, null
  br i1 %.not2883, label %bb.xy, label %bb.xz

bb.xy:                                            ; preds = %bb.xx
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgc, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.xz:                                            ; preds = %bb.xx
  %i.bgj = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bgi, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bgk = icmp slt i32 %i.bgj, 0
  br i1 %i.bgk, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.bgi) #13
  call void @free(ptr noundef nonnull %i.bgi) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgc, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.yb:                                            ; preds = %bb.xz
  %i.bgl = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bgm = call i32 @yc_decrypt(ptr noundef nonnull %i.bgc, i32 noundef %i.bgf, ptr noundef nonnull %i.em, i32 noundef %i.bfr, i32 noundef %i.bgl, i32 noundef %i.bgj) #13
  %cond5 = icmp eq i32 %i.bgm, 0
  br i1 %cond5, label %bb.yc, label %bb.ym

bb.yc:                                            ; preds = %bb.yb
  %i.bgn = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2884 = icmp eq i8 %i.bgn, 0
  br i1 %.not2884, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.221, ptr noundef nonnull %i.bgi) #13
  br label %bb.yf

bb.ye:                                            ; preds = %bb.yc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.222) #13
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yd
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgc, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bgo = call i32 @fsync(i32 noundef %i.bgj) #13 ; 0 uses
  %i.bgp = call i64 @lseek(i32 noundef %i.bgj, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bgq = call i32 @cli_magic_scandesc(i32 noundef %i.bgj, ptr noundef nonnull %1) #13
  %i.bgr = icmp eq i32 %i.bgq, 1
  %i.bgs = call i32 @close(i32 noundef %i.bgj) #13 ; 0 uses
  %i.bgt = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2886 = icmp eq i8 %i.bgt, 0                ; 2 uses
  br i1 %i.bgr, label %bb.yg, label %bb.yj

bb.yg:                                            ; preds = %bb.yf
  br i1 %.not2886, label %bb.yh, label %bb.yi

bb.yh:                                            ; preds = %bb.yg
  %i.bgu = call i32 @unlink(ptr noundef nonnull %i.bgi) #13 ; 0 uses
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg
  call void @free(ptr noundef nonnull %i.bgi) #13
  br label %.critedge3020

bb.yj:                                            ; preds = %bb.yf
  br i1 %.not2886, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  %i.bgv = call i32 @unlink(ptr noundef nonnull %i.bgi) #13 ; 0 uses
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  call void @free(ptr noundef nonnull %i.bgi) #13
  br label %.critedge3020

bb.ym:                                            ; preds = %bb.yb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.223) #13
  %i.bgw = call i32 @close(i32 noundef %i.bgj) #13 ; 0 uses
  %i.bgx = call i32 @unlink(ptr noundef nonnull %i.bgi) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgc, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bgi) #13
  %.pre3607.a = load ptr, ptr %i.up, align 8, !tbaa !69
  %.pre3608.a = load i32, ptr %.pre3607.a, align 4, !tbaa !71
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.xs, %bb.xr, %bb.xq, %bb.xp
  %i.bgy = phi i32 [ %.pre3608.a, %bb.ym ], [ %i.bfm, %bb.xs ], [ %i.bfm, %bb.xr ], [ %i.bfm, %bb.xq ], [ %i.bfm, %bb.xp ]
  %i.bgz = and i32 %i.bgy, 2048
  %i.bha = icmp ne i32 %i.bgz, 0
  %or.cond198 = and i1 %i.bdi, %i.bha
  br i1 %or.cond198, label %bb.yo, label %.thread3845

bb.yo:                                            ; preds = %bb.yn
  %i.bhb = add nsw i32 %i.ak, -1                  ; 3 uses
  %i.bhc = zext i32 %i.bhb to i64                 ; 4 uses
  %i.bhd = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bhc ; 5 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  %i.bhf = load i32, ptr %i.bhe, align 4, !tbaa !29 ; 4 uses
  %i.bhg = icmp ugt i32 %i.bhf, 689
  br i1 %i.bhg, label %bb.yp, label %.thread3845

bb.yp:                                            ; preds = %bb.yo
  %i.bhh = load i32, ptr %i.bhd, align 4, !tbaa !26
  %i.bhi = icmp eq i32 %i.cj, %i.bhh
  br i1 %i.bhi, label %bb.yq, label %.thread3845

bb.yq:                                            ; preds = %bb.yp
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhd, i64 12 ; 5 uses
  %i.bhk = load i32, ptr %i.bhj, align 4, !tbaa !30 ; 2 uses
  %i.bhl = add i32 %i.bhk, %i.cj
  %i.bhm = icmp eq i32 %i.bhl, %.02376.lcssa
  br i1 %i.bhm, label %bb.yr, label %.thread3845

bb.yr:                                            ; preds = %bb.yq
  %i.bhn = load i32, ptr %i.f, align 16
  %i.bho = xor i32 %i.bhn, -393521837
  %i.bhp = getelementptr i8, ptr %i.f, i64 3
  %i.bhq = load i32, ptr %i.bhp, align 1
  %i.bhr = xor i32 %i.bhq, -337955864
  %i.bhs = or i32 %i.bho, %i.bhr
  %i.bht = icmp ne i32 %i.bhs, 0
  %i.bhu = zext i1 %i.bht to i32
  %i.bhv = icmp eq i32 %i.bhu, 0
  br i1 %i.bhv, label %bb.ys, label %.thread3845

bb.ys:                                            ; preds = %bb.yr
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.bhx = load i128, ptr %i.bhw, align 1
  %i.bhy = xor i128 %i.bhx, 107382933364910958583781871253727477992
  %i.bhz = getelementptr i8, ptr %i.bhw, i64 3
  %i.bia = load i128, ptr %i.bhz, align 1
  %i.bib = xor i128 %i.bia, 106755414664042775544543906123602198528
  %i.bic = or i128 %i.bhy, %i.bib
  %i.bid = icmp ne i128 %i.bic, 0
  %i.bie = zext i1 %i.bid to i32
  %i.bif = icmp eq i32 %i.bie, 0
  br i1 %i.bif, label %.preheader3341, label %.thread3845

.preheader3341:                                   ; preds = %bb.ys
  %.not3497 = icmp eq i32 %i.bhb, 0               ; 2 uses
  br i1 %.not3497, label %._crit_edge3465, label %.lr.ph3464.preheader

.lr.ph3464.preheader:                             ; preds = %.preheader3341
  %xtraiter3982 = and i64 %i.bhc, 3               ; 3 uses
  %i.big = icmp ult i16 %i.aj, 5
  br i1 %i.big, label %.lr.ph3464.epil.preheader, label %.lr.ph3464.preheader.new

.lr.ph3464.preheader.new:                         ; preds = %.lr.ph3464.preheader
  %unroll_iter = and i64 %i.bhc, 4294967292
  br label %.lr.ph3464

.lr.ph3464:                                       ; preds = %.lr.ph3464, %.lr.ph3464.preheader.new
  %indvars.iv3574 = phi i64 [ 0, %.lr.ph3464.preheader.new ], [ %indvars.iv.next3575.3, %.lr.ph3464 ] ; 5 uses
  %.022743463 = phi i32 [ %i.bhf, %.lr.ph3464.preheader.new ], [ %spec.select3053.3, %.lr.ph3464 ]
  %niter = phi i64 [ 0, %.lr.ph3464.preheader.new ], [ %niter.next.3, %.lr.ph3464 ]
  %i.bih = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 8
  %i.bij = load i32, ptr %i.bii, align 4, !tbaa !29
  %spec.select3053 = call i32 @llvm.umin.i32(i32 %i.bij, i32 %.022743463)
  %i.bik = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 44
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !29
  %spec.select3053.1 = call i32 @llvm.umin.i32(i32 %i.bim, i32 %spec.select3053)
  %i.bin = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 80
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !29
  %spec.select3053.2 = call i32 @llvm.umin.i32(i32 %i.bip, i32 %spec.select3053.1)
  %i.biq = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 116
  %i.bis = load i32, ptr %i.bir, align 4, !tbaa !29
  %spec.select3053.3 = call i32 @llvm.umin.i32(i32 %i.bis, i32 %spec.select3053.2) ; 3 uses
  %indvars.iv.next3575.3 = add nuw nsw i64 %indvars.iv3574, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge3465.unr-lcssa, label %.lr.ph3464, !llvm.loop !48

._crit_edge3465.unr-lcssa:                        ; preds = %.lr.ph3464
  %lcmp.mod3983.not = icmp eq i64 %xtraiter3982, 0
  br i1 %lcmp.mod3983.not, label %._crit_edge3465, label %.lr.ph3464.epil.preheader

.lr.ph3464.epil.preheader:                        ; preds = %._crit_edge3465.unr-lcssa, %.lr.ph3464.preheader
  %indvars.iv3574.epil.init = phi i64 [ 0, %.lr.ph3464.preheader ], [ %indvars.iv.next3575.3, %._crit_edge3465.unr-lcssa ]
  %.022743463.epil.init = phi i32 [ %i.bhf, %.lr.ph3464.preheader ], [ %spec.select3053.3, %._crit_edge3465.unr-lcssa ]
  %lcmp.mod3985 = icmp ne i64 %xtraiter3982, 0
  call void @llvm.assume(i1 %lcmp.mod3985)
  br label %.lr.ph3464.epil

.lr.ph3464.epil:                                  ; preds = %.lr.ph3464.epil, %.lr.ph3464.epil.preheader
  %indvars.iv3574.epil = phi i64 [ %indvars.iv.next3575.epil, %.lr.ph3464.epil ], [ %indvars.iv3574.epil.init, %.lr.ph3464.epil.preheader ] ; 2 uses
  %.022743463.epil = phi i32 [ %spec.select3053.epil, %.lr.ph3464.epil ], [ %.022743463.epil.init, %.lr.ph3464.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph3464.epil ], [ 0, %.lr.ph3464.epil.preheader ]
  %i.bit = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574.epil
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 8
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !29
  %spec.select3053.epil = call i32 @llvm.umin.i32(i32 %i.biv, i32 %.022743463.epil) ; 2 uses
  %indvars.iv.next3575.epil = add nuw nsw i64 %indvars.iv3574.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3982
  br i1 %epil.iter.cmp.not, label %._crit_edge3465, label %.lr.ph3464.epil, !llvm.loop !49

._crit_edge3465:                                  ; preds = %._crit_edge3465.unr-lcssa, %.lr.ph3464.epil, %.preheader3341
  %.02274.lcssa = phi i32 [ %i.bhf, %.preheader3341 ], [ %spec.select3053.3, %._crit_edge3465.unr-lcssa ], [ %spec.select3053.epil, %.lr.ph3464.epil ] ; 5 uses
  %i.biw = add i32 %.02378.lcssa, %i.bhk
  %i.bix = sub i32 %.02376.lcssa, %i.biw
  %i.biy = add i32 %i.bix, %.02274.lcssa          ; 4 uses
  store i32 %i.biy, ptr %i.h, align 4, !tbaa !7
  %i.biz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !89 ; 2 uses
  %.not2889 = icmp eq ptr %i.bja, null
  br i1 %.not2889, label %._crit_edge3465._crit_edge, label %bb.yt

._crit_edge3465._crit_edge:                       ; preds = %._crit_edge3465
  %.pre3616 = zext i32 %i.biy to i64
  br label %bb.yw

bb.yt:                                            ; preds = %._crit_edge3465
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 24
  %i.bjc = load i64, ptr %i.bjb, align 8, !tbaa !91 ; 3 uses
  %.not2890 = icmp ne i64 %i.bjc, 0
  %i.bjd = zext i32 %i.biy to i64                 ; 2 uses
  %i.bje = icmp ult i64 %i.bjc, %i.bjd
  %or.cond3055 = select i1 %.not2890, i1 %i.bje, i1 false
  br i1 %or.cond3055, label %bb.yu, label %bb.yw

bb.yu:                                            ; preds = %bb.yt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.226, i32 noundef %i.biy, i64 noundef %i.bjc) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bjf = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bjg = and i32 %i.bjf, 256
  %.not2903 = icmp eq i32 %i.bjg, 0
  br i1 %.not2903, label %.critedge3020, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.bjh = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.227, ptr %i.bjh, align 8, !tbaa !64
  br label %.critedge3020

bb.yw:                                            ; preds = %._crit_edge3465._crit_edge, %bb.yt
  %.pre-phi3617 = phi i64 [ %.pre3616, %._crit_edge3465._crit_edge ], [ %i.bjd, %bb.yt ]
  %i.bji = call ptr @cli_calloc(i64 noundef %.pre-phi3617, i64 noundef 1) #13 ; 14 uses
  %i.bjj = icmp eq ptr %i.bji, null
  br i1 %i.bjj, label %bb.yx, label %bb.yy

bb.yx:                                            ; preds = %bb.yw
  %i.bjk = load i32, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bjk) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.yy:                                            ; preds = %bb.yw
  %i.bjl = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bjm = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bji, i32 noundef %.02274.lcssa) #13
  %i.bjn = sext i32 %i.bjm to i64                 ; 2 uses
  %i.bjo = zext i32 %.02274.lcssa to i64
  %.not2891 = icmp eq i64 %i.bjn, %i.bjo
  br i1 %.not2891, label %.preheader3340, label %bb.yz

.preheader3340:                                   ; preds = %bb.yy
  br i1 %.not3497, label %._crit_edge3469, label %.lr.ph3468

.lr.ph3468:                                       ; preds = %.preheader3340
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bji, i64 %i.bjn
  %i.bjq = zext i32 %.02378.lcssa to i64
  %i.bjr = sub nsw i64 0, %i.bjq
  %invariant.gep3470 = getelementptr i8, ptr %i.bjp, i64 %i.bjr
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.229, i32 noundef %.02274.lcssa) #13
  call void @free(ptr noundef nonnull %i.bji) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.za:                                            ; preds = %.lr.ph3468, %bb.ze
  %indvars.iv3579 = phi i64 [ 0, %.lr.ph3468 ], [ %indvars.iv.next3580, %bb.ze ] ; 2 uses
  %i.bjs = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3579 ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 12 ; 3 uses
  %i.bju = load i32, ptr %i.bjt, align 4, !tbaa !30
  %.not2900 = icmp eq i32 %i.bju, 0
  br i1 %.not2900, label %bb.ze, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.bjv = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bjs)
  %.not2901 = icmp eq i64 %i.bjv, 0
  br i1 %.not2901, label %bb.zd, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.bjw = load i32, ptr %i.bjs, align 4, !tbaa !26
  %i.bjx = zext i32 %i.bjw to i64
  %gep3471 = getelementptr i8, ptr %invariant.gep3470, i64 %i.bjx
  %i.bjy = load i32, ptr %i.bjt, align 4, !tbaa !30
  %i.bjz = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %gep3471, i32 noundef %i.bjy) #13
  %i.bka = load i32, ptr %i.bjt, align 4, !tbaa !30
  %.not2902 = icmp eq i32 %i.bjz, %i.bka
  br i1 %.not2902, label %bb.ze, label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %bb.zb
  call void @free(ptr noundef %i.bji) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ze:                                            ; preds = %bb.za, %bb.zc
  %indvars.iv.next3580 = add nuw nsw i64 %indvars.iv3579, 1 ; 2 uses
  %exitcond3584.not = icmp eq i64 %indvars.iv.next3580, %i.bhc
  br i1 %exitcond3584.not, label %._crit_edge3469, label %bb.za, !llvm.loop !50

._crit_edge3469:                                  ; preds = %bb.ze, %.preheader3340
  %i.bkb = load i32, ptr %i.bhj, align 4, !tbaa !30
  %i.bkc = zext i32 %i.bkb to i64
  %i.bkd = call ptr @cli_calloc(i64 noundef %i.bkc, i64 noundef 1) #13 ; 5 uses
  %i.bke = icmp eq ptr %i.bkd, null
  br i1 %i.bke, label %bb.zf, label %bb.zg

bb.zf:                                            ; preds = %._crit_edge3469
  %i.bkf = load i32, ptr %i.bhj, align 4, !tbaa !30
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bkf) #13
  call void @free(ptr noundef %i.bji) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zg:                                            ; preds = %._crit_edge3469
  %i.bkg = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bhd)
  %.not2892 = icmp eq i64 %i.bkg, 0
  %.pre3609 = load i32, ptr %i.bhj, align 4, !tbaa !30 ; 2 uses
  br i1 %.not2892, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %bb.zg
  %i.bkh = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bkd, i32 noundef %.pre3609) #13
  %i.bki = sext i32 %i.bkh to i64
  %i.bkj = load i32, ptr %i.bhj, align 4, !tbaa !30 ; 3 uses
  %i.bkk = zext i32 %i.bkj to i64
  %.not2893 = icmp eq i64 %i.bki, %i.bkk
  br i1 %.not2893, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh, %bb.zg
  %i.bkl = phi i32 [ %i.bkj, %bb.zh ], [ %.pre3609, %bb.zg ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230, i32 noundef %i.bkl) #13
  call void @free(ptr noundef %i.bji) #13
  call void @free(ptr noundef nonnull %i.bkd) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zj:                                            ; preds = %bb.zh
  %i.bkm = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bkn = load i32, ptr %i.bhd, align 4, !tbaa !26
  %i.bko = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bkp = trunc nuw nsw i32 %i.bhb to i16
  %i.bkq = call i32 @wwunpack(ptr noundef nonnull %i.bji, i32 noundef %i.bkm, i32 noundef %.02274.lcssa, i32 noundef %.02378.lcssa, i32 noundef %i.bkn, i32 noundef %i.bko, ptr noundef nonnull %i.bkd, i32 noundef %i.bkj, i16 noundef zeroext %i.bkp) #13
  %.not2894 = icmp eq i32 %i.bkq, 0
  call void @free(ptr noundef nonnull %i.bkd) #13
  br i1 %.not2894, label %bb.zk, label %bb.aaa

bb.zk:                                            ; preds = %bb.zj
  %i.bkr = call ptr @cli_gentemp(ptr noundef null) #13 ; 10 uses
  %.not2895 = icmp eq ptr %i.bkr, null
  br i1 %.not2895, label %bb.zl, label %bb.zm

bb.zl:                                            ; preds = %bb.zk
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bji, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.zm:                                            ; preds = %bb.zk
  %i.bks = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bkr, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.bkt = icmp slt i32 %i.bks, 0
  br i1 %i.bkt, label %bb.zn, label %bb.zo

bb.zn:                                            ; preds = %bb.zm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.bkr) #13
  call void @free(ptr noundef nonnull %i.bkr) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bji, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.zo:                                            ; preds = %bb.zm
  %i.bku = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bkv = zext i32 %i.bku to i64
  %i.bkw = call i64 @write(i32 noundef %i.bks, ptr noundef nonnull %i.bji, i64 noundef %i.bkv) #13
  %i.bkx = trunc i64 %i.bkw to i32
  %i.bky = load i32, ptr %i.h, align 4, !tbaa !7  ; 2 uses
  %.not2896 = icmp eq i32 %i.bky, %i.bkx
  br i1 %.not2896, label %bb.zq, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.232, i32 noundef %i.bky) #13
  %i.bkz = call i32 @close(i32 noundef %i.bks) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.bkr) #13
  call void @free(ptr noundef nonnull %i.bji) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zq:                                            ; preds = %bb.zo
  call void @free(ptr noundef nonnull %i.bji) #13
  %i.bla = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2897 = icmp eq i8 %i.bla, 0
  br i1 %.not2897, label %bb.zs, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.bkr) #13
  br label %bb.zt

bb.zs:                                            ; preds = %bb.zq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.234) #13
  br label %bb.zt

bb.zt:                                            ; preds = %bb.zs, %bb.zr
  %i.blb = call i32 @fsync(i32 noundef %i.bks) #13 ; 0 uses
  %i.blc = call i64 @lseek(i32 noundef %i.bks, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bld = call i32 @cli_magic_scandesc(i32 noundef %i.bks, ptr noundef %1) #13
  %i.ble = icmp eq i32 %i.bld, 1
  br i1 %i.ble, label %bb.zu, label %bb.zx

bb.zu:                                            ; preds = %bb.zt
  call void @free(ptr noundef nonnull %i.em) #13
  %i.blf = call i32 @close(i32 noundef %i.bks) #13 ; 0 uses
  %i.blg = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2899 = icmp eq i8 %i.blg, 0
  br i1 %.not2899, label %bb.zv, label %bb.zw

bb.zv:                                            ; preds = %bb.zu
  %i.blh = call i32 @unlink(ptr noundef nonnull %i.bkr) #13 ; 0 uses
  br label %bb.zw

bb.zw:                                            ; preds = %bb.zv, %bb.zu
  call void @free(ptr noundef nonnull %i.bkr) #13
  br label %.critedge3020

bb.zx:                                            ; preds = %bb.zt
  %i.bli = call i32 @close(i32 noundef %i.bks) #13 ; 0 uses
  %i.blj = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2898 = icmp eq i8 %i.blj, 0
  br i1 %.not2898, label %bb.zy, label %bb.zz

bb.zy:                                            ; preds = %bb.zx
  %i.blk = call i32 @unlink(ptr noundef nonnull %i.bkr) #13 ; 0 uses
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zx
  call void @free(ptr noundef nonnull %i.bkr) #13
  br label %.thread3845

bb.aaa:                                           ; preds = %bb.zj
  call void @free(ptr noundef nonnull %i.bji) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.235) #13
  br label %.thread3845

.thread3845:                                      ; preds = %bb.vh, %bb.aaa, %bb.zz, %bb.yn, %bb.yo, %bb.yp, %bb.yq, %bb.yr, %bb.ys
  %i.bll = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.blm = load i32, ptr %i.bll, align 4, !tbaa !71
  %i.bln = and i32 %i.blm, 32768
  %.not2904 = icmp ne i32 %i.bln, 0
  %i.blo = add i32 %i.ky, 1864
  %i.blp = zext i32 %i.blo to i64
  %i.blq = icmp ugt i64 %i.ej, %i.blp
  %or.cond3058 = select i1 %.not2904, i1 %i.blq, i1 false
  br i1 %or.cond3058, label %bb.aab, label %.critedge200

bb.aab:                                           ; preds = %.thread3845
  %lhsv = load i64, ptr %i.f, align 16
  %i.blr = icmp ne i64 %lhsv, -1447625805222647712
  %i.bls = icmp ult i32 %i.lh, 959
  %or.cond219 = select i1 %i.blr, i1 true, i1 %i.bls
  br i1 %or.cond219, label %.critedge200, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.blt = getelementptr inbounds nuw i8, ptr %i.f, i64 953 ; 2 uses
  %i.blu = load i32, ptr %i.blt, align 1
  %i.blv = xor i32 %i.blu, 104
  %i.blw = getelementptr i8, ptr %i.blt, i64 4
  %i.blx = load i16, ptr %i.blw, align 1
  %i.bly = zext i16 %i.blx to i32
  %i.blz = xor i32 %i.bly, 49920
  %i.bma = or i32 %i.blv, %i.blz
  %i.bmb = icmp ne i32 %i.bma, 0                  ; 2 uses
  %i.bmc = zext i1 %i.bmb to i32                  ; 0 uses
  %brmerge = or i1 %i.bmb, %.not3488
  br i1 %brmerge, label %.critedge200, label %.lr.ph3473.preheader

.lr.ph3473.preheader:                             ; preds = %bb.aac
  %wide.trip.count3588 = zext nneg i16 %i.aj to i64 ; 2 uses
  %xtraiter3986 = and i64 %wide.trip.count3588, 1
  %i.bmd = icmp eq i16 %i.aj, 1
  br i1 %i.bmd, label %.lr.ph3473.epil.preheader, label %.lr.ph3473.preheader.new

.lr.ph3473.preheader.new:                         ; preds = %.lr.ph3473.preheader
  %unroll_iter3991 = and i64 %wide.trip.count3588, 126
  br label %.lr.ph3473

.lr.ph3473:                                       ; preds = %.lr.ph3473, %.lr.ph3473.preheader.new
  %indvars.iv3585 = phi i64 [ 0, %.lr.ph3473.preheader.new ], [ %indvars.iv.next3586.1, %.lr.ph3473 ] ; 3 uses
  %i.bme = phi i32 [ 0, %.lr.ph3473.preheader.new ], [ %spec.select3059.1, %.lr.ph3473 ]
  %niter3992 = phi i64 [ 0, %.lr.ph3473.preheader.new ], [ %niter3992.next.1, %.lr.ph3473 ]
  %i.bmf = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3585 ; 2 uses
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !26
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmf, i64 4
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !28
  %i.bmj = add i32 %i.bmi, %i.bmg
  %.fr3500 = freeze i32 %i.bmj
  %spec.select3059 = call i32 @llvm.umax.i32(i32 %i.bme, i32 %.fr3500)
  %i.bmk = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3585 ; 2 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 36
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !26
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmk, i64 40
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !28
  %i.bmp = add i32 %i.bmo, %i.bmm
  %.fr3500.1 = freeze i32 %i.bmp
  %spec.select3059.1 = call i32 @llvm.umax.i32(i32 %spec.select3059, i32 %.fr3500.1) ; 3 uses
  %indvars.iv.next3586.1 = add nuw nsw i64 %indvars.iv3585, 2 ; 2 uses
  %niter3992.next.1 = add i64 %niter3992, 2       ; 2 uses
  %niter3992.ncmp.1 = icmp eq i64 %niter3992.next.1, %unroll_iter3991
  br i1 %niter3992.ncmp.1, label %._crit_edge3474.unr-lcssa, label %.lr.ph3473, !llvm.loop !51

._crit_edge3474.unr-lcssa:                        ; preds = %.lr.ph3473
  %lcmp.mod3988.not = icmp eq i64 %xtraiter3986, 0
  br i1 %lcmp.mod3988.not, label %._crit_edge3474, label %.lr.ph3473.epil.preheader

.lr.ph3473.epil.preheader:                        ; preds = %._crit_edge3474.unr-lcssa, %.lr.ph3473.preheader
  %indvars.iv3585.epil.init = phi i64 [ 0, %.lr.ph3473.preheader ], [ %indvars.iv.next3586.1, %._crit_edge3474.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph3473.preheader ], [ %spec.select3059.1, %._crit_edge3474.unr-lcssa ]
  %lcmp.mod3990 = trunc i16 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod3990)
  %i.bmq = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3585.epil.init ; 2 uses
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !26
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmq, i64 4
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !28
  %i.bmu = add i32 %i.bmt, %i.bmr
  %.fr3500.epil = freeze i32 %i.bmu
  %spec.select3059.epil = call i32 @llvm.umax.i32(i32 %.epil.init, i32 %.fr3500.epil)
  br label %._crit_edge3474

._crit_edge3474:                                  ; preds = %._crit_edge3474.unr-lcssa, %.lr.ph3473.epil.preheader
  %spec.select3059.lcssa = phi i32 [ %spec.select3059.1, %._crit_edge3474.unr-lcssa ], [ %spec.select3059.epil, %.lr.ph3473.epil.preheader ] ; 6 uses
  %.not2907 = icmp eq i32 %spec.select3059.lcssa, 0
  br i1 %.not2907, label %.critedge200, label %bb.aad

bb.aad:                                           ; preds = %._crit_edge3474
  %i.bmv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !89 ; 2 uses
  %.not2908 = icmp eq ptr %i.bmw, null
  br i1 %.not2908, label %._crit_edge3615, label %bb.aae

._crit_edge3615:                                  ; preds = %bb.aad
  %.pre3618 = zext i32 %spec.select3059.lcssa to i64
  br label %bb.aah

bb.aae:                                           ; preds = %bb.aad
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 24
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !91 ; 3 uses
  %.not2909 = icmp ne i64 %i.bmy, 0
  %i.bmz = zext i32 %spec.select3059.lcssa to i64 ; 2 uses
end_hunk_0
