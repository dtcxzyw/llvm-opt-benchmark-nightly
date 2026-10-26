Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.sink4002.i = phi i64 [ 64, %bb.av ], [ 16, %bb.aw ], [ 128, %bb.au ]
  %.03255.i = phi nsz <8 x float> [ %i.ti, %bb.av ], [ %i.ur, %bb.aw ], [ %i.sx, %bb.au ] ; 2 uses
  %.03254.i = phi nsz <8 x float> [ %i.th, %bb.av ], [ %i.uq, %bb.aw ], [ %i.sv, %bb.au ] ; 2 uses
  %.03226.i = phi nsz <8 x float> [ %i.tg, %bb.av ], [ %i.up, %bb.aw ], [ %i.st, %bb.au ] ; 2 uses
  %.83051.i = phi nsz <8 x float> [ %i.tf, %bb.av ], [ %i.uo, %bb.aw ], [ %i.sr, %bb.au ] ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.818923708.i, i64 %.sink4002.i ; 2 uses
  br i1 %i.ao, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ut = fadd fast <8 x float> %.83051.i, %i.sf
  %i.uu = fadd fast <8 x float> %.03226.i, %i.sg
  %i.uv = fadd fast <8 x float> %.03254.i, %i.sh
  %i.uw = fadd fast <8 x float> %.03255.i, %i.si
  br label %.thread3406.i

bb.az:                                            ; preds = %bb.ax
  %i.ux = fmul fast <8 x float> %.83051.i, %i.am
  %i.uy = fadd fast <8 x float> %i.ux, %i.sf
  %i.uz = fmul fast <8 x float> %.03226.i, %i.am
  %i.va = fadd fast <8 x float> %i.uz, %i.sg
  %i.vb = fmul fast <8 x float> %.03254.i, %i.am
  %i.vc = fadd fast <8 x float> %i.vb, %i.sh
  %i.vd = fmul fast <8 x float> %.03255.i, %i.am
  %i.ve = fadd fast <8 x float> %i.vd, %i.si
  br label %.thread3406.i

bb.ba:                                            ; preds = %bb.as
  %i.vf = load <4 x float>, ptr %.818923708.i, align 4, !tbaa !68
  %i.vg = fmul fast <4 x float> %i.vf, %i.az      ; 4 uses
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.vi = shufflevector <4 x float> %i.vg, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.vj = shufflevector <4 x float> %i.vg, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.vk = shufflevector <4 x float> %i.vg, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.vl = fadd fast <8 x float> %i.vh, %i.sf
  %i.vm = fadd fast <8 x float> %i.vi, %i.sg
  %i.vn = fadd fast <8 x float> %i.vj, %i.sh
  %i.vo = fadd fast <8 x float> %i.vk, %i.si
  %i.vp = getelementptr inbounds nuw i8, ptr %.818923708.i, i64 16
  br label %.thread3406.i

.thread3406.i:                                    ; preds = %bb.ba, %bb.az, %bb.ay, %bb.as, %bb.ar, %.thread3393.i, %.lr.ph3709.i
  %.43211.i = phi nsz <8 x float> [ %i.si, %.lr.ph3709.i ], [ %i.vo, %bb.ba ], [ %i.si, %bb.as ], [ %i.ve, %bb.az ], [ %i.uw, %bb.ay ], [ %i.sm, %.thread3393.i ], [ %i.sq, %bb.ar ] ; 2 uses
  %.43205.i = phi nsz <8 x float> [ %i.sh, %.lr.ph3709.i ], [ %i.vn, %bb.ba ], [ %i.sh, %bb.as ], [ %i.vc, %bb.az ], [ %i.uv, %bb.ay ], [ %i.sl, %.thread3393.i ], [ %i.sp, %bb.ar ] ; 2 uses
  %.43199.i = phi nsz <8 x float> [ %i.sg, %.lr.ph3709.i ], [ %i.vm, %bb.ba ], [ %i.sg, %bb.as ], [ %i.va, %bb.az ], [ %i.uu, %bb.ay ], [ %i.sk, %.thread3393.i ], [ %i.so, %bb.ar ] ; 2 uses
  %.43189.i = phi nsz <8 x float> [ %i.sf, %.lr.ph3709.i ], [ %i.vl, %bb.ba ], [ %i.sf, %bb.as ], [ %i.uy, %bb.az ], [ %i.ut, %bb.ay ], [ %i.sj, %.thread3393.i ], [ %i.sn, %bb.ar ] ; 2 uses
  %.103053.i = phi nsz <8 x float> [ %.730503703.i, %.lr.ph3709.i ], [ %i.vh, %bb.ba ], [ %.730503703.i, %bb.as ], [ %.83051.i, %bb.az ], [ %.83051.i, %bb.ay ], [ %.730503703.i, %.thread3393.i ], [ %.730503703.i, %bb.ar ] ; 2 uses
  %.11.i = phi ptr [ null, %.lr.ph3709.i ], [ %i.vp, %bb.ba ], [ %.818923708.i, %bb.as ], [ %i.us, %bb.az ], [ %i.us, %bb.ay ], [ %.818923708.i, %.thread3393.i ], [ %.818923708.i, %bb.ar ] ; 2 uses
  br i1 %i.ap, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.thread3406.i
  %i.vq = fmul fast <8 x float> %.43189.i, %i.ar
  %i.vr = fmul fast <8 x float> %.43199.i, %i.ar
  %i.vs = fmul fast <8 x float> %.43205.i, %i.ar
  %i.vt = fmul fast <8 x float> %.43211.i, %i.ar
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread3406.i
  %.53212.i = phi nsz <8 x float> [ %i.vt, %bb.bb ], [ %.43211.i, %.thread3406.i ] ; 8 uses
  %.53206.i = phi nsz <8 x float> [ %i.vs, %bb.bb ], [ %.43205.i, %.thread3406.i ] ; 8 uses
  %.53200.i = phi nsz <8 x float> [ %i.vr, %bb.bb ], [ %.43199.i, %.thread3406.i ] ; 8 uses
  %.53190.i = phi nsz <8 x float> [ %i.vq, %bb.bb ], [ %.43189.i, %.thread3406.i ] ; 8 uses
  br i1 %.not2061.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  switch i32 %i.c, label %bb.bg [
    i32 4, label %bb.be
    i32 1, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.vu = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.vv = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.vw = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.vx = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.vy = shufflevector <8 x float> %i.vu, <8 x float> %i.vw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.vz = shufflevector <8 x float> %i.vv, <8 x float> %i.vx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.wa = shufflevector <8 x float> %i.vu, <8 x float> %i.vw, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.wb = shufflevector <8 x float> %i.vv, <8 x float> %i.vx, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.vy, ptr %.519273705.i, align 1, !tbaa !89
  %i.wc = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 32
  store <8 x float> %i.vz, ptr %i.wc, align 1, !tbaa !89
  br label %.sink.split.i

bb.bf:                                            ; preds = %bb.bd
  store <8 x float> %.53190.i, ptr %.519273705.i, align 1, !tbaa !89
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.519273705.i, i64 %i.l
  store <8 x float> %.53200.i, ptr %i.wd, align 1, !tbaa !89
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bf, %bb.be
  %.sink4008.i = phi i64 [ 64, %bb.be ], [ %.idx2116.i, %bb.bf ]
  %.sink4006.i = phi <8 x float> [ %i.wa, %bb.be ], [ %.53206.i, %bb.bf ]
  %.sink4005.i = phi i64 [ 96, %bb.be ], [ %.idx2117.i, %bb.bf ]
  %.sink4003.i = phi <8 x float> [ %i.wb, %bb.be ], [ %.53212.i, %bb.bf ]
  %i.we = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.sink4008.i
  store <8 x float> %.sink4006.i, ptr %i.we, align 1, !tbaa !89
  %i.wf = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.sink4005.i
  store <8 x float> %.sink4003.i, ptr %i.wf, align 1, !tbaa !89
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split.i, %bb.bd
  %i.wg = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i
  br label %.thread3416.i

bb.bh:                                            ; preds = %bb.bc
  switch i32 %i.c, label %.thread3416.i [
    i32 8, label %.thread3413.i
    i32 4, label %bb.bi
    i32 1, label %bb.bj
  ]

.thread3413.i:                                    ; preds = %bb.bh
  store <8 x float> %.53190.i, ptr %.519273705.i, align 32, !tbaa !89
  %i.wh = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 32
  store <8 x float> %.53200.i, ptr %i.wh, align 32, !tbaa !89
  %i.wi = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 64
  store <8 x float> %.53206.i, ptr %i.wi, align 32, !tbaa !89
  %i.wj = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 96
  store <8 x float> %.53212.i, ptr %i.wj, align 32, !tbaa !89
  %i.wk = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 128
  br label %.thread3416.i

bb.bi:                                            ; preds = %bb.bh
  %i.wl = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.wm = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.wn = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.wo = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.wl, ptr %.519273705.i, align 1, !tbaa !89
  %i.wp = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 32
  store <8 x float> %i.wm, ptr %i.wp, align 1, !tbaa !89
  %i.wq = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i ; 2 uses
  store <8 x float> %i.wn, ptr %i.wq, align 1, !tbaa !89
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  store <8 x float> %i.wo, ptr %i.wr, align 1, !tbaa !89
  %i.ws = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 64
  br label %.thread3416.i

bb.bj:                                            ; preds = %bb.bh
  %i.wt = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.wu = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.wv = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.ww = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.wx = shufflevector <8 x float> %i.wt, <8 x float> %i.wv, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.wy = shufflevector <8 x float> %i.wu, <8 x float> %i.ww, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.wz = shufflevector <8 x float> %i.wt, <8 x float> %i.wv, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.wz, ptr %.519273705.i, align 1, !tbaa !89
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.519273705.i, i64 %i.l
  %i.xb = shufflevector <8 x float> %i.wt, <8 x float> %i.wv, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.xb, ptr %i.xa, align 1, !tbaa !89
  %i.xc = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2116.i
  %i.xd = shufflevector <8 x float> %i.wu, <8 x float> %i.ww, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.xd, ptr %i.xc, align 1, !tbaa !89
  %i.xe = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2117.i
  %i.xf = shufflevector <8 x float> %i.wu, <8 x float> %i.ww, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.xf, ptr %i.xe, align 1, !tbaa !89
  %i.xg = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i
  %i.xh = shufflevector <8 x float> %i.wx, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.xh, ptr %i.xg, align 1, !tbaa !89
  %i.xi = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2119.i
  %i.xj = shufflevector <8 x float> %i.wx, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.xj, ptr %i.xi, align 1, !tbaa !89
  %i.xk = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2120.i
  %i.xl = shufflevector <8 x float> %i.wy, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.xl, ptr %i.xk, align 1, !tbaa !89
  %i.xm = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2121.i
  %i.xn = shufflevector <8 x float> %i.wy, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.xn, ptr %i.xm, align 1, !tbaa !89
  %i.xo = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 16
  br label %.thread3416.i

.thread3416.i:                                    ; preds = %bb.bj, %bb.bi, %.thread3413.i, %bb.bh, %bb.bg
  %.81930.i = phi ptr [ %i.wg, %bb.bg ], [ %i.xo, %bb.bj ], [ %.519273705.i, %bb.bh ], [ %i.wk, %.thread3413.i ], [ %i.ws, %bb.bi ] ; 2 uses
  %i.xp = add nuw nsw i32 %.119403704.i, 4        ; 3 uses
  %i.xq = or disjoint i32 %i.xp, 3
  %i.xr = icmp slt i32 %i.xq, %7
  br i1 %i.xr, label %.lr.ph3709.i, label %.preheader3690.i, !llvm.loop !733

.preheader3689.i:                                 ; preds = %.thread3435.i, %.preheader3690.i
  %.113054.lcssa.i = phi <8 x float> [ %.73050.lcssa.i, %.preheader3690.i ], [ %.143057.i, %.thread3435.i ]
  %.21941.lcssa.i = phi i32 [ %.11940.lcssa.i, %.preheader3690.i ], [ %i.abu, %.thread3435.i ] ; 2 uses
  %.91931.lcssa.i = phi ptr [ %.51927.lcssa.i, %.preheader3690.i ], [ %.121934.i, %.thread3435.i ]
  %.31920.lcssa.i = phi ptr [ %.21919.lcssa.i, %.preheader3690.i ], [ %i.xy, %.thread3435.i ] ; 2 uses
  %.31896.lcssa.i = phi ptr [ %.21895.lcssa.i, %.preheader3690.i ], [ %i.xx, %.thread3435.i ]
  %.12.lcssa.i = phi ptr [ %.81892.lcssa.i, %.preheader3690.i ], [ %.15.i, %.thread3435.i ] ; 2 uses
  %i.xs = icmp slt i32 %.21941.lcssa.i, %7
  br i1 %i.xs, label %.lr.ph3735.i, label %._crit_edge.i

.lr.ph3722.i:                                     ; preds = %.preheader3690.i, %.thread3435.i
  %.123721.i = phi ptr [ %.15.i, %.thread3435.i ], [ %.81892.lcssa.i, %.preheader3690.i ] ; 20 uses
  %.318963720.i = phi ptr [ %i.xx, %.thread3435.i ], [ %.21895.lcssa.i, %.preheader3690.i ] ; 2 uses
  %.319203719.i = phi ptr [ %i.xy, %.thread3435.i ], [ %.21919.lcssa.i, %.preheader3690.i ] ; 2 uses
  %.919313718.i = phi ptr [ %.121934.i, %.thread3435.i ], [ %.51927.lcssa.i, %.preheader3690.i ] ; 20 uses
  %.219413717.i = phi i32 [ %i.abu, %.thread3435.i ], [ %.11940.lcssa.i, %.preheader3690.i ]
  %.1130543716.i = phi <8 x float> [ %.143057.i, %.thread3435.i ], [ %.73050.lcssa.i, %.preheader3690.i ] ; 8 uses
  %i.xt = load <8 x i32>, ptr %.318963720.i, align 1, !tbaa !89
  %i.xu = sitofp fast <8 x i32> %i.xt to <8 x float> ; 2 uses
  %i.xv = load <8 x i32>, ptr %.319203719.i, align 1, !tbaa !89
  %i.xw = sitofp fast <8 x i32> %i.xv to <8 x float> ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.318963720.i, i64 32 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.319203719.i, i64 32 ; 2 uses
  %12 = shufflevector <8 x float> %i.xu, <8 x float> %i.xw, <8 x i32> <i32 0, i32 5, i32 2, i32 7, i32 8, i32 13, i32 10, i32 15>
  %13 = shufflevector <8 x float> %i.xu, <8 x float> %i.xw, <8 x i32> <i32 4, i32 1, i32 6, i32 3, i32 12, i32 9, i32 14, i32 11>
  %i.xz = fmul fast <8 x float> %12, %i.ct        ; 7 uses
  %i.ya = fmul fast <8 x float> %13, %i.ct        ; 7 uses
  %.not2078.i = icmp eq ptr %.123721.i, null
  br i1 %.not2078.i, label %.thread3427.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph3722.i
  br i1 %i.ah, label %.thread3418.i, label %bb.bl

.thread3418.i:                                    ; preds = %bb.bk
  %i.yb = fadd fast <8 x float> %i.xz, %.1130543716.i
  %i.yc = fadd fast <8 x float> %i.ya, %.1130543716.i
  br label %.thread3427.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %or.cond.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.yd = fadd fast <8 x float> %i.xz, %.1130543716.i
  %i.ye = fadd fast <8 x float> %i.ya, %.1130543716.i
  br label %.thread3427.i

bb.bn:                                            ; preds = %bb.bl
  switch i32 %3, label %.thread3427.i [
    i32 3, label %bb.bo
    i32 4, label %bb.bv
  ]

bb.bo:                                            ; preds = %bb.bn
  switch i32 %i.w, label %bb.br [
    i32 8, label %bb.bp
    i32 4, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.yf = load <8 x float>, ptr %.123721.i, align 1, !tbaa !89
  %i.yg = getelementptr inbounds nuw i8, ptr %.123721.i, i64 32
  %i.yh = load <8 x float>, ptr %i.yg, align 1, !tbaa !89
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.yi = load <8 x float>, ptr %.123721.i, align 1, !tbaa !89 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2107.i
  %i.yk = load <8 x float>, ptr %i.yj, align 1, !tbaa !89 ; 2 uses
  %i.yl = shufflevector <8 x float> %i.yi, <8 x float> %i.yk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ym = shufflevector <8 x float> %i.yi, <8 x float> %i.yk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %i.yn = load float, ptr %.123721.i, align 4, !tbaa !68
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.123721.i, i64 %i.u ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !68
  %i.yq = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2101.i ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !68
  %i.ys = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2102.i ; 2 uses
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !68
  %i.yu = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2107.i ; 2 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !68
  %i.yw = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2104.i ; 2 uses
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !68
  %i.yy = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2105.i ; 2 uses
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !68
  %i.za = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2106.i ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !68
  %i.zc = insertelement <8 x float> poison, float %i.yn, i64 0
  %i.zd = insertelement <8 x float> %i.zc, float %i.yp, i64 1
  %i.ze = insertelement <8 x float> %i.zd, float %i.yr, i64 2
  %i.zf = insertelement <8 x float> %i.ze, float %i.yt, i64 3
  %i.zg = insertelement <8 x float> %i.zf, float %i.yv, i64 4
  %i.zh = insertelement <8 x float> %i.zg, float %i.yx, i64 5
  %i.zi = insertelement <8 x float> %i.zh, float %i.yz, i64 6
  %i.zj = insertelement <8 x float> %i.zi, float %i.zb, i64 7
  %i.zk = getelementptr inbounds nuw i8, ptr %.123721.i, i64 4
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !68
  %i.zm = getelementptr i8, ptr %i.yo, i64 4
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !68
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !68
  %i.zq = getelementptr i8, ptr %i.ys, i64 4
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !68
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !68
  %i.zu = getelementptr i8, ptr %i.yw, i64 4
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !68
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !68
  %i.zy = getelementptr i8, ptr %i.za, i64 4
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !68
  %i.aaa = insertelement <8 x float> poison, float %i.zl, i64 0
  %i.aab = insertelement <8 x float> %i.aaa, float %i.zn, i64 1
  %i.aac = insertelement <8 x float> %i.aab, float %i.zp, i64 2
  %i.aad = insertelement <8 x float> %i.aac, float %i.zr, i64 3
  %i.aae = insertelement <8 x float> %i.aad, float %i.zt, i64 4
  %i.aaf = insertelement <8 x float> %i.aae, float %i.zv, i64 5
  %i.aag = insertelement <8 x float> %i.aaf, float %i.zx, i64 6
  %i.aah = insertelement <8 x float> %i.aag, float %i.zz, i64 7
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sink4009.i = phi i64 [ 32, %bb.bq ], [ 8, %bb.br ], [ 64, %bb.bp ]
  %.03341.i = phi nsz <8 x float> [ %i.ym, %bb.bq ], [ %i.aah, %bb.br ], [ %i.yh, %bb.bp ] ; 2 uses
  %.123055.i = phi nsz <8 x float> [ %i.yl, %bb.bq ], [ %i.zj, %bb.br ], [ %i.yf, %bb.bp ] ; 4 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.sink4009.i ; 2 uses
  br i1 %i.ao, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.aaj = fadd fast <8 x float> %.123055.i, %i.xz
  %i.aak = fadd fast <8 x float> %.03341.i, %i.ya
  br label %.thread3427.i

bb.bu:                                            ; preds = %bb.bs
  %i.aal = fmul fast <8 x float> %.123055.i, %i.am
  %i.aam = fadd fast <8 x float> %i.aal, %i.xz
  %i.aan = fmul fast <8 x float> %.03341.i, %i.am
  %i.aao = fadd fast <8 x float> %i.aan, %i.ya
  br label %.thread3427.i

bb.bv:                                            ; preds = %bb.bn
  %i.aap = load <2 x float>, ptr %.123721.i, align 4, !tbaa !68
  %i.aaq = fmul fast <2 x float> %i.aap, %i.bb    ; 2 uses
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aas = shufflevector <2 x float> %i.aaq, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aat = fadd fast <8 x float> %i.aar, %i.xz
  %i.aau = fadd fast <8 x float> %i.aas, %i.ya
  %i.aav = getelementptr inbounds nuw i8, ptr %.123721.i, i64 8
  br label %.thread3427.i

.thread3427.i:                                    ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bn, %bb.bm, %.thread3418.i, %.lr.ph3722.i
  %.43339.i = phi nsz <8 x float> [ %i.ya, %.lr.ph3722.i ], [ %i.aau, %bb.bv ], [ %i.ya, %bb.bn ], [ %i.aao, %bb.bu ], [ %i.aak, %bb.bt ], [ %i.yc, %.thread3418.i ], [ %i.ye, %bb.bm ]
  %.43333.i = phi nsz <8 x float> [ %i.xz, %.lr.ph3722.i ], [ %i.aat, %bb.bv ], [ %i.xz, %bb.bn ], [ %i.aam, %bb.bu ], [ %i.aaj, %bb.bt ], [ %i.yb, %.thread3418.i ], [ %i.yd, %bb.bm ]
  %.143057.i = phi nsz <8 x float> [ %.1130543716.i, %.lr.ph3722.i ], [ %i.aar, %bb.bv ], [ %.1130543716.i, %bb.bn ], [ %.123055.i, %bb.bu ], [ %.123055.i, %bb.bt ], [ %.1130543716.i, %.thread3418.i ], [ %.1130543716.i, %bb.bm ] ; 2 uses
  %.15.i = phi ptr [ null, %.lr.ph3722.i ], [ %i.aav, %bb.bv ], [ %.123721.i, %bb.bn ], [ %i.aai, %bb.bu ], [ %i.aai, %bb.bt ], [ %.123721.i, %.thread3418.i ], [ %.123721.i, %bb.bm ] ; 2 uses
  %.53340.i = fmul reassoc nnan nsz arcp contract afn <8 x float> %.43339.i, %i.av ; 12 uses
  %.53334.i = fmul reassoc nnan nsz arcp contract afn <8 x float> %.43333.i, %i.av ; 12 uses
  br i1 %.not2061.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.thread3427.i
  store <8 x float> %.53334.i, ptr %.919313718.i, align 1, !tbaa !89
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.919313718.i, i64 %i.l
  store <8 x float> %.53340.i, ptr %i.aaw, align 1, !tbaa !89
  %i.aax = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2116.i
  br label %.thread3435.i

bb.bx:                                            ; preds = %.thread3427.i
  switch i32 %i.c, label %.thread3435.i [
    i32 8, label %.thread3432.i
    i32 4, label %bb.by
    i32 1, label %bb.bz
  ]

.thread3432.i:                                    ; preds = %bb.bx
  store <8 x float> %.53334.i, ptr %.919313718.i, align 1, !tbaa !89
  %i.aay = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 32
  store <8 x float> %.53340.i, ptr %i.aay, align 1, !tbaa !89
  %i.aaz = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 64
  br label %.thread3435.i

bb.by:                                            ; preds = %bb.bx
  %i.aba = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abb = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.aba, ptr %.919313718.i, align 1, !tbaa !89
  %i.abc = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2118.i
  store <8 x float> %i.abb, ptr %i.abc, align 1, !tbaa !89
  %i.abd = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 32
  br label %.thread3435.i

bb.bz:                                            ; preds = %bb.bx
  %.sroa.02648.0.vec.extract.i = extractelement <8 x float> %.53334.i, i64 0
  store float %.sroa.02648.0.vec.extract.i, ptr %.919313718.i, align 4, !tbaa !68
  %.sroa.11.32.vec.extract.i = extractelement <8 x float> %.53340.i, i64 0
  %i.abe = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 4
  store float %.sroa.11.32.vec.extract.i, ptr %i.abe, align 4, !tbaa !68
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.919313718.i, i64 %i.l
  %i.abg = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 1, i32 9>
  store <2 x float> %i.abg, ptr %i.abf, align 4, !tbaa !68
  %i.abh = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2116.i
  %i.abi = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 2, i32 10>
  store <2 x float> %i.abi, ptr %i.abh, align 4, !tbaa !68
  %i.abj = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2117.i
  %i.abk = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 3, i32 11>
  store <2 x float> %i.abk, ptr %i.abj, align 4, !tbaa !68
  %.sroa.02648.16.vec.extract.i = extractelement <8 x float> %.53334.i, i64 4
  %i.abl = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2118.i ; 2 uses
  store float %.sroa.02648.16.vec.extract.i, ptr %i.abl, align 4, !tbaa !68
  %.sroa.11.48.vec.extract.i = extractelement <8 x float> %.53340.i, i64 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  store float %.sroa.11.48.vec.extract.i, ptr %i.abm, align 4, !tbaa !68
  %i.abn = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2119.i
  %i.abo = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 5, i32 13>
  store <2 x float> %i.abo, ptr %i.abn, align 4, !tbaa !68
  %i.abp = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2120.i
  %i.abq = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 6, i32 14>
  store <2 x float> %i.abq, ptr %i.abp, align 4, !tbaa !68
  %i.abr = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2121.i
  %i.abs = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 7, i32 15>
  store <2 x float> %i.abs, ptr %i.abr, align 4, !tbaa !68
  %i.abt = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 8
  br label %.thread3435.i

.thread3435.i:                                    ; preds = %bb.bz, %bb.by, %.thread3432.i, %bb.bx, %bb.bw
  %.121934.i = phi ptr [ %i.aax, %bb.bw ], [ %i.abt, %bb.bz ], [ %.919313718.i, %bb.bx ], [ %i.aaz, %.thread3432.i ], [ %i.abd, %bb.by ] ; 2 uses
  %i.abu = add nuw nsw i32 %.219413717.i, 2       ; 3 uses
  %i.abv = or disjoint i32 %i.abu, 1
end_hunk_0
begin_hunk_1_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  switch i32 %i.c, label %bb.ft [
    i32 4, label %.thread3548.i
    i32 1, label %bb.fs
  ]

.thread3548.i:                                    ; preds = %bb.fr
  store <4 x float> %i.ayz, ptr %.1019713783.i, align 16, !tbaa !89
  %i.azb = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 16
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %.sroa.02268.0.vec.extract.i = extractelement <4 x float> %i.ayz, i64 0
  store float %.sroa.02268.0.vec.extract.i, ptr %.1019713783.i, align 4, !tbaa !68
  %.sroa.02268.4.vec.extract.i = extractelement <4 x float> %i.ayz, i64 1
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  store float %.sroa.02268.4.vec.extract.i, ptr %i.azc, align 4, !tbaa !68
  %.sroa.02268.8.vec.extract.i = extractelement <4 x float> %i.ayz, i64 2
  %i.azd = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2054.i
  store float %.sroa.02268.8.vec.extract.i, ptr %i.azd, align 4, !tbaa !68
  %.sroa.02268.12.vec.extract.i = extractelement <4 x float> %i.ayz, i64 3
  %i.aze = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2055.i
  store float %.sroa.02268.12.vec.extract.i, ptr %i.aze, align 4, !tbaa !68
  %i.azf = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 4
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.thread3548.i, %bb.fr, %bb.fq
  %.121973.i = phi ptr [ %i.aza, %bb.fq ], [ %i.azf, %bb.fs ], [ %.1019713783.i, %bb.fr ], [ %i.azb, %.thread3548.i ]
  %i.azg = getelementptr inbounds nuw i8, ptr %.919023784.i, i64 16 ; 2 uses
  %i.azh = add nuw nsw i32 %.319773782.i, 1       ; 2 uses
  %exitcond3927.not.i = icmp eq i32 %i.azh, %7
  br i1 %exitcond3927.not.i, label %._crit_edge3787.i, label %.lr.ph3786.i, !llvm.loop !740

._crit_edge3787.i:                                ; preds = %bb.ft, %.preheader3685.i
  %.91902.lcssa.i = phi ptr [ %.81901.lcssa.i, %.preheader3685.i ], [ %i.azg, %bb.ft ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader3685.i ], [ %.39.i, %bb.ft ] ; 2 uses
  %indvars.iv.next3929.i = add nuw nsw i64 %indvars.iv3928.i, 4 ; 3 uses
  %i.azi = icmp slt i64 %indvars.iv.next3929.i, %invariant.op4000.i
  br i1 %i.azi, label %bb.co, label %.preheader3684.loopexit.i, !llvm.loop !741

.preheader3680.loopexit.i:                        ; preds = %._crit_edge3835.i
  %i.azj = trunc nuw nsw i64 %indvars.iv.next3933.i to i32
  br label %.preheader3680.i

.preheader3680.i:                                 ; preds = %.preheader3680.loopexit.i, %.preheader3684.i
  %.21915.lcssa.i = phi i32 [ %.11914.lcssa.i, %.preheader3684.i ], [ %i.azj, %.preheader3680.loopexit.i ] ; 2 uses
  %.101903.lcssa.i = phi ptr [ %.51898.lcssa.i, %.preheader3684.i ], [ %.141907.lcssa.i, %.preheader3680.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader3684.i ], [ %.53.lcssa.i, %.preheader3680.loopexit.i ]
  %i.azk = icmp slt i32 %.21915.lcssa.i, %5
  br i1 %i.azk, label %.lr.ph3887.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph3887.i:                                     ; preds = %.preheader3680.i
  %.not2002.i = icmp eq i32 %11, 0                ; 5 uses
  %i.azl = sext i32 %6 to i64                     ; 4 uses
  %i.azm = mul i64 %i.l, %i.azl
  %i.azn = icmp eq i32 %3, 0
  %i.azo = add i32 %3, -1
  %or.cond31.i = icmp ult i32 %i.azo, 2
  %i.azp = sext i32 %4 to i64                     ; 3 uses
  %i.azq = icmp sgt i32 %7, 7
  %or.cond35.i = icmp ult i32 %3, 3               ; 4 uses
  %i.azr = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.azr, 2           ; 4 uses
  %i.azs = insertelement <4 x float> poison, float %10, i64 0
  %i.azt = shufflevector <4 x float> %i.azs, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.azu = fcmp fast une float %9, 1.000000e+00
  %i.azv = insertelement <4 x float> poison, float %9, i64 0
  %i.azw = shufflevector <4 x float> %i.azv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azx = select ninf nsz i1 %i.azu, <4 x float> %i.azw, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.azy = icmp eq i64 %i.l, 1                    ; 2 uses
  %.idx2012.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx2013.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx2014.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx2015.i = mul i64 %i.l, 20
  %.idx2016.i = mul i64 %i.l, 24
  %.idx2017.i = mul i64 %i.l, 28
  %.idx2018.i = shl i64 %i.l, 5                   ; 4 uses
  %i.azz = and i32 %7, -8
  %i.baa = sext i32 %.21915.lcssa.i to i64
  %i.bab = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.bac = insertelement <2 x float> poison, float %10, i64 0
  %i.bad = shufflevector <2 x float> %i.bac, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hs

bb.fu:                                            ; preds = %._crit_edge3835.i, %.lr.ph3842.i
  %indvars.iv3932.i = phi i64 [ %i.afb, %.lr.ph3842.i ], [ %indvars.iv.next3933.i, %._crit_edge3835.i ] ; 4 uses
  %.403841.i = phi ptr [ %.20.lcssa.i, %.lr.ph3842.i ], [ %.53.lcssa.i, %._crit_edge3835.i ] ; 4 uses
  %.1019033840.i = phi ptr [ %.51898.lcssa.i, %.lr.ph3842.i ], [ %.141907.lcssa.i, %._crit_edge3835.i ] ; 2 uses
  %i.bae = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2019.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.bae, i64 %i.aen
  %i.bag = add nsw i64 %indvars.iv3932.i, %i.aes  ; 2 uses
  %i.bah = mul nsw i64 %i.bag, %i.afd
  %i.bai = getelementptr inbounds [4 x i8], ptr %i.baf, i64 %i.bah
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %i.baj = add nsw i64 %indvars.iv3932.i, %i.aes  ; 2 uses
  %i.bak = mul i64 %i.baj, %i.l
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.bae, i64 %i.bak
  %i.bam = getelementptr inbounds [4 x i8], ptr %i.bal, i64 %i.aem
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pre-phi.i = phi i64 [ %i.baj, %bb.fw ], [ %i.bag, %bb.fv ] ; 2 uses
  %.01952.i = phi ptr [ %i.bam, %bb.fw ], [ %i.bai, %bb.fv ] ; 2 uses
  %i.ban = load ptr, ptr %8, align 8, !tbaa !24
  %i.bao = getelementptr [4 x i8], ptr %i.ban, i64 %.pre-phi.i
  %i.bap = load <2 x float>, ptr %i.bao, align 4, !tbaa !68 ; 4 uses
  %i.baq = shufflevector <2 x float> %i.bap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bar = shufflevector <2 x float> %i.bap, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bas = shufflevector <2 x float> %i.bap, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not2020.i = icmp eq ptr %.403841.i, null
  br i1 %.not2020.i, label %.thread3566.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.afh, label %.thread3550.i, label %bb.fz

.thread3550.i:                                    ; preds = %bb.fy
  %i.bat = load float, ptr %.403841.i, align 4, !tbaa !68
  %i.bau = fmul fast float %i.bat, %10            ; 3 uses
  %i.bav = insertelement <4 x float> poison, float %i.bau, i64 0
  %i.baw = shufflevector <4 x float> %i.bav, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bax = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bau, i64 0
  br label %.thread3566.i

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.afi, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bay = load ptr, ptr %1, align 8, !tbaa !24
  %i.baz = getelementptr inbounds [4 x i8], ptr %i.bay, i64 %i.aes
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.baz, i64 %indvars.iv3932.i ; 2 uses
  %i.bbb = load <2 x float>, ptr %i.bba, align 4, !tbaa !68
  %i.bbc = fmul fast <2 x float> %i.bbb, %i.afg   ; 4 uses
  %i.bbd = extractelement <2 x float> %i.bbc, i64 0
  %i.bbe = shufflevector <2 x float> %i.bbc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bbf = shufflevector <2 x float> %i.bbc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread3566.i

bb.gb:                                            ; preds = %bb.fz
  switch i32 %3, label %.thread3566.i [
    i32 3, label %bb.gc
    i32 4, label %bb.gd
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.bbg = load ptr, ptr %1, align 8, !tbaa !24
  %i.bbh = mul i64 %.pre-phi.i, %i.u
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.bbh
  %i.bbj = getelementptr inbounds [4 x i8], ptr %i.bbi, i64 %i.aem
  br label %.thread3566.i

bb.gd:                                            ; preds = %bb.gb
  %i.bbk = load ptr, ptr %1, align 8, !tbaa !24
  %i.bbl = getelementptr inbounds [4 x i8], ptr %i.bbk, i64 %i.aem
  br label %.thread3566.i

.thread3566.i:                                    ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.ga, %.thread3550.i, %bb.fx
  %.23177.i = phi nsz <4 x float> [ zeroinitializer, %bb.fx ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %bb.gb ], [ zeroinitializer, %bb.gc ], [ %i.baw, %.thread3550.i ], [ %i.bbe, %bb.ga ] ; 2 uses
  %.13168.i = phi nsz <4 x float> [ zeroinitializer, %bb.fx ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %bb.gb ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %.thread3550.i ], [ %i.bbf, %bb.ga ] ; 2 uses
  %.21951.i = phi nsz float [ 0.000000e+00, %bb.fx ], [ 0.000000e+00, %bb.gd ], [ 0.000000e+00, %bb.gb ], [ 0.000000e+00, %bb.gc ], [ %i.bau, %.thread3550.i ], [ %i.bbd, %bb.ga ]
  %.43.i = phi ptr [ null, %bb.fx ], [ %i.bbl, %bb.gd ], [ %.403841.i, %bb.gb ], [ %i.bbj, %bb.gc ], [ %.403841.i, %.thread3550.i ], [ %i.bba, %bb.ga ] ; 2 uses
  %i.bbm = phi <2 x float> [ zeroinitializer, %bb.fx ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %bb.gb ], [ zeroinitializer, %bb.gc ], [ %i.bax, %.thread3550.i ], [ %i.bbc, %bb.ga ] ; 3 uses
  %i.bbn = shufflevector <2 x float> %i.bbm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.aet, label %.lr.ph3803.i, label %.preheader3683.i

.preheader3683.i:                                 ; preds = %bb.gt, %.thread3566.i
  %.33178.lcssa.i = phi <4 x float> [ %.23177.i, %.thread3566.i ], [ %.53180.i, %bb.gt ]
  %.23169.lcssa.i = phi <4 x float> [ %.13168.i, %.thread3566.i ], [ %.43171.i, %bb.gt ]
  %.11953.lcssa.i = phi ptr [ %.01952.i, %.thread3566.i ], [ %i.bep, %bb.gt ] ; 2 uses
  %.01943.lcssa.i = phi i32 [ 0, %.thread3566.i ], [ %i.afa, %bb.gt ] ; 3 uses
  %.111904.lcssa.i = phi ptr [ %.1019033840.i, %.thread3566.i ], [ %i.beq, %bb.gt ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread3566.i ], [ %.46.i, %bb.gt ] ; 2 uses
  %i.bbo = or disjoint i32 %.01943.lcssa.i, 3
  %i.bbp = icmp slt i32 %i.bbo, %7
  br i1 %i.bbp, label %.lr.ph3816.i, label %.preheader3682.i

.lr.ph3803.i:                                     ; preds = %.thread3566.i, %bb.gt
  %.443802.i = phi ptr [ %.46.i, %bb.gt ], [ %.43.i, %.thread3566.i ] ; 11 uses
  %.1119043801.i = phi ptr [ %i.beq, %bb.gt ], [ %.1019033840.i, %.thread3566.i ] ; 5 uses
  %.019433800.i = phi i32 [ %i.ber, %bb.gt ], [ 0, %.thread3566.i ]
  %.119533799.i = phi ptr [ %i.bep, %bb.gt ], [ %.01952.i, %.thread3566.i ] ; 20 uses
  %.231693798.i = phi <4 x float> [ %.43171.i, %bb.gt ], [ %.13168.i, %.thread3566.i ] ; 6 uses
  %.331783797.i = phi <4 x float> [ %.53180.i, %bb.gt ], [ %.23177.i, %.thread3566.i ] ; 10 uses
  %i.bbq = load <4 x i32>, ptr %.1119043801.i, align 16, !tbaa !89
  %i.bbr = sitofp fast <4 x i32> %i.bbq to <4 x float> ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 16
  %i.bbt = load <4 x i32>, ptr %i.bbs, align 16, !tbaa !89
  %i.bbu = sitofp fast <4 x i32> %i.bbt to <4 x float> ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 32
  %i.bbw = load <4 x i32>, ptr %i.bbv, align 16, !tbaa !89
  %i.bbx = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 48
  %i.bby = load <4 x i32>, ptr %i.bbx, align 16, !tbaa !89
  %i.bbz = sitofp <4 x i32> %i.bbw to <4 x float>
  %i.bca = shufflevector <4 x float> %i.bbz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bcb = sitofp <4 x i32> %i.bby to <4 x float>
  %i.bcc = shufflevector <4 x float> %i.bcb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %14 = shufflevector <4 x float> %i.bbr, <4 x float> %i.bca, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %15 = shufflevector <4 x float> %i.bbu, <4 x float> %i.bcc, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %16 = shufflevector <4 x float> %i.bbr, <4 x float> %i.bca, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %17 = shufflevector <4 x float> %i.bbu, <4 x float> %i.bcc, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bcd = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bce = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bcf = fmul fast <4 x float> %i.bar, %14      ; 6 uses
  %i.bcg = fmul fast <4 x float> %i.bar, %15      ; 6 uses
  %i.bch = fmul fast <4 x float> %i.bcd, %i.bas   ; 6 uses
  %i.bci = fmul fast <4 x float> %i.bce, %i.bas   ; 6 uses
  %.not2026.i = icmp eq ptr %.443802.i, null
  br i1 %.not2026.i, label %.thread3585.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph3803.i
  br i1 %i.afh, label %.thread3572.i, label %bb.gf

.thread3572.i:                                    ; preds = %bb.ge
  %i.bcj = fadd fast <4 x float> %i.bcf, %.331783797.i
  %i.bck = fadd fast <4 x float> %i.bcg, %.331783797.i
  %i.bcl = fadd fast <4 x float> %i.bch, %.331783797.i
  %i.bcm = fadd fast <4 x float> %i.bci, %.331783797.i
  br label %.thread3585.i

bb.gf:                                            ; preds = %bb.ge
  br i1 %i.afi, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.bcn = fadd fast <4 x float> %i.bcf, %.331783797.i
  %i.bco = fadd fast <4 x float> %i.bcg, %.331783797.i
  %i.bcp = fadd fast <4 x float> %i.bch, %.231693798.i
  %i.bcq = fadd fast <4 x float> %i.bci, %.231693798.i
  br label %.thread3585.i

bb.gh:                                            ; preds = %bb.gf
  switch i32 %3, label %.thread3585.i [
    i32 3, label %bb.gi
    i32 4, label %bb.gl
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.bcr = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89 ; 3 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bct = load <4 x float>, ptr %i.bcs, align 1, !tbaa !89 ; 3 uses
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.443802.i, i64 %i.u ; 2 uses
  %i.bcv = load <4 x float>, ptr %i.bcu, align 1, !tbaa !89 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcu, i64 16
  %i.bcx = load <4 x float>, ptr %i.bcw, align 1, !tbaa !89 ; 2 uses
  br i1 %i.aew, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bcy = fmul fast <4 x float> %i.bcr, %i.aev
  %i.bcz = fmul fast <4 x float> %i.bct, %i.aev
  %i.bda = fmul fast <4 x float> %i.bcv, %i.aev
  %i.bdb = fmul fast <4 x float> %i.bcx, %i.aev
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.pn.i = phi <4 x float> [ %i.bcy, %bb.gj ], [ %i.bcr, %bb.gi ]
  %.pn3888.i = phi <4 x float> [ %i.bcz, %bb.gj ], [ %i.bct, %bb.gi ]
  %.pn3889.i = phi <4 x float> [ %i.bda, %bb.gj ], [ %i.bcv, %bb.gi ]
  %.pn3890.i = phi <4 x float> [ %i.bdb, %bb.gj ], [ %i.bcx, %bb.gi ]
  %.23145.i = fadd fast <4 x float> %.pn3890.i, %i.bci
  %.23151.i = fadd fast <4 x float> %.pn3889.i, %i.bch
  %.23157.i = fadd fast <4 x float> %.pn3888.i, %i.bcg
  %.23163.i = fadd fast <4 x float> %.pn.i, %i.bcf
  %i.bdc = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

bb.gl:                                            ; preds = %bb.gh
  %i.bdd = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89
  %i.bde = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bdf = load <4 x float>, ptr %i.bde, align 1, !tbaa !89
  %i.bdg = fmul fast <4 x float> %i.bdd, %i.aev   ; 3 uses
  %i.bdh = fmul fast <4 x float> %i.bdf, %i.aev   ; 3 uses
  %i.bdi = fadd fast <4 x float> %i.bdg, %i.bcf
  %i.bdj = fadd fast <4 x float> %i.bdh, %i.bcg
  %i.bdk = fadd fast <4 x float> %i.bdg, %i.bch
  %i.bdl = fadd fast <4 x float> %i.bdh, %i.bci
  %i.bdm = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

.thread3585.i:                                    ; preds = %bb.gl, %bb.gk, %bb.gh, %bb.gg, %.thread3572.i, %.lr.ph3803.i
  %.53180.i = phi nsz <4 x float> [ %.331783797.i, %.lr.ph3803.i ], [ %i.bdg, %bb.gl ], [ %.331783797.i, %bb.gh ], [ %i.bcr, %bb.gk ], [ %.331783797.i, %.thread3572.i ], [ %.331783797.i, %bb.gg ] ; 2 uses
  %.43171.i = phi nsz <4 x float> [ %.231693798.i, %.lr.ph3803.i ], [ %i.bdh, %bb.gl ], [ %.231693798.i, %bb.gh ], [ %i.bct, %bb.gk ], [ %.231693798.i, %.thread3572.i ], [ %.231693798.i, %bb.gg ] ; 2 uses
  %.43165.i = phi nsz <4 x float> [ %i.bcf, %.lr.ph3803.i ], [ %i.bdi, %bb.gl ], [ %i.bcf, %bb.gh ], [ %.23163.i, %bb.gk ], [ %i.bcj, %.thread3572.i ], [ %i.bcn, %bb.gg ] ; 2 uses
  %.43159.i = phi nsz <4 x float> [ %i.bcg, %.lr.ph3803.i ], [ %i.bdj, %bb.gl ], [ %i.bcg, %bb.gh ], [ %.23157.i, %bb.gk ], [ %i.bck, %.thread3572.i ], [ %i.bco, %bb.gg ] ; 2 uses
  %.43153.i = phi nsz <4 x float> [ %i.bch, %.lr.ph3803.i ], [ %i.bdk, %bb.gl ], [ %i.bch, %bb.gh ], [ %.23151.i, %bb.gk ], [ %i.bcl, %.thread3572.i ], [ %i.bcp, %bb.gg ] ; 2 uses
  %.43147.i = phi nsz <4 x float> [ %i.bci, %.lr.ph3803.i ], [ %i.bdl, %bb.gl ], [ %i.bci, %bb.gh ], [ %.23145.i, %bb.gk ], [ %i.bcm, %.thread3572.i ], [ %i.bcq, %bb.gg ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph3803.i ], [ %i.bdm, %bb.gl ], [ %.443802.i, %bb.gh ], [ %i.bdc, %bb.gk ], [ %.443802.i, %.thread3572.i ], [ %.443802.i, %bb.gg ] ; 2 uses
  br i1 %i.aex, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.thread3585.i
  %i.bdn = fmul fast <4 x float> %.43165.i, %i.aez
  %i.bdo = fmul fast <4 x float> %.43159.i, %i.aez
  %i.bdp = fmul fast <4 x float> %.43153.i, %i.aez
  %i.bdq = fmul fast <4 x float> %.43147.i, %i.aez
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.thread3585.i
  %.53166.i = phi nsz <4 x float> [ %i.bdn, %bb.gm ], [ %.43165.i, %.thread3585.i ] ; 7 uses
  %.53160.i = phi nsz <4 x float> [ %i.bdo, %bb.gm ], [ %.43159.i, %.thread3585.i ] ; 7 uses
  %.53154.i = phi nsz <4 x float> [ %i.bdp, %bb.gm ], [ %.43153.i, %.thread3585.i ] ; 7 uses
  %.53148.i = phi nsz <4 x float> [ %i.bdq, %bb.gm ], [ %.43147.i, %.thread3585.i ] ; 7 uses
  br i1 %.not2019.i, label %bb.gs, label %bb.go

bb.go:                                            ; preds = %bb.gn
  switch i32 %i.c, label %bb.gt [
    i32 8, label %bb.gp
    i32 4, label %bb.gq
    i32 1, label %bb.gr
  ]

bb.gp:                                            ; preds = %bb.go
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bdr = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bdr, align 16, !tbaa !89
  %i.bds = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 32
  store <4 x float> %.53154.i, ptr %i.bds, align 16, !tbaa !89
  %i.bdt = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 48
  store <4 x float> %.53148.i, ptr %i.bdt, align 16, !tbaa !89
  br label %bb.gt

bb.gq:                                            ; preds = %bb.go
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bdu = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53154.i, ptr %i.bdu, align 16, !tbaa !89
  %i.bdv = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store <4 x float> %.53160.i, ptr %i.bdv, align 16, !tbaa !89
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 16
  store <4 x float> %.53148.i, ptr %i.bdw, align 16, !tbaa !89
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  %.sroa.02178.0.vec.extract.i = extractelement <4 x float> %.53166.i, i64 0
  store float %.sroa.02178.0.vec.extract.i, ptr %.119533799.i, align 4, !tbaa !68
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.53154.i, i64 0
  %i.bdx = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.bdx, align 4, !tbaa !68
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l
  %i.bdz = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdz, ptr %i.bdy, align 4, !tbaa !68
  %i.bea = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3656.i
  %i.beb = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.beb, ptr %i.bea, align 4, !tbaa !68
  %i.bec = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3657.i
  %i.bed = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bed, ptr %i.bec, align 4, !tbaa !68
  %.sroa.72179.16.vec.extract.i = extractelement <4 x float> %.53160.i, i64 0
  %i.bee = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store float %.sroa.72179.16.vec.extract.i, ptr %i.bee, align 4, !tbaa !68
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.53148.i, i64 0
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bef, align 4, !tbaa !68
  %i.beg = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3659.i
  %i.beh = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.beh, ptr %i.beg, align 4, !tbaa !68
  %i.bei = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3660.i
  %i.bej = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bej, ptr %i.bei, align 4, !tbaa !68
  %i.bek = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3661.i
  %i.bel = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bel, ptr %i.bek, align 4, !tbaa !68
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gn
  store <4 x float> %.53166.i, ptr %.119533799.i, align 1, !tbaa !89
  %i.bem = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bem, align 1, !tbaa !89
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l ; 2 uses
  store <4 x float> %.53154.i, ptr %i.ben, align 1, !tbaa !89
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 16
  store <4 x float> %.53148.i, ptr %i.beo, align 1, !tbaa !89
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go
  %.sink4015.i = phi i64 [ 32, %bb.gs ], [ %.idx2028.i, %bb.gq ], [ %.idx2028.i, %bb.gp ], [ %.idx2028.i, %bb.go ], [ %.idx2028.i, %bb.gr ]
  %i.bep = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.sink4015.i ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 64 ; 2 uses
  %i.ber = add nuw nsw i32 %.019433800.i, 8       ; 2 uses
  %i.bes = or disjoint i32 %i.ber, 7
  %i.bet = icmp slt i32 %i.bes, %7
  br i1 %i.bet, label %.lr.ph3803.i, label %.preheader3683.i, !llvm.loop !742

.preheader3682.i:                                 ; preds = %bb.he, %.preheader3683.i
  %.31955.lcssa.i = phi ptr [ %.11953.lcssa.i, %.preheader3683.i ], [ %i.bgd, %bb.he ] ; 2 uses
  %.11944.lcssa.i = phi i32 [ %.01943.lcssa.i, %.preheader3683.i ], [ %i.bgf, %bb.he ] ; 3 uses
  %.121905.lcssa.i = phi ptr [ %.111904.lcssa.i, %.preheader3683.i ], [ %i.bge, %bb.he ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader3683.i ], [ %.49.i, %bb.he ] ; 2 uses
  %i.beu = or disjoint i32 %.11944.lcssa.i, 1
  %i.bev = icmp slt i32 %i.beu, %7
  br i1 %i.bev, label %.lr.ph3825.i.preheader, label %.preheader3681.i

.lr.ph3825.i.preheader:                           ; preds = %.preheader3682.i
  %i.bew = shufflevector <2 x float> %i.bbm, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3825.i

.lr.ph3816.i:                                     ; preds = %.preheader3683.i, %bb.he
  %.473815.i = phi ptr [ %.49.i, %bb.he ], [ %.44.lcssa.i, %.preheader3683.i ] ; 9 uses
  %.1219053814.i = phi ptr [ %i.bge, %bb.he ], [ %.111904.lcssa.i, %.preheader3683.i ] ; 3 uses
  %.119443813.i = phi i32 [ %i.bgf, %bb.he ], [ %.01943.lcssa.i, %.preheader3683.i ]
  %.319553812.i = phi ptr [ %i.bgd, %bb.he ], [ %.11953.lcssa.i, %.preheader3683.i ] ; 10 uses
  %.531723811.i = phi <4 x float> [ %.73174.i, %bb.he ], [ %.23169.lcssa.i, %.preheader3683.i ] ; 6 uses
  %.631813810.i = phi <4 x float> [ %.83183.i, %bb.he ], [ %.33178.lcssa.i, %.preheader3683.i ] ; 7 uses
  %i.bex = load <4 x i32>, ptr %.1219053814.i, align 16, !tbaa !89
  %i.bey = sitofp fast <4 x i32> %i.bex to <4 x float> ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 16
  %i.bfa = load <4 x i32>, ptr %i.bez, align 16, !tbaa !89
  %i.bfb = sitofp fast <4 x i32> %i.bfa to <4 x float> ; 2 uses
  %18 = shufflevector <4 x float> %i.bey, <4 x float> %i.bfb, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %19 = shufflevector <4 x float> %i.bey, <4 x float> %i.bfb, <4 x i32> <i32 3, i32 7, i32 1, i32 5>
  %i.bfc = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bfd = fmul fast <4 x float> %i.bar, %18      ; 6 uses
  %i.bfe = fmul fast <4 x float> %i.bfc, %i.bas   ; 6 uses
  %.not2024.i = icmp eq ptr %.473815.i, null
  br i1 %.not2024.i, label %.thread3602.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph3816.i
  br i1 %i.afh, label %.thread3593.i, label %bb.gv

.thread3593.i:                                    ; preds = %bb.gu
  %i.bff = fadd fast <4 x float> %i.bfd, %.631813810.i
  %i.bfg = fadd fast <4 x float> %i.bfe, %.631813810.i
  br label %.thread3602.i

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.afi, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.bfh = fadd fast <4 x float> %i.bfd, %.631813810.i
  %i.bfi = fadd fast <4 x float> %i.bfe, %.531723811.i
  br label %.thread3602.i

bb.gx:                                            ; preds = %bb.gv
  switch i32 %3, label %.thread3602.i [
    i32 3, label %bb.gy
    i32 4, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.bfj = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89 ; 3 uses
  %i.bfk = getelementptr inbounds nuw [4 x i8], ptr %.473815.i, i64 %i.u
  %i.bfl = load <4 x float>, ptr %i.bfk, align 1, !tbaa !89 ; 3 uses
  %i.bfm = fmul fast <4 x float> %i.bfj, %i.aev
  %i.bfn = fmul fast <4 x float> %i.bfl, %i.aev
  %.pn3891.i = select i1 %i.aew, <4 x float> %i.bfj, <4 x float> %i.bfm
  %.pn3892.i = select i1 %i.aew, <4 x float> %i.bfl, <4 x float> %i.bfn
  %.23128.i = fadd fast <4 x float> %.pn3892.i, %i.bfe
  %.23134.i = fadd fast <4 x float> %.pn3891.i, %i.bfd
  %i.bfo = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

bb.gz:                                            ; preds = %bb.gx
  %i.bfp = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89
  %i.bfq = fmul fast <4 x float> %i.bfp, %i.aev   ; 3 uses
  %i.bfr = fadd fast <4 x float> %i.bfq, %i.bfd
  %i.bfs = fadd fast <4 x float> %i.bfq, %i.bfe
  %i.bft = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

.thread3602.i:                                    ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gw, %.thread3593.i, %.lr.ph3816.i
  %.83183.i = phi nsz <4 x float> [ %.631813810.i, %.lr.ph3816.i ], [ %i.bfq, %bb.gz ], [ %.631813810.i, %bb.gx ], [ %i.bfj, %bb.gy ], [ %.631813810.i, %.thread3593.i ], [ %.631813810.i, %bb.gw ]
  %.73174.i = phi nsz <4 x float> [ %.531723811.i, %.lr.ph3816.i ], [ %.531723811.i, %bb.gz ], [ %.531723811.i, %bb.gx ], [ %i.bfl, %bb.gy ], [ %.531723811.i, %.thread3593.i ], [ %.531723811.i, %bb.gw ]
  %.43136.i = phi nsz <4 x float> [ %i.bfd, %.lr.ph3816.i ], [ %i.bfr, %bb.gz ], [ %i.bfd, %bb.gx ], [ %.23134.i, %bb.gy ], [ %i.bff, %.thread3593.i ], [ %i.bfh, %bb.gw ]
  %.43130.i = phi nsz <4 x float> [ %i.bfe, %.lr.ph3816.i ], [ %i.bfs, %bb.gz ], [ %i.bfe, %bb.gx ], [ %.23128.i, %bb.gy ], [ %i.bfg, %.thread3593.i ], [ %i.bfi, %bb.gw ]
  %.49.i = phi ptr [ null, %.lr.ph3816.i ], [ %i.bft, %bb.gz ], [ %.473815.i, %bb.gx ], [ %i.bfo, %bb.gy ], [ %.473815.i, %.thread3593.i ], [ %.473815.i, %bb.gw ] ; 2 uses
  %.53137.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.43136.i, %i.afe ; 6 uses
  %.53131.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.43130.i, %i.afe ; 6 uses
  br i1 %.not2019.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %.thread3602.i
  switch i32 %i.c, label %bb.he [
    i32 4, label %bb.hb
    i32 1, label %bb.hc
  ]

bb.hb:                                            ; preds = %bb.ha
  store <4 x float> %.53137.i, ptr %.319553812.i, align 16, !tbaa !89
  %i.bfu = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 16
  store <4 x float> %.53131.i, ptr %i.bfu, align 16, !tbaa !89
  br label %bb.he

bb.hc:                                            ; preds = %bb.ha
  %.sroa.02151.0.vec.extract.i = extractelement <4 x float> %.53137.i, i64 0
  store float %.sroa.02151.0.vec.extract.i, ptr %.319553812.i, align 4, !tbaa !68
  %.sroa.72152.16.vec.extract.i = extractelement <4 x float> %.53131.i, i64 0
  %i.bfv = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 4
  store float %.sroa.72152.16.vec.extract.i, ptr %i.bfv, align 4, !tbaa !68
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  %i.bfx = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bfx, ptr %i.bfw, align 4, !tbaa !68
  %i.bfy = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3656.i
  %i.bfz = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bfz, ptr %i.bfy, align 4, !tbaa !68
  %i.bga = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3657.i
  %i.bgb = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bgb, ptr %i.bga, align 4, !tbaa !68
  br label %bb.he

bb.hd:                                            ; preds = %.thread3602.i
  store <4 x float> %.53137.i, ptr %.319553812.i, align 1, !tbaa !89
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  store <4 x float> %.53131.i, ptr %i.bgc, align 1, !tbaa !89
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.ha
  %.sink4016.i = phi i64 [ 16, %bb.hd ], [ %.idx3658.i, %bb.hb ], [ %.idx3658.i, %bb.ha ], [ %.idx3658.i, %bb.hc ]
  %i.bgd = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.sink4016.i ; 2 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 32 ; 2 uses
  %i.bgf = add nuw nsw i32 %.119443813.i, 4       ; 3 uses
  %i.bgg = or disjoint i32 %i.bgf, 3
  %i.bgh = icmp slt i32 %i.bgg, %7
  br i1 %i.bgh, label %.lr.ph3816.i, label %.preheader3682.i, !llvm.loop !743

.preheader3681.i:                                 ; preds = %.thread3621.i, %.preheader3682.i
  %.51957.lcssa.i = phi ptr [ %.31955.lcssa.i, %.preheader3682.i ], [ %i.bht, %.thread3621.i ]
  %.21945.lcssa.i = phi i32 [ %.11944.lcssa.i, %.preheader3682.i ], [ %i.bhv, %.thread3621.i ] ; 2 uses
  %.131906.lcssa.i = phi ptr [ %.121905.lcssa.i, %.preheader3682.i ], [ %i.bhu, %.thread3621.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader3682.i ], [ %.52.i, %.thread3621.i ] ; 2 uses
  %i.bgi = icmp slt i32 %.21945.lcssa.i, %7
  br i1 %i.bgi, label %.lr.ph3834.i, label %._crit_edge3835.i

.lr.ph3834.i:                                     ; preds = %.preheader3681.i
  %i.bgj = select <2 x i1> %i.aer, <2 x float> %i.bbm, <2 x float> zeroinitializer ; 2 uses
  %i.bgk = select ninf nsz i1 %i.afi, float %.21951.i, float 0.000000e+00
  %i.bgl = insertelement <2 x float> poison, float %i.bgk, i64 0
  %i.bgm = shufflevector <2 x float> %i.bgl, <2 x float> %i.bgj, <2 x i32> <i32 0, i32 2>
  %i.bgn = fadd reassoc nsz arcp contract afn <2 x float> %i.bgj, %i.bgm
  br label %bb.hl

.lr.ph3825.i:                                     ; preds = %.lr.ph3825.i.preheader, %.thread3621.i
  %.503824.i = phi ptr [ %.52.i, %.thread3621.i ], [ %.47.lcssa.i, %.lr.ph3825.i.preheader ] ; 9 uses
  %.1319063823.i = phi ptr [ %i.bhu, %.thread3621.i ], [ %.121905.lcssa.i, %.lr.ph3825.i.preheader ] ; 2 uses
  %.219453822.i = phi i32 [ %i.bhv, %.thread3621.i ], [ %.11944.lcssa.i, %.lr.ph3825.i.preheader ]
  %.519573821.i = phi ptr [ %i.bht, %.thread3621.i ], [ %.31955.lcssa.i, %.lr.ph3825.i.preheader ] ; 4 uses
  %i.bgo = load <4 x i32>, ptr %.1319063823.i, align 4, !tbaa !50
  %i.bgp = sitofp <4 x i32> %i.bgo to <4 x float>
  %i.bgq = fmul fast <4 x float> %i.baq, %i.bgp   ; 6 uses
  %.not2022.i = icmp eq ptr %.503824.i, null
  br i1 %.not2022.i, label %.thread3621.i, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph3825.i
  br i1 %i.afh, label %.thread3608.i, label %bb.hg

.thread3608.i:                                    ; preds = %bb.hf
  %i.bgr = fadd fast <4 x float> %i.bgq, %i.bew
  br label %.thread3621.i

bb.hg:                                            ; preds = %bb.hf
  br i1 %i.afi, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bgs = fadd fast <4 x float> %i.bgq, %i.bbn
  br label %.thread3621.i

bb.hi:                                            ; preds = %bb.hg
  switch i32 %3, label %.thread3621.i [
    i32 3, label %bb.hj
    i32 4, label %bb.hk
  ]

bb.hj:                                            ; preds = %bb.hi
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %.503824.i, i64 %i.u
  %i.bgu = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgv = load <2 x float>, ptr %i.bgt, align 4, !tbaa !68
  %i.bgw = shufflevector <2 x float> %i.bgu, <2 x float> %i.bgv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgx = fmul fast <4 x float> %i.bgw, %i.aev
  %i.bgy = fadd fast <4 x float> %i.bgx, %i.bgq
  %i.bgz = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

bb.hk:                                            ; preds = %bb.hi
  %i.bha = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bhb = fmul fast <2 x float> %i.bha, %i.afg
  %i.bhc = shufflevector <2 x float> %i.bhb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bhd = fadd fast <4 x float> %i.bhc, %i.bgq
  %i.bhe = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

.thread3621.i:                                    ; preds = %bb.hk, %bb.hj, %bb.hi, %bb.hh, %.thread3608.i, %.lr.ph3825.i
  %.52.i = phi ptr [ %i.bhe, %bb.hk ], [ %.503824.i, %bb.hi ], [ null, %.lr.ph3825.i ], [ %i.bgz, %bb.hj ], [ %.503824.i, %.thread3608.i ], [ %.503824.i, %bb.hh ] ; 2 uses
  %i.bhf = phi <4 x float> [ %i.bhd, %bb.hk ], [ %i.bgq, %bb.hi ], [ %i.bgq, %.lr.ph3825.i ], [ %i.bgy, %bb.hj ], [ %i.bgr, %.thread3608.i ], [ %i.bgs, %bb.hh ] ; 3 uses
  %i.bhg = extractelement <4 x float> %i.bhf, i64 0
  %i.bhh = fmul fast float %i.bhg, %9
  %i.bhi = extractelement <4 x float> %i.bhf, i64 3
  %i.bhj = fmul fast float %i.bhi, %9
  store float %i.bhh, ptr %.519573821.i, align 4, !tbaa !68
  %i.bhk = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 4
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %.519573821.i, i64 %i.l ; 2 uses
  %i.bhm = getelementptr i8, ptr %i.bhl, i64 4
  %i.bhn = shufflevector <4 x float> %i.bhf, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bho = fmul fast <2 x float> %i.bhn, %i.afk   ; 2 uses
  %i.bhp = shufflevector <2 x float> %i.bho, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bhq = select <2 x i1> %i.afm, <2 x float> %i.bho, <2 x float> %i.bhp ; 2 uses
  %i.bhr = extractelement <2 x float> %i.bhq, i64 0
  store float %i.bhr, ptr %i.bhk, align 4, !tbaa !68
  %i.bhs = extractelement <2 x float> %i.bhq, i64 1
  store float %i.bhs, ptr %i.bhl, align 4, !tbaa !68
  store float %i.bhj, ptr %i.bhm, align 4, !tbaa !68
  %i.bht = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 %..idx3656.i ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %.1319063823.i, i64 16 ; 2 uses
  %i.bhv = add nuw nsw i32 %.219453822.i, 2       ; 3 uses
  %i.bhw = or disjoint i32 %i.bhv, 1
  %i.bhx = icmp slt i32 %i.bhw, %7
  br i1 %i.bhx, label %.lr.ph3825.i, label %.preheader3681.i, !llvm.loop !744

bb.hl:                                            ; preds = %bb.hr, %.lr.ph3834.i
  %.533833.i = phi ptr [ %.50.lcssa.i, %.lr.ph3834.i ], [ %.55.i, %bb.hr ] ; 7 uses
  %.1419073832.i = phi ptr [ %.131906.lcssa.i, %.lr.ph3834.i ], [ %i.biz, %bb.hr ] ; 2 uses
  %.319463831.i = phi i32 [ %.21945.lcssa.i, %.lr.ph3834.i ], [ %i.bja, %bb.hr ]
  %.719593830.i = phi ptr [ %.51957.lcssa.i, %.lr.ph3834.i ], [ %.81960.i, %bb.hr ] ; 5 uses
  %i.bhy = load <2 x i32>, ptr %.1419073832.i, align 4, !tbaa !50
  %i.bhz = sitofp <2 x i32> %i.bhy to <2 x float>
end_hunk_1
begin_hunk_2_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  store <4 x float> %.51187, ptr %i.cbl, align 1, !tbaa !89
  %i.cbm = getelementptr inbounds nuw i8, ptr %.128131896, i64 48
  store <4 x float> %.51181, ptr %i.cbm, align 1, !tbaa !89
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  store <4 x float> %.51199, ptr %.128131896, align 1, !tbaa !89
  %i.cbn = getelementptr inbounds nuw i8, ptr %.128131896, i64 16
  store <4 x float> %.51187, ptr %i.cbn, align 1, !tbaa !89
  %i.cbo = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx2947 ; 2 uses
  store <4 x float> %.51193, ptr %i.cbo, align 1, !tbaa !89
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 16
  store <4 x float> %.51181, ptr %i.cbp, align 1, !tbaa !89
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jn
  %.sroa.069.0.vec.extract = extractelement <4 x float> %.51199, i64 0
  store float %.sroa.069.0.vec.extract, ptr %.128131896, align 4, !tbaa !68
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.51187, i64 0
  %i.cbq = getelementptr inbounds nuw i8, ptr %.128131896, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.cbq, align 4, !tbaa !68
  %i.cbr = getelementptr inbounds nuw [4 x i8], ptr %.128131896, i64 %i.k
  %i.cbs = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cbs, ptr %i.cbr, align 4, !tbaa !68
  %i.cbt = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx1729
  %i.cbu = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cbu, ptr %i.cbt, align 4, !tbaa !68
  %i.cbv = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx1731
  %i.cbw = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cbw, ptr %i.cbv, align 4, !tbaa !68
  %.sroa.770.16.vec.extract = extractelement <4 x float> %.51193, i64 0
  %i.cbx = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx2947 ; 2 uses
  store float %.sroa.770.16.vec.extract, ptr %i.cbx, align 4, !tbaa !68
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.51181, i64 0
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbx, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.cby, align 4, !tbaa !68
  %i.cbz = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx1736
  %i.cca = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cca, ptr %i.cbz, align 4, !tbaa !68
  %i.ccb = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx1737
  %i.ccc = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ccc, ptr %i.ccb, align 4, !tbaa !68
  %i.ccd = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx1738
  %i.cce = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cce, ptr %i.ccd, align 4, !tbaa !68
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jq
  %i.ccf = getelementptr inbounds nuw i8, ptr %.128131896, i64 %.idx2949
  br label %bb.ka

bb.js:                                            ; preds = %bb.jm
  store <4 x float> %.51199, ptr %.128131896, align 1, !tbaa !89
  %i.ccg = getelementptr inbounds nuw i8, ptr %.128131896, i64 16
  store <4 x float> %.51193, ptr %i.ccg, align 1, !tbaa !89
  %i.cch = getelementptr inbounds nuw [4 x i8], ptr %.128131896, i64 %i.k ; 2 uses
  store <4 x float> %.51187, ptr %i.cch, align 1, !tbaa !89
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 16
  store <4 x float> %.51181, ptr %i.cci, align 1, !tbaa !89
  %i.ccj = getelementptr inbounds nuw i8, ptr %.128131896, i64 32
  br label %bb.ka

bb.jt:                                            ; preds = %bb.jl
  %i.cck = bitcast <4 x float> %.51199 to <4 x i32>
  %i.ccl = lshr <4 x i32> %i.cck, splat (i32 16)
  %i.ccm = bitcast <4 x float> %.51193 to <4 x i32>
  %i.ccn = lshr <4 x i32> %i.ccm, splat (i32 16)
  %i.cco = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ccl, <4 x i32> %i.ccn) ; 12 uses
  %i.ccp = bitcast <8 x i16> %i.cco to <2 x i64>
  %i.ccq = bitcast <4 x float> %.51187 to <4 x i32>
  %i.ccr = lshr <4 x i32> %i.ccq, splat (i32 16)
  %i.ccs = bitcast <4 x float> %.51181 to <4 x i32>
  %i.cct = lshr <4 x i32> %i.ccs, splat (i32 16)
  %i.ccu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ccr, <4 x i32> %i.cct) ; 12 uses
  %i.ccv = bitcast <8 x i16> %i.ccu to <2 x i64>
  br i1 %.not2936, label %bb.jz, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  switch i32 %i.b, label %bb.jy [
    i32 8, label %bb.jv
    i32 4, label %bb.jw
    i32 1, label %bb.jx
  ]

bb.jv:                                            ; preds = %bb.ju
  store <8 x i16> %i.cco, ptr %.128221895, align 1, !tbaa !89
  %i.ccw = getelementptr inbounds nuw i8, ptr %.128221895, i64 16
  store <8 x i16> %i.ccu, ptr %i.ccw, align 1, !tbaa !89
  br label %bb.jy

bb.jw:                                            ; preds = %bb.ju
  %i.ccx = shufflevector <2 x i64> %i.ccp, <2 x i64> %i.ccv, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ccx, ptr %.128221895, align 1, !tbaa !89
  %i.ccy = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1729
  %i.ccz = bitcast <8 x i16> %i.cco to <2 x double>
  %i.cda = bitcast <8 x i16> %i.ccu to <2 x double>
  %i.cdb = shufflevector <2 x double> %i.ccz, <2 x double> %i.cda, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.cdb, ptr %i.ccy, align 1, !tbaa !89
  br label %bb.jy

bb.jx:                                            ; preds = %bb.ju
  %.sroa.066.0.vec.extract = extractelement <8 x i16> %i.cco, i64 0
  store i16 %.sroa.066.0.vec.extract, ptr %.128221895, align 2, !tbaa !108
  %.sroa.11.16.vec.extract = extractelement <8 x i16> %i.ccu, i64 0
  %i.cdc = getelementptr inbounds nuw i8, ptr %.128221895, i64 2
  store i16 %.sroa.11.16.vec.extract, ptr %i.cdc, align 2, !tbaa !108
  %.sroa.066.2.vec.extract = extractelement <8 x i16> %i.cco, i64 1
  %i.cdd = getelementptr inbounds nuw [2 x i8], ptr %.128221895, i64 %i.k ; 2 uses
  store i16 %.sroa.066.2.vec.extract, ptr %i.cdd, align 2, !tbaa !108
  %.sroa.11.18.vec.extract = extractelement <8 x i16> %i.ccu, i64 1
  %i.cde = getelementptr i8, ptr %i.cdd, i64 2
  store i16 %.sroa.11.18.vec.extract, ptr %i.cde, align 2, !tbaa !108
  %.sroa.066.4.vec.extract = extractelement <8 x i16> %i.cco, i64 2
  %i.cdf = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1727 ; 2 uses
  store i16 %.sroa.066.4.vec.extract, ptr %i.cdf, align 2, !tbaa !108
  %.sroa.11.20.vec.extract = extractelement <8 x i16> %i.ccu, i64 2
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 2
  store i16 %.sroa.11.20.vec.extract, ptr %i.cdg, align 2, !tbaa !108
  %.sroa.066.6.vec.extract = extractelement <8 x i16> %i.cco, i64 3
  %i.cdh = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1728 ; 2 uses
  store i16 %.sroa.066.6.vec.extract, ptr %i.cdh, align 2, !tbaa !108
  %.sroa.11.22.vec.extract = extractelement <8 x i16> %i.ccu, i64 3
  %i.cdi = getelementptr i8, ptr %i.cdh, i64 2
  store i16 %.sroa.11.22.vec.extract, ptr %i.cdi, align 2, !tbaa !108
  %.sroa.066.8.vec.extract = extractelement <8 x i16> %i.cco, i64 4
  %i.cdj = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1729 ; 2 uses
  store i16 %.sroa.066.8.vec.extract, ptr %i.cdj, align 2, !tbaa !108
  %.sroa.11.24.vec.extract = extractelement <8 x i16> %i.ccu, i64 4
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 2
  store i16 %.sroa.11.24.vec.extract, ptr %i.cdk, align 2, !tbaa !108
  %.sroa.066.10.vec.extract = extractelement <8 x i16> %i.cco, i64 5
  %i.cdl = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1730 ; 2 uses
  store i16 %.sroa.066.10.vec.extract, ptr %i.cdl, align 2, !tbaa !108
  %.sroa.11.26.vec.extract = extractelement <8 x i16> %i.ccu, i64 5
  %i.cdm = getelementptr i8, ptr %i.cdl, i64 2
  store i16 %.sroa.11.26.vec.extract, ptr %i.cdm, align 2, !tbaa !108
  %.sroa.066.12.vec.extract = extractelement <8 x i16> %i.cco, i64 6
  %i.cdn = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1731 ; 2 uses
  store i16 %.sroa.066.12.vec.extract, ptr %i.cdn, align 2, !tbaa !108
  %.sroa.11.28.vec.extract = extractelement <8 x i16> %i.ccu, i64 6
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 2
  store i16 %.sroa.11.28.vec.extract, ptr %i.cdo, align 2, !tbaa !108
  %.sroa.066.14.vec.extract = extractelement <8 x i16> %i.cco, i64 7
  %i.cdp = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx1732 ; 2 uses
  store i16 %.sroa.066.14.vec.extract, ptr %i.cdp, align 2, !tbaa !108
  %.sroa.11.30.vec.extract = extractelement <8 x i16> %i.ccu, i64 7
  %i.cdq = getelementptr i8, ptr %i.cdp, i64 2
  store i16 %.sroa.11.30.vec.extract, ptr %i.cdq, align 2, !tbaa !108
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.jx
  %i.cdr = getelementptr inbounds nuw i8, ptr %.128221895, i64 %.idx2947
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jt
  store <8 x i16> %i.cco, ptr %.128221895, align 1, !tbaa !89
  %i.cds = getelementptr inbounds nuw [2 x i8], ptr %.128221895, i64 %i.k
  store <8 x i16> %i.ccu, ptr %i.cds, align 1, !tbaa !89
  %i.cdt = getelementptr inbounds nuw i8, ptr %.128221895, i64 16
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jy, %bb.jz, %bb.jr, %bb.js
  %.32824 = phi ptr [ %.128221895, %bb.jr ], [ %.128221895, %bb.js ], [ %i.cdr, %bb.jy ], [ %i.cdt, %bb.jz ] ; 2 uses
  %.22814 = phi ptr [ %i.ccf, %bb.jr ], [ %i.ccj, %bb.js ], [ %.128131896, %bb.jy ], [ %.128131896, %bb.jz ] ; 2 uses
  %i.cdu = add nuw nsw i32 %.028031897, 8         ; 2 uses
  %i.cdv = or disjoint i32 %i.cdu, 7
  %i.cdw = icmp slt i32 %i.cdv, %6
  br i1 %i.cdw, label %.lr.ph1900, label %.preheader1769, !llvm.loop !1242

.preheader1768:                                   ; preds = %bb.kt, %.preheader1769
  %.42825.lcssa = phi ptr [ %.12822.lcssa, %.preheader1769 ], [ %.62827, %bb.kt ] ; 2 uses
  %.32815.lcssa = phi ptr [ %.12813.lcssa, %.preheader1769 ], [ %.42816, %bb.kt ] ; 2 uses
  %.12804.lcssa = phi i32 [ %.02803.lcssa, %.preheader1769 ], [ %i.cgf, %bb.kt ] ; 3 uses
  %.122753.lcssa = phi ptr [ %.112752.lcssa, %.preheader1769 ], [ %i.cei, %bb.kt ] ; 2 uses
  %.47.lcssa = phi ptr [ %.44.lcssa, %.preheader1769 ], [ %.49, %bb.kt ] ; 2 uses
  %i.cdx = or disjoint i32 %.12804.lcssa, 1
  %i.cdy = icmp slt i32 %i.cdx, %6
  br i1 %i.cdy, label %.lr.ph1926.preheader, label %.preheader1767

.lr.ph1926.preheader:                             ; preds = %.preheader1768
  %i.cdz = insertelement <2 x float> poison, float %.22811, i64 0
  %i.cea = shufflevector <2 x float> %i.cdz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ceb = insertelement <2 x float> poison, float %.12808, i64 0
  %i.cec = shufflevector <2 x float> %i.ceb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ced = insertelement <2 x float> poison, float %.22811, i64 0
  %i.cee = shufflevector <2 x float> %i.ced, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1926

.lr.ph1915:                                       ; preds = %.preheader1769, %bb.kt
  %.471914 = phi ptr [ %.49, %bb.kt ], [ %.44.lcssa, %.preheader1769 ] ; 9 uses
  %.1227531913 = phi ptr [ %i.cei, %bb.kt ], [ %.112752.lcssa, %.preheader1769 ] ; 3 uses
  %.128041912 = phi i32 [ %i.cgf, %bb.kt ], [ %.02803.lcssa, %.preheader1769 ]
  %.328151911 = phi ptr [ %.42816, %bb.kt ], [ %.12813.lcssa, %.preheader1769 ] ; 13 uses
  %.428251910 = phi ptr [ %.62827, %bb.kt ], [ %.12822.lcssa, %.preheader1769 ] ; 11 uses
  %.512051909 = phi <4 x float> [ %.71207, %bb.kt ], [ %.21202.lcssa, %.preheader1769 ] ; 6 uses
  %.612141908 = phi <4 x float> [ %.81216, %bb.kt ], [ %.31211.lcssa, %.preheader1769 ] ; 7 uses
  %i.cef = load <4 x float>, ptr %.1227531913, align 16, !tbaa !89 ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %.1227531913, i64 16
  %i.ceh = load <4 x float>, ptr %i.ceg, align 16, !tbaa !89 ; 2 uses
  %i.cei = getelementptr inbounds nuw i8, ptr %.1227531913, i64 32 ; 2 uses
  %11 = shufflevector <4 x float> %i.cef, <4 x float> %i.ceh, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 6 uses
  %12 = shufflevector <4 x float> %i.cef, <4 x float> %i.ceh, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.cej = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 6 uses
  %.not2942 = icmp eq ptr %.471914, null
  br i1 %.not2942, label %.thread1669, label %bb.kb

bb.kb:                                            ; preds = %.lr.ph1915
  br i1 %i.asz, label %.thread1660, label %bb.kc

.thread1660:                                      ; preds = %bb.kb
  %i.cek = fadd fast <4 x float> %.612141908, %11
  %i.cel = fadd fast <4 x float> %i.cej, %.612141908
  br label %.thread1669

bb.kc:                                            ; preds = %bb.kb
  br i1 %or.cond21, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.cem = fadd fast <4 x float> %.612141908, %11
  %i.cen = fadd fast <4 x float> %i.cej, %.512051909
  br label %.thread1669

bb.ke:                                            ; preds = %bb.kc
  switch i32 %2, label %.thread1669 [
    i32 3, label %bb.kf
    i32 4, label %bb.kg
  ]

bb.kf:                                            ; preds = %bb.ke
  %i.ceo = load <4 x float>, ptr %.471914, align 1, !tbaa !89 ; 3 uses
  %i.cep = getelementptr inbounds nuw [4 x i8], ptr %.471914, i64 %i.t
  %i.ceq = load <4 x float>, ptr %i.cep, align 1, !tbaa !89 ; 3 uses
  %i.cer = fmul fast <4 x float> %i.ceo, %i.ate
  %i.ces = fmul fast <4 x float> %i.ceq, %i.ate
  %.pn = select i1 %i.atf, <4 x float> %i.ceo, <4 x float> %i.cer
  %.21166.v = select i1 %i.atf, <4 x float> %i.ceq, <4 x float> %i.ces
  %.21166 = fadd fast <4 x float> %.21166.v, %i.cej
  %.21172 = fadd fast <4 x float> %.pn, %11
  %i.cet = getelementptr inbounds nuw i8, ptr %.471914, i64 16
  br label %.thread1669

bb.kg:                                            ; preds = %bb.ke
  %i.ceu = load <4 x float>, ptr %.471914, align 1, !tbaa !89
  %i.cev = fmul fast <4 x float> %i.ceu, %i.ate   ; 3 uses
  %i.cew = fadd fast <4 x float> %i.cev, %11
  %i.cex = fadd fast <4 x float> %i.cev, %i.cej
  %i.cey = getelementptr inbounds nuw i8, ptr %.471914, i64 16
  br label %.thread1669

.thread1669:                                      ; preds = %bb.ke, %bb.kd, %.thread1660, %bb.kf, %bb.kg, %.lr.ph1915
  %.81216 = phi nsz <4 x float> [ %.612141908, %.lr.ph1915 ], [ %i.cev, %bb.kg ], [ %.612141908, %bb.ke ], [ %i.ceo, %bb.kf ], [ %.612141908, %.thread1660 ], [ %.612141908, %bb.kd ]
  %.71207 = phi nsz <4 x float> [ %.512051909, %.lr.ph1915 ], [ %.512051909, %bb.kg ], [ %.512051909, %bb.ke ], [ %i.ceq, %bb.kf ], [ %.512051909, %.thread1660 ], [ %.512051909, %bb.kd ]
  %.41174 = phi nsz <4 x float> [ %11, %.lr.ph1915 ], [ %i.cew, %bb.kg ], [ %11, %bb.ke ], [ %.21172, %bb.kf ], [ %i.cek, %.thread1660 ], [ %i.cem, %bb.kd ] ; 2 uses
  %.41168 = phi nsz <4 x float> [ %i.cej, %.lr.ph1915 ], [ %i.cex, %bb.kg ], [ %i.cej, %bb.ke ], [ %.21166, %bb.kf ], [ %i.cel, %.thread1660 ], [ %i.cen, %bb.kd ] ; 2 uses
  %.49 = phi ptr [ null, %.lr.ph1915 ], [ %i.cey, %bb.kg ], [ %.471914, %bb.ke ], [ %i.cet, %bb.kf ], [ %.471914, %.thread1660 ], [ %.471914, %bb.kd ] ; 2 uses
  %i.cez = fmul fast <4 x float> %.41174, %i.ati
  %i.cfa = fmul fast <4 x float> %.41168, %i.ati
  %.51175 = select nsz i1 %i.atg, <4 x float> %i.cez, <4 x float> %.41174 ; 7 uses
  %.51169 = select nsz i1 %i.atg, <4 x float> %i.cfa, <4 x float> %.41168 ; 7 uses
  br i1 %i.atj, label %bb.kh, label %bb.kn

bb.kh:                                            ; preds = %.thread1669
  br i1 %.not2936, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  switch i32 %i.b, label %bb.kl [
    i32 4, label %bb.kj
    i32 1, label %bb.kk
  ]

bb.kj:                                            ; preds = %bb.ki
  store <4 x float> %.51175, ptr %.328151911, align 1, !tbaa !89
  %i.cfb = getelementptr inbounds nuw i8, ptr %.328151911, i64 16
  store <4 x float> %.51169, ptr %i.cfb, align 1, !tbaa !89
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki
  %.sroa.039.0.vec.extract = extractelement <4 x float> %.51175, i64 0
  store float %.sroa.039.0.vec.extract, ptr %.328151911, align 4, !tbaa !68
  %.sroa.740.16.vec.extract = extractelement <4 x float> %.51169, i64 0
  %i.cfc = getelementptr inbounds nuw i8, ptr %.328151911, i64 4
  store float %.sroa.740.16.vec.extract, ptr %i.cfc, align 4, !tbaa !68
  %i.cfd = getelementptr inbounds nuw [4 x i8], ptr %.328151911, i64 %i.k
  %i.cfe = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cfe, ptr %i.cfd, align 4, !tbaa !68
  %i.cff = getelementptr inbounds nuw i8, ptr %.328151911, i64 %.idx1729
  %i.cfg = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cfg, ptr %i.cff, align 4, !tbaa !68
  %i.cfh = getelementptr inbounds nuw i8, ptr %.328151911, i64 %.idx1731
  %i.cfi = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cfi, ptr %i.cfh, align 4, !tbaa !68
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kj, %bb.ki, %bb.kk
  %i.cfj = getelementptr inbounds nuw i8, ptr %.328151911, i64 %.idx2947
  br label %bb.kt

bb.km:                                            ; preds = %bb.kh
  store <4 x float> %.51175, ptr %.328151911, align 1, !tbaa !89
  %i.cfk = getelementptr inbounds nuw [4 x i8], ptr %.328151911, i64 %i.k
  store <4 x float> %.51169, ptr %i.cfk, align 1, !tbaa !89
  %i.cfl = getelementptr inbounds nuw i8, ptr %.328151911, i64 16
  br label %bb.kt

bb.kn:                                            ; preds = %.thread1669
  %i.cfm = bitcast <4 x float> %.51175 to <4 x i32>
  %i.cfn = lshr <4 x i32> %i.cfm, splat (i32 16)
  %i.cfo = bitcast <4 x float> %.51169 to <4 x i32>
  %i.cfp = lshr <4 x i32> %i.cfo, splat (i32 16)
  %i.cfq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cfn, <4 x i32> %i.cfp) ; 7 uses
  br i1 %.not2936, label %bb.ks, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  switch i32 %i.b, label %bb.kr [
    i32 4, label %bb.kp
    i32 1, label %bb.kq
  ]

bb.kp:                                            ; preds = %bb.ko
  store <8 x i16> %i.cfq, ptr %.428251910, align 1, !tbaa !89
  br label %bb.kr

bb.kq:                                            ; preds = %bb.ko
  %i.cfr = shufflevector <8 x i16> %i.cfq, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.cfr, ptr %.428251910, align 2, !tbaa !108
  %i.cfs = getelementptr inbounds nuw [2 x i8], ptr %.428251910, i64 %i.k
  %i.cft = shufflevector <8 x i16> %i.cfq, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.cft, ptr %i.cfs, align 2, !tbaa !108
  %i.cfu = getelementptr inbounds nuw i8, ptr %.428251910, i64 %.idx1727
  %i.cfv = shufflevector <8 x i16> %i.cfq, <8 x i16> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i16> %i.cfv, ptr %i.cfu, align 2, !tbaa !108
  %i.cfw = getelementptr inbounds nuw i8, ptr %.428251910, i64 %.idx1728
  %i.cfx = shufflevector <8 x i16> %i.cfq, <8 x i16> poison, <2 x i32> <i32 3, i32 7>
  store <2 x i16> %i.cfx, ptr %i.cfw, align 2, !tbaa !108
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kp, %bb.ko, %bb.kq
  %i.cfy = getelementptr inbounds nuw i8, ptr %.428251910, i64 %.idx1729
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kn
  %i.cfz = bitcast <8 x i16> %i.cfq to <2 x i64>
  %i.cga = extractelement <2 x i64> %i.cfz, i64 0
  store i64 %i.cga, ptr %.428251910, align 1, !tbaa !89
  %i.cgb = getelementptr inbounds nuw [2 x i8], ptr %.428251910, i64 %i.k
  %i.cgc = bitcast <8 x i16> %i.cfq to <2 x i64>
  %i.cgd = extractelement <2 x i64> %i.cgc, i64 1
  store i64 %i.cgd, ptr %i.cgb, align 1, !tbaa !89
  %i.cge = getelementptr inbounds nuw i8, ptr %.428251910, i64 8
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.ks, %bb.kl, %bb.km
  %.62827 = phi ptr [ %.428251910, %bb.kl ], [ %.428251910, %bb.km ], [ %i.cfy, %bb.kr ], [ %i.cge, %bb.ks ] ; 2 uses
  %.42816 = phi ptr [ %i.cfj, %bb.kl ], [ %i.cfl, %bb.km ], [ %.328151911, %bb.kr ], [ %.328151911, %bb.ks ] ; 2 uses
  %i.cgf = add nuw nsw i32 %.128041912, 4         ; 3 uses
  %i.cgg = or disjoint i32 %i.cgf, 3
  %i.cgh = icmp slt i32 %i.cgg, %6
  br i1 %i.cgh, label %.lr.ph1915, label %.preheader1768, !llvm.loop !1243

.preheader1767:                                   ; preds = %bb.lg, %.preheader1768
  %.72828.lcssa = phi ptr [ %.42825.lcssa, %.preheader1768 ], [ %.92830, %bb.lg ]
  %.52817.lcssa = phi ptr [ %.32815.lcssa, %.preheader1768 ], [ %.62818, %bb.lg ]
  %.22805.lcssa = phi i32 [ %.12804.lcssa, %.preheader1768 ], [ %i.cil, %bb.lg ] ; 2 uses
  %.132754.lcssa = phi ptr [ %.122753.lcssa, %.preheader1768 ], [ %i.cgn, %bb.lg ] ; 2 uses
  %.50.lcssa = phi ptr [ %.47.lcssa, %.preheader1768 ], [ %.52, %bb.lg ] ; 2 uses
  %i.cgi = icmp slt i32 %.22805.lcssa, %6
  br i1 %i.cgi, label %.lr.ph1937.preheader, label %._crit_edge1938

.lr.ph1937.preheader:                             ; preds = %.preheader1767
  %i.cgj = shufflevector <2 x float> %i.bzl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1937

.lr.ph1926:                                       ; preds = %.lr.ph1926.preheader, %bb.lg
  %.501925 = phi ptr [ %.52, %bb.lg ], [ %.47.lcssa, %.lr.ph1926.preheader ] ; 9 uses
  %.1327541924 = phi ptr [ %i.cgn, %bb.lg ], [ %.122753.lcssa, %.lr.ph1926.preheader ] ; 3 uses
  %.228051923 = phi i32 [ %i.cil, %bb.lg ], [ %.12804.lcssa, %.lr.ph1926.preheader ]
  %.528171922 = phi ptr [ %.62818, %bb.lg ], [ %.32815.lcssa, %.lr.ph1926.preheader ] ; 7 uses
  %.728281921 = phi ptr [ %.92830, %bb.lg ], [ %.42825.lcssa, %.lr.ph1926.preheader ] ; 7 uses
  %i.cgk = load <2 x float>, ptr %.1327541924, align 4, !tbaa !68 ; 6 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %.1327541924, i64 8
  %i.cgm = load <2 x float>, ptr %i.cgl, align 4, !tbaa !68 ; 6 uses
  %i.cgn = getelementptr inbounds nuw i8, ptr %.1327541924, i64 16 ; 2 uses
  %.not2939 = icmp eq ptr %.501925, null
  br i1 %.not2939, label %.thread1688, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph1926
  br i1 %i.asz, label %.thread1675, label %bb.kv

.thread1675:                                      ; preds = %bb.ku
  %i.cgo = fadd fast <2 x float> %i.cgk, %i.cee
  %i.cgp = fadd fast <2 x float> %i.cgm, %i.cee
  br label %.thread1688

bb.kv:                                            ; preds = %bb.ku
  br i1 %or.cond27, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.cgq = fadd fast <2 x float> %i.cgk, %i.cea
  %i.cgr = fadd fast <2 x float> %i.cgm, %i.cec
  br label %.thread1688

bb.kx:                                            ; preds = %bb.kv
  switch i32 %2, label %.thread1688 [
    i32 3, label %bb.ky
    i32 4, label %bb.kz
  ]

bb.ky:                                            ; preds = %bb.kx
  %i.cgs = load <2 x float>, ptr %.501925, align 4, !tbaa !68
  %i.cgt = fmul fast <2 x float> %i.cgs, %i.atp
  %i.cgu = fadd fast <2 x float> %i.cgt, %i.cgk
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %.501925, i64 %i.t
  %i.cgw = load <2 x float>, ptr %i.cgv, align 4, !tbaa !68
  %i.cgx = fmul fast <2 x float> %i.cgw, %i.atp
  %i.cgy = fadd fast <2 x float> %i.cgx, %i.cgm
  %i.cgz = getelementptr inbounds nuw i8, ptr %.501925, i64 8
  br label %.thread1688

bb.kz:                                            ; preds = %bb.kx
  %i.cha = load <2 x float>, ptr %.501925, align 4, !tbaa !68
  %i.chb = fmul fast <2 x float> %i.cha, %i.atp   ; 2 uses
  %i.chc = fadd fast <2 x float> %i.chb, %i.cgk
  %i.chd = fadd fast <2 x float> %i.chb, %i.cgm
  %i.che = getelementptr inbounds nuw i8, ptr %.501925, i64 8
  br label %.thread1688

.thread1688:                                      ; preds = %bb.kx, %bb.kw, %.thread1675, %bb.ky, %bb.kz, %.lr.ph1926
  %.52 = phi ptr [ %i.che, %bb.kz ], [ %.501925, %bb.kx ], [ null, %.lr.ph1926 ], [ %i.cgz, %bb.ky ], [ %.501925, %.thread1675 ], [ %.501925, %bb.kw ] ; 2 uses
  %i.chf = phi <2 x float> [ %i.chd, %bb.kz ], [ %i.cgm, %bb.kx ], [ %i.cgm, %.lr.ph1926 ], [ %i.cgy, %bb.ky ], [ %i.cgp, %.thread1675 ], [ %i.cgr, %bb.kw ]
  %i.chg = phi <2 x float> [ %i.chc, %bb.kz ], [ %i.cgk, %bb.kx ], [ %i.cgk, %.lr.ph1926 ], [ %i.cgu, %bb.ky ], [ %i.cgo, %.thread1675 ], [ %i.cgq, %bb.kw ]
  %i.chh = fmul fast <2 x float> %i.chg, %i.atr   ; 4 uses
  %i.chi = fmul fast <2 x float> %i.chf, %i.atr   ; 5 uses
  br i1 %i.atj, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %.thread1688
  %i.chj = extractelement <2 x float> %i.chh, i64 0
  store float %i.chj, ptr %.528171922, align 4, !tbaa !68
  %i.chk = getelementptr inbounds nuw i8, ptr %.528171922, i64 4 ; 2 uses
  %i.chl = getelementptr inbounds nuw [4 x i8], ptr %.528171922, i64 %i.k ; 3 uses
  %i.chm = getelementptr i8, ptr %i.chl, i64 4    ; 2 uses
  br i1 %.not2936, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.chn = extractelement <2 x float> %i.chi, i64 0
  store float %i.chn, ptr %i.chk, align 4, !tbaa !68
  %i.cho = extractelement <2 x float> %i.chh, i64 1
  store float %i.cho, ptr %i.chl, align 4, !tbaa !68
  %i.chp = extractelement <2 x float> %i.chi, i64 1
  store float %i.chp, ptr %i.chm, align 4, !tbaa !68
  %i.chq = getelementptr inbounds nuw i8, ptr %.528171922, i64 %.idx1729
  br label %bb.lg

bb.lc:                                            ; preds = %bb.la
end_hunk_2
