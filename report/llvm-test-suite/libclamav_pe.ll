Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_pe?download=true
inline.NumInlined: 58
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_scanpe:bb.a
  %i.ts = icmp samesign ult i64 %indvars.iv.next3546.pre-phi, %i.tr
  br i1 %i.ts, label %bb.if, label %._crit_edge3434, !llvm.loop !71

._crit_edge3434:                                  ; preds = %bb.is
  %i.tt = trunc nuw i64 %indvars.iv.next3546.pre-phi to i32
  call void @free(ptr noundef %i.sa) #13
  %.not2730 = icmp eq i32 %.22291, 0
  br i1 %.not2730, label %.critedge81, label %bb.it

bb.it:                                            ; preds = %.thread3162, %._crit_edge3434
  %.022923372 = phi ptr [ %.022923431, %.thread3162 ], [ %.22294, %._crit_edge3434 ] ; 3 uses
  %.022893369 = phi i32 [ 1280, %.thread3162 ], [ %.22291, %._crit_edge3434 ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.119, i32 noundef %.022893369) #13
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.tw = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.tx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count3551 = zext i32 %.022893369 to i64
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.ja
  %indvars.iv3548 = phi i64 [ 0, %bb.it ], [ %indvars.iv.next3549, %bb.ja ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.022923372, i64 %indvars.iv3548
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !4
  %i.ua = zext i32 %i.tz to i64
  %i.ub = call i64 @lseek(i32 noundef %0, i64 noundef %i.ua, i32 noundef 0) #13 ; 0 uses
  %i.uc = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i32 noundef 9) #13
  %.not2731 = icmp eq i32 %i.uc, 9
  br i1 %.not2731, label %bb.iv, label %bb.ja

bb.iv:                                            ; preds = %bb.iu
  %.val3109 = load i32, ptr %i.e, align 16        ; 3 uses
  %i.ud = icmp eq i32 %.val3109, 1626114901
  br i1 %i.ud, label %bb.iz, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ue = load i8, ptr %i.tu, align 4, !tbaa !32
  %i.uf = icmp eq i8 %i.ue, -20
  br i1 %i.uf, label %bb.ix, label %bb.ja

bb.ix:                                            ; preds = %bb.iw
  %i.ug = icmp eq i32 %.val3109, -2081649835
  %i.uh = load i8, ptr %i.tv, align 2
  %i.ui = icmp eq i8 %i.uh, 96
  %or.cond85 = select i1 %i.ug, i1 %i.ui, i1 false
  br i1 %or.cond85, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.uj = icmp ne i32 %.val3109, -2115204267
  %i.uk = load i8, ptr %i.tw, align 1
  %i.ul = icmp ne i8 %i.uk, 0
  %or.cond88 = select i1 %i.uj, i1 true, i1 %i.ul
  %i.um = load i8, ptr %i.tx, align 8
  %i.un = icmp ne i8 %i.um, 0
  %or.cond91 = select i1 %or.cond88, i1 true, i1 %i.un
  br i1 %or.cond91, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.iv
  %i.uo = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.120, ptr %i.uo, align 8, !tbaa !21
  call void @free(ptr noundef nonnull %.022923372) #13
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.ja:                                            ; preds = %bb.iw, %bb.iy, %bb.iu
  %indvars.iv.next3549 = add nuw nsw i64 %indvars.iv3548, 1 ; 2 uses
  %exitcond3552.not = icmp eq i64 %indvars.iv.next3549, %wide.trip.count3551
  br i1 %exitcond3552.not, label %.critedge81.sink.split, label %bb.iu, !llvm.loop !72

.critedge81.sink.split:                           ; preds = %bb.ja, %.preheader3348
  %.sink3915.a = phi ptr [ %i.sa, %.preheader3348 ], [ %.022923372, %bb.ja ]
  %.52412.ph = phi i32 [ 0, %.preheader3348 ], [ %.022893369, %bb.ja ]
  call void @free(ptr noundef nonnull %.sink3915.a) #13
  br label %.critedge81

.critedge81:                                      ; preds = %.critedge81.sink.split, %._crit_edge3434, %bb.ia, %bb.hz, %bb.hy, %.thread3824
  %.52412 = phi i32 [ %i.ak, %.thread3824 ], [ %i.ak, %bb.hy ], [ %i.tt, %._crit_edge3434 ], [ %i.ak, %bb.ia ], [ %i.ak, %bb.hz ], [ %.52412.ph, %.critedge81.sink.split ]
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 12 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !33
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !34
  %i.us = and i32 %i.ur, 8288
  %.not2732 = icmp eq i32 %i.us, 0
  br i1 %.not2732, label %.thread3170, label %.preheader3346

.preheader3346:                                   ; preds = %.critedge81
  %i.ut = add nsw i32 %i.ak, -1                   ; 2 uses
  %.not3492 = icmp eq i32 %i.ut, 0
  br i1 %.not3492, label %.thread3170, label %.lr.ph3440.preheader

.lr.ph3440.preheader:                             ; preds = %.preheader3346
  %i.uu = add nsw i32 %i.ak, -1
  %wide.trip.count3556 = zext i32 %i.ut to i64
  br label %.lr.ph3440

.lr.ph3440:                                       ; preds = %.lr.ph3440.preheader, %bb.je
  %indvars.iv3553 = phi i64 [ 0, %.lr.ph3440.preheader ], [ %indvars.iv.next3554, %bb.je ] ; 4 uses
  %i.uv = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3553 ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !50
  %.not2733 = icmp eq i32 %i.ux, 0
  br i1 %.not2733, label %bb.jb, label %bb.je

bb.jb:                                            ; preds = %.lr.ph3440
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !48
  %.not2734 = icmp eq i32 %i.uz, 0
  br i1 %.not2734, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 48
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !50
  %.not2735 = icmp eq i32 %i.vb, 0
  br i1 %.not2735, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !48
  %.not2736 = icmp eq i32 %i.vd, 0
  br i1 %.not2736, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %.lr.ph3440, %bb.jb, %bb.jc, %bb.jd
  %indvars.iv.next3554 = add nuw nsw i64 %indvars.iv3553, 1 ; 2 uses
  %exitcond3557.not = icmp eq i64 %indvars.iv.next3554, %wide.trip.count3556
  br i1 %exitcond3557.not, label %.thread3170, label %.lr.ph3440, !llvm.loop !73

bb.jf:                                            ; preds = %bb.jd
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vf = trunc nuw nsw i64 %indvars.iv3553 to i32 ; 8 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.121) #13
  %i.vg = load ptr, ptr %i.up, align 8, !tbaa !33
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !34
  %i.vi = and i32 %i.vh, 8192
  %i.vj = icmp ne i32 %i.vi, 0
  %i.vk = icmp ugt i32 %i.lh, 15
  %or.cond93 = select i1 %i.vj, i1 %i.vk, i1 false
  %i.vl = load i8, ptr %i.f, align 16
  %i.vm = icmp eq i8 %i.vl, -23
  %or.cond97 = select i1 %or.cond93, i1 %i.vm, i1 false
  br i1 %or.cond97, label %bb.jg, label %.thread3170

bb.jg:                                            ; preds = %bb.jf
  %i.vn = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3108 = load i32, ptr %i.vn, align 1        ; 2 uses
  %i.vo = add i32 %i.cj, 5
  %i.vp = add i32 %i.vo, %.val3108                ; 8 uses
  %i.vq = icmp eq i32 %i.vp, 340
  switch i32 %i.vp, label %.thread3170 [
    i32 344, label %bb.jh
    i32 340, label %bb.jh
  ]

bb.jh:                                            ; preds = %bb.jg, %bb.jg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.122, i32 noundef %.val3108, i32 noundef %i.cj, i32 noundef %i.vp) #13
  %i.vr = zext nneg i32 %i.vp to i64
  %i.vs = call i64 @lseek(i32 noundef %0, i64 noundef %i.vr, i32 noundef 0) #13
  %i.vt = icmp eq i64 %i.vs, -1
  br i1 %i.vt, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.123) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.jj:                                            ; preds = %bb.jh
  %i.vu = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.e, i64 noundef 176) #13 ; 2 uses
  %.not2737 = icmp eq i64 %i.vu, 176
  br i1 %.not2737, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.124, i32 noundef %i.vp, i32 noundef %i.vp, i64 noundef %i.vu) #13
  br label %.thread3170

bb.jl:                                            ; preds = %bb.jj
  %.str.125..str.126 = select i1 %i.vq, ptr @.str.125, ptr @.str.126
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.125..str.126) #13
  %i.vv = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.val3105 = load i32, ptr %i.vv, align 1
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !32
  %i.vy = sub i32 %.val3105, %i.vx                ; 3 uses
  %i.vz = add nuw i64 %indvars.iv3553, 1
  %i.wa = and i64 %i.vz, 4294967295
  %i.wb = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.wa ; 6 uses
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !45 ; 3 uses
  %.not2738 = icmp ugt i32 %i.vy, %i.wc
  br i1 %.not2738, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !49
  %i.wf = add i32 %i.wc, -4
  %i.wg = add i32 %i.wf, %i.we
  %.not2739 = icmp ult i32 %i.vy, %i.wg
  br i1 %.not2739, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.127) #13
  br label %.thread3170

bb.jo:                                            ; preds = %bb.jm
  %i.wh = sub i32 %i.vy, %i.wc                    ; 3 uses
  %i.wi = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.wb)
  %.not2740 = icmp eq i64 %i.wi, 0
  br i1 %.not2740, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.jq:                                            ; preds = %bb.jo
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !48 ; 6 uses
  %i.wl = load i32, ptr %i.ve, align 4, !tbaa !48 ; 2 uses
  store i32 %i.wl, ptr %i.h, align 4, !tbaa !4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128, i32 noundef %i.wk, i32 noundef %i.wl, i32 noundef %i.wh) #13
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !74 ; 2 uses
  %.not2741 = icmp eq ptr %i.wn, null
  br i1 %.not2741, label %._crit_edge3601, label %bb.jr

._crit_edge3601:                                  ; preds = %bb.jq
  %.pre3602 = load i32, ptr %i.h, align 4, !tbaa !4
  br label %.thread3835

bb.jr:                                            ; preds = %bb.jq
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !75 ; 5 uses
  %.not2742 = icmp eq i64 %i.wp, 0
  %.pre3603.pre = load i32, ptr %i.h, align 4, !tbaa !4 ; 4 uses
  br i1 %.not2742, label %.thread3835, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.wq = call i32 @llvm.umax.i32(i32 %i.wk, i32 %.pre3603.pre) ; 2 uses
  %i.wr = zext i32 %i.wq to i64
  %i.ws = icmp ult i64 %i.wp, %i.wr
  br i1 %i.ws, label %bb.jt, label %bb.jv

bb.jt:                                            ; preds = %bb.js
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %i.wq, i64 noundef %i.wp) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.wt = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.wu = and i32 %i.wt, 256
  %.not2756 = icmp eq i32 %i.wu, 0
  br i1 %.not2756, label %.critedge3020, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.wv = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.130, ptr %i.wv, align 8, !tbaa !21
  br label %.critedge3020

bb.jv:                                            ; preds = %bb.js
  %i.ww = add i32 %.pre3603.pre, %i.wk
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wb, i64 12
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !50
  %. = call i32 @llvm.umax.i32(i32 %i.ww, i32 %i.wy) ; 2 uses
  %i.wz = zext i32 %. to i64
  %i.xa = icmp ult i64 %i.wp, %i.wz
  br i1 %i.xa, label %bb.jw, label %.thread3835

bb.jw:                                            ; preds = %bb.jv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %., i64 noundef %i.wp) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.xb = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.xc = and i32 %i.xb, 256
  %.not2755 = icmp eq i32 %i.xc, 0
  br i1 %.not2755, label %.critedge3020, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.xd = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.130, ptr %i.xd, align 8, !tbaa !21
  br label %.critedge3020

.thread3835:                                      ; preds = %bb.jr, %._crit_edge3601, %bb.jv
  %i.xe = phi i32 [ %.pre3602, %._crit_edge3601 ], [ %.pre3603.pre, %bb.jv ], [ %.pre3603.pre, %bb.jr ]
  %i.xf = add i32 %i.xe, %i.wk
  %i.xg = zext i32 %i.xf to i64
  %i.xh = call ptr @cli_calloc(i64 noundef %i.xg, i64 noundef 1) #13 ; 10 uses
  %.not2745 = icmp eq ptr %i.xh, null
  br i1 %.not2745, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %.thread3835
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.jz:                                            ; preds = %.thread3835
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !50 ; 4 uses
  %i.xk = add i32 %i.wh, 12
  %i.xl = icmp ult i32 %i.xj, %i.xk
  %i.xm = icmp ugt i32 %i.xj, %i.wk
  %or.cond3024 = or i1 %i.xl, %i.xm
  br i1 %or.cond3024, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.131, i32 noundef %i.xj) #13
  call void @free(ptr noundef nonnull %i.xh) #13
  br label %.thread3170

bb.kb:                                            ; preds = %bb.jz
  %i.xn = load i32, ptr %i.h, align 4, !tbaa !4
  %i.xo = zext i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xo
  %i.xq = zext i32 %i.xj to i64
  %i.xr = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.xp, i64 noundef %i.xq) #13 ; 4 uses
  %i.xs = load i32, ptr %i.xi, align 4, !tbaa !50 ; 2 uses
  %i.xt = zext i32 %i.xs to i64
  %.not2746 = icmp eq i64 %i.xr, %i.xt
  br i1 %.not2746, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132, i32 noundef %i.xs, i64 noundef %i.xr) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.xh) #13
  br label %.critedge3020

bb.kd:                                            ; preds = %bb.kb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.133, i64 noundef %i.xr, i64 noundef %i.xr) #13
  %i.xu = getelementptr inbounds nuw i8, ptr %i.e, i64 123
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !32
  %i.xw = icmp eq i8 %i.xv, -24
  br i1 %i.xw, label %bb.ke, label %bb.kj

bb.ke:                                            ; preds = %bb.kd
  %i.xx = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !48 ; 2 uses
  %i.xz = icmp ult i32 %i.xy, 4
  br i1 %i.xz, label %bb.kh, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.ya = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.yb = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %.val3104 = load i32, ptr %i.yb, align 4        ; 2 uses
  %i.yc = add i32 %.val3104, %i.vp                ; 2 uses
  %i.yd = add i32 %i.yc, 128
  %i.ye = load i32, ptr %i.ya, align 4, !tbaa !45 ; 3 uses
  %.not2748 = icmp ult i32 %i.yd, %i.ye
  br i1 %.not2748, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.yf = add i32 %i.yc, 132                      ; 2 uses
  %i.yg = add i32 %i.ye, %i.xy
  %.not2749 = icmp ule i32 %i.yf, %i.yg
  %i.yh = icmp ugt i32 %i.yf, %i.ye
  %or.cond3318 = and i1 %.not2749, %i.yh
  br i1 %or.cond3318, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.ke, %bb.kg, %bb.kf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.134) #13
  call void @free(ptr noundef nonnull %i.xh) #13
  br label %.thread3170

bb.ki:                                            ; preds = %bb.kg
  %i.yi = load i32, ptr %i.em, align 4, !tbaa !45
  %.neg = add nuw nsw i32 %i.vp, 128
  %.neg2750 = add i32 %.neg, %.val3104
  %i.yj = sub i32 %.neg2750, %i.yi
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kd, %bb.ki
  %.02288 = phi i32 [ %i.yj, %bb.ki ], [ 0, %bb.kd ]
  %i.yk = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2751 = icmp eq ptr %i.yk, null
  br i1 %.not2751, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xh, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.kl:                                            ; preds = %bb.kj
  %i.yl = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.yk, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.ym = icmp slt i32 %i.yl, 0
  br i1 %i.ym, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135, ptr noundef nonnull %i.yk) #13
  call void @free(ptr noundef nonnull %i.yk) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xh, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.kn:                                            ; preds = %bb.kl
  %i.yn = load i32, ptr %i.h, align 4, !tbaa !4
  %i.yo = load i32, ptr %i.vw, align 4, !tbaa !32
  %i.yp = load i32, ptr %i.em, align 4, !tbaa !45
  %i.yq = call i32 @unmew11(i32 noundef %i.vf, ptr noundef nonnull %i.xh, i32 noundef %i.wh, i32 noundef %i.wk, i32 noundef %i.yn, i32 noundef %i.yo, i32 noundef %i.yp, i32 noundef %.02288, ptr noundef null, ptr noundef null, i32 noundef %i.yl) #13
  %cond15 = icmp eq i32 %i.yq, 1
  br i1 %cond15, label %bb.ko, label %bb.ky

bb.ko:                                            ; preds = %bb.kn
  %i.yr = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2752 = icmp eq i8 %i.yr, 0
  br i1 %.not2752, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.136, ptr noundef nonnull %i.yk) #13
  br label %bb.kr

bb.kq:                                            ; preds = %bb.ko
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137) #13
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
end_hunk_0
begin_hunk_1_@cli_scanpe:bb.a
  %i.aep = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2764 = icmp eq i8 %i.aep, 0                ; 2 uses
  br i1 %i.aen, label %bb.mp, label %bb.ms

bb.mp:                                            ; preds = %bb.mo
  br i1 %.not2764, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.aeq = call i32 @unlink(ptr noundef nonnull %i.aeb) #13 ; 0 uses
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  call void @free(ptr noundef nonnull %i.aeb) #13
  br label %.critedge3020

bb.ms:                                            ; preds = %bb.mo
  br i1 %.not2764, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.aer = call i32 @unlink(ptr noundef nonnull %i.aeb) #13 ; 0 uses
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  call void @free(ptr noundef nonnull %i.aeb) #13
  br label %.critedge3020

bb.mv:                                            ; preds = %bb.mk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #13
  %i.aes = call i32 @close(i32 noundef %i.aec) #13 ; 0 uses
  %i.aet = call i32 @unlink(ptr noundef nonnull %i.aeb) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.acz, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.aeb) #13
  br label %.critedge137

.critedge137:                                     ; preds = %bb.lh, %bb.le, %bb.lc, %bb.lx, %bb.mv, %bb.la, %bb.lk, %bb.lf, %bb.lj, %bb.li
  br i1 %i.zc, label %bb.mw, label %.critedge171

bb.mw:                                            ; preds = %.critedge137
  %i.aeu = load ptr, ptr %i.up, align 8, !tbaa !33
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !34
  %i.aew = and i32 %i.aev, 64
  %i.aex = icmp ne i32 %i.aew, 0
  %i.aey = load i8, ptr %i.f, align 16
  %i.aez = icmp eq i8 %i.aey, -121
  %or.cond141 = select i1 %i.aex, i1 %i.aez, i1 false
  %i.afa = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  %i.afb = load i8, ptr %i.afa, align 1
  %i.afc = icmp eq i8 %i.afb, 37
  %or.cond217 = select i1 %or.cond141, i1 %i.afc, i1 false
  br i1 %or.cond217, label %bb.mx, label %bb.ou

bb.mx:                                            ; preds = %bb.mw
  %i.afd = add i32 %.724143172, 1                 ; 2 uses
  %i.afe = zext i32 %i.afd to i64
  %i.aff = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.afe ; 5 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 12 ; 3 uses
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !50 ; 9 uses
  %i.afi = zext i32 %.724143172 to i64
  %i.afj = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.afi ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !48 ; 4 uses
  store i32 %i.afl, ptr %i.h, align 4, !tbaa !4
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !74 ; 2 uses
  %.not2766 = icmp eq ptr %i.afn, null
  br i1 %.not2766, label %bb.nc, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 24
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !75 ; 3 uses
  %.not2767 = icmp eq i64 %i.afp, 0
  br i1 %.not2767, label %bb.nc, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.afq = call i32 @llvm.umax.i32(i32 %i.afl, i32 %i.afh) ; 2 uses
  %i.afr = zext i32 %i.afq to i64
  %i.afs = icmp ult i64 %i.afp, %i.afr
  br i1 %i.afs, label %bb.na, label %bb.nc

bb.na:                                            ; preds = %bb.mz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.afq, i64 noundef %i.afp) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.aft = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.afu = and i32 %i.aft, 256
  %.not2790 = icmp eq i32 %i.afu, 0
  br i1 %.not2790, label %.critedge3020, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.afv = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.153, ptr %i.afv, align 8, !tbaa !21
  br label %.critedge3020

bb.nc:                                            ; preds = %bb.mz, %bb.my, %bb.mx
  %i.afw = icmp ugt i32 %i.afh, 25
  %.not2768 = icmp ugt i32 %i.afl, %i.afh
  %or.cond3030 = select i1 %i.afw, i1 %.not2768, i1 false
  br i1 %or.cond3030, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.154, i32 noundef %i.afh, i32 noundef %i.afl) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ne:                                            ; preds = %bb.nc
  %i.afx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val3095 = load i32, ptr %i.afx, align 2
  %i.afy = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !32
  %i.aga = sub i32 %.val3095, %i.afz              ; 5 uses
  %i.agb = load i32, ptr %i.afg, align 4, !tbaa !50 ; 2 uses
  %i.agc = icmp ult i32 %i.agb, 4
  br i1 %i.agc, label %bb.nh, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.agd = load i32, ptr %i.aff, align 4, !tbaa !45 ; 3 uses
  %.not2770 = icmp ult i32 %i.aga, %i.agd
  br i1 %.not2770, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.age = add i32 %i.aga, 4                      ; 2 uses
  %i.agf = add i32 %i.agd, %i.agb
  %.not2771 = icmp ule i32 %i.age, %i.agf
  %i.agg = icmp ugt i32 %i.age, %i.agd
  %or.cond3032 = and i1 %i.agg, %.not2771
  br i1 %or.cond3032, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ne, %bb.ng, %bb.nf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.155, i32 noundef %i.aga) #13
  br label %bb.ou

bb.ni:                                            ; preds = %bb.ng
  %i.agh = zext i32 %i.afh to i64                 ; 3 uses
  %i.agi = call ptr @cli_malloc(i64 noundef %i.agh) #13 ; 19 uses
  %i.agj = icmp eq ptr %i.agi, null
  br i1 %i.agj, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.nk:                                            ; preds = %bb.ni
  %i.agk = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.aff)
  %.not2772 = icmp eq i64 %i.agk, 0
  br i1 %.not2772, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.agl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.agi, i32 noundef %i.afh) #13
  %.not2773 = icmp eq i32 %i.agl, %i.afh
  br i1 %.not2773, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, i32 noundef %i.afd) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %.critedge3020

bb.nn:                                            ; preds = %bb.nl
  %i.agm = zext i32 %i.aga to i64
  %i.agn = load i32, ptr %i.aff, align 4, !tbaa !45 ; 10 uses
  %i.ago = zext i32 %i.agn to i64                 ; 2 uses
  %i.agp = sub nsw i64 %i.agm, %i.ago             ; 3 uses
  %.not2774 = icmp ult i32 %i.aga, %i.agn
  %.not2775 = icmp slt i64 %i.agp, 0
  %or.cond3033 = select i1 %.not2774, i1 true, i1 %.not2775
  %i.agq = add nuw nsw i64 %i.agp, 4
  %.not2776 = icmp sgt i64 %i.agq, %i.agh
  %or.cond3034 = select i1 %or.cond3033, i1 true, i1 %.not2776
  br i1 %or.cond3034, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.157) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %bb.ou

bb.np:                                            ; preds = %bb.nn
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agp
  %.val3094 = load i32, ptr %i.agr, align 1
  %i.ags = load i32, ptr %i.afy, align 4, !tbaa !32 ; 5 uses
  %i.agt = sub i32 %.val3094, %i.ags              ; 4 uses
  %i.agu = load i32, ptr %i.afg, align 4, !tbaa !50 ; 4 uses
  %i.agv = icmp ult i32 %i.agu, 4
  %.not2778 = icmp ult i32 %i.agt, %i.agn
  %or.cond3321 = select i1 %i.agv, i1 true, i1 %.not2778
  br i1 %or.cond3321, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.agw = add i32 %i.agt, 4                      ; 2 uses
  %i.agx = add i32 %i.agu, %i.agn                 ; 2 uses
  %.not2779 = icmp ule i32 %i.agw, %i.agx
  %i.agy = icmp ugt i32 %i.agw, %i.agn
  %or.cond3036 = and i1 %.not2779, %i.agy
  br i1 %or.cond3036, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.np, %bb.nq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.158, i32 noundef %i.agt) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %bb.ou

bb.ns:                                            ; preds = %bb.nq
  %i.agz = zext i32 %i.agt to i64
  %i.aha = sub nsw i64 %i.agz, %i.ago             ; 3 uses
  %i.ahb = icmp ult i32 %i.afh, 32
  %.not2780 = icmp slt i64 %i.aha, 0
  %or.cond3037 = select i1 %i.ahb, i1 true, i1 %.not2780
  %i.ahc = add nuw nsw i64 %i.aha, 32
  %.not2781 = icmp sgt i64 %i.ahc, %i.agh
  %or.cond3038 = select i1 %or.cond3037, i1 true, i1 %.not2781
  br i1 %or.cond3038, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.159) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %bb.ou

bb.nu:                                            ; preds = %bb.ns
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.aha ; 3 uses
  %.val3093 = load i32, ptr %i.ahd, align 1
  %i.ahe = sub i32 %.val3093, %i.ags              ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %.val3092 = load i32, ptr %i.ahf, align 1
  %i.ahg = sub i32 %.val3092, %i.ags              ; 4 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %.val3091 = load i32, ptr %i.ahh, align 1
  %i.ahi = sub i32 %.val3091, %i.ags              ; 3 uses
  %i.ahj = load i32, ptr %i.afj, align 4, !tbaa !45 ; 2 uses
  %.not2782 = icmp eq i32 %i.ahe, %i.ahj
  br i1 %.not2782, label %bb.nw, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.160, i32 noundef %i.ahe, i32 noundef %i.ahj) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %bb.ou

bb.nw:                                            ; preds = %bb.nu
  %i.ahk = icmp uge i32 %i.ahg, %i.agn
  %i.ahl = sub nuw i32 %i.ahg, %i.agn
  %.not2783 = icmp ult i32 %i.ahl, %i.agu
  %or.cond3323 = select i1 %i.ahk, i1 %.not2783, i1 false
  br i1 %or.cond3323, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.161) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %bb.ou

bb.ny:                                            ; preds = %bb.nw
  %i.ahm = icmp ult i32 %i.agu, 16
  %.not2784 = icmp ult i32 %i.ahi, %i.agn
  %or.cond3039 = select i1 %i.ahm, i1 true, i1 %.not2784
  br i1 %or.cond3039, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.ahn = add i32 %i.ahi, 16                     ; 2 uses
  %.not2785 = icmp ule i32 %i.ahn, %i.agx
  %i.aho = icmp ugt i32 %i.ahn, %i.agn
  %or.cond3040 = and i1 %.not2785, %i.aho
  br i1 %or.cond3040, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.162) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %bb.ou

bb.ob:                                            ; preds = %bb.nz
  %reass.sub = sub i32 %i.ahi, %i.agn
  %i.ahp = add i32 %reass.sub, 12
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.ahq
  %.val3089 = load i32, ptr %i.ahr, align 1
  %i.ahs = sub i32 %.val3089, %i.ags              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163, i32 noundef %i.ahs) #13
  %i.aht = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = call ptr @cli_calloc(i64 noundef %i.ahu, i64 noundef 1) #13 ; 7 uses
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.agi) #13
  br label %.critedge3020

bb.od:                                            ; preds = %bb.ob
  %i.ahx = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2786 = icmp eq ptr %i.ahx, null
  br i1 %.not2786, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agi, ptr noundef nonnull %i.ahv, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.of:                                            ; preds = %bb.od
  %i.ahy = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.ahx, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.ahz = icmp slt i32 %i.ahy, 0
  br i1 %i.ahz, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.ahx) #13
  call void @free(ptr noundef nonnull %i.ahx) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agi, ptr noundef nonnull %i.ahv, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.oh:                                            ; preds = %bb.of
  %i.aia = load i32, ptr %i.aff, align 4, !tbaa !45 ; 2 uses
  %i.aib = sub i32 %i.ahg, %i.aia
  %i.aic = zext i32 %i.aib to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.aic
  %i.aie = sub i32 %i.afh, %i.ahg
  %i.aif = add i32 %i.aie, %i.aia
  %i.aig = load i32, ptr %i.h, align 4, !tbaa !4
  %i.aih = load i32, ptr %i.afy, align 4, !tbaa !32
  %i.aii = call i32 @unfsg_200(ptr noundef nonnull %i.aid, ptr noundef nonnull %i.ahv, i32 noundef %i.aif, i32 noundef %i.aig, i32 noundef %i.ahe, i32 noundef %i.aih, i32 noundef %i.ahs, i32 noundef %i.ahy) #13
  switch i32 %i.aii, label %bb.ot [
    i32 1, label %bb.oi
    i32 0, label %bb.os
  ]

bb.oi:                                            ; preds = %bb.oh
  %i.aij = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2787 = icmp eq i8 %i.aij, 0
  br i1 %.not2787, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, ptr noundef nonnull %i.ahx) #13
  br label %bb.ol

bb.ok:                                            ; preds = %bb.oi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #13
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agi, ptr noundef nonnull %i.ahv, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.aik = call i32 @fsync(i32 noundef %i.ahy) #13 ; 0 uses
  %i.ail = call i64 @lseek(i32 noundef %i.ahy, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.aim = call i32 @cli_magic_scandesc(i32 noundef %i.ahy, ptr noundef nonnull %1) #13
  %i.ain = icmp eq i32 %i.aim, 1
  %i.aio = call i32 @close(i32 noundef %i.ahy) #13 ; 0 uses
  %i.aip = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2789 = icmp eq i8 %i.aip, 0                ; 2 uses
  br i1 %i.ain, label %bb.om, label %bb.op

bb.om:                                            ; preds = %bb.ol
  br i1 %.not2789, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.aiq = call i32 @unlink(ptr noundef nonnull %i.ahx) #13 ; 0 uses
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  call void @free(ptr noundef nonnull %i.ahx) #13
  br label %.critedge3020

bb.op:                                            ; preds = %bb.ol
  br i1 %.not2789, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.air = call i32 @unlink(ptr noundef nonnull %i.ahx) #13 ; 0 uses
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  call void @free(ptr noundef nonnull %i.ahx) #13
  br label %.critedge3020

bb.os:                                            ; preds = %bb.oh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.167) #13
  %i.ais = call i32 @close(i32 noundef %i.ahy) #13 ; 0 uses
  %i.ait = call i32 @unlink(ptr noundef nonnull %i.ahx) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.ahx) #13
  br label %.thread3279

bb.ot:                                            ; preds = %bb.oh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.168) #13
  %i.aiu = call i32 @close(i32 noundef %i.ahy) #13 ; 0 uses
  %i.aiv = call i32 @unlink(ptr noundef nonnull %i.ahx) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agi, ptr noundef nonnull %i.ahv, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.ahx) #13
  br label %bb.ou

bb.ou:                                            ; preds = %bb.mw, %bb.nr, %bb.nh, %bb.no, %bb.ot, %bb.nv, %bb.nx, %bb.oa, %bb.nt
  %i.aiw = load ptr, ptr %i.up, align 8, !tbaa !33
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !34
  %i.aiy = and i32 %i.aix, 64
  %i.aiz = icmp ne i32 %i.aiy, 0
  %i.aja = load i8, ptr %i.f, align 16
  %i.ajb = icmp eq i8 %i.aja, -66
  %or.cond153 = select i1 %i.aiz, i1 %i.ajb, i1 false
  br i1 %or.cond153, label %bb.ov, label %bb.qv

bb.ov:                                            ; preds = %bb.ou
  %.val3088 = load i32, ptr %i.afa, align 1
  %i.ajc = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 9 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !32
  %i.aje = sub i32 %.val3088, %i.ajd              ; 4 uses
  %i.ajf = icmp ult i32 %i.aje, %.02378.lcssa
  br i1 %i.ajf, label %bb.ow, label %bb.qv

bb.ow:                                            ; preds = %bb.ov
  %i.ajg = add i32 %.724143172, 1
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.ajh ; 5 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 12 ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !50 ; 8 uses
  %i.ajl = zext i32 %.724143172 to i64
  %i.ajm = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.ajl ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4 ; 2 uses
end_hunk_1
