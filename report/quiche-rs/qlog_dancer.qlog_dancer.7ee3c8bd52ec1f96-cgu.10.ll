Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.10?download=true
inline.NumInlined: 1202
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks:bb.a
  br label %bb.ef, !dbg !47138

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  %.sroa.070.sroa.6.0 = phi i64 [ 1, %bb.ee ], [ 0, %bb.ed ], !dbg !45320 ; 2 uses
  %i.uw = phi <2 x i64> [ %i.uv, %bb.ee ], [ <i64 undef, i64 0>, %bb.ed ], !dbg !45320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !dbg !45295
  store i64 %.sroa.070.sroa.6.0, ptr %i.gr, align 8, !dbg !45295
  %.sroa.070.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !45295
  store ptr null, ptr %.sroa.070.sroa.5.0..sroa_idx, align 8, !dbg !45295
  %.sroa.070.sroa.5.sroa.5.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 16, !dbg !45295
  store ptr %i.ut, ptr %.sroa.070.sroa.5.sroa.5.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !45295
  %.sroa.070.sroa.5.sroa.6.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 24, !dbg !45295
  %i.ux = extractelement <2 x i64> %i.uw, i64 0, !dbg !45295
  store i64 %i.ux, ptr %.sroa.070.sroa.5.sroa.6.0..sroa.070.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !45295
  %.sroa.070.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 32, !dbg !45295
  store i64 %.sroa.070.sroa.6.0, ptr %.sroa.070.sroa.6.0..sroa_idx, align 8, !dbg !45295
  %.sroa.070.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 40, !dbg !45295
  store ptr null, ptr %.sroa.070.sroa.7.0..sroa_idx, align 8, !dbg !45295
  %.sroa.070.sroa.7.sroa.5.0..sroa.070.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 48, !dbg !45295
  store ptr %i.ut, ptr %.sroa.070.sroa.7.sroa.5.0..sroa.070.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !45295
  %.sroa.070.sroa.7.sroa.6.0..sroa.070.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 56, !dbg !45295
  store <2 x i64> %i.uw, ptr %.sroa.070.sroa.7.sroa.6.0..sroa.070.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !45295
  %i.uy = icmp ne i8 %i.hz, 0                     ; 2 uses
  %brmerge.demorgan = and i1 %i.uy, %.fr
  %i.uz = trunc nuw i64 %i.mm to i1               ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.gg, i64 2568
  %i.vb = getelementptr inbounds nuw i8, ptr %i.gg, i64 2600
  %i.vc = getelementptr inbounds nuw i8, ptr %i.gg, i64 2560
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 24 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.gg, i64 2584
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.vf = load i32, ptr %i.ve, align 8            ; 5 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.gd, i64 2568
  %i.vh = getelementptr inbounds nuw i8, ptr %i.gd, i64 2600
  %i.vi = getelementptr inbounds nuw i8, ptr %i.gd, i64 2560
  %.sroa.4252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.gd, i64 24 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.gd, i64 2584
  %i.vk = getelementptr inbounds nuw i8, ptr %3, i64 936
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 960
  %i.vm = getelementptr inbounds nuw i8, ptr %i.fv, i64 2568
  %i.vn = getelementptr inbounds nuw i8, ptr %i.fv, i64 2600
  %i.vo = getelementptr inbounds nuw i8, ptr %i.fv, i64 2560
  %.sroa.4252.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.fv, i64 2584
  %i.vq = getelementptr inbounds nuw i8, ptr %i.fy, i64 232
  %i.vr = getelementptr inbounds nuw i8, ptr %i.eq, i64 7832
  %i.vs = getelementptr inbounds nuw i8, ptr %i.eq, i64 7833
  %i.vt = getelementptr inbounds nuw i8, ptr %i.fp, i64 2568
  %i.vu = getelementptr inbounds nuw i8, ptr %i.fp, i64 2600
  %i.vv = getelementptr inbounds nuw i8, ptr %i.fp, i64 2560
  %.sroa.4252.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.fp, i64 2584
  %i.vx = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ep, i64 7832
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ep, i64 7833
  %i.wa = getelementptr inbounds nuw i8, ptr %i.fn, i64 7760
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.4.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %4, i64 1928 ; 2 uses
  %.sroa.47.0..sroa_idx.i26.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.411.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.we = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.435.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.441.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.447.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.453.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.459.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.465.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.471.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.477.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.dv, i64 192
  %i.wh = getelementptr inbounds nuw i8, ptr %i.dv, i64 216
  %i.wi = getelementptr inbounds nuw i8, ptr %i.dv, i64 240
  %i.wj = getelementptr inbounds nuw i8, ptr %i.dv, i64 264
  %i.wk = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.wl = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.wm = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.wn = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.wo = getelementptr inbounds nuw i8, ptr %i.dv, i64 120
  %i.wp = getelementptr inbounds nuw i8, ptr %i.dv, i64 144
  %i.wq = getelementptr inbounds nuw i8, ptr %i.dv, i64 168
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.431.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.443.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.449.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.455.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.461.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.467.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.473.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 200
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 224
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 248
  %.not1299 = xor i1 %i.uy, true
  %i.wu = add i32 %i.kp, 30
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.wv = add i32 %i.kr, %i.kp
  %i.ww = add i32 %i.lb, %i.kl
  %i.wx = getelementptr inbounds nuw i8, ptr %i.fm, i64 456 ; 6 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.fm, i64 912
  %i.wz = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.fk, i64 232 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.fl, i64 232 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.fm, i64 232 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.fm, i64 688 ; 2 uses
  %..i = select i1 %i.hx, i64 744, i64 720
  %i.xl = getelementptr inbounds nuw i8, ptr %3, i64 %..i
  %.sroa.0117.0.in.v = select i1 %i.hx, i64 1088, i64 1096
  %.sroa.0117.0.in = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0117.0.in.v
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %..i835 = select i1 %i.hx, i64 64, i64 48
  %.156.i = select i1 %i.hx, i64 96, i64 80
  %.157.i = select i1 %i.hx, i64 104, i64 88
  %.155.i = select i1 %i.hx, i64 72, i64 56
  %i.xq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.xs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %brmerge = or i1 %.not1299, %i.kj
  %.mux = select i1 %i.kj, i32 0, i32 %i.wu
  br label %.outer, !dbg !47139

.outer:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit862, %bb.ef
  %.sroa.066.0.ph = phi i32 [ %.sroa.066.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit862 ], [ 0, %bb.ef ] ; 2 uses
  %.sroa.064.0.ph = phi i32 [ %.sroa.064.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit862 ], [ 0, %bb.ef ]
  %.sroa.057.0.ph = phi i32 [ %.sroa.057.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit862 ], [ %i.la, %bb.ef ] ; 7 uses
  %.sroa.047.0.ph = phi i32 [ %.sroa.047.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit862 ], [ %i.kr, %bb.ef ] ; 6 uses
  %.sroa.032.0.ph = phi i32 [ %.sroa.032.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit862 ], [ %i.la, %bb.ef ] ; 7 uses
  br i1 %brmerge.demorgan, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %bb.eh
    #dbg_value(i32 %.sroa.032.0.ph, !44787, !DIExpression(), !45538)
    #dbg_value(i32 %.sroa.047.0.ph, !44785, !DIExpression(), !45834)
    #dbg_value(i32 %.sroa.057.0.ph, !44786, !DIExpression(), !45835)
    #dbg_value(i32 %.sroa.064.0.ph, !44788, !DIExpression(), !45840)
    #dbg_value(i32 %.sroa.066.0.ph, !44789, !DIExpression(), !45841)
  %i.xu = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.gr)
          to label %bb.eg unwind label %.loopexit.loopexit.split.us, !dbg !44889 ; 2 uses

bb.eg:                                            ; preds = %.outer.split.us
  %i.xv = extractvalue { ptr, ptr } %i.xu, 0, !dbg !44889 ; 3 uses
  %.not573.us = icmp eq ptr %i.xv, null, !dbg !44889
  br i1 %.not573.us, label %.split.us, label %bb.eh, !dbg !44889

bb.eh:                                            ; preds = %bb.eg
    #dbg_value(ptr %i.xv, !44791, !DIExpression(), !45847)
    #dbg_value(ptr %i.xv, !45223, !DIExpression(), !45226)
    #dbg_value(ptr poison, !44792, !DIExpression(), !45847)
    #dbg_value(ptr poison, !45848, !DIExpression(), !45851)
    #dbg_value(ptr poison, !45852, !DIExpression(), !45855)
    #dbg_value(ptr poison, !45856, !DIExpression(), !45860)
    #dbg_value(ptr poison, !45848, !DIExpression(), !45862)
    #dbg_value(ptr poison, !45852, !DIExpression(), !45865)
    #dbg_value(ptr poison, !45856, !DIExpression(), !45868)
    #dbg_value(ptr poison, !45848, !DIExpression(), !45870)
    #dbg_value(ptr poison, !45852, !DIExpression(), !45873)
    #dbg_value(ptr poison, !45856, !DIExpression(), !45876)
    #dbg_value(ptr poison, !45848, !DIExpression(), !45878)
    #dbg_value(ptr poison, !45852, !DIExpression(), !45881)
    #dbg_value(ptr poison, !45856, !DIExpression(), !45884)
  %i.xw = load i64, ptr %i.xv, align 8, !dbg !47140, !noundef !3137
  %i.xx = and i64 %i.xw, 2, !dbg !47141
  %i.xy = icmp eq i64 %i.xx, 0, !dbg !45225
  br i1 %i.xy, label %.split1264.us.loopexit, label %.outer.split.us, !dbg !45225

.loopexit.loopexit.split.us:                      ; preds = %.outer.split.us
  %lpad.loopexit980.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit736

.outer.split:                                     ; preds = %.outer
    #dbg_value(i32 %.sroa.032.0.ph, !44787, !DIExpression(), !45538)
    #dbg_value(i32 %.sroa.047.0.ph, !44785, !DIExpression(), !45834)
    #dbg_value(i32 %.sroa.057.0.ph, !44786, !DIExpression(), !45835)
    #dbg_value(i32 %.sroa.064.0.ph, !44788, !DIExpression(), !45840)
    #dbg_value(i32 %.sroa.066.0.ph, !44789, !DIExpression(), !45841)
  %i.xz = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.gr)
          to label %bb.ei unwind label %.loopexit.loopexit.split, !dbg !44889 ; 2 uses

bb.ei:                                            ; preds = %.outer.split
  %i.ya = extractvalue { ptr, ptr } %i.xz, 0, !dbg !44889 ; 2 uses
  %.not573 = icmp eq ptr %i.ya, null, !dbg !44889
  br i1 %.not573, label %.split.us, label %.split1264, !dbg !44889

.split.us:                                        ; preds = %bb.ei, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !dbg !47142
  call void @llvm.experimental.noalias.scope.decl(metadata !45886), !dbg !47123
    #dbg_value(ptr %i.gs, !8124, !DIExpression(), !43255)
  call void @llvm.experimental.noalias.scope.decl(metadata !45887), !dbg !47143
    #dbg_value(ptr %i.gs, !8129, !DIExpression(), !43259)
  call void @llvm.experimental.noalias.scope.decl(metadata !45888), !dbg !47144
    #dbg_value(ptr %i.gs, !8136, !DIExpression(), !43263)
    #dbg_value(ptr %i.gs, !9359, !DIExpression(), !43265)
    #dbg_value(ptr %i.gs, !9359, !DIExpression(), !43267)
  %i.yb = load ptr, ptr %i.gs, align 8, !dbg !47145, !alias.scope !45889, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.yb, !8139, !DIExpression(), !43270)
    #dbg_value(ptr %i.yb, !8147, !DIExpression(), !43272)
    #dbg_value(ptr %i.yb, !8152, !DIExpression(), !43274)
    #dbg_value(ptr %i.yb, !8158, !DIExpression(), !43276)
    #dbg_value(ptr %i.yb, !8164, !DIExpression(), !43278)
  %i.yc = load i64, ptr %i.yb, align 8, !dbg !47146, !noalias !45889, !noundef !3137
  %i.yd = add i64 %i.yc, -1, !dbg !47147          ; 2 uses
    #dbg_value(i64 %i.yd, !8156, !DIExpression(), !43279)
    #dbg_value(i64 %i.yd, !8162, !DIExpression(), !43280)
  store i64 %i.yd, ptr %i.yb, align 8, !dbg !47148, !noalias !45889
    #dbg_value(ptr %i.yb, !8147, !DIExpression(), !43283)
    #dbg_value(ptr %i.yb, !8164, !DIExpression(), !43285)
  %i.ye = icmp eq i64 %i.yd, 0, !dbg !47149
  br i1 %i.ye, label %bb.ej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit704, !dbg !47149

bb.ej:                                            ; preds = %.split.us
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gs) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit704 unwind label %bb.dx, !dbg !47150

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit704: ; preds = %.split.us, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !dbg !47123
  call void @llvm.experimental.noalias.scope.decl(metadata !45890), !dbg !47112
    #dbg_value(ptr %i.gt, !8124, !DIExpression(), !43289)
  call void @llvm.experimental.noalias.scope.decl(metadata !45891), !dbg !47151
    #dbg_value(ptr %i.gt, !8129, !DIExpression(), !43293)
  call void @llvm.experimental.noalias.scope.decl(metadata !45892), !dbg !47152
    #dbg_value(ptr %i.gt, !8136, !DIExpression(), !43297)
    #dbg_value(ptr %i.gt, !9359, !DIExpression(), !43299)
    #dbg_value(ptr %i.gt, !9359, !DIExpression(), !43301)
  %i.yf = load ptr, ptr %i.gt, align 8, !dbg !47153, !alias.scope !45893, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.yf, !8139, !DIExpression(), !43304)
    #dbg_value(ptr %i.yf, !8147, !DIExpression(), !43306)
    #dbg_value(ptr %i.yf, !8152, !DIExpression(), !43308)
    #dbg_value(ptr %i.yf, !8158, !DIExpression(), !43310)
    #dbg_value(ptr %i.yf, !8164, !DIExpression(), !43312)
  %i.yg = load i64, ptr %i.yf, align 8, !dbg !47154, !noalias !45893, !noundef !3137
  %i.yh = add i64 %i.yg, -1, !dbg !47155          ; 2 uses
    #dbg_value(i64 %i.yh, !8156, !DIExpression(), !43313)
    #dbg_value(i64 %i.yh, !8162, !DIExpression(), !43314)
  store i64 %i.yh, ptr %i.yf, align 8, !dbg !47156, !noalias !45893
    #dbg_value(ptr %i.yf, !8147, !DIExpression(), !43317)
    #dbg_value(ptr %i.yf, !8164, !DIExpression(), !43319)
  %i.yi = icmp eq i64 %i.yh, 0, !dbg !47157
  br i1 %i.yi, label %bb.ek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit706, !dbg !47157

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit704
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gt) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit706 unwind label %bb.du, !dbg !47158

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit706: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit704, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !dbg !47112
  call void @llvm.experimental.noalias.scope.decl(metadata !45894), !dbg !47099
    #dbg_value(ptr %i.gu, !8124, !DIExpression(), !43323)
  call void @llvm.experimental.noalias.scope.decl(metadata !45895), !dbg !47159
    #dbg_value(ptr %i.gu, !8129, !DIExpression(), !43327)
  call void @llvm.experimental.noalias.scope.decl(metadata !45896), !dbg !47160
    #dbg_value(ptr %i.gu, !8136, !DIExpression(), !43331)
    #dbg_value(ptr %i.gu, !9359, !DIExpression(), !43333)
    #dbg_value(ptr %i.gu, !9359, !DIExpression(), !43335)
  %i.yj = load ptr, ptr %i.gu, align 8, !dbg !47161, !alias.scope !45897, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.yj, !8139, !DIExpression(), !43338)
    #dbg_value(ptr %i.yj, !8147, !DIExpression(), !43340)
    #dbg_value(ptr %i.yj, !8152, !DIExpression(), !43342)
    #dbg_value(ptr %i.yj, !8158, !DIExpression(), !43344)
    #dbg_value(ptr %i.yj, !8164, !DIExpression(), !43346)
  %i.yk = load i64, ptr %i.yj, align 8, !dbg !47162, !noalias !45897, !noundef !3137
  %i.yl = add i64 %i.yk, -1, !dbg !47163          ; 2 uses
    #dbg_value(i64 %i.yl, !8156, !DIExpression(), !43347)
    #dbg_value(i64 %i.yl, !8162, !DIExpression(), !43348)
  store i64 %i.yl, ptr %i.yj, align 8, !dbg !47164, !noalias !45897
    #dbg_value(ptr %i.yj, !8147, !DIExpression(), !43351)
    #dbg_value(ptr %i.yj, !8164, !DIExpression(), !43353)
  %i.ym = icmp eq i64 %i.yl, 0, !dbg !47165
  br i1 %i.ym, label %bb.el, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit708, !dbg !47165

bb.el:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit706
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gu) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit708 unwind label %bb.dr, !dbg !47166

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit708: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit706, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !dbg !47099
  call void @llvm.experimental.noalias.scope.decl(metadata !45898), !dbg !47086
    #dbg_value(ptr %i.gw, !8124, !DIExpression(), !43357)
  call void @llvm.experimental.noalias.scope.decl(metadata !45899), !dbg !47167
    #dbg_value(ptr %i.gw, !8129, !DIExpression(), !43361)
  call void @llvm.experimental.noalias.scope.decl(metadata !45900), !dbg !47168
    #dbg_value(ptr %i.gw, !8136, !DIExpression(), !43365)
    #dbg_value(ptr %i.gw, !9359, !DIExpression(), !43367)
    #dbg_value(ptr %i.gw, !9359, !DIExpression(), !43369)
  %i.yn = load ptr, ptr %i.gw, align 8, !dbg !47169, !alias.scope !45901, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.yn, !8139, !DIExpression(), !43372)
    #dbg_value(ptr %i.yn, !8147, !DIExpression(), !43374)
    #dbg_value(ptr %i.yn, !8152, !DIExpression(), !43376)
    #dbg_value(ptr %i.yn, !8158, !DIExpression(), !43378)
    #dbg_value(ptr %i.yn, !8164, !DIExpression(), !43380)
  %i.yo = load i64, ptr %i.yn, align 8, !dbg !47170, !noalias !45901, !noundef !3137
  %i.yp = add i64 %i.yo, -1, !dbg !47171          ; 2 uses
    #dbg_value(i64 %i.yp, !8156, !DIExpression(), !43381)
    #dbg_value(i64 %i.yp, !8162, !DIExpression(), !43382)
  store i64 %i.yp, ptr %i.yn, align 8, !dbg !47172, !noalias !45901
    #dbg_value(ptr %i.yn, !8147, !DIExpression(), !43385)
    #dbg_value(ptr %i.yn, !8164, !DIExpression(), !43387)
  %i.yq = icmp eq i64 %i.yp, 0, !dbg !47173
  br i1 %i.yq, label %bb.em, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit710, !dbg !47173

bb.em:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit708
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gw) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit710 unwind label %bb.do, !dbg !47174

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit710: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit708, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !47086
    #dbg_value(ptr %i.gx, !3843, !DIExpression(), !43389)
    #dbg_value(ptr %i.gx, !3849, !DIExpression(), !43391)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i712 unwind label %bb.en, !dbg !47175

bb.en:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit710
  %i.yr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.gx, !3854, !DIExpression(), !43393)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %.body713 unwind label %bb.eo, !dbg !47176

bb.eo:                                            ; preds = %bb.en
  %i.ys = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47175
  unreachable, !dbg !47175

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i712: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit710
    #dbg_value(ptr %i.gx, !3854, !DIExpression(), !43395)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit716 unwind label %bb.dk, !dbg !47177

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit716: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !47178
    #dbg_value(ptr %i.gy, !3843, !DIExpression(), !43397)
    #dbg_value(ptr %i.gy, !3849, !DIExpression(), !43399)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i718 unwind label %bb.ep, !dbg !47179

bb.ep:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit716
  %i.yt = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.gy, !3854, !DIExpression(), !43401)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %.body719 unwind label %bb.eq, !dbg !47180

bb.eq:                                            ; preds = %bb.ep
  %i.yu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47179
  unreachable, !dbg !47179

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i718: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit716
    #dbg_value(ptr %i.gy, !3854, !DIExpression(), !43403)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit722 unwind label %bb.dg, !dbg !47181

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit722: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !dbg !47182
    #dbg_value(ptr %i.gz, !3843, !DIExpression(), !43405)
    #dbg_value(ptr %i.gz, !3849, !DIExpression(), !43407)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i724 unwind label %bb.er, !dbg !47183

bb.er:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit722
  %i.yv = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.gz, !3854, !DIExpression(), !43409)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %.body725 unwind label %bb.es, !dbg !47184

bb.es:                                            ; preds = %bb.er
  %i.yw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47183
  unreachable, !dbg !47183

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i724: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit722
    #dbg_value(ptr %i.gz, !3854, !DIExpression(), !43411)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit728 unwind label %bb.dc, !dbg !47185

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit728: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !dbg !47186
    #dbg_value(ptr %i.ha, !3843, !DIExpression(), !43413)
    #dbg_value(ptr %i.ha, !3849, !DIExpression(), !43415)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i730 unwind label %bb.et, !dbg !47187

bb.et:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit728
  %i.yx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ha, !3854, !DIExpression(), !43417)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %.body731 unwind label %bb.eu, !dbg !47188

bb.eu:                                            ; preds = %bb.et
  %i.yy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47187
  unreachable, !dbg !47187

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i730: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit728
    #dbg_value(ptr %i.ha, !3854, !DIExpression(), !43419)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit734 unwind label %bb.cx, !dbg !47189

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit734: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !dbg !47190
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaTqK2fWTXJW_11qlog_dancer5plots11ChartConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.hf)
          to label %bb.ev unwind label %bb.cb, !dbg !47055

bb.ev:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !47055
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaTqK2fWTXJW_11qlog_dancer5plots11ChartConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.hk)
          to label %bb.ew unwind label %bb.be, !dbg !47005

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk), !dbg !47005
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaTqK2fWTXJW_11qlog_dancer5plots11ChartConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.hp)
          to label %bb.ex unwind label %bb.ah, !dbg !46955

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !dbg !46955
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaTqK2fWTXJW_11qlog_dancer5plots11ChartConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.hu), !dbg !46905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu), !dbg !46905
  ret void, !dbg !47191

.split1264:                                       ; preds = %bb.ei
  %9 = extractvalue { ptr, ptr } %i.xz, 1, !dbg !44889 ; 2 uses
    #dbg_value(ptr %i.ya, !44791, !DIExpression(), !45847)
    #dbg_value(ptr %i.ya, !45223, !DIExpression(), !45226)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %9) ]
    #dbg_value(ptr %9, !44792, !DIExpression(), !45847)
    #dbg_value(ptr %9, !45848, !DIExpression(), !45851)
    #dbg_value(ptr %9, !45852, !DIExpression(), !45855)
    #dbg_value(ptr %9, !45856, !DIExpression(), !45860)
    #dbg_value(ptr %9, !45848, !DIExpression(), !45862)
    #dbg_value(ptr %9, !45852, !DIExpression(), !45865)
    #dbg_value(ptr %9, !45856, !DIExpression(), !45868)
    #dbg_value(ptr %9, !45848, !DIExpression(), !45870)
    #dbg_value(ptr %9, !45852, !DIExpression(), !45873)
    #dbg_value(ptr %9, !45856, !DIExpression(), !45876)
    #dbg_value(ptr %9, !45848, !DIExpression(), !45878)
    #dbg_value(ptr %9, !45852, !DIExpression(), !45881)
    #dbg_value(ptr %9, !45856, !DIExpression(), !45884)
  br label %.split1264.us, !dbg !47192

.split1264.us.loopexit:                           ; preds = %bb.eh
  %10 = extractvalue { ptr, ptr } %i.xu, 1, !dbg !44889
    #dbg_value(ptr %10, !44792, !DIExpression(), !45847)
    #dbg_value(ptr %10, !45848, !DIExpression(), !45851)
    #dbg_value(ptr %10, !45852, !DIExpression(), !45855)
    #dbg_value(ptr %10, !45856, !DIExpression(), !45860)
    #dbg_value(ptr %10, !45848, !DIExpression(), !45862)
    #dbg_value(ptr %10, !45852, !DIExpression(), !45865)
    #dbg_value(ptr %10, !45856, !DIExpression(), !45868)
    #dbg_value(ptr %10, !45848, !DIExpression(), !45870)
    #dbg_value(ptr %10, !45852, !DIExpression(), !45873)
    #dbg_value(ptr %10, !45856, !DIExpression(), !45876)
    #dbg_value(ptr %10, !45848, !DIExpression(), !45878)
    #dbg_value(ptr %10, !45852, !DIExpression(), !45881)
    #dbg_value(ptr %10, !45856, !DIExpression(), !45884)
  br label %.split1264.us, !dbg !47192

.split1264.us:                                    ; preds = %.split1264.us.loopexit, %.split1264
  %.us-phi1265 = phi ptr [ %i.ya, %.split1264 ], [ %i.xv, %.split1264.us.loopexit ], !dbg !47192 ; 2 uses
  %.us-phi1266 = phi ptr [ %9, %.split1264 ], [ %10, %.split1264.us.loopexit ], !dbg !47192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !dbg !47192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !dbg !47193
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB4_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5coord5ShiftENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gw)
          to label %bb.ey unwind label %.loopexit.loopexit.split-lp, !dbg !47194

bb.ey:                                            ; preds = %.split1264.us
  %i.yz = add i32 %.sroa.057.0.ph, %.sroa.027.0, !dbg !47195 ; 2 uses
  invoke void @_RINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBa_5coord5ShiftE6shrinkmmmmECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.gp, i32 noundef %.sroa.047.0.ph, i32 noundef %i.yz, i32 noundef %i.kp, i32 noundef %i.ky)
          to label %bb.ez unwind label %.loopexit.loopexit.split-lp, !dbg !47196

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !47197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !dbg !47198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn), !dbg !47199
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB4_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5coord5ShiftENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gu)
          to label %bb.fc unwind label %bb.fb, !dbg !47200

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit738: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740, %bb.fe, %bb.fb
  %.pn587.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ze, %bb.fb ], [ %.pn587.pn.pn.pn.pn.pn.pn, %bb.fe ], [ %.pn587.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45902), !dbg !47201
    #dbg_value(ptr %i.gq, !8124, !DIExpression(), !43423)
  call void @llvm.experimental.noalias.scope.decl(metadata !45903), !dbg !47202
    #dbg_value(ptr %i.gq, !8129, !DIExpression(), !43427)
  call void @llvm.experimental.noalias.scope.decl(metadata !45904), !dbg !47203
    #dbg_value(ptr %i.gq, !8136, !DIExpression(), !43431)
    #dbg_value(ptr %i.gq, !9359, !DIExpression(), !43433)
    #dbg_value(ptr %i.gq, !9359, !DIExpression(), !43435)
  %i.za = load ptr, ptr %i.gq, align 8, !dbg !47204, !alias.scope !45905, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.za, !8139, !DIExpression(), !43438)
    #dbg_value(ptr %i.za, !8147, !DIExpression(), !43440)
    #dbg_value(ptr %i.za, !8152, !DIExpression(), !43442)
    #dbg_value(ptr %i.za, !8158, !DIExpression(), !43444)
    #dbg_value(ptr %i.za, !8164, !DIExpression(), !43446)
  %i.zb = load i64, ptr %i.za, align 8, !dbg !47205, !noalias !45905, !noundef !3137
  %i.zc = add i64 %i.zb, -1, !dbg !47206          ; 2 uses
    #dbg_value(i64 %i.zc, !8156, !DIExpression(), !43447)
    #dbg_value(i64 %i.zc, !8162, !DIExpression(), !43448)
  store i64 %i.zc, ptr %i.za, align 8, !dbg !47207, !noalias !45905
    #dbg_value(ptr %i.za, !8147, !DIExpression(), !43451)
    #dbg_value(ptr %i.za, !8164, !DIExpression(), !43453)
  %i.zd = icmp eq i64 %i.zc, 0, !dbg !47208
  br i1 %i.zd, label %bb.fa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit736, !dbg !47208

bb.fa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit738
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gq) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit736 unwind label %bb.mb, !dbg !47209

bb.fb:                                            ; preds = %bb.sp, %bb.fc, %bb.ez
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit738

bb.fc:                                            ; preds = %bb.ez
  invoke void @_RINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBa_5coord5ShiftE6shrinkmmmmECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.go, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.gn, i32 noundef %.sroa.047.0.ph, i32 noundef %i.yz, i32 noundef %i.kp, i32 noundef %i.ky)
          to label %bb.fd unwind label %bb.fb, !dbg !47210

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !dbg !47211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !dbg !47212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !47213
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB4_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5coord5ShiftENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gt)
          to label %bb.fg unwind label %bb.ff, !dbg !47214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742, %bb.fi, %bb.ff
  %.pn587.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zj, %bb.ff ], [ %.pn587.pn.pn.pn.pn.pn, %bb.fi ], [ %.pn587.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45906), !dbg !47215
    #dbg_value(ptr %i.go, !8124, !DIExpression(), !43457)
  call void @llvm.experimental.noalias.scope.decl(metadata !45907), !dbg !47216
    #dbg_value(ptr %i.go, !8129, !DIExpression(), !43461)
  call void @llvm.experimental.noalias.scope.decl(metadata !45908), !dbg !47217
    #dbg_value(ptr %i.go, !8136, !DIExpression(), !43465)
    #dbg_value(ptr %i.go, !9359, !DIExpression(), !43467)
    #dbg_value(ptr %i.go, !9359, !DIExpression(), !43469)
  %i.zf = load ptr, ptr %i.go, align 8, !dbg !47218, !alias.scope !45909, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.zf, !8139, !DIExpression(), !43472)
    #dbg_value(ptr %i.zf, !8147, !DIExpression(), !43474)
    #dbg_value(ptr %i.zf, !8152, !DIExpression(), !43476)
    #dbg_value(ptr %i.zf, !8158, !DIExpression(), !43478)
    #dbg_value(ptr %i.zf, !8164, !DIExpression(), !43480)
  %i.zg = load i64, ptr %i.zf, align 8, !dbg !47219, !noalias !45909, !noundef !3137
  %i.zh = add i64 %i.zg, -1, !dbg !47220          ; 2 uses
    #dbg_value(i64 %i.zh, !8156, !DIExpression(), !43481)
    #dbg_value(i64 %i.zh, !8162, !DIExpression(), !43482)
  store i64 %i.zh, ptr %i.zf, align 8, !dbg !47221, !noalias !45909
    #dbg_value(ptr %i.zf, !8147, !DIExpression(), !43485)
    #dbg_value(ptr %i.zf, !8164, !DIExpression(), !43487)
  %i.zi = icmp eq i64 %i.zh, 0, !dbg !47222
  br i1 %i.zi, label %bb.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit738, !dbg !47222

bb.fe:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.go) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit738 unwind label %bb.mb, !dbg !47223

bb.ff:                                            ; preds = %bb.so, %bb.fg, %bb.fd
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740

bb.fg:                                            ; preds = %bb.fd
  %i.zk = add i32 %.sroa.032.0.ph, %.sroa.027.0, !dbg !47224 ; 2 uses
  invoke void @_RINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBa_5coord5ShiftE6shrinkmmmmECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.gl, i32 noundef %.sroa.047.0.ph, i32 noundef %i.zk, i32 noundef %i.kp, i32 noundef %i.ky)
          to label %bb.fh unwind label %bb.ff, !dbg !47225

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !dbg !47226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !dbg !47227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !dbg !47228
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB4_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5coord5ShiftENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gs)
          to label %bb.fk unwind label %bb.fj, !dbg !47229

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742: ; preds = %bb.fo, %bb.fp, %bb.fj
  %.pn587.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zp, %bb.fj ], [ %.pn587.pn.pn.pn.pn, %bb.fp ], [ %.pn587.pn.pn.pn.pn, %bb.fo ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45910), !dbg !47230
    #dbg_value(ptr %i.gm, !8124, !DIExpression(), !43491)
  call void @llvm.experimental.noalias.scope.decl(metadata !45911), !dbg !47231
    #dbg_value(ptr %i.gm, !8129, !DIExpression(), !43495)
  call void @llvm.experimental.noalias.scope.decl(metadata !45912), !dbg !47232
    #dbg_value(ptr %i.gm, !8136, !DIExpression(), !43499)
    #dbg_value(ptr %i.gm, !9359, !DIExpression(), !43501)
    #dbg_value(ptr %i.gm, !9359, !DIExpression(), !43503)
  %i.zl = load ptr, ptr %i.gm, align 8, !dbg !47233, !alias.scope !45913, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.zl, !8139, !DIExpression(), !43506)
    #dbg_value(ptr %i.zl, !8147, !DIExpression(), !43508)
    #dbg_value(ptr %i.zl, !8152, !DIExpression(), !43510)
    #dbg_value(ptr %i.zl, !8158, !DIExpression(), !43512)
    #dbg_value(ptr %i.zl, !8164, !DIExpression(), !43514)
  %i.zm = load i64, ptr %i.zl, align 8, !dbg !47234, !noalias !45913, !noundef !3137
  %i.zn = add i64 %i.zm, -1, !dbg !47235          ; 2 uses
    #dbg_value(i64 %i.zn, !8156, !DIExpression(), !43515)
    #dbg_value(i64 %i.zn, !8162, !DIExpression(), !43516)
  store i64 %i.zn, ptr %i.zl, align 8, !dbg !47236, !noalias !45913
    #dbg_value(ptr %i.zl, !8147, !DIExpression(), !43519)
    #dbg_value(ptr %i.zl, !8164, !DIExpression(), !43521)
  %i.zo = icmp eq i64 %i.zn, 0, !dbg !47237
  br i1 %i.zo, label %bb.fi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740, !dbg !47237

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gm) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit740 unwind label %bb.mb, !dbg !47238

bb.fj:                                            ; preds = %bb.sn, %bb.fk, %bb.fh
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742

bb.fk:                                            ; preds = %bb.fh
  invoke void @_RINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBa_5coord5ShiftE6shrinkmmmmECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.gj, i32 noundef %.sroa.047.0.ph, i32 noundef %i.zk, i32 noundef %i.kp, i32 noundef %i.ky)
          to label %bb.fl unwind label %bb.fj, !dbg !47239

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !dbg !47240
  %i.zq = getelementptr inbounds nuw i8, ptr %.us-phi1266, i64 8, !dbg !47241 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.us-phi1266, i64 16, !dbg !47242 ; 2 uses
  %i.zs = load i64, ptr %i.zr, align 8, !dbg !47242, !noundef !3137 ; 2 uses
    #dbg_value(ptr poison, !45920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45925)
    #dbg_value(i64 %i.zs, !45920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45925)
  %.not = icmp eq i64 %i.zs, 0, !dbg !47243
  br i1 %.not, label %bb.fm, label %bb.fn, !dbg !47243, !prof !3806

bb.fm:                                            ; preds = %bb.fl
    #dbg_value(ptr null, !45926, !DIExpression(), !45938)
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #22
          to label %bb.fq unwind label %.loopexit.split-lp976, !dbg !47244

bb.fn:                                            ; preds = %bb.fl
  %i.zt = load ptr, ptr %i.zq, align 8, !dbg !47241, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.zt, !45920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45925)
    #dbg_value(ptr %i.zt, !45921, !DIExpression(), !45939)
    #dbg_value(ptr %i.zt, !45926, !DIExpression(), !45938)
  %i.zu = load double, ptr %i.zt, align 8, !dbg !45850, !noundef !3137
    #dbg_value(double %i.zu, !44797, !DIExpression(), !45940)
    #dbg_value(ptr %i.zt, !45941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45948)
    #dbg_value(i64 %i.zs, !45941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45948)
  %i.zv = getelementptr [16 x i8], ptr %i.zt, i64 %i.zs, !dbg !47245 ; 2 uses
  %i.zw = getelementptr i8, ptr %i.zv, i64 -16, !dbg !47245
    #dbg_value(ptr %i.zw, !45942, !DIExpression(), !45949)
    #dbg_value(ptr %i.zw, !45926, !DIExpression(), !45951)
  %i.zx = load double, ptr %i.zw, align 8, !dbg !45861, !noundef !3137
    #dbg_value(double %i.zx, !44798, !DIExpression(), !45952)
  %i.zy = getelementptr i8, ptr %i.zv, i64 -8, !dbg !47246
  %.sroa.077.0.in = select i1 %i.uz, ptr %i.mn, ptr %i.zy, !dbg !47246
  %.sroa.077.0 = load i64, ptr %.sroa.077.0.in, align 8, !dbg !45952, !noundef !3137 ; 2 uses
    #dbg_value(i64 %.sroa.077.0, !44800, !DIExpression(), !45953)
    #dbg_value(i64 %.sroa.077.0, !44799, !DIExpression(), !45954)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !dbg !47247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !dbg !45957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !dbg !45957
    #dbg_value(ptr %i.gq, !45955, !DIExpression(), !45958)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.er, i8 0, i64 16, i1 false), !dbg !47248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false), !dbg !47249
  store i32 0, ptr %i.vb, align 8, !dbg !47249
  store ptr %i.gq, ptr %i.vc, align 8, !dbg !47249
  store i64 -1, ptr %.sroa.4252.0..sroa_idx, align 8, !dbg !47249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vd, i8 0, i64 16, i1 false), !dbg !47249
    #dbg_value(i32 %i.vf, !45959, !DIExpression(), !45964)
  %i.zz = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE19set_label_area_sizemECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.gg, i8 noundef 2, i32 noundef %i.vf)
          to label %bb.fs unwind label %bb.fr, !dbg !47250

bb.fo:                                            ; preds = %.loopexit975, %.loopexit.split-lp976, %.body744, %.body627
  %.pn587.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn587.pn.pn.pn, %.body744 ], [ %eh.lpad-body628, %.body627 ], [ %lpad.loopexit977, %.loopexit975 ], [ %lpad.loopexit.split-lp978, %.loopexit.split-lp976 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45965), !dbg !47251
    #dbg_value(ptr %i.gk, !8124, !DIExpression(), !43545)
  call void @llvm.experimental.noalias.scope.decl(metadata !45966), !dbg !47252
    #dbg_value(ptr %i.gk, !8129, !DIExpression(), !43549)
  call void @llvm.experimental.noalias.scope.decl(metadata !45967), !dbg !47253
    #dbg_value(ptr %i.gk, !8136, !DIExpression(), !43553)
    #dbg_value(ptr %i.gk, !9359, !DIExpression(), !43555)
    #dbg_value(ptr %i.gk, !9359, !DIExpression(), !43557)
  %i.aaa = load ptr, ptr %i.gk, align 8, !dbg !47254, !alias.scope !45968, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.aaa, !8139, !DIExpression(), !43560)
    #dbg_value(ptr %i.aaa, !8147, !DIExpression(), !43562)
    #dbg_value(ptr %i.aaa, !8152, !DIExpression(), !43564)
    #dbg_value(ptr %i.aaa, !8158, !DIExpression(), !43566)
    #dbg_value(ptr %i.aaa, !8164, !DIExpression(), !43568)
  %i.aab = load i64, ptr %i.aaa, align 8, !dbg !47255, !noalias !45968, !noundef !3137
  %i.aac = add i64 %i.aab, -1, !dbg !47256        ; 2 uses
    #dbg_value(i64 %i.aac, !8156, !DIExpression(), !43569)
    #dbg_value(i64 %i.aac, !8162, !DIExpression(), !43570)
  store i64 %i.aac, ptr %i.aaa, align 8, !dbg !47257, !noalias !45968
    #dbg_value(ptr %i.aaa, !8147, !DIExpression(), !43573)
    #dbg_value(ptr %i.aaa, !8164, !DIExpression(), !43575)
  %i.aad = icmp eq i64 %i.aac, 0, !dbg !47258
  br i1 %i.aad, label %bb.fp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742, !dbg !47258

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gk) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit742 unwind label %bb.mb, !dbg !47259

.loopexit975:                                     ; preds = %bb.sl
  %lpad.loopexit977 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

.loopexit.split-lp976:                            ; preds = %bb.fm
  %lpad.loopexit.split-lp978 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fq:                                            ; preds = %bb.kx, %bb.fm, %bb.cj, %bb.ce, %bb.bm, %bb.bh, %bb.ap, %bb.ak, %bb.s
  unreachable

bb.fr:                                            ; preds = %bb.ft, %bb.fs, %bb.fn
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %.body627, !dbg !47260

.body627:                                         ; preds = %bb.fx, %bb.fw, %bb.fr
  %eh.lpad-body628 = phi { ptr, i32 } [ %i.aae, %bb.fr ], [ %i.aaj, %bb.fw ], [ %i.aaj, %bb.fx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7builder12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2608) %i.gg) #21
          to label %bb.fo unwind label %bb.mb, !dbg !47260

bb.fs:                                            ; preds = %bb.fn
  %i.aaf = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE19set_label_area_sizemECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.zz, i8 noundef 1, i32 noundef %i.ld)
          to label %bb.ft unwind label %bb.fr, !dbg !47261

bb.ft:                                            ; preds = %bb.fs
  invoke void @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE18build_cartesian_2dINtNtNtCskKLDkoKarTP_4core3ops5range5RangedEIB2j_yEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.gh, ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.aaf, double noundef %.sroa.044.1, double noundef %.sroa.040.1, i64 noundef 0, i64 noundef %.sroa.077.0)
          to label %bb.fu unwind label %bb.fr, !dbg !47262

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !45969), !dbg !47263
  call void @llvm.experimental.noalias.scope.decl(metadata !45970), !dbg !47263
    #dbg_declare(ptr %i.gh, !10667, !DIExpression(), !43580)
    #dbg_declare(ptr %i.ef, !10682, !DIExpression(), !43581)
  %i.aag = load i64, ptr %i.gh, align 8, !dbg !47264, !range !8592, !alias.scope !45970, !noalias !45971, !noundef !3137
  %i.aah = icmp eq i64 %i.aag, -1, !dbg !47264
  br i1 %i.aah, label %bb.fv, label %bb.ga, !dbg !47265, !prof !3806

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !47266, !noalias !45972
  %i.aai = getelementptr inbounds nuw i8, ptr %i.gh, i64 8, !dbg !47266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.aai, i64 64, i1 false), !dbg !47266, !noalias !45971
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 43, ptr noundef nonnull %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @196, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #22
          to label %bb.fy unwind label %bb.fw, !dbg !47267, !noalias !45973

bb.fw:                                            ; preds = %bb.fv
  %i.aaj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.ef, !7721, !DIExpression(), !43584)
  %i.aak = load i8, ptr %i.ef, align 8, !dbg !47268, !range !7727, !alias.scope !45974, !noalias !45973, !noundef !3137
  %i.aal = icmp slt i8 %i.aak, 13, !dbg !47268
  br i1 %i.aal, label %bb.fx, label %.body627, !dbg !47268

bb.fx:                                            ; preds = %bb.fw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ef)
          to label %.body627 unwind label %bb.fz, !dbg !47268

bb.fy:                                            ; preds = %bb.fv
  unreachable

bb.fz:                                            ; preds = %bb.fx
  %i.aam = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47269, !noalias !45973
  unreachable, !dbg !47269

bb.ga:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.gi, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.gh, i64 232, i1 false), !dbg !47270, !alias.scope !45973, !noalias !45975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !dbg !47271
    #dbg_value(ptr %i.gg, !9319, !DIExpression(), !43588)
    #dbg_value(ptr %i.gg, !9324, !DIExpression(), !43590)
  %i.aan = load i64, ptr %.sroa.4252.0..sroa_idx, align 8, !dbg !47272, !range !9238, !alias.scope !45976, !noundef !3137
  %i.aao = icmp eq i64 %i.aan, -1, !dbg !47272
  br i1 %i.aao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7builder12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.gb, !dbg !47272

bb.gb:                                            ; preds = %bb.ga
    #dbg_value(ptr %i.gg, !9331, !DIExpression(), !43596)
    #dbg_value(ptr %i.gg, !3843, !DIExpression(), !43598)
    #dbg_value(ptr %i.gg, !3849, !DIExpression(), !43600)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i unwind label %bb.gc, !dbg !47273

bb.gc:                                            ; preds = %bb.gb
  %i.aap = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.gg, !3854, !DIExpression(), !43602)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.gg)
          to label %.body.i.i.i unwind label %bb.gd, !dbg !47274

bb.gd:                                            ; preds = %bb.gc
  %i.aaq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47273
  unreachable, !dbg !47273

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i: ; preds = %bb.gb
    #dbg_value(ptr %i.gg, !3854, !DIExpression(), !43604)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i unwind label %bb.ge, !dbg !47275

bb.ge:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !47276

.body.i.i.i:                                      ; preds = %bb.ge, %bb.gc
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aar, %bb.ge ], [ %i.aap, %bb.gc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2536) %.sroa.4252.0..sroa_idx) #21
          to label %.body744 unwind label %bb.gf, !dbg !47276

bb.gf:                                            ; preds = %.body.i.i.i
  %i.aas = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !47276
  unreachable, !dbg !47276

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2536) %.sroa.4252.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7builder12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.gg, !dbg !47276

.body744:                                         ; preds = %bb.gg, %.body.i.i.i, %.critedge, %.body624
  %.pn587.pn.pn.pn = phi { ptr, i32 } [ %.pn587.pn.pn, %.critedge ], [ %eh.lpad-body625, %.body624 ], [ %i.aat, %bb.gg ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7context12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2z_8ranged1d5types7numeric14RangedCoordf64NtB3i_14RangedCoordu64EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(232) %i.gi) #21
end_hunk_0
begin_hunk_1_@_RNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots16stream_multiplex24plot_stream_multiplexing:bb.a
bb.cu:                                            ; preds = %bb.ct
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.b, !7721, !DIExpression(), !48984)
  %i.li = load i8, ptr %i.b, align 8, !dbg !51456, !range !7727, !alias.scope !50671, !noalias !50668, !noundef !3137
  %i.lj = icmp slt i8 %i.li, 13, !dbg !51456
  br i1 %i.lj, label %bb.cv, label %.body526, !dbg !51456

bb.cv:                                            ; preds = %bb.cu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b)
          to label %.body526 unwind label %bb.cx, !dbg !51456

bb.cw:                                            ; preds = %bb.ct
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51457, !noalias !50668
  unreachable, !dbg !51457

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEE6unwrapCsaTqK2fWTXJW_11qlog_dancer.exit528: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !51458
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart4mesh9MeshStyleNtNtNtNtNtBI_5coord8ranged1d5types7numeric14RangedCoordf64NtB1s_14RangedCoordi32NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840) %i.ch)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !51443

bb.cy:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEE6unwrapCsaTqK2fWTXJW_11qlog_dancer.exit528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !51443
    #dbg_value(ptr %.sroa.020.0, !50672, !DIExpression(), !50675)
    #dbg_value(ptr %.sroa.020.0, !50676, !DIExpression(), !50682)
  %i.ll = load ptr, ptr %.sroa.020.0, align 8, !dbg !51459, !noundef !3137 ; 3 uses
  %.not436 = icmp eq ptr %i.ll, null, !dbg !51459
  br i1 %.not436, label %bb.da, label %bb.cz, !dbg !51460

bb.cz:                                            ; preds = %bb.cy
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 8, !dbg !51459
    #dbg_value(ptr %.sroa.020.0, !50677, !DIExpression(), !50683)
    #dbg_value(ptr %.sroa.020.0, !50684, !DIExpression(), !50688)
    #dbg_value(i64 1, !50678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50689)
    #dbg_value(ptr null, !50678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50689)
    #dbg_value(ptr %i.ll, !50678, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !50689)
    #dbg_value(i64 poison, !50678, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !50689)
    #dbg_value(i64 1, !50678, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !50689)
    #dbg_value(ptr null, !50678, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !50689)
    #dbg_value(ptr %i.ll, !50678, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !50689)
    #dbg_value(i64 poison, !50678, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !50689)
  %i.ln = load <2 x i64>, ptr %i.lm, align 8, !dbg !51461
  br label %bb.da, !dbg !51462

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %.sroa.028.sroa.6.0 = phi i64 [ 1, %bb.cz ], [ 0, %bb.cy ], !dbg !50682 ; 2 uses
  %i.lo = phi <2 x i64> [ %i.ln, %bb.cz ], [ <i64 undef, i64 0>, %bb.cy ], !dbg !50682 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !50674
  store i64 %.sroa.028.sroa.6.0, ptr %i.cf, align 8, !dbg !50674
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !50674
  store ptr null, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8, !dbg !50674
  %.sroa.028.sroa.5.sroa.5.0..sroa.028.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !50674
  store ptr %i.ll, ptr %.sroa.028.sroa.5.sroa.5.0..sroa.028.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !50674
  %.sroa.028.sroa.5.sroa.6.0..sroa.028.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24, !dbg !50674
  %i.lp = extractelement <2 x i64> %i.lo, i64 0, !dbg !50674
  store i64 %i.lp, ptr %.sroa.028.sroa.5.sroa.6.0..sroa.028.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !50674
  %.sroa.028.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32, !dbg !50674
  store i64 %.sroa.028.sroa.6.0, ptr %.sroa.028.sroa.6.0..sroa_idx, align 8, !dbg !50674
  %.sroa.028.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 40, !dbg !50674
  store ptr null, ptr %.sroa.028.sroa.7.0..sroa_idx, align 8, !dbg !50674
  %.sroa.028.sroa.7.sroa.5.0..sroa.028.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 48, !dbg !50674
  store ptr %i.ll, ptr %.sroa.028.sroa.7.sroa.5.0..sroa.028.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !50674
  %.sroa.028.sroa.7.sroa.6.0..sroa.028.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 56, !dbg !50674
  store <2 x i64> %i.lo, ptr %.sroa.028.sroa.7.sroa.6.0..sroa.028.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !50674
  %i.lq = trunc nuw i8 %.fr910 to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %.backedge732, !dbg !51463

.backedge732:                                     ; preds = %.backedge732.backedge, %bb.da
  %i.lt = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cf)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit, !dbg !50098 ; 2 uses

bb.db:                                            ; preds = %.backedge732
  %i.lu = extractvalue { ptr, ptr } %i.lt, 0, !dbg !50098 ; 2 uses
  %i.lv = extractvalue { ptr, ptr } %i.lt, 1, !dbg !50098 ; 3 uses
  %.not437 = icmp eq ptr %i.lu, null, !dbg !50098
  br i1 %.not437, label %bb.dd, label %bb.dc, !dbg !50098

bb.dc:                                            ; preds = %bb.db
    #dbg_value(ptr %i.lu, !49938, !DIExpression(), !50690)
    #dbg_value(ptr %i.lu, !50216, !DIExpression(), !50221)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lv) ]
    #dbg_value(ptr %i.lv, !49939, !DIExpression(), !50690)
    #dbg_value(ptr %i.lv, !50536, !DIExpression(), !50692)
    #dbg_value(ptr %i.lv, !50538, !DIExpression(), !50695)
    #dbg_value(ptr %i.lv, !50529, !DIExpression(), !50698)
  br i1 %i.lq, label %bb.lo, label %bb.lm, !dbg !51464

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !51465
    #dbg_value(ptr %i.dc, !50424, !DIExpression(), !48993)
  %i.lw = load i64, ptr %i.hh, align 8, !dbg !51466, !alias.scope !50699, !noundef !3137
  store i64 %i.lw, ptr %i.hj, align 8, !dbg !51467, !alias.scope !50699
    #dbg_value(i32 0, !49942, !DIExpression(), !50700)
    #dbg_value(i32 0, !49943, !DIExpression(), !50701)
    #dbg_value(i32 0, !49944, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !50702)
    #dbg_value(i32 4, !49944, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !50702)
  %.sroa.039.0.in.v = select i1 %i.dn, i64 1960, i64 1952, !dbg !51468
  %.sroa.039.0.in = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.039.0.in.v, !dbg !51468
  %.sroa.039.0 = load i64, ptr %.sroa.039.0.in, align 8, !dbg !50139, !noundef !3137 ; 4 uses
    #dbg_value(i64 %.sroa.039.0, !49947, !DIExpression(), !50703)
  %i.lx = icmp eq i64 %.sroa.039.0, 0, !dbg !51469
  br i1 %i.lx, label %bb.dh, label %bb.de, !dbg !51469

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !dbg !50283
  store i64 %.sroa.022.sroa.0.0, ptr %i.ca, align 8, !dbg !50283
  %.sroa.043.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8, !dbg !50283
  store ptr null, ptr %.sroa.043.sroa.5.0..sroa_idx, align 8, !dbg !50283
  %.sroa.043.sroa.5.sroa.5.0..sroa.043.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !50283
  store ptr %i.iu, ptr %.sroa.043.sroa.5.sroa.5.0..sroa.043.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !50283
  %.sroa.043.sroa.5.sroa.6.0..sroa.043.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24, !dbg !50283
  store i64 %.sroa.022.sroa.7.sroa.6.0, ptr %.sroa.043.sroa.5.sroa.6.0..sroa.043.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !50283
  %.sroa.043.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32, !dbg !50283
  store i64 %.sroa.022.sroa.0.0, ptr %.sroa.043.sroa.6.0..sroa_idx, align 8, !dbg !50283
  %.sroa.043.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 40, !dbg !50283
  store ptr null, ptr %.sroa.043.sroa.7.0..sroa_idx, align 8, !dbg !50283
  %.sroa.043.sroa.7.sroa.5.0..sroa.043.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 48, !dbg !50283
  store ptr %i.iu, ptr %.sroa.043.sroa.7.sroa.5.0..sroa.043.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !50283
  %.sroa.043.sroa.7.sroa.6.0..sroa.043.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 56, !dbg !50283
  store i64 %.sroa.022.sroa.7.sroa.6.0, ptr %.sroa.043.sroa.7.sroa.6.0..sroa.043.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !50283
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 64, !dbg !50283
  store i64 %.sroa.5.0, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !50283
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bt, i64 2568
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2600
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bt, i64 2560
  %.sroa.571.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2584
  %i.mc = getelementptr inbounds nuw i8, ptr %i.br, i64 7833
  %i.md = getelementptr inbounds nuw i8, ptr %i.br, i64 7835
  %i.me = getelementptr inbounds nuw i8, ptr %i.br, i64 7704
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bo, i64 2568
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bo, i64 2600
  %i.mh = getelementptr inbounds nuw i8, ptr %i.bo, i64 2560
  %.sroa.571.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.bo, i64 2584
  %i.mj = getelementptr inbounds nuw i8, ptr %i.bm, i64 7833
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bm, i64 7835
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bm, i64 7704
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.aq, i64 2568
  %i.mr = getelementptr inbounds nuw i8, ptr %i.aq, i64 2600
  %i.ms = getelementptr inbounds nuw i8, ptr %i.aq, i64 2560
  %.sroa.571.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.aq, i64 2584
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ao, i64 7833
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ao, i64 7835
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ao, i64 7704
  %i.mx = icmp ugt i64 %.sroa.039.0, 4
  %i.my = udiv i64 %.sroa.039.0, 5
  %.sroa.060.0 = select i1 %i.mx, i64 %i.my, i64 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  br label %.outer, !dbg !51470

.outer:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit678, %bb.de
  %.sroa.037.0.ph = phi i32 [ %i.ty, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit678 ], [ 0, %bb.de ] ; 2 uses
  %.sroa.034.0.ph = phi i32 [ %i.qd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit678 ], [ 0, %bb.de ] ; 3 uses
  br i1 %i.iz, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %bb.dg
    #dbg_value(i32 %.sroa.034.0.ph, !49942, !DIExpression(), !50700)
    #dbg_value(i32 %.sroa.037.0.ph, !49943, !DIExpression(), !50701)
  %i.no = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryNtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub15HttpRequestStubENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ca)
          to label %bb.df unwind label %.loopexit.loopexit.split.us, !dbg !50101 ; 2 uses

bb.df:                                            ; preds = %.outer.split.us
  %i.np = extractvalue { ptr, ptr } %i.no, 0, !dbg !50101 ; 3 uses
  %.not439.us = icmp eq ptr %i.np, null, !dbg !50101
  br i1 %.not439.us, label %.split902.us, label %bb.dg, !dbg !50101

bb.dg:                                            ; preds = %bb.df
    #dbg_value(ptr %i.np, !49951, !DIExpression(), !50704)
    #dbg_value(ptr %i.np, !50216, !DIExpression(), !50256)
    #dbg_value(ptr poison, !49952, !DIExpression(), !50704)
  %i.nq = load i64, ptr %i.np, align 8, !dbg !51471, !noundef !3137
  %i.nr = and i64 %i.nq, 2, !dbg !51472
  %i.ns = icmp eq i64 %i.nr, 0, !dbg !50255
  br i1 %i.ns, label %.split904.us.loopexit, label %.outer.split.us, !dbg !50255

.loopexit.loopexit.split.us:                      ; preds = %.outer.split.us
  %lpad.loopexit726.us = landingpad { ptr, i32 }
          cleanup
  br label %.body483

.outer.split:                                     ; preds = %.outer
    #dbg_value(i32 %.sroa.034.0.ph, !49942, !DIExpression(), !50700)
    #dbg_value(i32 %.sroa.037.0.ph, !49943, !DIExpression(), !50701)
  %i.nt = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryNtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub15HttpRequestStubENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ca)
          to label %bb.ea unwind label %.loopexit.loopexit.split, !dbg !50101 ; 2 uses

bb.dh:                                            ; preds = %bb.dd
    #dbg_value(i64 2, !49949, !DIExpression(), !50707)
    #dbg_value(ptr poison, !50223, !DIExpression(), !50708)
    #dbg_value(ptr poison, !50223, !DIExpression(), !50709)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !50244, !DIExpression(), !50249)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !3832, !DIExpression(), !48997)
    #dbg_value(i8 0, !3835, !DIExpression(), !48997)
  %i.nu = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !51473 ; 2 uses
  %i.nv = icmp ult i64 %i.nu, 6, !dbg !51474
  call void @llvm.assume(i1 %i.nv), !dbg !51474
    #dbg_value(ptr poison, !50224, !DIExpression(), !50710)
    #dbg_value(i8 poison, !50232, !DIExpression(), !50711)
    #dbg_value(i8 poison, !50238, !DIExpression(), !50716)
    #dbg_value(i8 poison, !50231, !DIExpression(), !50717)
  %i.nw = icmp samesign ugt i64 %i.nu, 1, !dbg !51475
  br i1 %i.nw, label %bb.di, label %bb.dj, !dbg !50226

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !50226
  store ptr @261, ptr %i.cb, align 8, !dbg !50226
  %i.nx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !50226
  store i64 36, ptr %i.nx, align 8, !dbg !50226
  %i.ny = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !50226
  store ptr @261, ptr %i.ny, align 8, !dbg !50226
  %i.nz = getelementptr inbounds nuw i8, ptr %i.cb, i64 24, !dbg !50226
  store i64 36, ptr %i.nz, align 8, !dbg !50226
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cb, i64 32, !dbg !50226
  store ptr @260, ptr %i.oa, align 8, !dbg !50226
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsaTqK2fWTXJW_11qlog_dancer(ptr noundef nonnull @259, ptr noundef nonnull inttoptr (i64 87 to ptr), i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cb)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !50226

bb.dj:                                            ; preds = %bb.dh, %bb.dk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7context12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2z_8ranged1d5types7numeric14RangedCoordf64NtB3i_14RangedCoordi32EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(224) %i.cm)
          to label %bb.do unwind label %bb.dn, !dbg !51436

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !50226
  br label %bb.dj, !dbg !50226

bb.dl:                                            ; preds = %bb.dn, %.body483, %.body472
  %.pn456.pn = phi { ptr, i32 } [ %.pn456, %.body483 ], [ %i.of, %bb.dn ], [ %eh.lpad-body473, %.body472 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50718), !dbg !51476
    #dbg_value(ptr %i.co, !8124, !DIExpression(), !49001)
  call void @llvm.experimental.noalias.scope.decl(metadata !50719), !dbg !51477
    #dbg_value(ptr %i.co, !8129, !DIExpression(), !49005)
  call void @llvm.experimental.noalias.scope.decl(metadata !50720), !dbg !51478
    #dbg_value(ptr %i.co, !8136, !DIExpression(), !49009)
    #dbg_value(ptr %i.co, !9359, !DIExpression(), !49011)
    #dbg_value(ptr %i.co, !9359, !DIExpression(), !49013)
  %i.ob = load ptr, ptr %i.co, align 8, !dbg !51479, !alias.scope !50721, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.ob, !8139, !DIExpression(), !49016)
    #dbg_value(ptr %i.ob, !8147, !DIExpression(), !49018)
    #dbg_value(ptr %i.ob, !8152, !DIExpression(), !49020)
    #dbg_value(ptr %i.ob, !8158, !DIExpression(), !49022)
    #dbg_value(ptr %i.ob, !8164, !DIExpression(), !49024)
  %i.oc = load i64, ptr %i.ob, align 8, !dbg !51480, !noalias !50721, !noundef !3137
  %i.od = add i64 %i.oc, -1, !dbg !51481          ; 2 uses
    #dbg_value(i64 %i.od, !8156, !DIExpression(), !49025)
    #dbg_value(i64 %i.od, !8162, !DIExpression(), !49026)
  store i64 %i.od, ptr %i.ob, align 8, !dbg !51482, !noalias !50721
    #dbg_value(ptr %i.ob, !8147, !DIExpression(), !49029)
    #dbg_value(ptr %i.ob, !8164, !DIExpression(), !49031)
  %i.oe = icmp eq i64 %i.od, 0, !dbg !51483
  br i1 %i.oe, label %bb.dm, label %.body480, !dbg !51483

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.co) #25
          to label %.body480 unwind label %bb.ll, !dbg !51484

bb.dn:                                            ; preds = %.split902.us, %bb.dj
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.do:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !51436
  call void @llvm.experimental.noalias.scope.decl(metadata !50722), !dbg !51476
    #dbg_value(ptr %i.co, !8124, !DIExpression(), !49035)
  call void @llvm.experimental.noalias.scope.decl(metadata !50723), !dbg !51485
    #dbg_value(ptr %i.co, !8129, !DIExpression(), !49039)
  call void @llvm.experimental.noalias.scope.decl(metadata !50724), !dbg !51486
    #dbg_value(ptr %i.co, !8136, !DIExpression(), !49043)
    #dbg_value(ptr %i.co, !9359, !DIExpression(), !49045)
    #dbg_value(ptr %i.co, !9359, !DIExpression(), !49047)
  %i.og = load ptr, ptr %i.co, align 8, !dbg !51487, !alias.scope !50725, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.og, !8139, !DIExpression(), !49050)
    #dbg_value(ptr %i.og, !8147, !DIExpression(), !49052)
    #dbg_value(ptr %i.og, !8152, !DIExpression(), !49054)
    #dbg_value(ptr %i.og, !8158, !DIExpression(), !49056)
    #dbg_value(ptr %i.og, !8164, !DIExpression(), !49058)
  %i.oh = load i64, ptr %i.og, align 8, !dbg !51488, !noalias !50725, !noundef !3137
  %i.oi = add i64 %i.oh, -1, !dbg !51489          ; 2 uses
    #dbg_value(i64 %i.oi, !8156, !DIExpression(), !49059)
    #dbg_value(i64 %i.oi, !8162, !DIExpression(), !49060)
  store i64 %i.oi, ptr %i.og, align 8, !dbg !51490, !noalias !50725
    #dbg_value(ptr %i.og, !8147, !DIExpression(), !49063)
    #dbg_value(ptr %i.og, !8164, !DIExpression(), !49065)
  %i.oj = icmp eq i64 %i.oi, 0, !dbg !51491
  br i1 %i.oj, label %bb.dp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit565, !dbg !51491

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.co) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit565 unwind label %.loopexit.split-lp734, !dbg !51492

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit565: ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !51476
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7context12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2z_8ranged1d5types7numeric14RangedCoordf64NtB3i_14RangedCoordi32EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(224) %i.cz)
          to label %bb.dt unwind label %bb.ds, !dbg !51349

bb.dq:                                            ; preds = %bb.ds, %.body480, %.body475
  %.pn459.pn = phi { ptr, i32 } [ %.pn459, %.body480 ], [ %i.oo, %bb.ds ], [ %eh.lpad-body476, %.body475 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50726), !dbg !51493
    #dbg_value(ptr %i.db, !8124, !DIExpression(), !49069)
  call void @llvm.experimental.noalias.scope.decl(metadata !50727), !dbg !51494
    #dbg_value(ptr %i.db, !8129, !DIExpression(), !49073)
  call void @llvm.experimental.noalias.scope.decl(metadata !50728), !dbg !51495
    #dbg_value(ptr %i.db, !8136, !DIExpression(), !49077)
    #dbg_value(ptr %i.db, !9359, !DIExpression(), !49079)
    #dbg_value(ptr %i.db, !9359, !DIExpression(), !49081)
  %i.ok = load ptr, ptr %i.db, align 8, !dbg !51496, !alias.scope !50729, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.ok, !8139, !DIExpression(), !49084)
    #dbg_value(ptr %i.ok, !8147, !DIExpression(), !49086)
    #dbg_value(ptr %i.ok, !8152, !DIExpression(), !49088)
    #dbg_value(ptr %i.ok, !8158, !DIExpression(), !49090)
    #dbg_value(ptr %i.ok, !8164, !DIExpression(), !49092)
  %i.ol = load i64, ptr %i.ok, align 8, !dbg !51497, !noalias !50729, !noundef !3137
  %i.om = add i64 %i.ol, -1, !dbg !51498          ; 2 uses
    #dbg_value(i64 %i.om, !8156, !DIExpression(), !49093)
    #dbg_value(i64 %i.om, !8162, !DIExpression(), !49094)
  store i64 %i.om, ptr %i.ok, align 8, !dbg !51499, !noalias !50729
    #dbg_value(ptr %i.ok, !8147, !DIExpression(), !49097)
    #dbg_value(ptr %i.ok, !8164, !DIExpression(), !49099)
  %i.on = icmp eq i64 %i.om, 0, !dbg !51500
  br i1 %i.on, label %bb.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit567, !dbg !51500

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit567 unwind label %bb.ll, !dbg !51501

bb.ds:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit585, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit565
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !51349
  call void @llvm.experimental.noalias.scope.decl(metadata !50730), !dbg !51493
    #dbg_value(ptr %i.db, !8124, !DIExpression(), !49103)
  call void @llvm.experimental.noalias.scope.decl(metadata !50731), !dbg !51502
    #dbg_value(ptr %i.db, !8129, !DIExpression(), !49107)
  call void @llvm.experimental.noalias.scope.decl(metadata !50732), !dbg !51503
    #dbg_value(ptr %i.db, !8136, !DIExpression(), !49111)
    #dbg_value(ptr %i.db, !9359, !DIExpression(), !49113)
    #dbg_value(ptr %i.db, !9359, !DIExpression(), !49115)
  %i.op = load ptr, ptr %i.db, align 8, !dbg !51504, !alias.scope !50733, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.op, !8139, !DIExpression(), !49118)
    #dbg_value(ptr %i.op, !8147, !DIExpression(), !49120)
    #dbg_value(ptr %i.op, !8152, !DIExpression(), !49122)
    #dbg_value(ptr %i.op, !8158, !DIExpression(), !49124)
    #dbg_value(ptr %i.op, !8164, !DIExpression(), !49126)
  %i.oq = load i64, ptr %i.op, align 8, !dbg !51505, !noalias !50733, !noundef !3137
  %i.or = add i64 %i.oq, -1, !dbg !51506          ; 2 uses
    #dbg_value(i64 %i.or, !8156, !DIExpression(), !49127)
    #dbg_value(i64 %i.or, !8162, !DIExpression(), !49128)
  store i64 %i.or, ptr %i.op, align 8, !dbg !51507, !noalias !50733
    #dbg_value(ptr %i.op, !8147, !DIExpression(), !49131)
    #dbg_value(ptr %i.op, !8164, !DIExpression(), !49133)
  %i.os = icmp eq i64 %i.or, 0, !dbg !51508
  br i1 %i.os, label %bb.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit569, !dbg !51508

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit569 unwind label %bb.af, !dbg !51509

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit569: ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !51493
    #dbg_value(ptr %i.dc, !50403, !DIExpression(), !49135)
    #dbg_value(ptr %i.dc, !50410, !DIExpression(), !49137)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorEECsaTqK2fWTXJW_11qlog_dancer.exit.i571 unwind label %bb.dv, !dbg !51510

bb.dv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit569
  %i.ot = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dc, !50417, !DIExpression(), !49139)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %.body572 unwind label %bb.dw, !dbg !51511

bb.dw:                                            ; preds = %bb.dv
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51510
  unreachable, !dbg !51510

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorEECsaTqK2fWTXJW_11qlog_dancer.exit.i571: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit569
    #dbg_value(ptr %i.dc, !50417, !DIExpression(), !49141)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit575 unwind label %bb.ac, !dbg !51512

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit575: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorEECsaTqK2fWTXJW_11qlog_dancer.exit.i571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !51513
  call void @llvm.experimental.noalias.scope.decl(metadata !50734), !dbg !51303
    #dbg_value(ptr %i.dd, !8124, !DIExpression(), !49145)
  call void @llvm.experimental.noalias.scope.decl(metadata !50735), !dbg !51514
    #dbg_value(ptr %i.dd, !8129, !DIExpression(), !49149)
  call void @llvm.experimental.noalias.scope.decl(metadata !50736), !dbg !51515
    #dbg_value(ptr %i.dd, !8136, !DIExpression(), !49153)
    #dbg_value(ptr %i.dd, !9359, !DIExpression(), !49155)
    #dbg_value(ptr %i.dd, !9359, !DIExpression(), !49157)
  %i.ov = load ptr, ptr %i.dd, align 8, !dbg !51516, !alias.scope !50737, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.ov, !8139, !DIExpression(), !49160)
    #dbg_value(ptr %i.ov, !8147, !DIExpression(), !49162)
    #dbg_value(ptr %i.ov, !8152, !DIExpression(), !49164)
    #dbg_value(ptr %i.ov, !8158, !DIExpression(), !49166)
    #dbg_value(ptr %i.ov, !8164, !DIExpression(), !49168)
  %i.ow = load i64, ptr %i.ov, align 8, !dbg !51517, !noalias !50737, !noundef !3137
  %i.ox = add i64 %i.ow, -1, !dbg !51518          ; 2 uses
    #dbg_value(i64 %i.ox, !8156, !DIExpression(), !49169)
    #dbg_value(i64 %i.ox, !8162, !DIExpression(), !49170)
  store i64 %i.ox, ptr %i.ov, align 8, !dbg !51519, !noalias !50737
    #dbg_value(ptr %i.ov, !8147, !DIExpression(), !49173)
    #dbg_value(ptr %i.ov, !8164, !DIExpression(), !49175)
  %i.oy = icmp eq i64 %i.ox, 0, !dbg !51520
  br i1 %i.oy, label %bb.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit577, !dbg !51520

bb.dx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit575
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dd) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit577 unwind label %bb.z, !dbg !51521

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit577: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit575, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !51303
    #dbg_value(ptr %i.de, !3843, !DIExpression(), !49177)
    #dbg_value(ptr %i.de, !3849, !DIExpression(), !49179)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i597.invoke unwind label %bb.dy, !dbg !51522

bb.dy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit577
  %i.oz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.de, !3854, !DIExpression(), !49181)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body580 unwind label %bb.dz, !dbg !51523

bb.dz:                                            ; preds = %bb.dy
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51522
  unreachable, !dbg !51522

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit601: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i597.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !50750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !51524
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaTqK2fWTXJW_11qlog_dancer5plots11ChartConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.dk), !dbg !51287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !51287
  ret void, !dbg !51525

bb.ea:                                            ; preds = %.outer.split
  %i.pb = extractvalue { ptr, ptr } %i.nt, 0, !dbg !50101 ; 2 uses
  %.not439 = icmp eq ptr %i.pb, null, !dbg !50101
  br i1 %.not439, label %.split902.us, label %.split904, !dbg !50101

.split904:                                        ; preds = %bb.ea
  %6 = extractvalue { ptr, ptr } %i.nt, 1, !dbg !50101 ; 2 uses
    #dbg_value(ptr %i.pb, !49951, !DIExpression(), !50704)
    #dbg_value(ptr %i.pb, !50216, !DIExpression(), !50256)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
    #dbg_value(ptr %6, !49952, !DIExpression(), !50704)
  br label %.split904.us, !dbg !51526

.split902.us:                                     ; preds = %bb.ea, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !51527
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7context12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2z_8ranged1d5types7numeric14RangedCoordf64NtB3i_14RangedCoordi32EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(224) %i.cm)
          to label %bb.eb unwind label %bb.dn, !dbg !51436

bb.eb:                                            ; preds = %.split902.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !51436
  call void @llvm.experimental.noalias.scope.decl(metadata !50738), !dbg !51476
    #dbg_value(ptr %i.co, !8124, !DIExpression(), !49185)
  call void @llvm.experimental.noalias.scope.decl(metadata !50739), !dbg !51528
    #dbg_value(ptr %i.co, !8129, !DIExpression(), !49189)
  call void @llvm.experimental.noalias.scope.decl(metadata !50740), !dbg !51529
    #dbg_value(ptr %i.co, !8136, !DIExpression(), !49193)
    #dbg_value(ptr %i.co, !9359, !DIExpression(), !49195)
    #dbg_value(ptr %i.co, !9359, !DIExpression(), !49197)
  %i.pc = load ptr, ptr %i.co, align 8, !dbg !51530, !alias.scope !50741, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.pc, !8139, !DIExpression(), !49200)
    #dbg_value(ptr %i.pc, !8147, !DIExpression(), !49202)
    #dbg_value(ptr %i.pc, !8152, !DIExpression(), !49204)
    #dbg_value(ptr %i.pc, !8158, !DIExpression(), !49206)
    #dbg_value(ptr %i.pc, !8164, !DIExpression(), !49208)
  %i.pd = load i64, ptr %i.pc, align 8, !dbg !51531, !noalias !50741, !noundef !3137
  %i.pe = add i64 %i.pd, -1, !dbg !51532          ; 2 uses
    #dbg_value(i64 %i.pe, !8156, !DIExpression(), !49209)
    #dbg_value(i64 %i.pe, !8162, !DIExpression(), !49210)
  store i64 %i.pe, ptr %i.pc, align 8, !dbg !51533, !noalias !50741
    #dbg_value(ptr %i.pc, !8147, !DIExpression(), !49213)
    #dbg_value(ptr %i.pc, !8164, !DIExpression(), !49215)
  %i.pf = icmp eq i64 %i.pe, 0, !dbg !51534
  br i1 %i.pf, label %bb.ec, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit585, !dbg !51534

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.co) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit585 unwind label %.loopexit.split-lp734, !dbg !51535

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit585: ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !51476
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7context12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2z_8ranged1d5types7numeric14RangedCoordf64NtB3i_14RangedCoordi32EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(224) %i.cz)
          to label %bb.ed unwind label %bb.ds, !dbg !51349

bb.ed:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !51349
  call void @llvm.experimental.noalias.scope.decl(metadata !50742), !dbg !51493
    #dbg_value(ptr %i.db, !8124, !DIExpression(), !49219)
  call void @llvm.experimental.noalias.scope.decl(metadata !50743), !dbg !51536
    #dbg_value(ptr %i.db, !8129, !DIExpression(), !49223)
  call void @llvm.experimental.noalias.scope.decl(metadata !50744), !dbg !51537
    #dbg_value(ptr %i.db, !8136, !DIExpression(), !49227)
    #dbg_value(ptr %i.db, !9359, !DIExpression(), !49229)
    #dbg_value(ptr %i.db, !9359, !DIExpression(), !49231)
  %i.pg = load ptr, ptr %i.db, align 8, !dbg !51538, !alias.scope !50745, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.pg, !8139, !DIExpression(), !49234)
    #dbg_value(ptr %i.pg, !8147, !DIExpression(), !49236)
    #dbg_value(ptr %i.pg, !8152, !DIExpression(), !49238)
    #dbg_value(ptr %i.pg, !8158, !DIExpression(), !49240)
    #dbg_value(ptr %i.pg, !8164, !DIExpression(), !49242)
  %i.ph = load i64, ptr %i.pg, align 8, !dbg !51539, !noalias !50745, !noundef !3137
  %i.pi = add i64 %i.ph, -1, !dbg !51540          ; 2 uses
    #dbg_value(i64 %i.pi, !8156, !DIExpression(), !49243)
    #dbg_value(i64 %i.pi, !8162, !DIExpression(), !49244)
  store i64 %i.pi, ptr %i.pg, align 8, !dbg !51541, !noalias !50745
    #dbg_value(ptr %i.pg, !8147, !DIExpression(), !49247)
    #dbg_value(ptr %i.pg, !8164, !DIExpression(), !49249)
  %i.pj = icmp eq i64 %i.pi, 0, !dbg !51542
  br i1 %i.pj, label %bb.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit587, !dbg !51542

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit587 unwind label %bb.af, !dbg !51543

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit587: ; preds = %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !51493
    #dbg_value(ptr %i.dc, !50403, !DIExpression(), !49251)
    #dbg_value(ptr %i.dc, !50410, !DIExpression(), !49253)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorEECsaTqK2fWTXJW_11qlog_dancer.exit.i589 unwind label %bb.ef, !dbg !51544

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit587
  %i.pk = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dc, !50417, !DIExpression(), !49255)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %.body572 unwind label %bb.eg, !dbg !51545

bb.eg:                                            ; preds = %bb.ef
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51544
  unreachable, !dbg !51544

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorEECsaTqK2fWTXJW_11qlog_dancer.exit.i589: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit587
    #dbg_value(ptr %i.dc, !50417, !DIExpression(), !49257)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit593 unwind label %bb.ac, !dbg !51546

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit593: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorEECsaTqK2fWTXJW_11qlog_dancer.exit.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !51513
  call void @llvm.experimental.noalias.scope.decl(metadata !50746), !dbg !51303
    #dbg_value(ptr %i.dd, !8124, !DIExpression(), !49261)
  call void @llvm.experimental.noalias.scope.decl(metadata !50747), !dbg !51547
    #dbg_value(ptr %i.dd, !8129, !DIExpression(), !49265)
  call void @llvm.experimental.noalias.scope.decl(metadata !50748), !dbg !51548
    #dbg_value(ptr %i.dd, !8136, !DIExpression(), !49269)
    #dbg_value(ptr %i.dd, !9359, !DIExpression(), !49271)
    #dbg_value(ptr %i.dd, !9359, !DIExpression(), !49273)
  %i.pm = load ptr, ptr %i.dd, align 8, !dbg !51549, !alias.scope !50749, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.pm, !8139, !DIExpression(), !49276)
    #dbg_value(ptr %i.pm, !8147, !DIExpression(), !49278)
    #dbg_value(ptr %i.pm, !8152, !DIExpression(), !49280)
    #dbg_value(ptr %i.pm, !8158, !DIExpression(), !49282)
    #dbg_value(ptr %i.pm, !8164, !DIExpression(), !49284)
  %i.pn = load i64, ptr %i.pm, align 8, !dbg !51550, !noalias !50749, !noundef !3137
  %i.po = add i64 %i.pn, -1, !dbg !51551          ; 2 uses
    #dbg_value(i64 %i.po, !8156, !DIExpression(), !49285)
    #dbg_value(i64 %i.po, !8162, !DIExpression(), !49286)
  store i64 %i.po, ptr %i.pm, align 8, !dbg !51552, !noalias !50749
    #dbg_value(ptr %i.pm, !8147, !DIExpression(), !49289)
    #dbg_value(ptr %i.pm, !8164, !DIExpression(), !49291)
  %i.pp = icmp eq i64 %i.po, 0, !dbg !51553
  br i1 %i.pp, label %bb.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit595, !dbg !51553

bb.eh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit593
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dd) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit595 unwind label %bb.z, !dbg !51554

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit595: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaTqK2fWTXJW_11qlog_dancer5plots6colors10ColorCycleEBH_.exit593, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !51303
    #dbg_value(ptr %i.de, !3843, !DIExpression(), !49293)
    #dbg_value(ptr %i.de, !3849, !DIExpression(), !49295)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i597.invoke unwind label %bb.ei, !dbg !51555

bb.ei:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit595
  %i.pq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.de, !3854, !DIExpression(), !49297)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body580 unwind label %bb.ej, !dbg !51556

bb.ej:                                            ; preds = %bb.ei
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51555
  unreachable, !dbg !51555

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i597.invoke: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit595, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit577
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit601 unwind label %bb.u, !dbg !51557

.split904.us.loopexit:                            ; preds = %bb.dg
  %7 = extractvalue { ptr, ptr } %i.no, 1, !dbg !50101
    #dbg_value(ptr %7, !49952, !DIExpression(), !50704)
  br label %.split904.us, !dbg !51526

.split904.us:                                     ; preds = %.split904.us.loopexit, %.split904
  %.us-phi905 = phi ptr [ %i.pb, %.split904 ], [ %i.np, %.split904.us.loopexit ], !dbg !51526
  %.us-phi906 = phi ptr [ %6, %.split904 ], [ %7, %.split904.us.loopexit ], !dbg !51526 ; 5 uses
  %.sroa.049.0 = getelementptr inbounds nuw i8, ptr %.us-phi906, i64 %.sroa.026.0.v, !dbg !51526 ; 2 uses
    #dbg_value(ptr %.sroa.049.0, !50529, !DIExpression(), !50759)
    #dbg_value(ptr %.sroa.049.0, !50538, !DIExpression(), !50765)
    #dbg_value(ptr %.sroa.049.0, !50536, !DIExpression(), !50766)
    #dbg_value(ptr %.sroa.049.0, !50763, !DIExpression(), !50767)
    #dbg_value(ptr %.sroa.049.0, !49953, !DIExpression(), !50768)
  %i.ps = getelementptr inbounds nuw i8, ptr %.us-phi906, i64 16, !dbg !51558 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.us-phi906, i64 24, !dbg !51558 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.us-phi906, i64 32, !dbg !51558 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.us-phi906, i64 40, !dbg !51558 ; 2 uses
  %.sroa.553.0.in = select i1 %i.dn, ptr %i.pt, ptr %i.pv, !dbg !51558
  %.sroa.052.0.in = select i1 %i.dn, ptr %i.ps, ptr %i.pu, !dbg !51558
  %.sroa.052.0 = load i64, ptr %.sroa.052.0.in, align 8, !dbg !50768, !range !3838, !noundef !3137
  %.sroa.553.0 = load double, ptr %.sroa.553.0.in, align 8, !dbg !50768 ; 2 uses
    #dbg_value(i64 %.sroa.052.0, !49954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50769)
    #dbg_value(double %.sroa.553.0, !49954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50769)
  %.sroa.556.0.in = select i1 %i.dn, ptr %i.pv, ptr %i.pt, !dbg !51559
  %.sroa.055.0.in = select i1 %i.dn, ptr %i.pu, ptr %i.ps, !dbg !51559
  %.sroa.055.0 = load i64, ptr %.sroa.055.0.in, align 8, !dbg !50769, !range !3838, !noundef !3137
  %.sroa.556.0 = load double, ptr %.sroa.556.0.in, align 8, !dbg !50769 ; 2 uses
    #dbg_value(i64 %.sroa.055.0, !49955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50770)
    #dbg_value(double %.sroa.556.0, !49955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !dbg !51560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !51561
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB4_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5coord5ShiftENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dd)
          to label %bb.ek unwind label %.loopexit.loopexit.split-lp, !dbg !51562

bb.ek:                                            ; preds = %.split904.us
  %i.pw = add i32 %.sroa.034.0.ph, %i.ee, !dbg !51563
  invoke void @_RINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBa_5coord5ShiftE6shrinkllmmECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.by, i32 noundef 0, i32 noundef %i.pw, i32 noundef %i.eb, i32 noundef %i.eg)
          to label %bb.el unwind label %.loopexit.loopexit.split-lp, !dbg !51564

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !51565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !51566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !51567
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB4_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5coord5ShiftENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dd)
          to label %bb.eo unwind label %bb.en, !dbg !51568

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit674: ; preds = %bb.lf, %bb.lg, %bb.en
  %.pn454 = phi { ptr, i32 } [ %i.qb, %bb.en ], [ %.pn452, %bb.lg ], [ %.pn452, %bb.lf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50771), !dbg !51569
    #dbg_value(ptr %i.bz, !8124, !DIExpression(), !49302)
  call void @llvm.experimental.noalias.scope.decl(metadata !50772), !dbg !51570
    #dbg_value(ptr %i.bz, !8129, !DIExpression(), !49306)
  call void @llvm.experimental.noalias.scope.decl(metadata !50773), !dbg !51571
    #dbg_value(ptr %i.bz, !8136, !DIExpression(), !49310)
    #dbg_value(ptr %i.bz, !9359, !DIExpression(), !49312)
    #dbg_value(ptr %i.bz, !9359, !DIExpression(), !49314)
  %i.px = load ptr, ptr %i.bz, align 8, !dbg !51572, !alias.scope !50774, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.px, !8139, !DIExpression(), !49317)
    #dbg_value(ptr %i.px, !8147, !DIExpression(), !49319)
    #dbg_value(ptr %i.px, !8152, !DIExpression(), !49321)
    #dbg_value(ptr %i.px, !8158, !DIExpression(), !49323)
    #dbg_value(ptr %i.px, !8164, !DIExpression(), !49325)
  %i.py = load i64, ptr %i.px, align 8, !dbg !51573, !noalias !50774, !noundef !3137
  %i.pz = add i64 %i.py, -1, !dbg !51574          ; 2 uses
    #dbg_value(i64 %i.pz, !8156, !DIExpression(), !49326)
    #dbg_value(i64 %i.pz, !8162, !DIExpression(), !49327)
  store i64 %i.pz, ptr %i.px, align 8, !dbg !51575, !noalias !50774
    #dbg_value(ptr %i.px, !8147, !DIExpression(), !49330)
    #dbg_value(ptr %i.px, !8164, !DIExpression(), !49332)
  %i.qa = icmp eq i64 %i.pz, 0, !dbg !51576
  br i1 %i.qa, label %bb.em, label %.body483, !dbg !51576

bb.em:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit674
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bz) #25
          to label %.body483 unwind label %bb.ll, !dbg !51577

bb.en:                                            ; preds = %bb.lj, %bb.eo, %bb.el
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit674

bb.eo:                                            ; preds = %bb.el
  %i.qc = add i32 %.sroa.034.0.ph, %i.eq, !dbg !51578
  invoke void @_RINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBa_5coord5ShiftE6shrinkllmmECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bw, i32 noundef 0, i32 noundef %i.qc, i32 noundef %i.eb, i32 noundef %i.eg)
          to label %bb.ep unwind label %bb.en, !dbg !51579

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !51580
  %i.qd = add i32 %.sroa.034.0.ph, 20, !dbg !51581
    #dbg_value(i32 %i.qd, !49942, !DIExpression(), !50700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !51582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !50775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !50775
    #dbg_value(ptr %i.bz, !50428, !DIExpression(), !50776)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !dbg !51583
  store i32 0, ptr %i.lz, align 8, !dbg !51583
  store ptr %i.bz, ptr %i.ma, align 8, !dbg !51583
  store i64 -1, ptr %.sroa.571.0..sroa_idx74, align 8, !dbg !51583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !dbg !51583
    #dbg_value(ptr %i.bt, !50432, !DIExpression(), !50440)
  %i.qe = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE19set_label_area_sizemECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.bt, i8 noundef 1, i32 noundef %i.hs)
          to label %bb.er unwind label %bb.eq, !dbg !51584

bb.eq:                                            ; preds = %bb.es, %bb.er, %bb.ep
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %.body469, !dbg !51585

.body469:                                         ; preds = %bb.ew, %bb.ev, %bb.eq
  %eh.lpad-body470 = phi { ptr, i32 } [ %i.qf, %bb.eq ], [ %i.qk, %bb.ev ], [ %i.qk, %bb.ew ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7builder12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2608) %i.bt) #21
          to label %bb.lf unwind label %bb.ll, !dbg !51585

bb.er:                                            ; preds = %bb.ep
    #dbg_value(ptr %i.qe, !50445, !DIExpression(), !50453)
  %i.qg = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE19set_label_area_sizemECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.qe, i8 noundef 2, i32 noundef %i.hv)
          to label %bb.es unwind label %bb.eq, !dbg !51586

bb.es:                                            ; preds = %bb.er
  invoke void @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE18build_cartesian_2dINtNtNtCskKLDkoKarTP_4core3ops5range5RangedEIB2j_lEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.qg, double noundef %.sroa.07.1, double noundef %.sroa.0.1, i32 noundef 0, i32 noundef 4)
          to label %bb.et unwind label %bb.eq, !dbg !51587

bb.et:                                            ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !50777), !dbg !51588
  call void @llvm.experimental.noalias.scope.decl(metadata !50778), !dbg !51588
    #dbg_declare(ptr %i.bu, !13471, !DIExpression(), !49337)
    #dbg_declare(ptr %i.r, !13486, !DIExpression(), !49338)
  %i.qh = load i64, ptr %i.bu, align 8, !dbg !51589, !range !8592, !alias.scope !50778, !noalias !50779, !noundef !3137
  %i.qi = icmp eq i64 %i.qh, -1, !dbg !51589
  br i1 %i.qi, label %bb.eu, label %bb.ez, !dbg !51590, !prof !3806

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !51591, !noalias !50780
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !51591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.qj, i64 64, i1 false), !dbg !51591, !noalias !50779
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @196, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #22
          to label %bb.ex unwind label %bb.ev, !dbg !51592, !noalias !50781

bb.ev:                                            ; preds = %bb.eu
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.r, !7721, !DIExpression(), !49341)
  %i.ql = load i8, ptr %i.r, align 8, !dbg !51593, !range !7727, !alias.scope !50782, !noalias !50781, !noundef !3137
  %i.qm = icmp slt i8 %i.ql, 13, !dbg !51593
  br i1 %i.qm, label %bb.ew, label %.body469, !dbg !51593

bb.ew:                                            ; preds = %bb.ev
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(64) %i.r)
          to label %.body469 unwind label %bb.ey, !dbg !51593

bb.ex:                                            ; preds = %bb.eu
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51594, !noalias !50781
  unreachable, !dbg !51594

bb.ez:                                            ; preds = %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(224) %i.bu, i64 224, i1 false), !dbg !51595, !alias.scope !50781, !noalias !50783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !51596
    #dbg_value(ptr %i.bt, !9319, !DIExpression(), !49345)
    #dbg_value(ptr %i.bt, !9324, !DIExpression(), !49347)
  %i.qo = load i64, ptr %.sroa.571.0..sroa_idx74, align 8, !dbg !51597, !range !9238, !alias.scope !50784, !noundef !3137
  %i.qp = icmp eq i64 %i.qo, -1, !dbg !51597
  br i1 %i.qp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7builder12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer.exit613, label %bb.fa, !dbg !51597

bb.fa:                                            ; preds = %bb.ez
    #dbg_value(ptr %i.bt, !9331, !DIExpression(), !49353)
    #dbg_value(ptr %i.bt, !3843, !DIExpression(), !49355)
    #dbg_value(ptr %i.bt, !3849, !DIExpression(), !49357)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i608 unwind label %bb.fb, !dbg !51598

bb.fb:                                            ; preds = %bb.fa
  %i.qq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.bt, !3854, !DIExpression(), !49359)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.bt)
          to label %.body.i.i.i606 unwind label %bb.fc, !dbg !51599

bb.fc:                                            ; preds = %bb.fb
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51598
  unreachable, !dbg !51598

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i608: ; preds = %bb.fa
    #dbg_value(ptr %i.bt, !3854, !DIExpression(), !49361)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(2608) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i609 unwind label %bb.fd, !dbg !51600

bb.fd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i608
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i606, !dbg !51601

.body.i.i.i606:                                   ; preds = %bb.fd, %bb.fb
  %eh.lpad-body.i.i.i607 = phi { ptr, i32 } [ %i.qs, %bb.fd ], [ %i.qq, %bb.fb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2536) %.sroa.571.0..sroa_idx74) #21
          to label %.body610 unwind label %bb.fe, !dbg !51601

bb.fe:                                            ; preds = %.body.i.i.i606
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !51601
  unreachable, !dbg !51601

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i609: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i608
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4bweDUTR8gt_8plotters5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2536) %.sroa.571.0..sroa_idx74)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7builder12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEECsaTqK2fWTXJW_11qlog_dancer.exit613 unwind label %bb.ff, !dbg !51601

.body610:                                         ; preds = %bb.ff, %.body.i.i.i606, %.body491, %.body, %.body522
  %.pn450 = phi { ptr, i32 } [ %eh.lpad-body523, %.body522 ], [ %.pn448, %.body491 ], [ %eh.lpad-body, %.body ], [ %i.qu, %bb.ff ], [ %eh.lpad-body.i.i.i607, %.body.i.i.i606 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart7context12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2z_8ranged1d5types7numeric14RangedCoordf64NtB3i_14RangedCoordi32EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(224) %i.bv) #21
          to label %bb.lf unwind label %bb.ll, !dbg !51602
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.smin.v4i32
!51326 = !DILocation(line: 177, column: 35, scope: !48640)
!51327 = !DILocation(line: 182, column: 22, scope: !48640)
!51328 = !DILocation(line: 175, column: 14, scope: !48640)
!51329 = !DILocation(line: 178, column: 13, scope: !48640)
!51330 = !DILocation(line: 179, column: 32, scope: !48640)
!51331 = !DILocation(line: 202, column: 14, scope: !48824, inlinedAt: !50435)
!51332 = !DILocation(line: 180, column: 32, scope: !48640)
!51333 = !DILocation(line: 214, column: 14, scope: !48825, inlinedAt: !50448)
!51334 = !DILocation(line: 181, column: 14, scope: !48640)
!51335 = !DILocation(line: 182, column: 14, scope: !48640)
!51336 = !DILocation(line: 1230, column: 15, scope: !2721, inlinedAt: !48829)
!51337 = !DILocation(line: 1230, column: 9, scope: !2721, inlinedAt: !48829)
!51338 = !DILocation(line: 1232, column: 17, scope: !2721, inlinedAt: !48829)
!51339 = !DILocation(line: 1232, column: 23, scope: !2719, inlinedAt: !48829)
!51340 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !48833)
!51341 = !DILocation(line: 1226, column: 5, scope: !2721, inlinedAt: !48829)
!51342 = !DILocation(line: 1231, column: 16, scope: !2721, inlinedAt: !48829)
!51343 = !DILocation(line: 182, column: 21, scope: !48640)
!51344 = !DILocation(line: 848, column: 1, scope: !1685, inlinedAt: !48839)
!51345 = !DILocation(line: 848, column: 1, scope: !231, inlinedAt: !48849)
!51346 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !48851)
!51347 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !48853)
!51348 = !DILocation(line: 848, column: 1, scope: !1686, inlinedAt: !48845)
!51349 = !DILocation(line: 456, column: 1, scope: !48640)
!51350 = !DILocation(line: 184, column: 5, scope: !48639)
!51351 = !DILocation(line: 45, column: 9, scope: !48855, inlinedAt: !50468)
!51352 = !DILocation(line: 278, column: 9, scope: !48857, inlinedAt: !50480)
!51353 = !DILocation(line: 284, column: 9, scope: !48858, inlinedAt: !50485)
!51354 = !DILocation(line: 313, column: 32, scope: !48859, inlinedAt: !50490)
!51355 = !DILocation(line: 780, column: 9, scope: !48860, inlinedAt: !50494)
!51356 = !DILocation(line: 190, column: 18, scope: !48639)
!51357 = !DILocation(line: 313, column: 9, scope: !48859, inlinedAt: !50490)
!51358 = !DILocation(line: 313, column: 27, scope: !48859, inlinedAt: !50490)
!51359 = !DILocation(line: 313, column: 44, scope: !48859, inlinedAt: !50490)
!51360 = !DILocation(line: 188, column: 22, scope: !48639)
!51361 = !DILocation(line: 188, column: 10, scope: !48639)
!51362 = !DILocation(line: 188, column: 63, scope: !48639)
!51363 = !DILocation(line: 189, column: 10, scope: !48639)
!51364 = !DILocation(line: 190, column: 10, scope: !48639)
!51365 = !DILocation(line: 1230, column: 15, scope: !1283, inlinedAt: !48864)
!51366 = !DILocation(line: 1230, column: 9, scope: !1283, inlinedAt: !48864)
!51367 = !DILocation(line: 1232, column: 17, scope: !1283, inlinedAt: !48864)
!51368 = !DILocation(line: 1232, column: 23, scope: !1281, inlinedAt: !48864)
!51369 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !48868)
!51370 = !DILocation(line: 1226, column: 5, scope: !1283, inlinedAt: !48864)
!51371 = !DILocation(line: 190, column: 17, scope: !48639)
!51372 = !DILocation(line: 2702, column: 29, scope: !48724, inlinedAt: !50525)
!51373 = !DILocation(line: 2702, column: 16, scope: !48724, inlinedAt: !50525)
!51374 = !DILocation(line: 28, column: 31, scope: !48710, inlinedAt: !50218)
!51375 = !DILocation(line: 178, column: 46, scope: !48872, inlinedAt: !50528)
!51376 = !DILocation(line: 202, column: 13, scope: !48636)
!51377 = !DILocation(line: 202, column: 32, scope: !48636)
!51378 = !DILocation(line: 55, column: 33, scope: !48879, inlinedAt: !48880)
!51379 = !DILocation(line: 1864, column: 86, scope: !48889, inlinedAt: !48890)
!51380 = !DILocation(line: 238, column: 10, scope: !48900, inlinedAt: !48901)
!51381 = !DILocation(line: 197, column: 27, scope: !48637)
!51382 = !DILocation(line: 611, column: 9, scope: !48904, inlinedAt: !48909)
!51383 = !DILocation(line: 238, column: 9, scope: !48900, inlinedAt: !48901)
!51384 = !DILocation(line: 55, column: 21, scope: !48879, inlinedAt: !48880)
!51385 = !DILocation(line: 3105, column: 37, scope: !48911, inlinedAt: !48912)
!51386 = !DILocation(line: 3105, column: 18, scope: !48911, inlinedAt: !48912)
!51387 = !DILocation(line: 56, column: 35, scope: !48878, inlinedAt: !48880)
!51388 = !DILocation(line: 56, column: 12, scope: !48878, inlinedAt: !48880)
!51389 = !DILocation(line: 0, scope: !48878, inlinedAt: !48880)
!51390 = !DILocation(line: 202, column: 21, scope: !48636)
!51391 = !DILocation(line: 611, column: 9, scope: !48914, inlinedAt: !50612)
!51392 = !DILocation(line: 1864, column: 86, scope: !48875, inlinedAt: !50533)
!51393 = !DILocation(line: 971, column: 18, scope: !48934, inlinedAt: !50638)
!51394 = !DILocation(line: 208, column: 9, scope: !48634)
!51395 = !DILocation(line: 209, column: 26, scope: !48634)
!51396 = !DILocation(line: 60, column: 10, scope: !48683, inlinedAt: !48684)
!51397 = !DILocation(line: 209, column: 14, scope: !48634)
!51398 = !DILocation(line: 209, column: 39, scope: !48634)
!51399 = !DILocation(line: 210, column: 14, scope: !48634)
!51400 = !DILocation(line: 1230, column: 15, scope: !2042, inlinedAt: !48940)
!51401 = !DILocation(line: 1230, column: 9, scope: !2042, inlinedAt: !48940)
!51402 = !DILocation(line: 210, column: 21, scope: !48634)
!51403 = !DILocation(line: 211, column: 5, scope: !48636)
!51404 = !DILocation(line: 192, column: 5, scope: !48638)
!51405 = !DILocation(line: 211, column: 5, scope: !48639)
!51406 = !DILocation(line: 66, column: 31, scope: !48818, inlinedAt: !48944)
!51407 = !DILocation(line: 66, column: 9, scope: !48818, inlinedAt: !48944)
!51408 = !DILocation(line: 216, column: 9, scope: !48639)
!51409 = !DILocation(line: 216, column: 46, scope: !48639)
!51410 = !DILocation(line: 216, column: 51, scope: !48639)
!51411 = !DILocation(line: 216, column: 59, scope: !48639)
!51412 = !DILocation(line: 219, column: 5, scope: !48639)
!51413 = !DILocation(line: 221, column: 9, scope: !48631)
!51414 = !DILocation(line: 91, column: 9, scope: !48823, inlinedAt: !50649)
!51415 = !DILocation(line: 225, column: 17, scope: !48631)
!51416 = !DILocation(line: 230, column: 22, scope: !48631)
!51417 = !DILocation(line: 223, column: 14, scope: !48631)
!51418 = !DILocation(line: 226, column: 13, scope: !48631)
!51419 = !DILocation(line: 202, column: 14, scope: !48824, inlinedAt: !50437)
!51420 = !DILocation(line: 214, column: 14, scope: !48825, inlinedAt: !50450)
!51421 = !DILocation(line: 229, column: 14, scope: !48631)
!51422 = !DILocation(line: 230, column: 14, scope: !48631)
!51423 = !DILocation(line: 1230, column: 15, scope: !2721, inlinedAt: !48951)
!51424 = !DILocation(line: 1230, column: 9, scope: !2721, inlinedAt: !48951)
!51425 = !DILocation(line: 1232, column: 17, scope: !2721, inlinedAt: !48951)
!51426 = !DILocation(line: 1232, column: 23, scope: !2719, inlinedAt: !48951)
!51427 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !48955)
!51428 = !DILocation(line: 1226, column: 5, scope: !2721, inlinedAt: !48951)
!51429 = !DILocation(line: 1231, column: 16, scope: !2721, inlinedAt: !48951)
!51430 = !DILocation(line: 230, column: 21, scope: !48631)
!51431 = !DILocation(line: 848, column: 1, scope: !1685, inlinedAt: !48961)
!51432 = !DILocation(line: 848, column: 1, scope: !231, inlinedAt: !48971)
!51433 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !48973)
!51434 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !48975)
!51435 = !DILocation(line: 848, column: 1, scope: !1686, inlinedAt: !48967)
!51436 = !DILocation(line: 456, column: 1, scope: !48631)
!51437 = !DILocation(line: 232, column: 5, scope: !48630)
!51438 = !DILocation(line: 45, column: 9, scope: !48855, inlinedAt: !50659)
!51439 = !DILocation(line: 278, column: 9, scope: !48857, inlinedAt: !50664)
!51440 = !DILocation(line: 284, column: 9, scope: !48858, inlinedAt: !50666)
!51441 = !DILocation(line: 313, column: 32, scope: !48859, inlinedAt: !50496)
!51442 = !DILocation(line: 780, column: 9, scope: !48860, inlinedAt: !50499)
!51443 = !DILocation(line: 238, column: 18, scope: !48630)
!51444 = !DILocation(line: 313, column: 9, scope: !48859, inlinedAt: !50496)
!51445 = !DILocation(line: 313, column: 27, scope: !48859, inlinedAt: !50496)
!51446 = !DILocation(line: 313, column: 44, scope: !48859, inlinedAt: !50496)
!51447 = !DILocation(line: 236, column: 22, scope: !48630)
!51448 = !DILocation(line: 236, column: 10, scope: !48630)
!51449 = !DILocation(line: 236, column: 63, scope: !48630)
!51450 = !DILocation(line: 237, column: 10, scope: !48630)
!51451 = !DILocation(line: 238, column: 10, scope: !48630)
!51452 = !DILocation(line: 1230, column: 15, scope: !1283, inlinedAt: !48979)
!51453 = !DILocation(line: 1230, column: 9, scope: !1283, inlinedAt: !48979)
!51454 = !DILocation(line: 1232, column: 17, scope: !1283, inlinedAt: !48979)
!51455 = !DILocation(line: 1232, column: 23, scope: !1281, inlinedAt: !48979)
!51456 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !48983)
!51457 = !DILocation(line: 1226, column: 5, scope: !1283, inlinedAt: !48979)
!51458 = !DILocation(line: 238, column: 17, scope: !48630)
!51459 = !DILocation(line: 2702, column: 29, scope: !48989, inlinedAt: !50681)
!51460 = !DILocation(line: 2702, column: 16, scope: !48989, inlinedAt: !50681)
!51461 = !DILocation(line: 304, column: 27, scope: !48991, inlinedAt: !50687)
!51462 = !DILocation(line: 2702, column: 9, scope: !48990, inlinedAt: !50681)
!51463 = !DILocation(line: 240, column: 5, scope: !48629)
!51464 = !DILocation(line: 241, column: 12, scope: !48628)
!51465 = !DILocation(line: 252, column: 5, scope: !48630)
!51466 = !DILocation(line: 66, column: 31, scope: !48818, inlinedAt: !48992)
!51467 = !DILocation(line: 66, column: 9, scope: !48818, inlinedAt: !48992)
!51468 = !DILocation(line: 263, column: 24, scope: !48619)
!51469 = !DILocation(line: 268, column: 8, scope: !48618)
!51470 = !DILocation(line: 273, column: 5, scope: !48616)
!51471 = !DILocation(line: 28, column: 31, scope: !48710, inlinedAt: !50255)
!51472 = !DILocation(line: 178, column: 46, scope: !48872, inlinedAt: !50706)
!51473 = !DILocation(line: 4001, column: 24, scope: !229, inlinedAt: !48996)
!51474 = !DILocation(line: 1438, column: 14, scope: !48718, inlinedAt: !50247)
!51475 = !DILocation(line: 532, column: 9, scope: !48715, inlinedAt: !50715)
!51476 = !DILocation(line: 456, column: 1, scope: !48639)
!51477 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49000)
!51478 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49004)
!51479 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49014)
!51480 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49023)
!51481 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49015)
!51482 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49027)
!51483 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49008)
!51484 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49008)
!51485 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49034)
!51486 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49038)
!51487 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49048)
!51488 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49057)
!51489 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49049)
!51490 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49061)
!51491 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49042)
!51492 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49042)
!51493 = !DILocation(line: 456, column: 1, scope: !48645)
!51494 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49068)
!51495 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49072)
!51496 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49082)
!51497 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49091)
!51498 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49083)
!51499 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49095)
!51500 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49076)
!51501 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49076)
!51502 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49102)
!51503 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49106)
!51504 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49116)
!51505 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49125)
!51506 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49117)
!51507 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49129)
!51508 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49110)
!51509 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49110)
!51510 = !DILocation(line: 848, column: 1, scope: !48810, inlinedAt: !49136)
!51511 = !DILocation(line: 848, column: 1, scope: !48813, inlinedAt: !49138)
!51512 = !DILocation(line: 848, column: 1, scope: !48813, inlinedAt: !49140)
!51513 = !DILocation(line: 456, column: 1, scope: !48646)
!51514 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49144)
!51515 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49148)
!51516 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49158)
!51517 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49167)
!51518 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49159)
!51519 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49171)
!51520 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49152)
!51521 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49152)
!51522 = !DILocation(line: 848, column: 1, scope: !231, inlinedAt: !49178)
!51523 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !49180)
!51524 = !DILocation(line: 456, column: 1, scope: !48651)
!51525 = !DILocation(line: 456, column: 2, scope: !48672)
!51526 = !DILocation(line: 278, column: 27, scope: !48615)
!51527 = !DILocation(line: 455, column: 5, scope: !48618)
!51528 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49184)
!51529 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49188)
!51530 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49198)
!51531 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49207)
!51532 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49199)
!51533 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49211)
!51534 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49192)
!51535 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49192)
!51536 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49218)
!51537 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49222)
!51538 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49232)
!51539 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49241)
!51540 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49233)
!51541 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49245)
!51542 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49226)
!51543 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49226)
!51544 = !DILocation(line: 848, column: 1, scope: !48810, inlinedAt: !49252)
!51545 = !DILocation(line: 848, column: 1, scope: !48813, inlinedAt: !49254)
!51546 = !DILocation(line: 848, column: 1, scope: !48813, inlinedAt: !49256)
!51547 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49260)
!51548 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49264)
!51549 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49274)
!51550 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49283)
!51551 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49275)
!51552 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49287)
!51553 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49268)
!51554 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49268)
!51555 = !DILocation(line: 848, column: 1, scope: !231, inlinedAt: !49294)
!51556 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !49296)
!51557 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !50752)
!51558 = !DILocation(line: 283, column: 28, scope: !48614)
!51559 = !DILocation(line: 288, column: 32, scope: !48613)
!51560 = !DILocation(line: 293, column: 13, scope: !48612)
!51561 = !DILocation(line: 293, column: 37, scope: !48612)
!51562 = !DILocation(line: 293, column: 42, scope: !48612)
!51563 = !DILocation(line: 294, column: 17, scope: !48612)
!51564 = !DILocation(line: 293, column: 50, scope: !48612)
!51565 = !DILocation(line: 296, column: 9, scope: !48612)
!51566 = !DILocation(line: 298, column: 13, scope: !48611)
!51567 = !DILocation(line: 298, column: 39, scope: !48611)
!51568 = !DILocation(line: 298, column: 44, scope: !48611)
!51569 = !DILocation(line: 455, column: 5, scope: !48612)
!51570 = !DILocation(line: 848, column: 1, scope: !1383, inlinedAt: !49301)
!51571 = !DILocation(line: 848, column: 1, scope: !1384, inlinedAt: !49305)
!51572 = !DILocation(line: 454, column: 20, scope: !1692, inlinedAt: !49315)
!51573 = !DILocation(line: 558, column: 18, scope: !1390, inlinedAt: !49324)
!51574 = !DILocation(line: 3845, column: 31, scope: !1386, inlinedAt: !49316)
!51575 = !DILocation(line: 976, column: 49, scope: !1391, inlinedAt: !49328)
!51576 = !DILocation(line: 2548, column: 16, scope: !1385, inlinedAt: !49309)
!51577 = !DILocation(line: 2549, column: 22, scope: !1385, inlinedAt: !49309)
!51578 = !DILocation(line: 299, column: 17, scope: !48611)
!51579 = !DILocation(line: 298, column: 52, scope: !48611)
!51580 = !DILocation(line: 301, column: 9, scope: !48611)
!51581 = !DILocation(line: 303, column: 9, scope: !48610)
!51582 = !DILocation(line: 305, column: 13, scope: !48610)
!51583 = !DILocation(line: 91, column: 9, scope: !48823, inlinedAt: !50775)
!51584 = !DILocation(line: 202, column: 14, scope: !48824, inlinedAt: !50439)
!51585 = !DILocation(line: 310, column: 26, scope: !48610)
!51586 = !DILocation(line: 214, column: 14, scope: !48825, inlinedAt: !50452)
!51587 = !DILocation(line: 309, column: 18, scope: !48610)
!51588 = !DILocation(line: 310, column: 18, scope: !48610)
!51589 = !DILocation(line: 1230, column: 15, scope: !2721, inlinedAt: !49336)
!51590 = !DILocation(line: 1230, column: 9, scope: !2721, inlinedAt: !49336)
!51591 = !DILocation(line: 1232, column: 17, scope: !2721, inlinedAt: !49336)
!51592 = !DILocation(line: 1232, column: 23, scope: !2719, inlinedAt: !49336)
!51593 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49340)
!51594 = !DILocation(line: 1226, column: 5, scope: !2721, inlinedAt: !49336)
!51595 = !DILocation(line: 1231, column: 16, scope: !2721, inlinedAt: !49336)
!51596 = !DILocation(line: 310, column: 25, scope: !48610)
!51597 = !DILocation(line: 848, column: 1, scope: !1685, inlinedAt: !49346)
!51598 = !DILocation(line: 848, column: 1, scope: !231, inlinedAt: !49356)
!51599 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !49358)
!51600 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !49360)
!51601 = !DILocation(line: 848, column: 1, scope: !1686, inlinedAt: !49352)
!51602 = !DILocation(line: 455, column: 5, scope: !48610)
!51603 = !DILocation(line: 312, column: 9, scope: !48609)
!51604 = !DILocation(line: 45, column: 9, scope: !48855, inlinedAt: !50785)
!51605 = !DILocation(line: 284, column: 9, scope: !48858, inlinedAt: !50787)
!51606 = !DILocation(line: 296, column: 9, scope: !49362, inlinedAt: !50792)
!51607 = !DILocation(line: 313, column: 32, scope: !48859, inlinedAt: !50501)
!51608 = !DILocation(line: 780, column: 9, scope: !48860, inlinedAt: !50504)
!51609 = !DILocation(line: 318, column: 22, scope: !48609)
!51610 = !DILocation(line: 313, column: 27, scope: !48859, inlinedAt: !50501)
!51611 = !DILocation(line: 313, column: 44, scope: !48859, inlinedAt: !50501)
!51612 = !DILocation(line: 317, column: 14, scope: !48609)
!51613 = !DILocation(line: 318, column: 14, scope: !48609)
!51614 = !DILocation(line: 1230, column: 15, scope: !1283, inlinedAt: !49365)
!51615 = !DILocation(line: 1230, column: 9, scope: !1283, inlinedAt: !49365)
!51616 = !DILocation(line: 1232, column: 17, scope: !1283, inlinedAt: !49365)
!51617 = !DILocation(line: 1232, column: 23, scope: !1281, inlinedAt: !49365)
!51618 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49369)
!51619 = !DILocation(line: 1226, column: 5, scope: !1283, inlinedAt: !49365)
!51620 = !DILocation(line: 318, column: 21, scope: !48609)
!51621 = !DILocation(line: 322, column: 13, scope: !48609)
!51622 = !DILocation(line: 91, column: 9, scope: !48823, inlinedAt: !50798)
!51623 = !DILocation(line: 202, column: 14, scope: !48824, inlinedAt: !50441)
!51624 = !DILocation(line: 327, column: 26, scope: !48609)
!51625 = !DILocation(line: 214, column: 14, scope: !48825, inlinedAt: !50454)
!51626 = !DILocation(line: 326, column: 18, scope: !48609)
!51627 = !DILocation(line: 327, column: 18, scope: !48609)
!51628 = !DILocation(line: 1230, column: 15, scope: !2721, inlinedAt: !49376)
!51629 = !DILocation(line: 1230, column: 9, scope: !2721, inlinedAt: !49376)
!51630 = !DILocation(line: 1232, column: 17, scope: !2721, inlinedAt: !49376)
!51631 = !DILocation(line: 1232, column: 23, scope: !2719, inlinedAt: !49376)
!51632 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49380)
!51633 = !DILocation(line: 1226, column: 5, scope: !2721, inlinedAt: !49376)
!51634 = !DILocation(line: 1231, column: 16, scope: !2721, inlinedAt: !49376)
!51635 = !DILocation(line: 327, column: 25, scope: !48609)
!51636 = !DILocation(line: 848, column: 1, scope: !1685, inlinedAt: !49386)
!51637 = !DILocation(line: 848, column: 1, scope: !231, inlinedAt: !49396)
!51638 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !49398)
!51639 = !DILocation(line: 848, column: 1, scope: !232, inlinedAt: !49400)
!51640 = !DILocation(line: 848, column: 1, scope: !1686, inlinedAt: !49392)
!51641 = !DILocation(line: 455, column: 5, scope: !48609)
!51642 = !DILocation(line: 329, column: 9, scope: !48608)
!51643 = !DILocation(line: 45, column: 9, scope: !48855, inlinedAt: !50808)
!51644 = !DILocation(line: 284, column: 9, scope: !48858, inlinedAt: !50810)
!51645 = !DILocation(line: 296, column: 9, scope: !49362, inlinedAt: !50812)
!51646 = !DILocation(line: 313, column: 32, scope: !48859, inlinedAt: !50506)
!51647 = !DILocation(line: 780, column: 9, scope: !48860, inlinedAt: !50509)
!51648 = !DILocation(line: 335, column: 22, scope: !48608)
!51649 = !DILocation(line: 313, column: 27, scope: !48859, inlinedAt: !50506)
!51650 = !DILocation(line: 313, column: 44, scope: !48859, inlinedAt: !50506)
!51651 = !DILocation(line: 334, column: 14, scope: !48608)
!51652 = !DILocation(line: 335, column: 14, scope: !48608)
!51653 = !DILocation(line: 1230, column: 15, scope: !1283, inlinedAt: !49404)
!51654 = !DILocation(line: 1230, column: 9, scope: !1283, inlinedAt: !49404)
!51655 = !DILocation(line: 1232, column: 17, scope: !1283, inlinedAt: !49404)
!51656 = !DILocation(line: 1232, column: 23, scope: !1281, inlinedAt: !49404)
!51657 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49408)
!51658 = !DILocation(line: 1226, column: 5, scope: !1283, inlinedAt: !49404)
!51659 = !DILocation(line: 335, column: 21, scope: !48608)
!51660 = !DILocation(line: 337, column: 13, scope: !48608)
!51661 = !DILocation(line: 337, column: 32, scope: !48608)
!51662 = !DILocation(line: 55, column: 33, scope: !48879, inlinedAt: !49414)
!51663 = !DILocation(line: 1864, column: 86, scope: !48889, inlinedAt: !49420)
!51664 = !DILocation(line: 238, column: 10, scope: !48900, inlinedAt: !49427)
!51665 = !DILocation(line: 611, column: 9, scope: !48904, inlinedAt: !49431)
!51666 = !DILocation(line: 238, column: 9, scope: !48900, inlinedAt: !49427)
!51667 = !DILocation(line: 55, column: 21, scope: !48879, inlinedAt: !49414)
!51668 = !DILocation(line: 3105, column: 37, scope: !48911, inlinedAt: !49433)
!51669 = !DILocation(line: 3105, column: 18, scope: !48911, inlinedAt: !49433)
!51670 = !DILocation(line: 56, column: 35, scope: !48878, inlinedAt: !49414)
!51671 = !DILocation(line: 56, column: 12, scope: !48878, inlinedAt: !49414)
!51672 = !DILocation(line: 0, scope: !48878, inlinedAt: !49414)
!51673 = !DILocation(line: 337, column: 21, scope: !48608)
!51674 = !DILocation(line: 339, column: 16, scope: !48606)
!51675 = !DILocation(line: 340, column: 13, scope: !48606)
!51676 = !DILocation(line: 341, column: 30, scope: !48606)
!51677 = !DILocation(line: 341, column: 31, scope: !48606)
!51678 = !DILocation(line: 357, column: 16, scope: !48605)
!51679 = !DILocation(line: 345, column: 18, scope: !48606)
!51680 = !DILocation(line: 341, column: 18, scope: !48606)
!51681 = !DILocation(line: 345, column: 19, scope: !48606)
!51682 = !DILocation(line: 346, column: 18, scope: !48606)
!51683 = !DILocation(line: 1230, column: 15, scope: !2042, inlinedAt: !49437)
!51684 = !DILocation(line: 1230, column: 9, scope: !2042, inlinedAt: !49437)
!51685 = !DILocation(line: 1232, column: 17, scope: !2042, inlinedAt: !49437)
!51686 = !DILocation(line: 1232, column: 23, scope: !2040, inlinedAt: !49437)
!51687 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49441)
!51688 = !DILocation(line: 1226, column: 5, scope: !2042, inlinedAt: !49437)
!51689 = !DILocation(line: 346, column: 25, scope: !48606)
!51690 = !DILocation(line: 348, column: 13, scope: !48606)
!51691 = !DILocation(line: 349, column: 30, scope: !48606)
!51692 = !DILocation(line: 349, column: 31, scope: !48606)
!51693 = !DILocation(line: 353, column: 18, scope: !48606)
!51694 = !DILocation(line: 349, column: 18, scope: !48606)
!51695 = !DILocation(line: 353, column: 19, scope: !48606)
!51696 = !DILocation(line: 354, column: 18, scope: !48606)
!51697 = !DILocation(line: 1230, column: 15, scope: !2042, inlinedAt: !49447)
!51698 = !DILocation(line: 1230, column: 9, scope: !2042, inlinedAt: !49447)
!51699 = !DILocation(line: 1232, column: 17, scope: !2042, inlinedAt: !49447)
!51700 = !DILocation(line: 1232, column: 23, scope: !2040, inlinedAt: !49447)
!51701 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49451)
!51702 = !DILocation(line: 1226, column: 5, scope: !2042, inlinedAt: !49447)
!51703 = !DILocation(line: 354, column: 25, scope: !48606)
!51704 = !DILocation(line: 339, column: 9, scope: !48607)
!51705 = !DILocation(line: 358, column: 13, scope: !48605)
!51706 = !DILocation(line: 359, column: 30, scope: !48605)
!51707 = !DILocation(line: 359, column: 31, scope: !48605)
!51708 = !DILocation(line: 363, column: 18, scope: !48605)
!51709 = !DILocation(line: 359, column: 18, scope: !48605)
!51710 = !DILocation(line: 363, column: 19, scope: !48605)
!51711 = !DILocation(line: 364, column: 18, scope: !48605)
!51712 = !DILocation(line: 1230, column: 15, scope: !2042, inlinedAt: !49457)
!51713 = !DILocation(line: 1230, column: 9, scope: !2042, inlinedAt: !49457)
!51714 = !DILocation(line: 1232, column: 17, scope: !2042, inlinedAt: !49457)
!51715 = !DILocation(line: 1232, column: 23, scope: !2040, inlinedAt: !49457)
!51716 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49461)
!51717 = !DILocation(line: 1226, column: 5, scope: !2042, inlinedAt: !49457)
!51718 = !DILocation(line: 364, column: 25, scope: !48605)
!51719 = !DILocation(line: 366, column: 13, scope: !48605)
!51720 = !DILocation(line: 367, column: 30, scope: !48605)
!51721 = !DILocation(line: 367, column: 31, scope: !48605)
!51722 = !DILocation(line: 371, column: 18, scope: !48605)
!51723 = !DILocation(line: 367, column: 18, scope: !48605)
!51724 = !DILocation(line: 371, column: 19, scope: !48605)
!51725 = !DILocation(line: 372, column: 18, scope: !48605)
!51726 = !DILocation(line: 1230, column: 15, scope: !2042, inlinedAt: !49467)
!51727 = !DILocation(line: 1230, column: 9, scope: !2042, inlinedAt: !49467)
!51728 = !DILocation(line: 1232, column: 17, scope: !2042, inlinedAt: !49467)
!51729 = !DILocation(line: 1232, column: 23, scope: !2040, inlinedAt: !49467)
!51730 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49471)
!51731 = !DILocation(line: 1226, column: 5, scope: !2042, inlinedAt: !49467)
!51732 = !DILocation(line: 372, column: 25, scope: !48605)
!51733 = !DILocation(line: 357, column: 9, scope: !48607)
!51734 = !DILocation(line: 611, column: 9, scope: !48914, inlinedAt: !50850)
!51735 = !DILocation(line: 1864, column: 86, scope: !48875, inlinedAt: !50840)
!51736 = !DILocation(line: 971, column: 18, scope: !48934, inlinedAt: !50856)
!51737 = !DILocation(line: 379, column: 9, scope: !48604)
!51738 = !DILocation(line: 380, column: 26, scope: !48604)
!51739 = !DILocation(line: 60, column: 10, scope: !48680, inlinedAt: !48681)
!51740 = !DILocation(line: 380, column: 14, scope: !48604)
!51741 = !DILocation(line: 380, column: 39, scope: !48604)
!51742 = !DILocation(line: 381, column: 14, scope: !48604)
!51743 = !DILocation(line: 1230, column: 15, scope: !2042, inlinedAt: !49480)
!51744 = !DILocation(line: 1230, column: 9, scope: !2042, inlinedAt: !49480)
!51745 = !DILocation(line: 1232, column: 17, scope: !2042, inlinedAt: !49480)
!51746 = !DILocation(line: 1232, column: 23, scope: !2040, inlinedAt: !49480)
!51747 = !DILocation(line: 848, column: 1, scope: !1284, inlinedAt: !49484)
!51748 = !DILocation(line: 1226, column: 5, scope: !2042, inlinedAt: !49480)
!51749 = !DILocation(line: 381, column: 21, scope: !48604)
!51750 = !DILocation(line: 383, column: 58, scope: !48601)
!51751 = !DILocation(line: 383, column: 38, scope: !48601)
!51752 = !DILocation(line: 383, column: 16, scope: !48601)
!51753 = !DILocation(line: 393, column: 13, scope: !48604)
!51754 = !DILocation(line: 393, column: 33, scope: !48604)
!51755 = !DILocation(line: 393, column: 38, scope: !48604)
!51756 = !DILocation(line: 611, column: 9, scope: !48914, inlinedAt: !50882)
!51757 = !DILocation(line: 1864, column: 86, scope: !48875, inlinedAt: !50872)
end_hunk_2
