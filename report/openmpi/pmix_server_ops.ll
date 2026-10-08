Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_server_ops?download=true
inline.NumInlined: 575
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_grpcbfunc:bb.a
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !32
  %i.vq = icmp sgt i32 %i.vp, 0
  br i1 %i.vq, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.vr = load ptr, ptr %i.ve, align 8, !tbaa !104
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.vl, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 3892, ptr noundef %i.vr) #18
  %.pre = load ptr, ptr %i.vf, align 8, !tbaa !103
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.vs = phi ptr [ %i.vg, %bb.cr ], [ %i.vg, %bb.cs ], [ %.pre, %bb.ct ]
  %i.vt = call i32 %i.vs(ptr noundef nonnull %8, i8 noundef zeroext 3, ptr noundef nonnull %9) #18 ; 2 uses
  call void @PMIx_Data_array_destruct(ptr noundef nonnull %11) #18
  switch i32 %i.vt, label %.loopexit945 [
    i32 0, label %.thread922
    i32 -2, label %.loopexit946
  ]

.loopexit945:                                     ; preds = %bb.cu, %.thread893
  %.10921 = phi i32 [ -47, %.thread893 ], [ %i.vt, %bb.cu ]
  %i.vu = call ptr @PMIx_Error_string(i32 noundef %.10921) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %i.vu, ptr noundef nonnull @.str.2, i32 noundef 3895) #18
  br label %.loopexit946

.loopexit946:                                     ; preds = %bb.cu, %.loopexit945
  %i.vv = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 48
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !78 ; 2 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !40 ; 2 uses
  %.not6.i711 = icmp eq ptr %i.vy, null
  br i1 %.not6.i711, label %pmix_obj_run_destructors.exit715, label %.lr.ph.i712

.lr.ph.i712:                                      ; preds = %.loopexit946, %.lr.ph.i712
  %i.vz = phi ptr [ %i.wb, %.lr.ph.i712 ], [ %i.vy, %.loopexit946 ]
  %.07.i713 = phi ptr [ %i.wa, %.lr.ph.i712 ], [ %i.vx, %.loopexit946 ]
  call void %i.vz(ptr noundef nonnull %3) #18, !inline_history !2
  %i.wa = getelementptr inbounds nuw i8, ptr %.07.i713, i64 8 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !40 ; 2 uses
  %.not.i714 = icmp eq ptr %i.wb, null
  br i1 %.not.i714, label %pmix_obj_run_destructors.exit715, label %.lr.ph.i712, !llvm.loop !3

pmix_obj_run_destructors.exit715:                 ; preds = %.lr.ph.i712, %.loopexit946
  %i.wc = load ptr, ptr %i.ic, align 8, !tbaa !37
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 48
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !78 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !40 ; 2 uses
  %.not6.i716 = icmp eq ptr %i.wf, null
  br i1 %.not6.i716, label %pmix_obj_run_destructors.exit720, label %.lr.ph.i717

.lr.ph.i717:                                      ; preds = %pmix_obj_run_destructors.exit715, %.lr.ph.i717
  %i.wg = phi ptr [ %i.wi, %.lr.ph.i717 ], [ %i.wf, %pmix_obj_run_destructors.exit715 ]
  %.07.i718 = phi ptr [ %i.wh, %.lr.ph.i717 ], [ %i.we, %pmix_obj_run_destructors.exit715 ]
  call void %i.wg(ptr noundef nonnull %4) #18, !inline_history !2
  %i.wh = getelementptr inbounds nuw i8, ptr %.07.i718, i64 8 ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !40 ; 2 uses
  %.not.i719 = icmp eq ptr %i.wi, null
  br i1 %.not.i719, label %pmix_obj_run_destructors.exit720, label %.lr.ph.i717, !llvm.loop !3

pmix_obj_run_destructors.exit720:                 ; preds = %.lr.ph.i717, %pmix_obj_run_destructors.exit715
  %i.wj = load ptr, ptr %i.im, align 8, !tbaa !37
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 48
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !78 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !40 ; 2 uses
  %.not6.i721 = icmp eq ptr %i.wm, null
  br i1 %.not6.i721, label %pmix_obj_run_destructors.exit625.sink.split, label %.lr.ph.i722

.lr.ph.i722:                                      ; preds = %pmix_obj_run_destructors.exit720, %.lr.ph.i722
  %i.wn = phi ptr [ %i.wp, %.lr.ph.i722 ], [ %i.wm, %pmix_obj_run_destructors.exit720 ]
  %.07.i723 = phi ptr [ %i.wo, %.lr.ph.i722 ], [ %i.wl, %pmix_obj_run_destructors.exit720 ]
  call void %i.wn(ptr noundef nonnull %5) #18, !inline_history !2
  %i.wo = getelementptr inbounds nuw i8, ptr %.07.i723, i64 8 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !40 ; 2 uses
  %.not.i724 = icmp eq ptr %i.wp, null
  br i1 %.not.i724, label %pmix_obj_run_destructors.exit625.sink.split, label %.lr.ph.i722, !llvm.loop !3

.thread922:                                       ; preds = %.thread893, %bb.cu
  %i.wq = add nuw i64 %.14661037, 1               ; 2 uses
  %i.wr = load i64, ptr %i.b, align 8, !tbaa !131 ; 2 uses
  %i.ws = icmp ult i64 %i.wq, %i.wr
  br i1 %i.ws, label %.lr.ph1038, label %._crit_edge1039, !llvm.loop !461

._crit_edge1039:                                  ; preds = %.thread922, %pmix_obj_run_constructors.exit710
  %.lcssa990 = phi i64 [ 0, %pmix_obj_run_constructors.exit710 ], [ %i.wr, %.thread922 ]
  call void @PMIx_Info_free(ptr noundef %i.sp, i64 noundef %.lcssa990) #18
  %i.wt = load ptr, ptr %i.im, align 8, !tbaa !37
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !78 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !40 ; 2 uses
  %.not6.i726 = icmp eq ptr %i.ww, null
  br i1 %.not6.i726, label %pmix_obj_run_destructors.exit730, label %.lr.ph.i727

.lr.ph.i727:                                      ; preds = %._crit_edge1039, %.lr.ph.i727
  %i.wx = phi ptr [ %i.wz, %.lr.ph.i727 ], [ %i.ww, %._crit_edge1039 ]
  %.07.i728 = phi ptr [ %i.wy, %.lr.ph.i727 ], [ %i.wv, %._crit_edge1039 ]
  call void %i.wx(ptr noundef nonnull %5) #18, !inline_history !2
  %i.wy = getelementptr inbounds nuw i8, ptr %.07.i728, i64 8 ; 2 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !40 ; 2 uses
  %.not.i729 = icmp eq ptr %i.wz, null
  br i1 %.not.i729, label %pmix_obj_run_destructors.exit730, label %.lr.ph.i727, !llvm.loop !3

pmix_obj_run_destructors.exit730:                 ; preds = %.lr.ph.i727, %._crit_edge1039
  br label %bb.bs, !llvm.loop !462

bb.cv:                                            ; preds = %bb.bw
  %i.xa = load ptr, ptr %i.ic, align 8, !tbaa !37
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !78 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !40 ; 2 uses
  %.not6.i731 = icmp eq ptr %i.xd, null
  br i1 %.not6.i731, label %pmix_obj_run_destructors.exit735, label %.lr.ph.i732

.lr.ph.i732:                                      ; preds = %bb.cv, %.lr.ph.i732
  %i.xe = phi ptr [ %i.xg, %.lr.ph.i732 ], [ %i.xd, %bb.cv ]
  %.07.i733 = phi ptr [ %i.xf, %.lr.ph.i732 ], [ %i.xc, %bb.cv ]
  call void %i.xe(ptr noundef nonnull %4) #18, !inline_history !2
  %i.xf = getelementptr inbounds nuw i8, ptr %.07.i733, i64 8 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !40 ; 2 uses
  %.not.i734 = icmp eq ptr %i.xg, null
  br i1 %.not.i734, label %pmix_obj_run_destructors.exit735, label %.lr.ph.i732, !llvm.loop !3

pmix_obj_run_destructors.exit735:                 ; preds = %.lr.ph.i732, %bb.cv, %bb.bo, %.loopexit947
  store i32 1, ptr %i.e, align 4, !tbaa !35
  %i.xh = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !35 ; 3 uses
  %or.cond19 = icmp ult i32 %i.xh, 64
  br i1 %or.cond19, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %pmix_obj_run_destructors.exit735
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !32
  %i.xm = icmp sgt i32 %i.xl, 1
  br i1 %i.xm, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.xn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !105
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 120
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !67
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 480
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !71
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !73
  %i.xt = call ptr @PMIx_Data_type_string(i16 noundef zeroext 14) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.xh, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3912, ptr noundef %i.xs, ptr noundef %i.xt) #18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %pmix_obj_run_destructors.exit735
  %i.xu = load i8, ptr %i.ef, align 8, !tbaa !75
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !105
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 120
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !67 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 472
  %i.xz = load i8, ptr %i.xy, align 8, !tbaa !76
  %i.ya = icmp eq i8 %i.xu, %i.xz
  br i1 %i.ya, label %bb.cz, label %.thread895

bb.cz:                                            ; preds = %bb.cy
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 480
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !71
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 32
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !77
  %i.yf = call i32 %i.ye(ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i16 noundef zeroext 14) #18 ; 2 uses
  switch i32 %i.yf, label %.thread895 [
    i32 -2, label %.loopexit953
    i32 0, label %bb.ba
    i32 -50, label %.loopexit953
  ]

.thread895:                                       ; preds = %bb.cz, %bb.cy
  %.11897 = phi i32 [ %i.yf, %bb.cz ], [ -20, %bb.cy ]
  %i.yg = call ptr @PMIx_Error_string(i32 noundef %.11897) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %i.yg, ptr noundef nonnull @.str.2, i32 noundef 3914) #18
  br label %.loopexit953

.loopexit953:                                     ; preds = %bb.cz, %bb.cz, %.thread895
  %i.yh = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !78 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !40 ; 2 uses
  %.not6.i736 = icmp eq ptr %i.yk, null
  br i1 %.not6.i736, label %pmix_obj_run_destructors.exit625, label %.lr.ph.i737

.lr.ph.i737:                                      ; preds = %.loopexit953, %.lr.ph.i737
  %i.yl = phi ptr [ %i.yn, %.lr.ph.i737 ], [ %i.yk, %.loopexit953 ]
  %.07.i738 = phi ptr [ %i.ym, %.lr.ph.i737 ], [ %i.yj, %.loopexit953 ]
  call void %i.yl(ptr noundef nonnull %3) #18, !inline_history !2
  %i.ym = getelementptr inbounds nuw i8, ptr %.07.i738, i64 8 ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !40 ; 2 uses
  %.not.i739 = icmp eq ptr %i.yn, null
  br i1 %.not.i739, label %pmix_obj_run_destructors.exit625, label %.lr.ph.i737, !llvm.loop !3

pmix_obj_run_destructors.exit625.sink.split:      ; preds = %.lr.ph.i722, %.lr.ph.i702, %pmix_obj_run_destructors.exit720, %pmix_obj_run_destructors.exit700
  %i.yo = load i64, ptr %i.b, align 8, !tbaa !131
  call void @PMIx_Info_free(ptr noundef %i.sp, i64 noundef %i.yo) #18
  br label %pmix_obj_run_destructors.exit625

pmix_obj_run_destructors.exit625:                 ; preds = %.lr.ph.i687, %.lr.ph.i672, %.lr.ph.i652, %.lr.ph.i737, %.lr.ph.i627, %.lr.ph.i622, %pmix_obj_run_destructors.exit625.sink.split, %.preheader956, %.loopexit953, %pmix_obj_run_destructors.exit685, %pmix_obj_run_destructors.exit670, %pmix_obj_run_destructors.exit650, %.loopexit954, %bb.az, %._crit_edge, %bb.l
  %.2 = phi ptr [ null, %bb.l ], [ %.1464, %._crit_edge ], [ %.1464, %.lr.ph.i737 ], [ %.1464, %.lr.ph.i622 ], [ %.1464, %pmix_obj_run_destructors.exit625.sink.split ], [ %.1464, %.lr.ph.i672 ], [ null, %.preheader956 ], [ %.1464, %.lr.ph.i652 ], [ %.1464, %.lr.ph.i627 ], [ %.1464, %bb.az ], [ %.1464, %.loopexit954 ], [ %.1464, %pmix_obj_run_destructors.exit650 ], [ %.1464, %pmix_obj_run_destructors.exit670 ], [ %.1464, %pmix_obj_run_destructors.exit685 ], [ %.1464, %.loopexit953 ], [ %.1464, %.lr.ph.i687 ]
  %i.yp = getelementptr inbounds nuw i8, ptr %i.h, i64 1200 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.h, i64 1320 ; 2 uses
  %.14781049 = load ptr, ptr %i.yq, align 8, !tbaa !106 ; 3 uses
  %.not5511050 = icmp eq ptr %.14781049, %i.yp
  br i1 %.not5511050, label %.preheader933, label %.lr.ph1052

.preheader933.loopexit:                           ; preds = %.loopexit939
  %.24791062.pre = load ptr, ptr %i.yq, align 8, !tbaa !106
  br label %.preheader933

.preheader933:                                    ; preds = %.preheader933.loopexit, %pmix_obj_run_destructors.exit625
  %.24791062 = phi ptr [ %.24791062.pre, %.preheader933.loopexit ], [ %.14781049, %pmix_obj_run_destructors.exit625 ] ; 2 uses
  %.not5521063 = icmp eq ptr %.24791062, %i.yp
  br i1 %.not5521063, label %pmix_obj_new_tma.exit747, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %.preheader933
  %i.yr = getelementptr inbounds nuw i8, ptr %2, i64 472 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 6 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.yu = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.yv = getelementptr inbounds nuw i8, ptr %14, i64 736 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %14, i64 508 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %14, i64 1072 ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %14, i64 720 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %14, i64 760 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %14, i64 768 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %14, i64 800 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ze = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.zf = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %14, i64 920 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %14, i64 1040
  %i.zi = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.zj = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.zk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.zl = getelementptr inbounds nuw i8, ptr %13, i64 128
  br label %bb.dc

.lr.ph1052:                                       ; preds = %pmix_obj_run_destructors.exit625, %.loopexit939
  %.14781051 = phi ptr [ %.1478, %.loopexit939 ], [ %.14781049, %pmix_obj_run_destructors.exit625 ] ; 3 uses
  %i.zm = load ptr, ptr %i.f, align 8, !tbaa !155 ; 3 uses
  %i.zn = icmp eq ptr %i.zm, null
  br i1 %i.zn, label %bb.da, label %.preheader938

.preheader938:                                    ; preds = %.lr.ph1052
  %i.zo = load ptr, ptr %i.zm, align 8, !tbaa !169 ; 2 uses
  %.not589.not1046 = icmp eq ptr %i.zo, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.14781051, i64 304
  %.pre1106 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130
  %.phi.trans.insert1107 = getelementptr inbounds nuw i8, ptr %.pre1106, i64 128
  %.pre1108 = load ptr, ptr %.phi.trans.insert1107, align 8, !tbaa !83
  %.phi.trans.insert1109 = getelementptr inbounds nuw i8, ptr %.pre1108, i64 152
  %.pre1110 = load ptr, ptr %.phi.trans.insert1109, align 8, !tbaa !86 ; 3 uses
  br i1 %.not589.not1046, label %.loopexit939.sink.split, label %.lr.ph1048

bb.da:                                            ; preds = %.lr.ph1052
  %i.zp = getelementptr inbounds nuw i8, ptr %.14781051, i64 304
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !130
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 128
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !83
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 152
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !86
  br label %.loopexit939.sink.split

bb.db:                                            ; preds = %.lr.ph1048
  %i.zv = add i64 %.24671047, 1                   ; 2 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zv
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !169 ; 2 uses
  %.not589.not = icmp eq ptr %i.zx, null
  br i1 %.not589.not, label %.loopexit939.sink.split, label %.lr.ph1048, !llvm.loop !463

.lr.ph1048:                                       ; preds = %.preheader938, %bb.db
  %i.zy = phi ptr [ %i.zx, %bb.db ], [ %i.zo, %.preheader938 ]
  %.24671047 = phi i64 [ %i.zv, %bb.db ], [ 0, %.preheader938 ]
  %i.zz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zy, ptr noundef nonnull dereferenceable(1) %.pre1110) #23
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %.loopexit939, label %bb.db

.loopexit939.sink.split:                          ; preds = %bb.db, %.preheader938, %bb.da
  %.sink1339 = phi ptr [ %i.zu, %bb.da ], [ %.pre1110, %.preheader938 ], [ %.pre1110, %bb.db ]
  %i.aab = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.f, ptr noundef %.sink1339) #18 ; 0 uses
  br label %.loopexit939

.loopexit939:                                     ; preds = %.lr.ph1048, %.loopexit939.sink.split
  %i.aac = getelementptr inbounds nuw i8, ptr %.14781051, i64 120
  %.1478 = load ptr, ptr %i.aac, align 8, !tbaa !106 ; 2 uses
  %.not551 = icmp eq ptr %.1478, %i.yp
  br i1 %.not551, label %.preheader933.loopexit, label %.lr.ph1052, !llvm.loop !464

bb.dc:                                            ; preds = %.lr.ph1065, %bb.hx
  %.24791064 = phi ptr [ %.24791062, %.lr.ph1065 ], [ %.2479, %bb.hx ] ; 15 uses
  %i.aad = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 56), align 8, !tbaa !34
  %i.aae = call noalias noundef ptr @malloc(i64 noundef %i.aad) #19 ; 61 uses
  %i.aaf = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !35
  %i.aag = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !36
  %.not.i741 = icmp eq i32 %i.aaf, %i.aag
  br i1 %.not.i741, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #18
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.not22.i742 = icmp eq ptr %i.aae, null
  br i1 %.not22.i742, label %pmix_obj_new_tma.exit747, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aah = call i32 @pthread_mutex_init(ptr noundef nonnull %i.aae, ptr noundef null) #18 ; 0 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 40 ; 9 uses
  store ptr @pmix_buffer_t_class, ptr %i.aai, align 8, !tbaa !37
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 48 ; 17 uses
  store i32 1, ptr %i.aaj, align 8, !tbaa !38
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 56 ; 9 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aae, i64 96 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aak, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aal, i8 0, i64 24, i1 false)
  %i.aam = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 40), align 8, !tbaa !39 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !40 ; 2 uses
  %.not6.i.i743 = icmp eq ptr %i.aan, null
  br i1 %.not6.i.i743, label %.loopexit932, label %.lr.ph.i.i744

.lr.ph.i.i744:                                    ; preds = %bb.df, %.lr.ph.i.i744
  %i.aao = phi ptr [ %i.aaq, %.lr.ph.i.i744 ], [ %i.aan, %bb.df ]
  %.07.i.i745 = phi ptr [ %i.aap, %.lr.ph.i.i744 ], [ %i.aam, %bb.df ]
  call void %i.aao(ptr noundef nonnull %i.aae) #18, !inline_history !0
  %i.aap = getelementptr inbounds nuw i8, ptr %.07.i.i745, i64 8 ; 2 uses
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !40 ; 2 uses
  %.not.i.i746 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i746, label %.loopexit932, label %.lr.ph.i.i744, !llvm.loop !1

.loopexit932:                                     ; preds = %.lr.ph.i.i744, %bb.df
  %i.aar = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !35 ; 3 uses
  %or.cond23 = icmp ult i32 %i.aar, 64
  br i1 %or.cond23, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %.loopexit932
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !32
  %i.aaw = icmp sgt i32 %i.aav, 1
  br i1 %i.aaw, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aax = getelementptr inbounds nuw i8, ptr %.24791064, i64 304
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !130
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 120
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !67
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 480
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !71
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !73
  %i.abe = call ptr @PMIx_Data_type_string(i16 noundef zeroext 20) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.aar, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 3947, ptr noundef %i.abd, ptr noundef %i.abe) #18
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %.loopexit932
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aae, i64 120 ; 10 uses
  %i.abg = load i8, ptr %i.abf, align 8, !tbaa !75 ; 2 uses
  %i.abh = icmp eq i8 %i.abg, 0
  %i.abi = getelementptr inbounds nuw i8, ptr %.24791064, i64 304
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !130
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 120
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !67 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 472
  %i.abn = load i8, ptr %i.abm, align 8, !tbaa !76 ; 2 uses
  br i1 %i.abh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i8 %i.abn, ptr %i.abf, align 8, !tbaa !75
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.abo = icmp eq i8 %i.abg, %i.abn
  br i1 %i.abo, label %bb.dl, label %.thread898

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abl, i64 480
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !71
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 24
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !124
  %i.abt = call i32 %i.abs(ptr noundef nonnull %i.aae, ptr noundef nonnull %i.yr, i32 noundef 1, i16 noundef zeroext 20) #18 ; 2 uses
  switch i32 %i.abt, label %.thread898 [
    i32 0, label %bb.dq
    i32 -2, label %.loopexit934
  ]

.thread898:                                       ; preds = %bb.dk, %bb.dl
  %.12900 = phi i32 [ %i.abt, %bb.dl ], [ -22, %bb.dk ]
  %i.abu = call ptr @PMIx_Error_string(i32 noundef %.12900) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %i.abu, ptr noundef nonnull @.str.2, i32 noundef 3949) #18
  br label %.loopexit934

.loopexit934:                                     ; preds = %bb.dl, %.thread898
  %i.abv = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.aae) #18
  %i.abw = icmp eq i32 %i.abv, 35
  br i1 %i.abw, label %bb.dm, label %pmix_obj_update.exit607

bb.dm:                                            ; preds = %.loopexit934
  %i.abx = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.abx, align 4, !tbaa !35
  call void @perror(ptr noundef nonnull @.str.81) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit607:                          ; preds = %.loopexit934
  %i.aby = load i32, ptr %i.aaj, align 8, !tbaa !38
  %i.abz = add nsw i32 %i.aby, -1                 ; 2 uses
  store i32 %i.abz, ptr %i.aaj, align 8, !tbaa !38
  %i.aca = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aae) #18 ; 0 uses
  %i.acb = icmp eq i32 %i.abz, 0
  br i1 %i.acb, label %bb.dn, label %pmix_obj_new_tma.exit747

bb.dn:                                            ; preds = %pmix_obj_update.exit607
  %i.acc = load ptr, ptr %i.aai, align 8, !tbaa !37
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 48
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !78 ; 2 uses
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !40 ; 2 uses
  %.not6.i748 = icmp eq ptr %i.acf, null
  br i1 %.not6.i748, label %pmix_obj_run_destructors.exit752, label %.lr.ph.i749

.lr.ph.i749:                                      ; preds = %bb.dn, %.lr.ph.i749
  %i.acg = phi ptr [ %i.aci, %.lr.ph.i749 ], [ %i.acf, %bb.dn ]
  %.07.i750 = phi ptr [ %i.ach, %.lr.ph.i749 ], [ %i.ace, %bb.dn ]
  call void %i.acg(ptr noundef nonnull %i.aae) #18, !inline_history !2
  %i.ach = getelementptr inbounds nuw i8, ptr %.07.i750, i64 8 ; 2 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !40 ; 2 uses
  %.not.i751 = icmp eq ptr %i.aci, null
  br i1 %.not.i751, label %pmix_obj_run_destructors.exit752, label %.lr.ph.i749, !llvm.loop !3

pmix_obj_run_destructors.exit752:                 ; preds = %.lr.ph.i749, %bb.dn
  %i.acj = load ptr, ptr %i.aal, align 8, !tbaa !79 ; 2 uses
  %.not584 = icmp eq ptr %i.acj, null
  br i1 %.not584, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %pmix_obj_run_destructors.exit752
  call void %i.acj(ptr noundef nonnull %i.aak, ptr noundef nonnull %i.aae) #18, !inline_history !4
  br label %pmix_obj_new_tma.exit747

bb.dp:                                            ; preds = %pmix_obj_run_destructors.exit752
  call void @free(ptr noundef nonnull %i.aae) #18
  br label %pmix_obj_new_tma.exit747

bb.dq:                                            ; preds = %bb.dl
  %i.ack = load i32, ptr %i.yr, align 8, !tbaa !237
  %i.acl = icmp eq i32 %i.ack, 0
  br i1 %i.acl, label %bb.dr, label %pmix_obj_run_destructors.exit787

bb.dr:                                            ; preds = %bb.dq
  %i.acm = load i32, ptr %i.ap, align 8, !tbaa !234
  %i.acn = icmp eq i32 %i.acm, 0
  br i1 %i.acn, label %bb.ds, label %pmix_obj_run_destructors.exit787

bb.ds:                                            ; preds = %bb.dr
  %i.aco = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !35 ; 3 uses
  %or.cond25 = icmp ult i32 %i.aco, 64
  br i1 %or.cond25, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.acp
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !32
  %i.act = icmp sgt i32 %i.acs, 1
  br i1 %i.act, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.acu = getelementptr inbounds nuw i8, ptr %.24791064, i64 304
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !130
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 120
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !67
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 480
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !71
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !73
  %i.adb = call ptr @PMIx_Data_type_string(i16 noundef zeroext 4) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.aco, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 3955, ptr noundef %i.ada, ptr noundef %i.adb) #18
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds
  %i.adc = load i8, ptr %i.abf, align 8, !tbaa !75 ; 2 uses
  %i.add = icmp eq i8 %i.adc, 0
  %i.ade = getelementptr inbounds nuw i8, ptr %.24791064, i64 304
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !130
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 120
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !67 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 472
  %i.adj = load i8, ptr %i.adi, align 8, !tbaa !76 ; 2 uses
  br i1 %i.add, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i8 %i.adj, ptr %i.abf, align 8, !tbaa !75
  br label %bb.dy
end_hunk_0
begin_hunk_1_@_grpcbfunc:bb.a
  %i.atl = zext nneg i32 %i.atk to i64
  %i.atm = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.atl
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 4
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !32
  %i.atp = icmp sgt i32 %i.ato, 4
  br i1 %i.atp, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.atq = getelementptr inbounds nuw i8, ptr %.24791064, i64 304
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !130
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 128
  %i.att = load ptr, ptr %i.ats, align 8, !tbaa !83 ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 152
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !86
  %i.atw = getelementptr inbounds nuw i8, ptr %i.att, i64 160
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !88
  %i.aty = getelementptr inbounds nuw i8, ptr %.24791064, i64 292
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !236
  %i.aua = getelementptr inbounds nuw i8, ptr %.4476, i64 160
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !126
  %i.auc = trunc i64 %i.aub to i32
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.atk, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2, i32 noundef 4050, ptr noundef %i.atv, i32 noundef %i.atx, i32 noundef %i.atz, i32 noundef %i.auc) #18
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg
  %i.aud = getelementptr inbounds nuw i8, ptr %.24791064, i64 304 ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !130
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 160
  %i.aug = load i8, ptr %i.auf, align 8, !tbaa !204, !range !118, !noundef !141
  %i.auh = trunc nuw i8 %i.aug to i1
  br i1 %i.auh, label %.critedge597, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aui = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_send_t_class, i64 56), align 8, !tbaa !34
  %i.auj = call noalias noundef ptr @malloc(i64 noundef %i.aui) #19 ; 18 uses
  %i.auk = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !35
  %i.aul = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_send_t_class, i64 32), align 8, !tbaa !36
  %.not.i851 = icmp eq i32 %i.auk, %i.aul
  br i1 %.not.i851, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_ptl_send_t_class) #18
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.not22.i852 = icmp eq ptr %i.auj, null
  br i1 %.not22.i852, label %pmix_obj_new_tma.exit857, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aum = call i32 @pthread_mutex_init(ptr noundef nonnull %i.auj, ptr noundef null) #18 ; 0 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auj, i64 40
  store ptr @pmix_ptl_send_t_class, ptr %i.aun, align 8, !tbaa !37
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  store i32 1, ptr %i.auo, align 8, !tbaa !38
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auj, i64 56
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auj, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aup, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.auq, i8 0, i64 24, i1 false)
  %i.aur = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_send_t_class, i64 40), align 8, !tbaa !39 ; 2 uses
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !40 ; 2 uses
  %.not6.i.i853 = icmp eq ptr %i.aus, null
  br i1 %.not6.i.i853, label %pmix_obj_new_tma.exit857, label %.lr.ph.i.i854

.lr.ph.i.i854:                                    ; preds = %bb.hn, %.lr.ph.i.i854
  %i.aut = phi ptr [ %i.auv, %.lr.ph.i.i854 ], [ %i.aus, %bb.hn ]
  %.07.i.i855 = phi ptr [ %i.auu, %.lr.ph.i.i854 ], [ %i.aur, %bb.hn ]
  call void %i.aut(ptr noundef nonnull %i.auj) #18, !inline_history !0
  %i.auu = getelementptr inbounds nuw i8, ptr %.07.i.i855, i64 8 ; 2 uses
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !40 ; 2 uses
  %.not.i.i856 = icmp eq ptr %i.auv, null
  br i1 %.not.i.i856, label %pmix_obj_new_tma.exit857, label %.lr.ph.i.i854, !llvm.loop !1

pmix_obj_new_tma.exit857:                         ; preds = %.lr.ph.i.i854, %bb.hm, %bb.hn
  %i.auw = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 384), align 8, !tbaa !205
  %i.aux = call noundef i32 @llvm.bswap.i32(i32 %i.auw)
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auj, i64 272 ; 2 uses
  store i32 %i.aux, ptr %i.auy, align 8, !tbaa !207
  %i.auz = getelementptr inbounds nuw i8, ptr %.24791064, i64 292
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !236
  %i.avb = call noundef i32 @llvm.bswap.i32(i32 %i.ava)
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auj, i64 276
  store i32 %i.avb, ptr %i.avc, align 4, !tbaa !208
  %i.avd = getelementptr inbounds nuw i8, ptr %.4476, i64 160
  %i.ave = load i64, ptr %i.avd, align 8, !tbaa !126
  %i.avf = trunc i64 %i.ave to i32
  %i.avg = call noundef i32 @llvm.bswap.i32(i32 %i.avf)
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auj, i64 280
  store i32 %i.avg, ptr %i.avh, align 8, !tbaa !209
  %i.avi = getelementptr inbounds nuw i8, ptr %i.auj, i64 288
  store ptr %.4476, ptr %i.avi, align 8, !tbaa !210
  %i.avj = getelementptr inbounds nuw i8, ptr %i.auj, i64 304
  store ptr %i.auy, ptr %i.avj, align 8, !tbaa !211
  %i.avk = getelementptr inbounds nuw i8, ptr %i.auj, i64 312
  store i64 16, ptr %i.avk, align 8, !tbaa !212
  %i.avl = load ptr, ptr %i.aud, align 8, !tbaa !130 ; 7 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 712 ; 2 uses
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !213
  %i.avo = icmp eq ptr %i.avn, null
  br i1 %i.avo, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %pmix_obj_new_tma.exit857
  store ptr %i.auj, ptr %i.avm, align 8, !tbaa !213
  br label %bb.hq

bb.hp:                                            ; preds = %pmix_obj_new_tma.exit857
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avl, i64 560
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avl, i64 688 ; 2 uses
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !109 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.auj, i64 128
  store ptr %i.avr, ptr %i.avs, align 8, !tbaa !109
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avr, i64 120
  store volatile ptr %i.auj, ptr %i.avt, align 8, !tbaa !106
  %i.avu = getelementptr inbounds nuw i8, ptr %i.auj, i64 120
  store ptr %i.avp, ptr %i.avu, align 8, !tbaa !106
  store ptr %i.auj, ptr %i.avq, align 8, !tbaa !109
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avl, i64 704 ; 2 uses
  %i.avw = load volatile i64, ptr %i.avv, align 8, !tbaa !110
  %i.avx = add i64 %i.avw, 1
  store volatile i64 %i.avx, ptr %i.avv, align 8, !tbaa !110
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avl, i64 296 ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 8, !tbaa !214, !range !118, !noundef !141
  %i.awa = trunc nuw i8 %i.avz to i1
  br i1 %i.awa, label %bb.hx, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avl, i64 156
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !215
  %i.awd = icmp sgt i32 %i.awc, -1
  br i1 %i.awd, label %bb.hs, label %bb.hx

bb.hs:                                            ; preds = %bb.hr
  store i8 1, ptr %i.avy, align 8, !tbaa !214
  fence release
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avl, i64 168
  %i.awf = call i32 @event_add(ptr noundef nonnull %i.awe, ptr noundef null) #18 ; 0 uses
  br label %bb.hx

.critedge597:                                     ; preds = %bb.hj
  %i.awg = call i32 @pthread_mutex_lock(ptr noundef %.4476) #18
  %i.awh = icmp eq i32 %i.awg, 35
  br i1 %i.awh, label %bb.ht, label %pmix_obj_update.exit599

bb.ht:                                            ; preds = %.critedge597
  %i.awi = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.awi, align 4, !tbaa !35
  call void @perror(ptr noundef nonnull @.str.81) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit599:                          ; preds = %.critedge597
  %i.awj = getelementptr inbounds nuw i8, ptr %.4476, i64 48 ; 2 uses
  %i.awk = load i32, ptr %i.awj, align 8, !tbaa !38
  %i.awl = add nsw i32 %i.awk, -1                 ; 2 uses
  store i32 %i.awl, ptr %i.awj, align 8, !tbaa !38
  %i.awm = call i32 @pthread_mutex_unlock(ptr noundef %.4476) #18 ; 0 uses
  %i.awn = icmp eq i32 %i.awl, 0
  br i1 %i.awn, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %pmix_obj_update.exit599
  %i.awo = getelementptr inbounds nuw i8, ptr %.4476, i64 40
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !37
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 48
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !78 ; 2 uses
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !40 ; 2 uses
  %.not6.i858 = icmp eq ptr %i.aws, null
  br i1 %.not6.i858, label %pmix_obj_run_destructors.exit862, label %.lr.ph.i859

.lr.ph.i859:                                      ; preds = %bb.hu, %.lr.ph.i859
  %i.awt = phi ptr [ %i.awv, %.lr.ph.i859 ], [ %i.aws, %bb.hu ]
  %.07.i860 = phi ptr [ %i.awu, %.lr.ph.i859 ], [ %i.awr, %bb.hu ]
  call void %i.awt(ptr noundef nonnull %.4476) #18, !inline_history !2
  %i.awu = getelementptr inbounds nuw i8, ptr %.07.i860, i64 8 ; 2 uses
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !40 ; 2 uses
  %.not.i861 = icmp eq ptr %i.awv, null
  br i1 %.not.i861, label %pmix_obj_run_destructors.exit862, label %.lr.ph.i859, !llvm.loop !3

pmix_obj_run_destructors.exit862:                 ; preds = %.lr.ph.i859, %bb.hu
  %i.aww = getelementptr inbounds nuw i8, ptr %.4476, i64 96
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !79 ; 2 uses
  %.not576 = icmp eq ptr %i.awx, null
  br i1 %.not576, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %pmix_obj_run_destructors.exit862
  %i.awy = getelementptr inbounds nuw i8, ptr %.4476, i64 56
  call void %i.awx(ptr noundef nonnull %i.awy, ptr noundef nonnull %.4476) #18, !inline_history !4
  br label %bb.hx

bb.hw:                                            ; preds = %pmix_obj_run_destructors.exit862
  call void @free(ptr noundef nonnull %.4476) #18
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hs, %bb.hr, %bb.hq, %pmix_obj_update.exit599, %bb.hw, %bb.hv
  %i.awz = getelementptr inbounds nuw i8, ptr %.24791064, i64 120
  %.2479 = load ptr, ptr %i.awz, align 8, !tbaa !106 ; 2 uses
  %.not552 = icmp eq ptr %.2479, %i.yp
  br i1 %.not552, label %pmix_obj_new_tma.exit747, label %bb.dc, !llvm.loop !467

pmix_obj_new_tma.exit747:                         ; preds = %bb.hx, %bb.de, %.preheader933, %pmix_obj_update.exit604, %bb.ez, %bb.ey, %pmix_obj_update.exit605, %bb.eo, %bb.en, %pmix_obj_update.exit606, %bb.ec, %bb.eb, %pmix_obj_update.exit607, %bb.dp, %bb.do
  %i.axa = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !106 ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !109 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 120
  store volatile ptr %i.axb, ptr %i.axe, align 8, !tbaa !106
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axb, i64 128
  store volatile ptr %i.axd, ptr %i.axf, align 8, !tbaa !109
  %i.axg = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 696), align 8, !tbaa !110
  %i.axh = add i64 %i.axg, -1
  store volatile i64 %i.axh, ptr getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 696), align 8, !tbaa !110
  %i.axi = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #18
  %i.axj = icmp eq i32 %i.axi, 35
  br i1 %i.axj, label %bb.hy, label %pmix_obj_update.exit598

bb.hy:                                            ; preds = %pmix_obj_new_tma.exit747
  %i.axk = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.axk, align 4, !tbaa !35
  call void @perror(ptr noundef nonnull @.str.81) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit598:                          ; preds = %pmix_obj_new_tma.exit747
  %i.axl = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.axm = load i32, ptr %i.axl, align 8, !tbaa !38
  %i.axn = add nsw i32 %i.axm, -1                 ; 2 uses
  store i32 %i.axn, ptr %i.axl, align 8, !tbaa !38
  %i.axo = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #18 ; 0 uses
  %i.axp = icmp eq i32 %i.axn, 0
  br i1 %i.axp, label %bb.hz, label %bb.ic

bb.hz:                                            ; preds = %pmix_obj_update.exit598
  %i.axq = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !37
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 48
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !78 ; 2 uses
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !40 ; 2 uses
  %.not6.i864 = icmp eq ptr %i.axu, null
  br i1 %.not6.i864, label %pmix_obj_run_destructors.exit868, label %.lr.ph.i865

.lr.ph.i865:                                      ; preds = %bb.hz, %.lr.ph.i865
  %i.axv = phi ptr [ %i.axx, %.lr.ph.i865 ], [ %i.axu, %bb.hz ]
  %.07.i866 = phi ptr [ %i.axw, %.lr.ph.i865 ], [ %i.axt, %bb.hz ]
  call void %i.axv(ptr noundef nonnull %i.h) #18, !inline_history !2
  %i.axw = getelementptr inbounds nuw i8, ptr %.07.i866, i64 8 ; 2 uses
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !40 ; 2 uses
  %.not.i867 = icmp eq ptr %i.axx, null
  br i1 %.not.i867, label %pmix_obj_run_destructors.exit868, label %.lr.ph.i865, !llvm.loop !3

pmix_obj_run_destructors.exit868:                 ; preds = %.lr.ph.i865, %bb.hz
  %i.axy = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !79 ; 2 uses
  %.not585 = icmp eq ptr %i.axz, null
  br i1 %.not585, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %pmix_obj_run_destructors.exit868
  %i.aya = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void %i.axz(ptr noundef nonnull %i.aya, ptr noundef nonnull %i.h) #18, !inline_history !4
  br label %bb.ic

bb.ib:                                            ; preds = %pmix_obj_run_destructors.exit868
  call void @free(ptr noundef nonnull %i.h) #18
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ia, %bb.ib, %pmix_obj_update.exit598
  %i.ayb = load ptr, ptr %i.f, align 8, !tbaa !155 ; 2 uses
  %.not586 = icmp eq ptr %i.ayb, null
  br i1 %.not586, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @PMIx_Argv_free(ptr noundef nonnull %i.ayb) #18
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.ayc = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !87 ; 2 uses
  %.not587 = icmp eq ptr %i.ayd, null
  br i1 %.not587, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aye = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !222
  call void %i.ayd(ptr noundef %i.ayf) #18
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %i.ayg = call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #18
  %i.ayh = icmp eq i32 %i.ayg, 35
  br i1 %i.ayh, label %bb.ih, label %pmix_obj_update.exit

bb.ih:                                            ; preds = %bb.ig
  %i.ayi = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.ayi, align 4, !tbaa !35
  call void @perror(ptr noundef nonnull @.str.81) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.ig
  %i.ayj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ayk = load i32, ptr %i.ayj, align 8, !tbaa !38
  %i.ayl = add nsw i32 %i.ayk, -1                 ; 2 uses
  store i32 %i.ayl, ptr %i.ayj, align 8, !tbaa !38
  %i.aym = call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #18 ; 0 uses
  %i.ayn = icmp eq i32 %i.ayl, 0
  br i1 %i.ayn, label %bb.ii, label %bb.il

bb.ii:                                            ; preds = %pmix_obj_update.exit
  %i.ayo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !37
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 48
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !78 ; 2 uses
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !40 ; 2 uses
  %.not6.i870 = icmp eq ptr %i.ays, null
  br i1 %.not6.i870, label %pmix_obj_run_destructors.exit874, label %.lr.ph.i871

.lr.ph.i871:                                      ; preds = %bb.ii, %.lr.ph.i871
  %i.ayt = phi ptr [ %i.ayv, %.lr.ph.i871 ], [ %i.ays, %bb.ii ]
  %.07.i872 = phi ptr [ %i.ayu, %.lr.ph.i871 ], [ %i.ayr, %bb.ii ]
  call void %i.ayt(ptr noundef nonnull %2) #18, !inline_history !2
  %i.ayu = getelementptr inbounds nuw i8, ptr %.07.i872, i64 8 ; 2 uses
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !40 ; 2 uses
  %.not.i873 = icmp eq ptr %i.ayv, null
  br i1 %.not.i873, label %pmix_obj_run_destructors.exit874, label %.lr.ph.i871, !llvm.loop !3

pmix_obj_run_destructors.exit874:                 ; preds = %.lr.ph.i871, %bb.ii
  %i.ayw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !79 ; 2 uses
  %.not588 = icmp eq ptr %i.ayx, null
  br i1 %.not588, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %pmix_obj_run_destructors.exit874
  %i.ayy = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void %i.ayx(ptr noundef nonnull %i.ayy, ptr noundef nonnull %2) #18, !inline_history !4
  br label %bb.il

bb.ik:                                            ; preds = %pmix_obj_run_destructors.exit874
  call void @free(ptr noundef nonnull %2) #18
  br label %bb.il

bb.il:                                            ; preds = %pmix_obj_update.exit, %bb.ik, %bb.ij, %pmix_obj_update.exit609, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare i32 @pmix_bfrops_base_embed_payload(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PMIx_Data_array_construct(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @PMIx_Info_qualifier(ptr noundef) local_unnamed_addr #2

declare void @PMIx_Data_array_destruct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #12

declare void @PMIx_Byte_object_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #12

declare void @PMIx_Query_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
